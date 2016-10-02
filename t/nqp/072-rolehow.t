plan(12);
role Foo {
  method additional() {
    "hey new method!"
  }
}
role BarOverride {
  method bar() {
    200;
  }
}
class Bar {
  method bar() {
    100;
  }
}

my $methods := Foo.HOW.methods(Foo);
ok(nqp::elems($methods) == 1,'Foo has only one method');
my $method := $methods[0];
my $name := $method.name;#nqp::can($method, 'name') ?? $method.name !! nqp::getcodename($method);

my $a := Bar.new();
ok($a.bar == 100);
$a.HOW.mixin($a,BarOverride);
is($a.HOW.name($a), 'Bar+{BarOverride}','the role name is part of the generated class name');

my $parents := $a.HOW.parents($a,:local(1));
ok(nqp::elems($parents) == 1,"the generated class has only one parent" );
is($parents[0].HOW.name($parents[0]), 'Bar',"...and it's the correct one");

my $roles := $a.HOW.roles($a,:local(1));
ok(nqp::elems($roles) == 1,"the generated class does only one role" );
is($roles[0].HOW.name($roles[0]), 'BarOverride',"...and it's the correct one");

ok($a.bar == 200);

my $b := Bar.new();
$b.HOW.mixin($b,Foo);
ok($b.bar == 100, 'we can use non overriden methods');
is($b.additional, 'hey new method!','new methods are inserted');

$b.HOW.mixin($b,BarOverride);
ok($b.bar == 200, 'we can apply two roles to one object');
is($b.HOW.name($b), 'Bar+{Foo}+{BarOverride}','both role names are part of the generated class name');
