plan(16);
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

is($foo.REPR, 'P6opaque', 'calling nqp::reprname using the .REPR syntax');
is(nqp::reprname($foo), 'P6opaque', 'nqp::reprname on P6opaque');


class Foo2 is Foo {
    method foo() {
        'reblessed bar';
    }
}

my $foo2 := Foo.new;

my $ret := nqp::rebless($foo2, Foo2);
ok(nqp::eqaddr($ret, $foo2), "return value of nqp::rebless");

is($foo.foo, 'bar', "other objects of that class don't change");
is($foo2.foo, 'reblessed bar', "the rebless object has new methods");

class Foo3 {
}

nqp::settypecache(Foo, [Foo3]);

ok(nqp::istype($foo, Foo3), "nqp::settypecache works");

nqp::setmethcache(Foo, nqp::hash('baz', sub ($invocant) {'baz method called'}));

is($foo.baz, 'baz method called', "nqp::setmethcache works");

ok(nqp::objprimspec(int) == 1, 'nqp::objprimspec on int');
ok(nqp::objprimspec(str) == 3, 'nqp::objprimspec on str');
ok(nqp::objprimspec(num) == 2, 'nqp::objprimspec on num');
ok(nqp::objprimspec(Foo) == 0, 'nqp::objprimspec on Foo');
ok(nqp::objprimspec(nqp::null()) == 0, 'nqp::objprimspec on a null');
