data Node = CompUnit [Node] deriving (Show, Read)

main = do 
    input <- getContents
    putStrLn $ show $ ((read input) :: Node)
