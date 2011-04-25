#! nqp

use HLL;

plan(2);

ok( pir::compreg__Ps('parrot') ~~ HLL::Compiler, 'compreg for Parrot returns a HLL::Compiler' );

ok( pir::compreg__Ps('parrot').language eq 'parrot', '.language gives "parrot"' );

