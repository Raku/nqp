#! nqp

pir::load_bytecode('nqp-setting.pbc' );

my %hash := hash( foo => 1, bar => 2, baz => 42 );

plan(17);

ok( %hash.exists('foo'), 'Key exists');
ok( !(%hash.exists('bang')), "Key doesn't exist");

my @keys := %hash.keys;
ok(+@keys == 3, "Got 3 keys total" );

my @sorted := <bar baz foo>;
for @keys.sort -> $key {
    my $expected := @sorted.shift;
    ok( $expected == $key, "Key is correct" );
}

my %expected := hash( foo => 1, bar => 2, baz => 42 );
my %values;

for %hash.kv -> $k, $v {
    ok( %expected.exists($k), "Key exists" );
    ok( %expected{$k} == $v,  "Value correct" );
    %expected.delete($k);
    %values{$v} := 1
}

ok( +%expected.keys == 0, "All keys processed" );

for %hash.values -> $v {
    ok( %values.exists($v), "Value correct" );
    %values.delete($v);
}

ok( +%values.keys == 0, "All values processed" );

# vim: ft=perl6
