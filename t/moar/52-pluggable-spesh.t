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
