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
    my int $k := $a + $b;
    my int $l := $k + $a;
    my int $m := $c + $d;
    my int $n := $e + $f;
    my int $o := $g + $h;
    my int $p := $i + $j;
    my int $q := $k + $a + $p;
    my int $r := $m + $b + $o;
    my int $s := $n + $c + $n;
    my int $t := $o + $d + $m;
    my int $u := $p + $e + $k;
    my int $v := $q + $f + $j;
    my int $w := $s + $g + $i;
    my int $x := $t + $h + $h;
    my int $y := $u + $i + $g;
    my int $z := $v + $j + $f;
    my int $_a := $w + $k + $e;
    my int $_b := $x + $l + $d;
    my int $_c := $y + $m + $c;
    my int $_d := $z + $n + $b;
    my int $_e := $y + $o + $a;
    nqp::say("OK $_e");
}

nqp::say("plan 300");
my int $i := 0;
while $i < 300 {
    foo();
    $i := $i + 1;
}
    
