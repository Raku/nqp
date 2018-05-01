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
}
