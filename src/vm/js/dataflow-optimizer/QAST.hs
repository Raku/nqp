module QAST where
data Node = CompUnit [Node]
    | Block [Node]
    | Op String [Node]
    | Stmts [Node]
    | IVal Int
    | SVal String
    | Var String String String Int 
    | Unknown
    deriving (Show, Read)
