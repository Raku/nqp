#! nqp

sub fib($n) {
    $n < 2 ?? $n !! fib($n-1) + fib($n - 2);
}

my $N := 29;

my $t0 := pir::time__N();
my $z  := fib($N);
my $t1 := pir::time__N();

pir::say("fib($N) = " ~ fib($N));
pir::say("time    = " ~ ($t1-$t0));
