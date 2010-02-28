#! nqp

pir::load_bytecode('nqp-settings.pbc');

my @array := <0 1 2>;
my @reversed := @array.reverse();

say('1..3');

my $check := @reversed[0] == 2 ?? 'ok' !! 'nok';
say("$check\n");
$check := @reversed[1] == 1 ?? 'ok' !! 'nok';
say("$check\n");
$check := @reversed[0] == 2 ?? 'ok' !! 'nok';
say("$check\n");
