#! nqp

say("1..0 # Skipped: design changes, need re-work");

# plan(4);
#
#my $parrot-comp := nqp::getcomp('parrot');#
#
#my $comp := $parrot-comp.get_module('HLL::Compiler');
#ok($comp =:= $parrot-comp.WHO, "correctly retrieved namespace");#
#
#my $crow := $parrot-comp.load_module('Crow');
#ok( pir::isa(Crow::help, 'Sub'), "successfully loaded Crow::help");
#ok( $crow =:= pir::get_hll_namespace__PP(['Crow']), "Crow ns correct");
#
#my $getopt := $parrot-comp.load_module('Getopt::Obj');
#ok( $getopt =:= pir::get_hll_namespace__PP(['Getopt','Obj']), "Getopt::Obj ns");
