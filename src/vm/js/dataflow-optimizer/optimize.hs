{-# LANGUAGE GADTs, StandaloneDeriving, NoMonomorphismRestriction #-}
import Control.Monad
import qualified QAST
import Compiler.Hoopl
import Text.Groom
import qualified Data.Map as Map


type Result = Unique

data Value = IVal Int | Result Unique | UnknownValue | Void
    deriving Show


indent :: String -> String    
indent str = concat $ map (\line -> "  " ++ line ++ "\n") $ lines str



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
    Unknown :: String -> Insn O O
    Say :: Value -> Insn O O
    AddI :: Result -> Value -> Value -> Insn O O
    Exit :: Insn O C

deriving instance Show (Insn e x)

instance HooplNode (Insn) where
    mkBranchNode = Branch
    mkLabelNode = Label

instance NonLocal (Insn) where
    successors (Branch label) = [label]
    successors (Exit) = []
    entryLabel (Label label) = label
   

prettyInsn :: Showing Insn

prettyInsn insn = show insn



compileCompUnit :: QAST.Node -> SimpleUniqueMonad (Graph Insn O C)
compileCompUnit (QAST.CompUnit [qastBlock]) = do 
    blockContents <- compileImplicitBlock qastBlock
    return (blockContents <*> (mkLast Exit))

compileImplicitBlock :: QAST.Node -> SimpleUniqueMonad (Graph Insn O O)
compileImplicitBlock (QAST.Block nodes) = do
    (graph, values) <- compileStmts nodes
    return graph 

type ConstFact = Map.Map Result (WithTop Int)
constLattice :: DataflowLattice ConstFact
constLattice = DataflowLattice
    { fact_name = "Const result"
    , fact_bot = Map.empty
    , fact_join = joinMaps (extendJoinDomain constFactAdd)}
    where
        constFactAdd _ (OldFact old) (NewFact new)
            = if new == old then (NoChange, PElem new)
              else               (SomeChange, Top)

resultIsConst :: FwdTransfer Insn ConstFact
resultIsConst = mkFTransfer ft where
    ft :: Insn e x -> ConstFact -> Fact x ConstFact
    ft (Label _) f = f
    ft (Say _) f = f
    ft (Unknown _) f = f -- Unknown should make us forget everything
    ft (AddI result (IVal a) (IVal b)) f = Map.insert result (PElem (a + b)) f
    ft (AddI result _ _) f = Map.insert result Top f
    ft (Branch l) f = mapSingleton l f
    ft (Exit) _ = mapEmpty


constProp :: FuelMonad m => FwdRewrite m Insn ConstFact

constProp = mkFRewrite3 noop1 cp noop2
    where 
       cp insn f = return $ Nothing
       noop1 insn f = return $ Nothing
       noop2 insn f = return $ Nothing

constPropPass = FwdPass
    { fp_lattice = constLattice
    , fp_transfer = resultIsConst
    , fp_rewrite = constProp }


simpleRun :: SimpleFuelMonad a -> a

simpleRun = runSimpleUniqueMonad . runWithFuel infiniteFuel

main = do 
    input <- getContents
    let compUnit = ((read input) :: QAST.Node)
    putStrLn $ groom compUnit
    putStrLn "\n2 turned it into:\n"
    let graph = runSimpleUniqueMonad (compileCompUnit compUnit)

    let (optimized, facts, _) = simpleRun $ analyzeAndRewriteFwdOx constPropPass graph Map.empty
    putStrLn $ showGraph prettyInsn graph

    putStrLn $ "facts:" ++ (show facts)

    putStrLn "\noptimized into:\n"


    putStrLn $ showGraph prettyInsn optimized
