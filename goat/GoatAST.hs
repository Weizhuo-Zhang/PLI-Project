module GoatAST where



type Ident = String

data PType
  = BoolType | IntType | FloatType
    deriving (Show, Eq)

data Lvalue
  = LId Ident
    deriving (Show, Eq)

data Expr
  = Id Ident
  | BoolConst Bool
  | IntConst Int
  | FloatConst Float
  | StrConst String
  | Expr Expr
  | Add Expr Expr
  | Mul Expr Expr
  | Min Expr Expr
  | Div Expr Expr
  | Or Expr Expr
  | And Expr Expr
  | Eq Expr Expr
  | Neq Expr Expr
  | Les Expr Expr
  | Leseq Expr Expr
  | Grt Expr Expr
  | Grteq Expr Expr
  | UnegOp Expr
  | UnotOp Expr
    deriving (Show, Eq)

data VDecl
  = VDecl PType Ident ()
    deriving (Show, Eq)

data Stmt
  = Assign Lvalue Expr
  | Read Lvalue
  | Write Expr
  | Call Lvalue ()
  | If Expr [Stmt]
  | IfElse Expr [Stmt] [Stmt]
  | While Expr [Stmt]
    deriving (Show, Eq)

data Body
  = Body [VDecl] [Stmt]
      deriving (Show, Eq)

data Pindicator
  = VarType | RefType
      deriving (Show, Eq)

data Sindicator
  = Array Expr
  | Matrix (Expr,Expr)
      deriving (Show, Eq)

data Parameter
  = Parameter Pindicator PType Ident
      deriving (Show, Eq)

data Header
  = Header Ident [Parameter]
      deriving (Show, Eq)

data Procedure
  = Procedure Header Body
      deriving (Show, Eq)

data GoatProgram
  = Program [Procedure]
      deriving (Show, Eq)
