{-# LANGUAGE GADTs, StandaloneDeriving #-}
import Control.Monad
import qualified QAST
import Compiler.Hoopl
import Text.Groom


type Result = Unique

data Value = IVal Int | Result Unique | UnknownValue | Void
    deriving Show

data BlockDecl = BlockDecl (Graph Insn C C)

indent :: String -> String    
indent str = concat $ map (\line -> "  " ++ line ++ "\n") $ lines str

instance (Show BlockDecl) where
        show (BlockDecl graph) = "immediate {\n" ++ (indent (showGraph prettyInsn graph)) ++ "}"


compileStmts :: [QAST.Node] -> SimpleUniqueMonad (Graph Insn O O, [Value])

compileStmts stmts = do
    (graphs, values) <- mapAndUnzipM compileStmt stmts
    return (catGraphs graphs, values)

compileStmt :: QAST.Node -> SimpleUniqueMonad (Graph Insn O O, Value)

compileStmt (QAST.Stmts stmts) = do
    (graph, values) <- compileStmts stmts
    let result = if null values then Void else last values
    return (graph, result)

compileStmt (QAST.Op "say" args) = do
    (graph, [value]) <- compileStmts args
    return (graph <*> (mkMiddle $ Say value), value)

compileStmt (QAST.Op "add_i" args) = do
    result <- freshUnique
    (graph, [a, b]) <- compileStmts args
    return (graph <*> (mkMiddle $ AddI result a b), Result result)

compileStmt (QAST.IVal i) = return (emptyGraph, IVal i)

compileStmt stmt = return (mkMiddle $ Unknown (show stmt), UnknownValue)

data Insn e x where 
    Label :: Label -> Insn C O
    Branch :: Label -> Insn O C
    ImmediateBlock :: BlockDecl -> Insn O O
    ImplicitReturn :: Value -> Insn O C
    Unknown :: String -> Insn O O
    Say :: Value -> Insn O O
    AddI :: Result -> Value -> Value -> Insn O O

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
    (graph, values) <- compileStmts nodes
    let result = if null values then Void else last values
    return $ (mkFirst (mkLabelNode startOfBlock)) <*> graph <*> mkLast (ImplicitReturn result)

main = do 
    input <- getContents
    let compUnit = ((read input) :: QAST.Node)
    putStrLn $ groom compUnit
    putStrLn "\nturned it into:\n"
    let graph = runSimpleUniqueMonad (compileCompUnit compUnit)
    putStrLn $ showGraph prettyInsn graph
