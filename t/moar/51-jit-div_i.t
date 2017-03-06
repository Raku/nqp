#!/usr/bin/env nqp-m

nqp::say("plan 1..1");
sub foo(int $i, int $j) {
    my int $x := nqp::div_i($i, $j);
}

sub test-div() {
    my int $i := 0;
    while ($i < 200) {
        my int $y := foo(-1, 10);
        if ($y != -1) {
            return 0;
        }
        $i := $i + 1;
    }
}

if (test-div()) {
    nqp::say("ok div_i");
} else {
    my int $result := foo(-1,10);
    nqp::say("not ok div_i $result");
}
