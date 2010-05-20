#! nqp

pir::load_bytecode('nqp-setting.pbc');

my @array := <0 1 2>;
my @reversed := @array.reverse();

plan(5);

ok( @reversed[0] == 2, 'First element correct');
ok( @reversed[1] == 1, 'Second element correct');
ok( @reversed[2] == 0, 'Third element correct');

my $join := @array.join('|');
ok( $join eq '0|1|2', 'Join elements');

ok( join(':', 'foo', 'bar', 'baz') eq 'foo:bar:baz', 'Join as standalone function');

# vim: ft=perl6
