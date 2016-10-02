#! nqp

# Tests for contextual variables

plan(17);

sub foo() { $*VAR }

{
    my $*VAR := 'abc';
    is($*VAR, 'abc', 'basic contextual declaration works');
    is(foo(), 'abc', 'called subroutine sees caller $*VAR');

    sub bar() { $*VAR }

    is(bar(), 'abc', 'called subroutine sees caller $*VAR');



    {
        my $*VAR := 'def';
        is( $*VAR, 'def', 'basic nested contextual works');
        is( foo(), 'def', 'called subroutine sees caller $*VAR');
        is( bar(), 'def', 'called subroutine sees caller not outer');
    }

    is($*VAR, 'abc', 'nested contextuals don\'t affect outer ones');
}



sub simple_lookup() {
    my $foo := nqp::getlexdyn('$*fo' ~ 'o');
    is( $foo, 'bar', "getting dynamic variable using getlexdyn");
}

{
    my $*foo := "bar";
    simple_lookup();
}

sub ignore_local() {
    my $*foo2;
    $*foo2 := "baz";
    my $foo := nqp::getlexdyn('$*foo2');
    is( $foo, 'bar2', "getting dynamic variable using getlexdyn gets the variable from the caller");
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
is($passed_value, "secret value 1", "setting dynamic variables using signatures");

sub bind_using_signature_with_default($*signatured = 'default value') {
    internal();
}


bind_using_signature_with_default();
is($passed_value, "default value", "setting dynamic variables using signatures with default values (no argument)");

bind_using_signature_with_default("not default value");
is($passed_value, "not default value", "setting dynamic variables using signatures with default values (passed argument)");

sub bind_using_named(:$*signatured) {
    internal();
}

bind_using_named(:signatured("secret value 2"));
is($passed_value, "secret value 2", "setting dynamic variables using a named argument");


my sub layer3() {
    my $*baz := 800;
    ok(nqp::getlexcaller('$*bar') == 300, 'nqp::getlexcaller - immediate caller');
    ok(nqp::getlexcaller('$*baz') == 100, 'nqp::getlexcaller - more traversing');
    ok(nqp::isnull(nqp::getlexcaller('$*no_such')), 'nqp::getlexcaller - missing var');
}
my sub layer2() {
    layer3();
}
my sub layer1() {
    my $*baz := 100;
    my $*bar := 400;
    {
        my $*bar := 200;
        {
            my $*bar := 300;
            layer2();
        }
    }
}

{
    layer1();
}

