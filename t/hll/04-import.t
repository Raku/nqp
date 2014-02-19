#! nqp

say("1..0 # Skipped: design changes (EXPORT now lexical), need re-work");

#plan(3);
#
#module ABC {
#    sub alpha() { 'alpha' }
#    sub &beta() { 'beta' }
#    our $gamma := 'gamma';
#}
#
#ABC::EXPORT::DEFAULT::alpha := ABC::alpha;
#$ABC::EXPORT::DEFAULT::gamma := $ABC::gamma;
#
#my $parrot-comp := nqp::getcomp('nqp');
#
#my $module := $parrot-comp.get_module('ABC');
#my %exports := $parrot-comp.get_exports($module);
#HLL::Compiler.import(pir::get_namespace__P, %exports);
#
#ok( alpha() eq 'alpha', "imported 'alpha' sub into current namespace" );
#
#our &beta;
#ok( !nqp::defined(&beta), "didn't import &beta");
#
#our $gamma;
#ok( $gamma eq 'gamma', 'did import $gamma');
