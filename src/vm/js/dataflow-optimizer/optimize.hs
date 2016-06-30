{-# LANGUAGE GADTs, StandaloneDeriving #-}
import qualified QAST
import Compiler.Hoopl
import Text.Groom



type Slot = Int

data Value = IVal Int | Slot Slot | UnknownValue
    deriving Show

data BlockDecl = BlockDecl (Graph Insn C C)

indent :: String -> String    
indent str = concat $ map (\line -> "  " ++ line ++ "\n") $ lines str

instance (Show BlockDecl) where
        show (BlockDecl graph) = "immediate {\n" ++ (indent (showGraph prettyInsn graph)) ++ "}"


compileStmts :: [QAST.Node] -> (Graph Insn O O, [Value])

compileStmts stmts = 
    let (graphs, values) = unzip $ map compileStmt stmts in
        (catGraphs graphs, values)

compileStmt :: QAST.Node -> (Graph Insn O O, Value)

compileStmt (QAST.Stmts stmts) = (fst $ compileStmts stmts, UnknownValue)
compileStmt (QAST.Op "say" args) = 
    let (graph, values) = compileStmts args in
        (graph <*> (mkMiddle $ Say values), UnknownValue)

compileStmt (QAST.Op "add_i" args) = 
    let (graph, [a, b]) = compileStmts args
        in (graph <*> (mkMiddle $ AddI a b), UnknownValue)

compileStmt (QAST.IVal i) = (emptyGraph, IVal i)

compileStmt stmt = (mkMiddle $ Unknown (show stmt), UnknownValue)

data Insn e x where 
    Label :: Label -> Insn C O
    Branch :: Label -> Insn O C
    ImmediateBlock :: BlockDecl -> Insn O O
    ImplicitReturn :: Value -> Insn O C
    Unknown :: String -> Insn O O
    Say :: [Value] -> Insn O O
    AddI :: Value -> Value -> Insn O O

deriving instance Show (Insn e x)

instance HooplNode (Insn) where
    mkBranchNode = Branch
    mkLabelNode = Label

instance NonLocal (Insn) where
    successors (Branch label) = [label]
    entryLabel (Label label) = label
   

prettyInsn :: Showing Insn

prettyInsn insn = show insn



compileCompUnit :: QAST.Node -> SimpleUniqueMonad (Graph Insn C C)
compileCompUnit (QAST.CompUnit [qastBlock]) = do 
    start <- freshLabel
    blockContents <- compileImplicitBlock qastBlock
    let callBlock = ImmediateBlock $ BlockDecl blockContents
    return ((mkFirst (mkLabelNode start)) <*> (mkMiddle callBlock) <*> (mkLast (ImplicitReturn $ IVal 0)))

compileImplicitBlock :: QAST.Node -> SimpleUniqueMonad (Graph Insn C C)
compileImplicitBlock (QAST.Block nodes) = do
    startOfBlock <- freshLabel
    let (graph, values) = compileStmts nodes
    let result = if null values then UnknownValue else last values
    return $ (mkFirst (mkLabelNode startOfBlock)) <*> graph <*> mkLast (ImplicitReturn result)

main = do 
    input <- getContents
    let compUnit = ((read input) :: QAST.Node)
    putStrLn $ groom compUnit
    putStrLn "\nturned it into:\n"
    let graph = runSimpleUniqueMonad (compileCompUnit compUnit)
    putStrLn $ showGraph prettyInsn graph
