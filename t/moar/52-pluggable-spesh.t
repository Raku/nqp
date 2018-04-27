#!/usr/bin/env nqp

# Tests for extending the MoarVM specializer to guard on new kinds of things
# from NQP. 

plan(2);

{
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
    ok($times-run == 1, 'Ran the spesh registered block once per static resolve');
    ok($total == 300, 'Correct cached result of the spesh reg');
}
