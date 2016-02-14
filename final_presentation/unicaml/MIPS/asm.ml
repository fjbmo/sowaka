(* MIPS assembly with a few virtual instructions *)

type id_or_imm = V of Id.t | C of int

type t = (* 命令の列 *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 一つ一つの命令に対応する式 *)
  | Nop
  | Li of int
  | FLi of Id.l
  | SetL of Id.l
  | Move of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | Lw of Id.t * id_or_imm  (* Load word *)
  | Sw of Id.t * Id.t * id_or_imm (* Store word *)
  | FMove of Id.t
  | FNeg of Id.t (* negation for float *)
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | Lfd of Id.t * id_or_imm
  | Stfd of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 *)
type prog = Prog of (Id.l * float) list * fundef list * t

let showIdOrImm = function
  | V(t) -> t
  | C(i) -> string_of_int i

let rec showTuple xs = if List.length xs = 0 then "" else
                       if List.length xs = 1 then List.hd xs else
                       (List.hd xs) ^ ", " ^ (showTuple (List.tl xs))


let rec showTerm = function
  | Ans(exp) -> showExp exp
  | Let((id, _), exp, t) -> "let " ^ id ^ " = " ^ showExp exp ^ " in\n" ^ showTerm t

and

showExp = function
  | Nop -> "Nop"
  | Li(i) -> "Li (" ^ string_of_int i ^ ")"
  | FLi(Id.L(l)) -> "FLi(" ^ l ^ ")"
  | SetL(Id.L(l)) -> "SetL (" ^ l ^ ")"
  | Move(t) -> "Move (" ^ t ^ ")"
  | Neg(t) -> "Neg (" ^ t ^ ")"
  | Add(t, ii) -> "Add " ^ t ^ ", " ^ showIdOrImm ii
  | Sub(t, ii) -> "Sub " ^ t ^ ", " ^ showIdOrImm ii
  | Div(t, ii) -> "Div " ^ t ^ ", " ^ showIdOrImm ii
  | Lw(t, ii) -> "Lw " ^ t ^ ", " ^ showIdOrImm ii
  | Sw(t1, t2, ii) -> "Sw " ^ t1 ^ ", " ^ t2 ^ ", " ^ showIdOrImm ii
  | FMove(t) -> "FMove " ^ t
  | FNeg(t) -> "FNeg " ^ t
  | FAdd(t1, t2) -> "FAdd " ^ t1 ^ ", " ^ t2
  | FSub(t1, t2) -> "FSub " ^ t1 ^ ", " ^ t2
  | FMul(t1, t2) -> "FMul " ^ t1 ^ ", " ^ t2
  | FDiv(t1, t2) -> "FDiv " ^ t1 ^ ", " ^ t2
  | Lfd(t, ii) -> "Lfd " ^ t ^ ", " ^ showIdOrImm ii
  | Stfd(t1, t2, ii) -> "Stfd " ^ t1 ^ ", " ^ t2 ^ ", " ^ showIdOrImm ii
  | Comment(str) -> str
  (* virtual instructions *)
  | IfEq(t, ii, t1, t2) -> "If " ^ t ^ " = " ^ showIdOrImm ii ^ " then " ^ showTerm t1 ^ " else " ^ showTerm t2
  | IfLE(t, ii, t1, t2) -> "If " ^ t ^ " < " ^ showIdOrImm ii ^ " then " ^ showTerm t1 ^ " else " ^ showTerm t2
  | IfGE(t, ii, t1, t2) -> "If " ^ t ^ " > " ^ showIdOrImm ii ^ " then " ^ showTerm t1 ^ " else " ^ showTerm t2
  | IfFEq(t, t', t1, t2) -> "If " ^ t ^ " = " ^ t' ^ " then " ^ showTerm t1 ^ " else " ^ showTerm t2
  | IfFLE(t, t', t1, t2) -> "If " ^ t ^ " < " ^ t' ^ " then " ^ showTerm t1 ^ " else " ^ showTerm t2
  (* closure address, integer arguments, and float arguments *)
  | CallCls(t, is, fs) -> t ^ "((" ^ showTuple is ^"), (" ^ showTuple fs ^ "))"
  | CallDir(Id.L(l), is, fs) -> l ^ "((" ^ showTuple is ^"), (" ^ showTuple fs ^ "))"
  | Save(t1, t2) -> "Save (" ^ t1 ^ ", " ^ t2 ^ ")"
  | Restore(t) -> "Restore " ^ t

let showProg = function
  | Prog(_, _, t) -> showTerm t

(* shorthand of Let for float *)
(* fletd : Id.t * exp * t -> t *)
let fletd (x, e1, e2) = Let ((x, Type.Float), e1, e2)

(* shorthand of Let for unit *)
(* seq : exp * t -> t *)
let seq (e1, e2) = Let ((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = [| "$zero";  (* always zero *)
              "$at";    (* temporaly register *)
              "$v0"; "$v1"; (* return value of a function *)
              "$a0"; "$a1"; "$a2"; "$a3"; (* arguments of a function *)
              "$t0"; "$t1"; "$t2"; "$t3"; "$t4"; "$t5"; "$t6"; "$t7"; (* temporaly register (discarded on a call of a funtion *)
              "$s0"; "$s1"; "$s2"; "$s3"; "$s4"; "$s5"; "$s6"; "$s7"; (* temporaly register (retained during a call of a function *)
              "$t8"; "$t9"; (* temporaly register (discarded on a call of a function *)
              "$k0"; "$k1"; (* booked for os *)
              "$gp"; (* base address of a global variable area (?) *)
              "$sp"; (* stack pointer *)
              "$hp"; (* heap pointer *)
              "$ra"; |] (* return address of a function *)
(* let regs = Array.init 27 (fun i -> Printf.sprintf "_R_%d" i) *)
let fregs    = Array.init 32 (fun i -> Printf.sprintf "$f%d" i)
let allregs  = Array.to_list regs
let allfregs = Array.to_list fregs

let allocatable  = Array.sub regs  2 26 |> Array.to_list
let fallocatable = Array.sub fregs 2 30 |> Array.to_list

let reg_cl   = regs.(Array.length regs - 1) (* closure address ($ra) *)
let reg_sw   = regs.(1) (* temporary for swap ($at) *)
let reg_fsw  = fregs.(1) (* temporary for swap *)
let reg_sp   = regs.(Array.length regs - 3) (* $sp *)
let reg_hp   = regs.(Array.length regs - 2)
let reg_tmp  = regs.(24)

let reg_gp   = regs.(Array.length regs - 4) (* gp *)

(* is_reg : Id.t -> bool *)
let is_reg x = x.[0] = '$'

(* remove_and_uniq : S.t -> Id.t list -> Id.t list *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) *)
(* fv_id_or_imm : id_or_imm -> Id.t list *)
let fv_id_or_imm = function V (x) -> [x] | _ -> []

(* fv_exp : Id.t list -> t -> S.t list *)
let rec fv_exp = function
  | Nop | Li (_) | FLi (_) | SetL (_) | Comment (_) | Restore (_) -> []
  | Move (x) | Neg (x) | FMove (x) | FNeg (x) | Save (x, _) -> [x]
  | Add (x, y') | Sub (x, y') | Mul(x, y') | Div(x, y') | Lfd (x, y') | Lw (x, y') -> x :: fv_id_or_imm y'
  | FAdd (x, y) | FSub (x, y) | FMul (x, y) | FDiv (x, y) ->
      [x; y]
  | Sw (x, y, z') | Stfd (x, y, z') -> x :: y :: fv_id_or_imm z'
  | IfEq (x, y', e1, e2) | IfLE (x, y', e1, e2) | IfGE (x, y', e1, e2) -> x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2)
  | IfFEq (x, y, e1, e2) | IfFLE (x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2)
  | CallCls (x, ys, zs) -> x :: ys @ zs
  | CallDir (_, ys, zs) -> ys @ zs
and fv = function
  | Ans (exp) -> fv_exp exp
  | Let ((x, t), exp, e) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)

(* fv : t -> Id.t list *)
let fv e = remove_and_uniq S.empty (fv e)

(* concat : t -> Id.t * Type.t -> t -> t *)
let rec concat e1 xt e2 = match e1 with
  | Ans (exp) -> Let (xt, exp, e2)
  | Let (yt, exp, e1') -> Let (yt, exp, concat e1' xt e2)

(* align : int -> int *)
let align i = if i mod 8 = 0 then i else i + 4
