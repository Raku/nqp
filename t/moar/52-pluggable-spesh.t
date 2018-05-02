#!/usr/bin/env nqp

# Tests for extending the MoarVM specializer to guard on new kinds of things
# from NQP. 

plan(2);

{
    # Minimal test case: under no threaded contention, should run the resolve just
    # once per time it statically appears provided the guard is met.
    my $times-run := 0;
    nqp::speshreg('nqp', 'assume-pure', -> $code {
        $times-run++;
        nqp::speshguardobj($code);
        $code()
    });
    my $a := 100;
    sub assumed-pure() { $a }
    my $total := 0;
    for 1,2,3 {
        $total := $total + nqp::speshresolve('assume-pure', &assumed-pure);
        $a++;
    }
    ok($times-run > 0, 'Ran the spesh plugin');
    ok($times-run == 1, 'Ran the spesh registered block once per static resolve');
    ok($total == 300, 'Correct cached result of the spesh reg');

    # Check things work correctly with multiple positions.
    $times-run := 0;
    $a := 100;
    sub multiple_test() {
        my $x := nqp::speshresolve('assume-pure', &assumed-pure);
        $a++;
        my $y := nqp::speshresolve('assume-pure', &assumed-pure);
        $a++;
        my $z := nqp::speshresolve('assume-pure', &assumed-pure);
        $a++;
        return $x + $y + $z;
    }
    $total := 0;
    for 1,2,3 {
        $total := $total + multiple_test();
    }
    ok($times-run == 3, 'Ran resolver once per bytecode location');
    ok($total == 3 * (100 + 101 + 102), 'Got correct cached results');

    # Check that the object guard is enforced.
    sub assumed-pure-b() { 2 * $a }
    sub assumed-pure-c() { 3 * $a }
    $times-run := 0;
    $a := 100;
    sub purify(&target) {
        nqp::speshresolve('assume-pure', &target)
    }
    ok(purify(&assumed-pure) == 100, 'Exact object guard honored on first call (1)');
    ok(purify(&assumed-pure-b) == 200, 'Exact object guard honored on first call (2)');
    ok(purify(&assumed-pure-c) == 300, 'Exact object guard honored on first call (3)');
    $a++;
    ok(purify(&assumed-pure) == 100, 'Exact object guard matches on second call (1)');
    ok(purify(&assumed-pure-b) == 200, 'Exact object guard matches on second call (2)');
    ok(purify(&assumed-pure-c) == 300, 'Exact object guard matches on second call (3)');
    ok($times-run == 3, 'Resolve ran once per distinct guard match even at same position');
}

# Concrete, non-concrete, and type guards
{
    my $times-run := 0;
    nqp::speshreg('nqp', 'type-and-definedness-counter', -> $obj {
        nqp::speshguardtype($obj, $obj.WHAT);
        nqp::isconcrete($obj)
            ?? nqp::speshguardconcrete($obj)
            !! nqp::speshguardtypeobj($obj);
        ++$times-run
    });
    sub test($obj) {
        nqp::speshresolve('type-and-definedness-counter', $obj)
    }
    my class A {}
    my class B {}
    ok(test(A) == 1, 'First run with A type object is correct result');
    ok(test(A) == 1, 'Second run with A type object gets same result');
    ok(test(B) == 2, 'First run with B type object is correct result');
    ok(test(B) == 2, 'Second run with B type object gets same result');
    ok(test(A.new) == 3, 'First run with A instance is correct result');
    ok(test(A.new) == 3, 'Second run with A instance gets same result');
    ok(test(B.new) == 4, 'First run with B instance is correct result');
    ok(test(B.new) == 4, 'Second run with B instance gets same result');
    ok(test(A) == 1, 'Third run with A type object is correct result');
    ok(test(B) == 2, 'Third run with B type object is correct result');
    ok(test(A.new) == 3, 'Third run with A instance is correct result');
    ok(test(B.new) == 4, 'Third run with B instance is correct result');
}

# Attribute fetch for guarding
{
    my class TestWithAttr {
        has $!attr;
        method new($attr) {
            my $self := nqp::create(self);
            nqp::bindattr($self, TestWithAttr, '$!attr', $attr);
            $self
        }
    }
    my $times-run := 0;
    nqp::speshreg('nqp', 'attr-type-and-definedness-counter', -> $obj {
        nqp::speshguardtype($obj, TestWithAttr);
        nqp::speshguardconcrete($obj);
        my $attr := nqp::speshguardgetattr($obj, TestWithAttr, '$!attr');
        nqp::speshguardtype($attr, $attr.WHAT);
        nqp::isconcrete($attr)
            ?? nqp::speshguardconcrete($attr)
            !! nqp::speshguardtypeobj($attr);
        ++$times-run
    });
    sub test($obj) {
        nqp::speshresolve('attr-type-and-definedness-counter', TestWithAttr.new($obj))
    }
    my class A { }
    my class B { }
    ok(test(A) == 1, 'First run with attr holding A type object is correct result');
    ok(test(A) == 1, 'Second run with attr holding A type object gets same result');
    ok(test(B) == 2, 'First run with attr holding B type object is correct result');
    ok(test(B) == 2, 'Second run with attr holding B type object gets same result');
    ok(test(A.new) == 3, 'First run with attr holding A instance is correct result');
    ok(test(A.new) == 3, 'Second run with attr holding A instance gets same result');
    ok(test(B.new) == 4, 'First run with attr holding B instance is correct result');
    ok(test(B.new) == 4, 'Second run with attr holding B instance gets same result');
    ok(test(A) == 1, 'Third run with A type attr holding object is correct result');
    ok(test(B) == 2, 'Third run with B type attr holding object is correct result');
    ok(test(A.new) == 3, 'Third run with A attr holding instance is correct result');
    ok(test(B.new) == 4, 'Third run with B attr holding instance is correct result');
}

# Many calls, to exercise specialization.
{
    my $times-run := 0;
    nqp::speshreg('nqp', 'assume-pure-spesh', -> $code {
        $times-run++;
        nqp::speshguardobj($code);
        $code()
    });
    my $a := 2;
    sub assumed-pure() { $a }
    my $total := 0;
    my int $i := 0;
    while $i++ < 10_000_000 {
        $total := $total + nqp::speshresolve('assume-pure-spesh', &assumed-pure);
        $a++;
    }
    ok($times-run, 1, 'Only ran the plugin once in hot code');
    ok($total == 20_000_000, 'Correct result from hot code');
}
