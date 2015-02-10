plan(9);
class Foo {
    method foo() {
        'bar';
    }
}
my $foo := Foo.new;

ok(nqp::isconcrete($foo) == 1, 'nqp::isconcrete on normal object');
ok(nqp::isconcrete(Foo) == 0, 'nqp::isconcrete on typeobject');

ok(nqp::defined($foo) == 1, 'nqp::defined on normal object');
ok(nqp::defined(Foo) == 0, 'nqp::defined with typeobject');

ok($foo.REPR eq 'P6opaque', 'calling nqp::reprname using the .REPR syntax');
ok(nqp::reprname($foo) eq 'P6opaque', 'nqp::reprname on P6opaque');


class Foo2 is Foo {
    method foo() {
        'reblessed bar';
    }
}

my $foo2 := Foo.new;

my $ret := nqp::rebless($foo2, Foo2);
ok(nqp::eqaddr($ret, $foo2), "return value of nqp::rebless");

ok($foo.foo eq 'bar', "other objects of that class don't change");
ok($foo2.foo eq 'reblessed bar', "the rebless object has new methods");
