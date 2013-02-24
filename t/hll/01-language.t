#! nqp

use NQPHLL;

plan(2);

ok( nqp::getcomp('parrot') ~~ HLL::Compiler, 'compreg for Parrot returns a HLL::Compiler' );

ok( nqp::getcomp('parrot').language eq 'parrot', '.language gives "parrot"' );

