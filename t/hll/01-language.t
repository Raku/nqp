use NQPHLL;
plan(2);

ok( nqp::getcomp('nqp') ~~ HLL::Compiler, 'compreg for NQP returns a HLL::Compiler' );
ok( nqp::getcomp('nqp').language eq 'nqp', '.language gives "nqp"' );
