plan(5);
class Foo {
    has $!counter;
    has $!bool;
    method BUILD() {
      $!bool := 1;
    }
    method half-true() {
        $!bool := !$!bool;
        $!bool;
    }
}
my $table := Foo.HOW.method_table(Foo);
my $method := $table{'half-true'};
my $foo := Foo.new();
nqp::setboolspec(Foo,0,$method);
ok(nqp::istrue($foo) == 0);
ok(nqp::istrue($foo) == 1);
ok(nqp::istrue($foo) == 0);

class Bar {
}

my $bar := Bar.new();

nqp::setboolspec(Bar,5,$method);
ok(nqp::istrue($bar) == 1, "setboolspec MODE_NOT_TYPE_OBJECT = 5 works correctly in true case");
ok(nqp::istrue(Bar) == 0, "setboolspec MODE_NOT_TYPE_OBJECT = 5 works correctly in false case");
