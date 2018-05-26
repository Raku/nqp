plan(10);
my $closure;
{
    nqp::setdispatcher(100);
    my $foo;
    my $bar := 456;
    nqp::takedispatcher('$foo');
    ok($foo == 100);
    nqp::takedispatcher('$bar');
    ok($bar == 456);
}

{
    nqp::setdispatcher(100);
    my $foo := 200;
    nqp::cleardispatcher();
    nqp::takedispatcher('$foo');
    ok($foo == 200);
}


sub foo() {
    my $foo := 100;
    nqp::takedispatcher('$foo');
    is($foo, 100);
}

sub bar() {
    my $foo := 100;
    nqp::takedispatcher('$foo');
    is($foo, 300);
}

nqp::setdispatcherfor(300, &bar);
foo();
bar();

sub wraped1() {
    my $foo := 100;
    nqp::takedispatcher('$foo');
    is($foo, 100);
}

sub wraped2() {
    my $foo := 100;
    nqp::takedispatcher('$foo');
    is($foo, 400);
}

class Wrap {
    has $!code_ref;
}
nqp::setinvokespec(Wrap, Wrap, '$!code_ref',nqp::null());

my $wraped1 := Wrap.new(code_ref => &wraped1);
my $wraped2 := Wrap.new(code_ref => &wraped2);

nqp::setdispatcherfor(400, $wraped2);

$wraped1();
$wraped2();

sub take_or_clear($take) {
    my $foo := 100;
    if $take {
      nqp::takedispatcher('$foo');
    } else {
      nqp::cleardispatcher();
    }
    $foo;
}

nqp::setdispatcherfor(400, &take_or_clear);
is(take_or_clear(1), 400);
nqp::setdispatcherfor(400, &take_or_clear);
is(take_or_clear(0), 100);
is(take_or_clear(1), 100);
