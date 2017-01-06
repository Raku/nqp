#!/usr/bin/env nqp

# Test case for even-moar-jit register allocator.
# This only demonstrates something when run under MVM_JIT_EXPR_ENABLE=1

my $h := nqp::getenvhash();
my $e := nqp::atkey($h, 'MVM_JIT_EXPR_DISABLE');
if (nqp::istrue($e)) {
   nqp::say("1..0 # Skipped: MVM_JIT_EXPR_DISABLE set");
   nqp::exit(0);
}

sub foo() {
    my int $a := 1;
    my int $b := 2;
    my int $c := 3;
    my int $d := 4;
    my int $e := 5;
    my int $f := 6;
    my int $g := 7;
    my int $h := 8;
    my int $i := 9;
    my int $j := 10;
    my int $k := $a + $b; # 3
    my int $l := $k + $a; # 4
    my int $m := $c + $d; # 7
    my int $n := $e + $f; # 11
    my int $o := $g + $h; # 15
    my int $p := $i + $j; # 19
    my int $q := $k + $a + $p; # 3 + 1 + 19 = 23
    my int $r := $m + $b + $o; # 7 + 2 + 15 = 24
    my int $s := $n + $c + $n; # 11 + 3 + 11 = 25
    my int $t := $o + $d + $m; # 15 + 4 + 7 = 26
    my int $u := $p + $e + $k; # 19 + 5 + 3 = 27
    my int $v := $q + $f + $j; # 23 + 6 + 10 = 39
    my int $w := $s + $g + $i; # 25 + 7 + 9 = 41
    my int $x := $t + $h + $h; # 15 + 8 + 8 = 31
    my int $y := $u + $i + $g; # 27 + 9 + 7 = 43
    my int $z := $v + $j + $f; # 39 + 10 + 6 = 55
    my int $_a := $w + $k + $e; # 41 + 3 + 5 = 49
    my int $_b := $x + $l + $d; # 31 + 4 + 4 = 39
    my int $_c := $y + $m + $c; # 43 + 7 + 3 = 53
    my int $_d := $z + $n + $b; # 55 + 11 + 2 = 68
    my int $_e := $y + $o + $a; # 43 + 15 + 1 = 59
    $_e; # ought to be 59
}

nqp::say("1..300");
my int $i := 1;
while $i < 301 {
    my $r := foo();
    if ($r == 59) {
        nqp::say("ok $i $r");
    } else {
        nqp::say("not ok $i $r");
    }
    $i := $i + 1;
}
    
