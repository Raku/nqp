#! nqp

plan(10);

class Foo {}

class Bar {}

class FooSub is Foo {}

my $foo := Foo.new;
my $bar := Bar.new;
my $sub := FooSub.new;

ok(nqp::istype($foo, Foo), 'istype, +');
ok(!nqp::istype($bar, Foo), 'istype, -');
ok(nqp::istype(Foo, Foo), 'istype with two types, +');
ok(!nqp::istype(Foo, Bar), 'istype with two types, -');
ok(nqp::istype($sub, Foo), 'istype with subclass, +');
ok(!nqp::istype($foo, FooSub), 'istype with subclass, -');
ok(nqp::istype(FooSub, Foo), 'istype with subclass type, +');

ok(!nqp::istype(nqp::null(), Foo), 'istype on nqp::null()');

ok(!nqp::istype(nqp::hash(), Foo), 'istype on nqp::hash');
ok(!nqp::istype(nqp::list(), Foo), 'istype on nqp::list');
