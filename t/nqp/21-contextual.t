#! nqp

# Tests for contextual variables

plan(10);

sub foo() { $*VAR }

{
    my $*VAR := 'abc';
    ok($*VAR eq 'abc', 'basic contextual declaration works');
    ok(foo() eq 'abc', 'called subroutine sees caller $*VAR');

    sub bar() { $*VAR }

    ok(bar() eq 'abc', 'called subroutine sees caller $*VAR');



    {
        my $*VAR := 'def';
        ok( $*VAR eq 'def', 'basic nested contextual works');
        ok( foo() eq 'def', 'called subroutine sees caller $*VAR');
        ok( bar() eq 'def', 'called subroutine sees caller not outer');
    }

    ok($*VAR eq 'abc', 'nested contextuals don\'t affect outer ones');
}



sub simple_lookup() {
    my $foo := nqp::getlexdyn('$*fo' ~ 'o');
    ok( $foo eq 'bar', "getting dynamic variable using getlexdyn");
}

{
    my $*foo := "bar";
    simple_lookup();
}

sub ignore_local() {
    my $*foo2;
    $*foo2 := "baz";
    my $foo := nqp::getlexdyn('$*foo2');
    ok( $foo eq 'bar2', "getting dynamic variable using getlexdyn gets the variable from the caller");
    ok( nqp::isnull(nqp::getlexdyn("$*no_such")), "nqp::getlexdyn return null for missing variables");
}

{
    my $*foo2 := "bar2";
    ignore_local();
}

