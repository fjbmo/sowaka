open Asm
open Printf

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"
external to_float : float -> int32 = "to_float"

let stackset = ref S.empty (* すでに Save された変数の集合 *)

let stackmap = ref [] (* Save された変数のスタックにおける位置 *)

let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]

let savef x = (* 単精度浮動小数点数しか使わないことに注意 *)
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
    (* (let pad = if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in *)
     (* stackmap := !stackmap @ pad @ [x; x]) *)

let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
    loc !stackmap

let offset x = List.hd (locate x)

(* let stacksize () = align ((List.length !stackmap + 1)) *)
let stacksize () = (List.length !stackmap + 1)

let reg r =
  if is_reg r
  then r
  (* then String.sub r 1 (String.length r - 1) *)
  else r

(* let load_label r label = *)
  (* "\tlis\t" ^ (reg r) ^ ", ha16(" ^ label ^ ")\n" ^ *)
  (* "\taddi\t" ^ (reg r) ^ ", " ^ (reg r) ^ ", lo16(" ^ label ^ ")\n" *)

(* 関数呼び出しのために引数を並べ替える (register shuffling) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let (_, xys) = List.partition (fun (x, y) -> x = y) xys in
    (* find acyclic moves *)
    match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
      | ([], []) -> []
      | ((x, y) :: xys, []) -> (* no acyclic moves; resolve a cyclic move *)
        (y, sw) :: (x, y) :: shuffle sw (List.map (function
                                                   | (y', z) when y = y' -> (sw, z)
                                                   | yz -> yz) xys)
      | (xys, acyc) -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 *)

let dealLi x i oc =
  fprintf oc "\tli\t%s, %d\n" (reg x) i

let dealSave x y oc =
  if List.mem x allregs && not (S.mem y !stackset) then
    (save y; fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (-(offset y)) reg_sp)
  else if List.mem x allfregs && not (S.mem y !stackset) then
    (savef y; fprintf oc "\tswc1\t%s, %d(%s)\n" (reg x) (-(offset y)) reg_sp)
  else
    assert (S.mem y !stackset); ()

let rec g oc = function (* 命令列のアセンブリ生成 *)
  | (dest, Ans (exp)) -> g' oc (dest, exp)
  | (dest, Let((x, t), exp, e)) -> g' oc (NonTail (x), exp); g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 *)
    (* 末尾でなかったら計算結果を dest にセット *)
  | (NonTail(_), Nop)                 -> ()
  | (NonTail(x), Li(i))               -> dealLi x i oc
  | (NonTail(x), FLi(Id.L(l)))        -> fprintf oc "\tlwc1\t%s, 0(%s)\n" (reg x) l
(*       fprintf oc "\tli\t%s, %s\n" reg_tmp l; *)
  | (NonTail(x), SetL(Id.L(y)))       -> fprintf oc "\tli\t%s, %s\n" x y
  | (NonTail(x), Move(y)) when x = y  -> ()
  | (NonTail(x), Move(y))             -> fprintf oc "\tmove\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), Neg(y))              -> fprintf oc "\tsub\t%s, $zero, %s\n" (reg x) (reg y)
  | (NonTail(x), Add(y, V(z)))        -> fprintf oc "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), Add(y, C(z)))        -> fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) z
  | (NonTail(x), Sub(y, V(z)))        -> fprintf oc "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), Sub(y, C(z)))        -> fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) (-z)
  | (NonTail(x), Mul(y, V(z)))        -> (*** HACK: Assuming z == 4 (optimized for min-rt) ***)
      fprintf oc "\tsll\t%s, %s, 2\n" (reg x) (reg y)
  | (NonTail(x), Mul(y, C(z)))        -> (*** HACK: Assuming z == 4 (optimized for min-rt) ***)
      fprintf oc "\tsll\t%s, %s, 2\n" (reg x) (reg y)
  | (NonTail(x), Div(y, V(z)))        -> (*** HACK: Assuming z == 2 (optimized for min-rt) ***)
      fprintf oc "\tsrl\t%s, %s, 1\n" (reg x) (reg y)
  | (NonTail(x), Div(y, C(z)))        -> (*** HACK: Assuming z == 2 (optimized for min-rt) ***)
      fprintf oc "\tsrl\t%s, %s, 1\n" (reg x) (reg y)
  | (NonTail(x), Lw(y, V(z)))         -> fprintf oc "\tadd\t%s, %s, %s\n" reg_sw (reg y) (reg z);
                                         fprintf oc "\tlw\t%s, 0(%s)\n" (reg x) reg_sw
  | (NonTail(x), Lw(y, C(z)))         -> fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (-z) (reg y)
  | (NonTail(_), Sw(x, y, V(z)))      -> fprintf oc "\tadd\t%s, %s, %s\n" reg_sw (reg y) (reg z);
                                         fprintf oc "\tsw\t%s, 0(%s)\n" (reg x) reg_sw
  (* | (NonTail(_), Sw(x, y, V(z)))      -> fprintf oc "\tadd\t%s, %s, %s\n" (reg y) (reg y) (reg z); *)
                                         (* fprintf oc "\tsw\t%s, 0(%s)\n" (reg x) (reg y) *)
  | (NonTail(_), Sw(x, y, C(z)))      -> fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (-z) (reg y)
  | (NonTail(x), FMove(y)) when x = y -> ()
  | (NonTail(x), FMove(y))            -> fprintf oc "\tmov.s\t%s, %s\n" (reg x) (reg y)
  | (NonTail(x), FNeg(y))             -> fprintf oc "\tmtc1\t$zero, $at\n";
                                         fprintf oc "\tsub.s\t%s, $at, %s\n" (reg x) (reg y)
  | (NonTail(x), FAdd(y, z))          -> fprintf oc "\tadd.s\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FSub(y, z))          -> fprintf oc "\tsub.s\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FMul(y, z))          -> fprintf oc "\tmul.s\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | (NonTail(x), FDiv(y, z))          -> fprintf oc "\tinv.s\t%s, %s\n" reg_fsw (reg z);
                                         fprintf oc "\tmul.s\t%s, %s, %s\n" (reg x) (reg y) reg_fsw
  | (NonTail(x), Lfd(y, V(z)))        -> fprintf oc "\tadd\t$at, %s, %s\n" (reg y) (reg z);
                                         fprintf oc "\tlwc1\t%s, 0($at)\n" (reg x)
  | (NonTail(x), Lfd(y, C(z)))        -> fprintf oc "\tlwc1\t%s, %d(%s)\n" (reg x) (-z) (reg y)
  | (NonTail(_), Stfd(x, y, V(z)))    -> fprintf oc "\tadd\t$at, %s, %s\n" (reg y) (reg z);
                                         fprintf oc "\tswc1\t%s, 0($at)\n" (reg x)
  | (NonTail(_), Stfd(x, y, C(z)))    -> fprintf oc "\tswc1\t%s, %d(%s)\n" (reg x) (-z) (reg y)
  | (NonTail(_), Comment(s))          -> fprintf oc "#\t%s\n" s
  (* 退避の仮想命令の実装 *)
  | (NonTail(_), Save(x, y))          -> dealSave x y oc
  (* 復帰の仮想命令の実装 *)
  | (NonTail(x), Restore(y)) when List.mem x allregs -> fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (-(offset y)) reg_sp
  | (NonTail(x), Restore(y)) -> assert (List.mem x allfregs);
                                fprintf oc "\tlwc1\t%s, %d(%s)\n" (reg x) (-(offset y)) reg_sp
  (* 末尾だったら計算結果を適切なレジスタにセット *)
  | (Tail, (Nop | Sw _ | Stfd _ | Comment _ | Save _ as exp)) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      fprintf oc "\tjr\t%s\n" (reg reg_cl);
  (* | (Tail, (Li _ | SetL _ | Move _ | Neg _ | Add _ | Sub _ | Swl _ | Lw _ as exp)) -> g' oc (NonTail("$v0"), exp); *)
  | (Tail, (Li _ | SetL _ | Move _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | Lw _ as exp)) -> g' oc (NonTail("$v0"), exp);
      fprintf oc "\tjr\t%s\n" (reg reg_cl);
  | (Tail, (FLi _ | FMove _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | Lfd _ as exp)) -> g' oc (NonTail("$f0"), exp);
      fprintf oc "\tjr\t%s\n" (reg reg_cl);
  | (Tail, (Restore(x) as exp)) ->
      (match locate x with
     | [i] -> g' oc (NonTail(regs.(2)), exp)
     | [i; j] when (i + 1 = j) -> g' oc (NonTail(fregs.(0)), exp)
     | _ -> assert false);
      fprintf oc "\tjr\t%s\n" (reg reg_cl);
  | (Tail, IfEq(x, V(y), e1, e2)) -> let b_else = Id.genid ("beq" ^ "_else") in
                                     fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg y) b_else;
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
  | (Tail, IfEq(x, C(y), e1, e2)) -> fprintf oc "\tli\t%s, %d\n" reg_sw y;
                                     let b_else = Id.genid ("beq" ^ "_else") in
                                     fprintf oc "\tbne\t%s, %s, %s\n" reg_sw (reg x) b_else;
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
  (* not (x <= y) <=> x > y <=> x - y > 0 *)
  | (Tail, IfLE(x, V(y), e1, e2)) -> fprintf oc "\tsub\t%s, %s, %s\n" reg_sw x y;
                                     let b_else = Id.genid ("ble" ^ "_else") in
                                     fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
  | (Tail, IfLE(x, C(y), e1, e2)) -> fprintf oc "\tli\t%s, %d\n" reg_sw y;
                                     fprintf oc "\tsub\t%s, %s, %s\n" reg_sw x reg_sw;
                                     let b_else = Id.genid ("ble" ^ "_else") in
                                     fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
  (* not (x >= y) <=> x < y <=> y - x > 0 *)
  | (Tail, IfGE(x, V(y), e1, e2)) -> fprintf oc "\tsub\t%s, %s, %s\n" reg_sw y x;
                                     let b_else = Id.genid ("bge" ^ "_else") in
                                     fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
                                     (* g'_tail_if oc e1 e2 "bgez" "bltz" *)
  | (Tail, IfGE(x, C(y), e1, e2)) -> fprintf oc "\tli\t%s, %d\n" reg_sw y;
                                     fprintf oc "\tsub\t%s, %s, %s\n" reg_sw reg_sw x;
                                     let b_else = Id.genid ("bge" ^ "_else") in
                                     fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
  | (Tail, IfFEq(x, y, e1, e2))   -> fprintf oc "\tc.eq.s\t0, %s, %s\n" (reg x) (reg y);
                                     let b_else = Id.genid ("c.eq.s" ^ "_else") in
                                     fprintf oc "\tbc1f\t0, %s\n" b_else;
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
  (* not (x <= y) <=> x > y *)
  | (Tail, IfFLE(x, y, e1, e2))   -> fprintf oc "\tc.olt.s\t0, %s, %s\n" (reg y) (reg x);
                                     let b_else = Id.genid ("c.olt.s" ^ "_else") in
                                     fprintf oc "\tbc1t\t0, %s\n" b_else; (* if y < x, then e2 *)
                                     let stackset_back = !stackset in
                                     g oc (Tail, e1);
                                     fprintf oc "%s:\n" b_else;
                                     stackset := stackset_back;
                                     g oc (Tail, e2)
  | (NonTail(z), IfEq(x, V(y), e1, e2)) -> let b_else = Id.genid ("beq" ^ "_else") in
                                           let b_cont = Id.genid ("beq" ^ "_cont") in
                                           fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg y) b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
  | (NonTail(z), IfEq(x, C(y), e1, e2)) -> fprintf oc "\tli\t%s, %d\n" reg_sw y;
                                           (* fprintf oc "\tsub\t%s, %s, %s\n" reg_sw (reg x) reg_sw; *)
                                           let b_else = Id.genid ("beq" ^ "_else") in
                                           let b_cont = Id.genid ("beq" ^ "_cont") in
                                           fprintf oc "\tbne\t%s, %s, %s\n" x (reg x) b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
  (* not (x <= y) <=> x > y <=> x - y > 0 *)
  | (NonTail(z), IfLE(x, V(y), e1, e2)) -> fprintf oc "\tsub\t%s, %s, %s\n" reg_sw x y;
                                           let b_else = Id.genid ("beq" ^ "_else") in
                                           let b_cont = Id.genid ("beq" ^ "_cont") in
                                           fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
  | (NonTail(z), IfLE(x, C(y), e1, e2)) -> fprintf oc "\tli\t%s, %d\n" reg_sw y;
                                           fprintf oc "\tsub\t%s, %s, %s\n" reg_sw x reg_sw;
                                           let b_else = Id.genid ("beq" ^ "_else") in
                                           let b_cont = Id.genid ("beq" ^ "_cont") in
                                           fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
                                           (* fprintf oc "\tsub\t%s, %s, %s\n" reg_sw x reg_sw; *)
                                           (* g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt" *)
  (* not (x >= y) <=> x < y <=> y - x > 0 *)
  | (NonTail(z), IfGE(x, V(y), e1, e2)) -> fprintf oc "\tsub\t%s, %s, %s\n" reg_sw y x;
                                           let b_else = Id.genid ("bge" ^ "_else") in
                                           let b_cont = Id.genid ("bge" ^ "_cont") in
                                           fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
  | (NonTail(z), IfGE(x, C(y), e1, e2)) -> fprintf oc "\tli\t%s, %d\n" reg_sw y;
                                           fprintf oc "\tsub\t%s, %s, %s\n" reg_sw reg_sw x;
                                           let b_else = Id.genid ("bge" ^ "_else") in
                                           let b_cont = Id.genid ("bge" ^ "_cont") in
                                           fprintf oc "\tbgtz\t%s, %s\n" reg_sw b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
  | (NonTail(z), IfFEq(x, y, e1, e2))   -> fprintf oc "\tc.eq.s\t0, %s, %s\n" (reg x) (reg y);
                                           let b_else = Id.genid ("c.eq.s" ^ "_else") in
                                           let b_cont = Id.genid ("c.eq.s" ^ "_cont") in
                                           fprintf oc "\tbc1f\t0, %s\n" b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
  | (NonTail(z), IfFLE(x, y, e1, e2))   -> fprintf oc "\tc.olt.s\t0, %s, %s\n" (reg y) (reg x);
                                           let b_else = Id.genid ("c.olt.s" ^ "_else") in
                                           let b_cont = Id.genid ("c.olt.s" ^ "_cont") in
                                           fprintf oc "\tbc1t\t0, %s\n" b_else;
                                           let stackset_back = !stackset in
                                           g oc (NonTail(z), e1);
                                           let stackset1 = !stackset in
                                           fprintf oc "\tj\t%s\n" b_cont;
                                           fprintf oc "%s:\n" b_else;
                                           stackset := stackset_back;
                                           g oc (NonTail(z), e2);
                                           fprintf oc "%s:\n" b_cont;
                                           let stackset2 = !stackset in
                                           stackset := S.inter stackset1 stackset2
  (* 関数呼び出しの仮想命令の実装 *)
  | (Tail, CallCls(x, ys, zs)) -> (* 末尾呼び出し *)
      (* Printf.printf "callcls, tail :: %s, zs: -------->>\n", x; *)
      (* List.iter (Printf.printf "%s ") zs; *)
      (* Printf.printf "\n"; *)
      (* Printf.printf "callcls, tail :: %s, zs: --------<<\n", x; *)
      g'_args oc [(x, reg_gp)] ys zs;
      fprintf oc "\tlw\t%s, 0(%s)\n" reg_tmp reg_gp;
      fprintf oc "\tjr\t%s\n" reg_tmp;
  | (Tail, CallDir(Id.L(x), ys, zs)) -> (* 末尾呼び出し *)
      (* Printf.printf "calldir, tail :: %s, zs: -------->>\n", x; *)
      (* List.iter (Printf.printf "%s ") zs; *)
      (* Printf.printf "\n"; *)
      (* Printf.printf "calldir, tail :: %s, zs: --------<<\n", x; *)
      g'_args oc [] ys zs;
      fprintf oc "\tj\t%s\n" x;
  | (NonTail(a), CallCls(x, ys, zs)) ->
      (* Printf.printf "callcls, nontail :: %s, zs: -------->>\n" x; *)
      (* List.iter (Printf.printf "%s ") zs; *)
      (* Printf.printf "\n"; *)
      (* Printf.printf "callcls, nontail :: %s, zs: --------<<\n" x; *)
      fprintf oc "\tmove\t%s, %s\n" reg_tmp reg_cl;
      (* g'_args oc [(x, reg_cl)] ys zs; *)
      g'_args oc [(x, reg_gp)] ys zs;
      let ss = stacksize () in
      fprintf oc "\tsw\t%s, %d(%s)\n" reg_tmp (1 - ss) reg_sp;
      fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp (-ss);
      fprintf oc "\tlw\t%s, 0(%s)\n" reg_tmp reg_gp;
      (* fprintf oc "\tmove\t%s, %s\n" reg_cl reg_tmp; *)
      fprintf oc "\tjalr\t%s, %s\n" reg_cl reg_tmp;
      fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
      fprintf oc "\tlw\t%s, %d(%s)\n" reg_tmp (1 - ss) reg_sp;
      (if List.mem a allregs && a <> regs.(2) then
         fprintf oc "\tmove\t%s, %s\n" (reg a) (reg regs.(2))
       else if List.mem a allfregs && a <> fregs.(0) then
         fprintf oc "\tmov.s\t%s, %s\n" (reg a) (reg fregs.(0)));
      fprintf oc "\tmove\t$ra, %s\n" reg_tmp
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) ->
      fprintf oc "\tmove\t%s, $ra\n" reg_tmp;
      g'_args oc [] ys zs;
      let ss = stacksize () in
      fprintf oc "\tsw\t%s, %d(%s)\n" reg_tmp (1 - ss) reg_sp;
      fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp (-ss);
      fprintf oc "\tjal\t%s\n" x;
      fprintf oc "\taddi\t%s, %s, %d\n" reg_sp reg_sp ss;
      fprintf oc "\tlw\t%s, %d(%s)\n" reg_tmp (1 - ss) reg_sp;
      (if List.mem a allregs && a <> regs.(2) then
         fprintf oc "\tmove\t%s, %s\n" (reg a) (reg regs.(2))
       else if List.mem a allfregs && a <> fregs.(0) then
         fprintf oc "\tmov.s\t%s, %s\n" (reg a) (reg fregs.(0)));
      fprintf oc "\tmove\t$ra, %s\n" reg_tmp
and g'_tail_if oc e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  fprintf oc "\t%s\t%s, %s\n" bn reg_sw b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  fprintf oc "\t%s\t%s, %s\n" bn reg_sw b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  fprintf oc "\tj\t%s\n" b_cont;
  fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) = List.fold_left (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs)) (4, x_reg_cl) ys in
  List.iter (fun (y, r) -> fprintf oc "\tmove\t%s, %s\n" (reg r) (reg y)) (shuffle reg_sw yrs);
  let (d, zfrs) = List.fold_left (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs)) (12, []) zs in
  List.iter (fun (z, fr) -> fprintf oc "\tmov.s\t%s, %s\n" (reg fr) (reg z)) (shuffle reg_fsw zfrs)

(* let rec showExp = function [> 命令列のアセンブリ生成 <] *)
  (* | (dest, Ans(exp)) -> Asm.showExp exp *)
  (* | (dest, Let((x, t), exp, e)) -> (Asm.showExp exp) ^ (showExp e) *)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  (* Format.printf "h, name = %s\n" x; *)
  (* Printf.printf "\nemit.showTerm(%s)>>>\n" x; *)
  (* print_string (Asm.showTerm e); *)
  (* Printf.printf "\nemit.showTerm(%s)<<<\n\n" x; *)
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  (if data <> [] then
    (fprintf oc "\t.data\n";
     List.iter
       (fun (Id.L(x), d) ->
     fprintf oc "%s:\t # %f\n" x d;
     (* fprintf oc "\t.word\t%ld\n" (getlo d)) *)
     fprintf oc "\t.word\t%ld\n" (to_float d))
       data));
  fprintf oc "\t.text\n";
  (* fprintf oc "\t.globl\t_min_caml_start\n"; *)
  List.iter (fun fundef -> h oc fundef) fundefs;
  (* Printf.printf "\nemit.showTerm(main)>>>\n"; *)
  (* print_string (Asm.showTerm e); *)
  (* Printf.printf "\nemit.showTerm(main)<<<\n\n"; *)
  fprintf oc "_min_caml_start: # main entry point\n";
  (* fprintf oc "\tmove\tt0, r31\n"; *)
  (* fprintf oc "\tsw\tr30, -8(r1)\n"; *)
  (* fprintf oc "\tsw\tr0, 8(r1)\n"; *)
  (* fprintf oc "\tswu\tr1, -96(r1)\n"; *)
  fprintf oc "   # main program start\n";
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("$v0"), e);
  fprintf oc "   # main program end\n";
(*  Printf.fprintf oc "\tmr\tr3, %s\n" regs.(0); *)
  (* fprintf oc "\tlw\tr1, 0(r1)\n"; *)
  (* fprintf oc "\tlw\tr0, 8(r1)\n"; *)
  (* fprintf oc "\tmove\tt0, r31\n"; *)
  (* fprintf oc "\tlmw\tr30, -8(r1)\n"; *)
  (* fprintf oc "\tblr\n" *)
  fprintf oc "\tjr\t%s\n" (reg reg_cl);
