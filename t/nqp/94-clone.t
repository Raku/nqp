plan(10);
sub foo() {
    'hello there';
}
my $a := &foo;
my $b := nqp::clone($a);

nqp::setcodeobj($a, "obj");
ok(nqp::getcodename($a) eq 'foo', 'sanity check');
ok(nqp::getcodename($b) eq 'foo', 'cloned sub has correct name');
ok($b() eq 'hello there', 'you can call a cloned sub');
nqp::setcodename($b, 'bumblebee');
ok(nqp::getcodename($a) eq 'foo', "changing the name on the cloned sub doesn't affect orginal");
ok(nqp::getcodename($b) eq 'bumblebee', "you can change the name on the cloned sub");

class Foo {
    has $!foo;
    method get_foo() {
        $!foo;
    }
    method set_foo($value) {
        $!foo := $value;
    }
}

{
    my $c := Foo.new(foo => 123);
    my $d := nqp::clone($c);
    $c.set_foo(456);
    ok($d.get_foo == 123, "changing an attr on the cloned object doesn't affect the orginal");
    ok($c.get_foo == 456, "we can change an attr on the new object");
}

my $list := nqp::list(0,100,200,300, nqp::list(400, 401, 402));

my $cloned := nqp::clone($list);

$cloned[2] := 20;

ok($cloned[2] == 20, "we can change an element of a cloned array");
ok($list[2] == 200, "...and the original array remains unchanged");

$cloned[4][2] := 42;

ok($list[4][2] == 42, "cloning is shallow");
