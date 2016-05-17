plan(5);
sub more-inner() {
    my $outer := nqp::ctxcaller(nqp::ctx());
    my $outermost := nqp::ctxcaller(nqp::ctxcaller(nqp::ctx()));
    $outer<$*baz> := 102;
    $outermost<$*baz> := 103;
    ok($outermost<$*foo> == 245, 'accessing a variable using double ctxcaller');
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
