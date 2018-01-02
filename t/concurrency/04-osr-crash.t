#! nqp

plan(3);

my $i := 2;
sub dec() { $i-- }

my $t := nqp::newthread({
    while $i {
        nqp::sleep(0.1);
        ok(1, "in thread");
        dec()
    }
}, 1);
nqp::threadrun($t);
nqp::threadjoin($t);
ok(1, "Thread with top level loop survived");
