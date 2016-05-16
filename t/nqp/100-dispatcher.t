plan(3);
my $closure;
{
    nqp::setdispatcher(100);
    my $foo;
    my $bar := 456;
    nqp::takedispatcher('$foo');
    ok($foo == 100);
    nqp::takedispatcher('$bar');
    ok($bar == 456);
    $closure := -> {
        $foo;
        $bar;
    };
}

{
    nqp::setdispatcher(100);
    my $foo := 200;
    nqp::cleardispatcher();
    nqp::takedispatcher('$foo');
    ok($foo == 200);
    $closure := -> {
        $foo;
    };
}
