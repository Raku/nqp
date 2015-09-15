plan(2);
class Foo {
}
my $a := Foo.new;
my $b := Foo.new;
ok(nqp::where($a) == nqp::where($a), 'nqp::where returns the same value for the same object');
ok(nqp::where($a) != nqp::where($b), 'nqp::where returns different values for different objects');
