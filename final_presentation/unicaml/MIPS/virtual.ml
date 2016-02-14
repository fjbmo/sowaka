(* translation into MIPS assembly (infinite number of virtual registers) *)

open Asm

let data = ref [] (* 浮動小数点数の定数テーブル *)

(* xtsは(name, type)のリスト。classifyはtypeの種類によって異なる関数を実行するためのもの。 *)
let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) -> match t with
       | Type.Unit -> acc
       | Type.Float -> addf acc x
       | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x -> let offset = offset in
    (offset + 1, addf x offset acc))
    (fun (offset, acc) x t -> (offset + 1, addi x t offset acc))

let rec g env = function (* 式の仮想マシンコード生成 *)
  | Closure.Unit -> Ans (Nop)
  | Closure.Int (i) -> Ans (Li (i))
  | Closure.Float (d) -> let l =
    try
      let (l, _) = List.find (fun (_, d') -> d = d') !data in l
    with Not_found ->
      let l = Id.L (Id.genid "l") in
      data := (l, d) :: !data; l in
      Ans (FLi (l)) (* FLiは上で定義したラベルlを利用してメモリからdを読み出すことになる *)
  | Closure.Neg (x) -> Ans (Neg (x))
  | Closure.Add (x, y) -> Ans (Add (x, V (y)))
  | Closure.Sub (x, y) -> Ans (Sub (x, V (y)))
  | Closure.Mul (x, y) -> Ans (Mul (x, V (y)))
  | Closure.Div (x, y) -> Ans (Div (x, V (y)))
  | Closure.FNeg (x) -> Ans (FNeg (x))
  | Closure.FAdd (x, y) -> Ans (FAdd (x, y))
  | Closure.FSub (x, y) -> Ans (FSub (x, y))
  | Closure.FMul (x, y) -> Ans (FMul (x, y))
  | Closure.FDiv (x, y) -> Ans (FDiv (x, y))
  | Closure.IfEq (x, y, e1, e2) ->
      (match M.find x env with
      | Type.Bool
      | Type.Int   -> Ans (IfEq (x, V (y), g env e1, g env e2))
      | Type.Float -> Ans (IfFEq (x, y, g env e1, g env e2))
      | _          -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE (x, y, e1, e2) ->
       (match M.find x env with
       | Type.Bool
       | Type.Int   -> Ans (IfLE (x, V (y), g env e1, g env e2))
       | Type.Float -> Ans (IfFLE (x, y, g env e1, g env e2))
       | _          -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let ((x, t1), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var (x) ->
      (match M.find x env with
      | Type.Unit -> Ans (Nop)
      | Type.Float -> Ans (FMove (x))
      | _ -> Ans (Move (x)))
  (* x: name of function, t: type of function, l: L(x), ys: free variables in l *)
  (* note that l is the name of the function to be created here *)
  | Closure.MakeCls ((x, t), {Closure.entry = l; Closure.actual_fv = ys}, e2) ->
      (* closure のアドレスをセットしてからストア *)
      let e2' = g (M.add x t env) e2 in (* Add the type of currently creating closure to the environment*)

      (* Printf.printf "\nvirtual.showExp(%s)>>>\n" x; *)
      (* print_string (Asm.showTerm e2'); *)
      (* Printf.printf "\nvirtual.showExp(%s) <<<\n\n" x; *)

      let (offset, store_fv) = expand (List.map (fun y -> (y, M.find y env)) ys)
                                      (1, e2')
                                      (fun y   offset store_fv -> seq (Stfd (y, x, C(-offset)), store_fv))
                                      (fun y _ offset store_fv -> seq (Sw   (y, x, C(-offset)), store_fv)) in
      (* Printf.printf "\nvirtual.showExp2(%s)>>>\n" x; *)
      (* print_string (Asm.showTerm store_fv); *)
      (* Printf.printf "\nvirtual.showExp2(%s) <<<\n\n" x; *)

       let z = Id.genid "l" in
       Let ((x, t), Move (reg_hp),
         Let ((reg_hp, Type.Int), Add (reg_hp, C(offset)),
           Let ((z, Type.Int), SetL(l), seq (Sw (z, x, C(0)), store_fv))))
  | Closure.AppCls (x, ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans (CallCls (x, int, float))
  | Closure.AppDir (Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans (CallDir (Id.L(x), int, float))
  | Closure.Tuple (xs) -> (* 組の生成 *)
      let y = Id.genid "t" in
      let tuple_with_type = List.map (fun x -> (x, M.find x env)) xs in
      let store_floats = fun x offset store -> seq (Stfd (x, y, C (-offset)), store) in
      let store_ints = fun x _ offset store -> seq (Sw (x, y, C (-offset)), store)  in
      let (offset, store) = expand tuple_with_type (0, Ans (Move (y))) store_floats store_ints in
      let type_of_tuple = List.map (fun x -> M.find x env) xs in
      (* $hpの指している場所にtupleを作成する *)
      Let((y, Type.Tuple(type_of_tuple)),
          Move(reg_hp), (* y <- $hp (このyを用いてtupleにアクセスすることになる) *)
          Let((reg_hp, Type.Int),
              Add(reg_hp, C(offset)), (* $hpをtupleのサイズに合わせて大きくする *)
              store))
  | Closure.LetTuple (xts, y, e2) ->
      let s = Closure.fv e2 in
      let (offset, load) = expand xts
                             (0, g (M.add_list xts env) e2)
                             (fun x offset load -> if not (S.mem x s) then load else fletd (x, Lfd (y, C(-offset)), load))
                             (fun x t offset load -> if not (S.mem x s) then load else Let ((x, t), Lw (y, C(-offset)), load)) in
      load
   | Closure.Get (x, y) -> (* 配列の読み出し *)
       let offset = Id.genid "o" in
       (match M.find x env with
         | Type.Array (Type.Unit) -> Ans (Nop)
         | Type.Array (Type.Float) -> Ans (Lfd (x, V(y)))
         | Type.Array (_)          -> Ans (Lw (x, V(y)))
         (* | Type.Array (Type.Float) -> Let ((offset, Type.Int), Swl (y, C(3)), Ans (Lfd (x, V (offset)))) *)
             (* Let ((offset, Type.Int), Swl (y, C(2)), Ans (Lw (x, V (offset)))) *)
         | _ -> assert false)
   | Closure.Put (x, y, z) ->
       let offset = Id.genid "o" in
       (match M.find x env with
        | Type.Array (Type.Unit)  -> Ans (Nop)
        (* | Type.Array (Type.Float) -> Let ((offset, Type.Int), SetL (y, C(1)), Ans (Stfd (z, x, V (offset)))) *)
        (* | Type.Array (_)          -> Let ((offset, Type.Int), Add (x, V(z)), Ans (Sw (z, x, V (offset)))) *)
        | Type.Array (Type.Float) -> Ans (Stfd (z, x, V(y)))
        | Type.Array (_)          -> Ans (Sw (z, x, V(y)))
        | _ -> assert false)
  | Closure.ExtArray (Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x)))

(* 関数の仮想マシンコード生成 *)
let h { Closure.name = (Id.L(x), t);
        Closure.args = yts;
        Closure.formal_fv = zts;
        Closure.body = e} =
    let (int, float) = separate yts in
    let (offset, load) = expand
                         zts
                         (1, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
                         (fun z offset load   -> fletd (z,    Lfd (reg_gp, C (-offset)), load))
                         (fun z t offset load -> Let  ((z, t), Lw (reg_gp, C (-offset)), load)) in
    match t with
    | Type.Fun (_, t2) ->
        (* Printf.printf "\nlast.virtual.showExp(%s)>>>\n" x; *)
        (* print_string (Asm.showTerm load); *)
        (* Printf.printf "\nlast.virtual.showExp(%s)<<<\n\n" x; *)
        { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
    | _ -> assert false

      (* プログラム全体の仮想マシンコード生成 *)
let f (Closure.Prog (fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e' = g M.empty e in
  (* Printf.printf "\nvirtual.showTerm(main)>>>\n"; *)
  (* print_string (Closure.showClosure e); *)
  (* print_string "\n---------\n"; *)
  (* print_string (Asm.showTerm e'); *)
  (* Printf.printf "\nvirtual.showTerm(main)<<<\n\n"; *)
  (* print_string (Asm.showTerm e); *)
  (* print_string "\n===============\n"; *)
  Prog (!data, fundefs, e')
