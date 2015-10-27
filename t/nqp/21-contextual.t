#! nqp

# Tests for contextual variables

plan(13);

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

my $passed_value;
sub internal() {
    $passed_value := $*signatured;
}

sub bind_using_signature($*signatured) {
    internal();
}

bind_using_signature("secret value 1");
ok($passed_value eq "secret value 1", "setting dynamic variables using signatures");

sub bind_using_signature_with_default($*signatured = 'default value') {
    internal();
}


bind_using_signature_with_default();
ok($passed_value eq "default value", "setting dynamic variables using signatures with default values (no argument)");

bind_using_signature_with_default("not default value");
ok($passed_value eq "not default value", "setting dynamic variables using signatures with default values (passed argument)");

