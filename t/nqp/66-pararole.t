plan(4);

role ParaTest[$a] {
    method m() { $a }
}

class A {
}

my $a1 := A.new();
my $a2 := A.new();
$a1.HOW.mixin($a1, ParaTest.HOW.curry(ParaTest, "foo"));
$a2.HOW.mixin($a2, ParaTest.HOW.curry(ParaTest, "bar"));
ok($a1.m eq "foo", "mixin of parametric role with first arg");
ok($a2.m eq "bar", "mixin of parametric role with second arg");

role ParaNameTest[$n, $rv] {
    method ::($n)() { $rv }
}

class B {
}

my $b := B.new();
$b.HOW.mixin($b, ParaNameTest.HOW.curry(ParaNameTest, "drink", "beer"));
$b.HOW.mixin($b, ParaNameTest.HOW.curry(ParaNameTest, "meat", "beef"));
for $b.HOW.method_table($b) {
    say($_.key);
}
ok($b.drink eq "beer", "parametric method name handling works (1)");
ok($b.meat eq "beef", "parametric method name handling works (2)");
