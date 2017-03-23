plan(14);
sub more-inner() {
    my $outer := nqp::ctxcaller(nqp::ctx());
    my $outermost := nqp::ctxcaller(nqp::ctxcaller(nqp::ctx()));
    $outer<$*baz> := 102;
    $outermost<$*baz> := 103;
    ok(nqp::existskey($outermost, '$*foo'), 'nqp::existkey on ctx find directly defined var');
    ok(!nqp::existskey($outer, '$*foo'), 'nqp::existkey on ctx with a var defined in an outer ctx');
    ok(!nqp::existskey($outer, '$*no_such_var'), 'nqp::existkey on ctx with a missing var');
    ok($outermost<$*foo> == 245, 'accessing a variable using double ctxcaller');

    my $seen_foo := 0;
    my $seen_baz := 0;
    my $seen_outervar := 0;
    my $seen_other := 0;
    for $outermost -> $var {
        if $var eq '$*foo' {
            $seen_foo := $seen_foo + 1;
        }
        elsif $var eq '$*baz' {
            $seen_baz := $seen_baz + 1;
        }
        elsif $var eq '$*outervar' {
            $seen_outervar := $seen_outervar + 1;
        }
        else {
            $seen_other := $seen_other + 1;
        }
    }
    ok($seen_foo == 1 && $seen_baz == 1 && $seen_outervar == 1 && $seen_other == 0, 'iterating over the variables in a ctx');
}
sub inner() {
    my $*baz;
    more-inner();
    ok($*baz == 102, 'can set variables with ctxcaller');
}
sub outer() {
    my $*foo := 245;
    my $*baz;
    inner();
    ok($*baz == 103, 'can set variable with double ctxcaller');
    my $*outervar;
}
outer();

{
    my $foo := 101;
    my $bar := 105;
    {
        my $bar := 102;
        {
            my $bar := 103;
            my $foo := 104;
            ok(nqp::getlexouter('$bar') == 102, 'getlexouter from immediately nested block');
            ok(nqp::getlexouter('$foo') == 101, 'getlexouter from a not immediate parent');
        }
    }
}

{
    my $*foo := 101;
    my $*bar := 105;
    {
        my $*bar := 102;
        {
            my $*bar := 103;
            my $*foo := 104;
            ok(nqp::getlexouter('$*bar') == 102, 'getlexouter from immediately nested block with dynamic variable');
            ok(nqp::getlexouter('$*foo') == 101, 'getlexouter from a not immediate parent with dynamic variable');
        }
    }
}

{
    my $*foo := 302;
    {
        my $*foo := 303;
        {
            my $*foo := 304;
            ok(nqp::ctxouter(nqp::ctx())<$*foo> == 303, 'getting a dynamic variable from nqp::ctxouter');
            ok(nqp::ctxouter(nqp::ctxouter(nqp::ctx()))<$*foo> == 302, 'getting a dynamic variable from double nqp::ctxouter');
        }
    }
}

ok(nqp::istrue(nqp::ctx()) == 1, 'ctxs are true');
