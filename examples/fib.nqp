#! nqp

sub fib($n) {
    $n < 2 ?? $n !! fib($n-1) + fib($n - 2);
}

my $N := 29;

my $t0 := nqp::time_n();
my $z  := fib($N);
my $t1 := nqp::time_n();

say("fib($N) = " ~ fib($N));
say("time    = " ~ ($t1-$t0));
