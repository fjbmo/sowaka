exception Error of Syntax.t * Type.t * Type.t
val extenv : Type.t M.t ref
val f : Syntax.t -> Syntax.t
val g : Type.t M.t -> Syntax.t -> Type.t
