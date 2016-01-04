plan(4);
class Foo {
}
my $a := Foo.new;
my $b := Foo.new;
ok(nqp::where($a) == nqp::where($a), 'nqp::where returns the same value for the same object');
ok(nqp::where($a) != nqp::where($b), 'nqp::where returns different values for different objects');

ok(nqp::objectid($a) == nqp::objectid($a), 'nqp::objectid returns the same value for the same object');
ok(nqp::objectid($a) != nqp::objectid($b), 'nqp::objectid returns different values for different objects');
