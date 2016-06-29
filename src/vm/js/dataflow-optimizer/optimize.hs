{-# LANGUAGE GADTs, StandaloneDeriving #-}
import qualified QAST
import Compiler.Hoopl
import Text.Groom



type Slot = Int

data Value = IVal Int | Slot Slot
    deriving Show

data BlockDecl = BlockDecl (Graph Insn C C)

instance (Show BlockDecl) where
        show decl = "block {...}"

data Insn e x where 
    Label :: Label -> Insn C O
    InsnOp :: Slot -> String -> [Value] -> Insn O O
    Branch :: Label -> Insn O C
    ImmediateBlock :: BlockDecl -> Insn O O
    ImplicitReturn :: Value -> Insn O C

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
compileCompUnit (QAST.CompUnit [block]) = do 
    start <- freshLabel
--    blockContents <- compileImplicitBlock block
    return ((mkFirst (mkLabelNode start)) <*> (mkLast (ImplicitReturn $ IVal 0)))

{-compileImplicitBlock :: QAST.Node -> SimpleUniqueMonad (Insn C C)
compileImplicitBlock (QAST.Block nodes) = do
    startOfBlock <- freshLabel
    return $ mkLabelNode startOfBlock <|> mkLast (ImplicitReturn $ IVal 0)-}

main = do 
    input <- getContents
    let compUnit = ((read input) :: QAST.Node)
    putStrLn $ groom compUnit
    putStrLn "\nturned it into:\n"
    let graph = runSimpleUniqueMonad (compileCompUnit compUnit)
    putStrLn $ showGraph prettyInsn graph
