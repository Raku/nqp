#! nqp

plan(4);

my $comp := HLL::Compiler.get_module('HLL::Compiler');
ok($comp =:= HLL::Compiler.WHO, "correctly retrieved namespace");

my $crow := HLL::Compiler.load_module('Crow');
ok( pir::isa(Crow::help, 'Sub'), "successfully loaded Crow::help");
ok( $crow =:= pir::get_hll_namespace__PP(['Crow']), "Crow ns correct");

my $getopt := HLL::Compiler.load_module('Getopt::Obj');
ok( $getopt =:= pir::get_hll_namespace__PP(['Getopt','Obj']), "Getopt::Obj ns");


