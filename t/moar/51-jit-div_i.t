#!/usr/bin/env nqp-m

nqp::say("1..12");
sub foo(int $i, int $j) {
    my int $x := nqp::div_i($i, $j);
}

my int $foo-is-hot := 0;

sub heat-foo() {
    my int $i := 0;
    while ($i < 200) {
        my int $y := foo(-1, 10);
        if ($y != -1) {
            return 0;
        }
        $i := $i + 1;
    }
    $foo-is-hot := 1;
}

sub test-foo(int $num, int $denom) {
    # should be cold!
    # nqp::no_jit();
    my int $result := foo($num, $denom);
    my int $expect := nqp::div_i($num, $denom);
    if ($result == $expect) {
        nqp::say("ok     # $result = div_i($num,$denom) == $expect");
    } else {
        nqp::say("not ok # $result = div_i($num,$denom) != $expect");
    }
}

heat-foo();

# round to minus infinity, positive num/denom
test-foo(1,10);
test-foo(10,10);
test-foo(19,10);

# round to minus infinity, negative num
test-foo(-1,10);
test-foo(-10,10);
test-foo(-11,10);

# round to minus infinity, negative denom
test-foo(1,-10);
test-foo(10,-10);
test-foo(11,-10);

# round to minus infinity, negative num/denom
test-foo(-1,-10);
test-foo(-10,-10);
test-foo(-19,-10);
