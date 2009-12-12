#! nqp

plan(2);

ok( HLL::Compiler.language eq 'parrot', 'HLL::Compiler reports parrot');

ok( pir::compreg__Ps('parrot') =:= HLL::Compiler, 'compreg "parrot"' );

