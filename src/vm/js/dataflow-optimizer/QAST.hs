module QAST where
type Id = Int
data Node = CompUnit [Node]
    | Block [Node]
    | Op String [Node] Id
    | Stmts [Node]
    | IVal Int Id
    | SVal String Id 
    | Var String String String Int 
    | Unknown
    deriving (Show, Read)
