data Node = CompUnit [Node]
    | Block [Node]
    | Op String [Node]
    | Stmts [Node]
    | IVal Int
    | SVal String
    | Var
    | Unknown
    deriving (Show, Read)

main = do 
    input <- getContents
    putStrLn $ show $ ((read input) :: Node)
