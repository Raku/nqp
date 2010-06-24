#! nqp

pir::load_bytecode('nqp-setting.pbc');

my @array := <0 1 2>;
my @reversed := @array.reverse();

plan(10);

ok( @reversed[0] == 2, 'First element correct');
ok( @reversed[1] == 1, 'Second element correct');
ok( @reversed[2] == 0, 'Third element correct');

my $join := @array.join('|');
ok( $join eq '0|1|2', 'Join elements');

ok( join(':', 'foo', 'bar', 'baz') eq 'foo:bar:baz', 'Join as standalone function');

my @test := <apple banana cherry>;
ok( @test.exists(2), 'Item exists at @test[2]' );
ok( !@test.exists(3), 'Item does not exist at @test[3]');
@test.delete(1);
ok( @test[1] eq 'cherry', '@test[1] was deleted');
ok( +@test == 2, '@test[1] has two items');
ok( !@test.exists(2), '@test[2] no longer exists');

# vim: ft=perl6
