#! nqp

say("1..0 # Skipped: design changes (EXPORT now lexical), need re-work");

#plan(8);
#
#module ABC {
#    sub &alpha() { 'alpha' }
#    sub &beta() { 'beta' }
#    our $gamma := 'gamma';
#}
#
#&ABC::EXPORT::DEFAULT::alpha := &ABC::alpha;
#$ABC::EXPORT::DEFAULT::gamma := $ABC::gamma;
#
#my $parrot-comp := nqp::getcomp('nqp');
#
#my $module := $parrot-comp.get_module('ABC');
#my %exports := $parrot-comp.get_exports($module);
#
#ok( %exports<sub><&alpha> =:= &ABC::alpha, 'DEFAULT sub alpha export' );
#ok( !%exports<sub><&beta>, 'DEFAULT sub beta export');
#ok( %exports<var><$gamma> eq 'gamma', 'DEFAULT var gamma export');
#
#%exports := $parrot-comp.get_exports($module, :tagset<ALL>);
#
#ok( %exports<sub><&alpha> =:= &ABC::alpha, 'ALL sub alpha export' );
#ok( %exports<sub><&beta> =:= &ABC::beta, 'ALL sub beta export');
#ok( %exports<var><$gamma> eq 'gamma', 'ALL var gamma export');
#
#%exports := $parrot-comp.get_exports($module, '&beta', '$gamma');
#
#ok( %exports<sub><&beta> =:= &ABC::beta, 'named sub beta export');
#ok( %exports<var><$gamma> eq 'gamma', 'named var gamma export');
