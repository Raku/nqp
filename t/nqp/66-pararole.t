plan(2);

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

