{-# LANGUAGE GADTs, StandaloneDeriving #-}
import qualified QAST
import Compiler.Hoopl
import Text.Groom



type Slot = Int

data Value = IVal Int | Slot Slot
    deriving Show

data BlockDecl = BlockDecl (Graph Insn C C)

indent :: String -> String    
indent str = concat $ map (\line -> "  " ++ line ++ "\n") $ lines str

instance (Show BlockDecl) where
        show (BlockDecl graph) = "immediate {\n" ++ (indent (showGraph prettyInsn graph)) ++ "}"


compileStmts :: [QAST.Node] -> Graph Insn O O

-- compileStmts stmts = foldl (<*>) (mkMiddle $ Unknown "start") (map compileStmt stmts)
compileStmts stmts = catGraphs (map compileStmt stmts)


compileStmt :: QAST.Node -> Graph Insn O O
compileStmt (QAST.Stmts stmts) = compileStmts stmts
compileStmt stmt = mkMiddle $ Unknown (show stmt)

data Insn e x where 
    Label :: Label -> Insn C O
    Branch :: Label -> Insn O C
    ImmediateBlock :: BlockDecl -> Insn O O
    ImplicitReturn :: Value -> Insn O C
    Unknown :: String -> Insn O O

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
    return $ (mkFirst (mkLabelNode startOfBlock)) <*> (compileStmts nodes) <*> mkLast (ImplicitReturn $ IVal 0)

main = do 
    input <- getContents
    let compUnit = ((read input) :: QAST.Node)
    putStrLn $ groom compUnit
    putStrLn "\nturned it into:\n"
    let graph = runSimpleUniqueMonad (compileCompUnit compUnit)
    putStrLn $ showGraph prettyInsn graph
