plan(15);

role R1 {
    has $!a;
    method role_meth() { "called role method" }
    method get_attr() { $!a }
    method set_attr($v) { $!a := $v }
    method where() { "method in " ~ $?CLASS.HOW.name($?CLASS) }
    method override_me() { "role's method - OH NO" }
}

class CL1 does R1 { }
class CL2 does R1 {
    method override_me() { "class method beat role one - YAY" }
}

ok(CL1.HOW.does(CL1, R1));
ok(CL2.HOW.does(CL2, R1));

my $x := CL1.new();
is($x.role_meth(), "called role method");
$x.set_attr("yay composed attrs");
is($x.get_attr(), "yay composed attrs");

is(CL1.where(), "method in CL1");
is(CL2.where(), "method in CL2");
is(CL2.override_me(), "class method beat role one - YAY");


role R3 { method a() { 1 }; method c() { 'wtf' } }
role R4 { method b() { 2 }; method c() { 'wtf' } }
class C3 does R3 does R4 { method c() { 'resolved' } }
ok(C3.a() == 1);
ok(C3.b() == 2);
is(C3.c(), 'resolved');

ok(!C3.HOW.does(C3, R1));
ok(C3.HOW.does(C3, R3));
ok(C3.HOW.does(C3, R4));

role Foo {
}
class Parent does Foo {
}
class Child is Parent {
};

ok(nqp::istype(Parent, Foo), 'nqp::istype with a role directly on class');
ok(nqp::istype(Child, Foo), 'nqp::istype with a role on a parent class');
