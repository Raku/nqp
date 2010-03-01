#! nqp

pir::load_bytecode('nqp-settings.pbc');

my @array := <0 1 2>;
my @reversed := @array.reverse();

plan(3);

ok( @reversed[0] == 2, 'First element correct');
ok( @reversed[1] == 1, 'Second element correct');
ok( @reversed[2] == 0, 'Third element correct');

# vim: ft=perl6
