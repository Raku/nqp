#! nqp


plan(12);

my class Semaphore is repr('Semaphore') { }

# 9 tests
# Single threaded case
{
    my $s := nqp::box_i(3, Semaphore);

    nqp::semacquire($s);
    ok(1, 'semacquire of permit 1 of 3 succeeds');
    nqp::semacquire($s);
    ok(1, 'semacquire of permit 2 of 3 succeeds also');
    ok( nqp::semtryacquire($s), 'semtryacquire of permit 3 of 3 succeeds');
    ok(!nqp::semtryacquire($s), 'semtryacquire underflow fails');

    nqp::semrelease($s);
    ok(1, 'semrelease of permit 3 of 3 succeeds');
    ok(nqp::semtryacquire($s),  'semtryacquire of permit 3 of 3 succeeds now');

    nqp::semrelease($s);
    nqp::semrelease($s);
    nqp::semrelease($s);
    ok(1, 'semrelease of all three permits succeed');

    nqp::semrelease($s);
    nqp::semacquire($s);
    nqp::semacquire($s);
    nqp::semacquire($s);
    ok( nqp::semtryacquire($s), 'Release overflow adds to available capacity');
    ok(!nqp::semtryacquire($s), 'Semaphore does not grant more than overflow level in additional capacity');
}

# 3 tests
# Multi-threaded case
{
    my $released := 0;
    my $s  := nqp::box_i(3, Semaphore);
    my $t1 := nqp::newthread({
        nqp::semacquire($s);
    }, 0);
    my $t2 := nqp::newthread({
        nqp::semacquire($s);
    }, 0);
    my $t3 := nqp::newthread({
        nqp::semacquire($s);
    }, 0);
    my $t4 := nqp::newthread({
        ok(!nqp::semtryacquire($s), 'Trying fourth acquire before release fails');
    }, 0);
    my $t5 := nqp::newthread({
        my $before := nqp::time_n();
        nqp::semacquire($s);
        my $after  := nqp::time_n();
        ok($after - $before > 1.0, 'Fourth acquire blocks on empty semaphore');
        ok($released, 'Fourth acquire succeeds after release in other thread');
    }, 0);
    my $t6 := nqp::newthread({
        nqp::sleep(3.0);
        nqp::semrelease($s);
        $released := 1;
    }, 0);

    # First, exhaust semaphore capacity
    nqp::threadrun($t1);
    nqp::threadrun($t2);
    nqp::threadrun($t3);
    nqp::threadjoin($t1);
    nqp::threadjoin($t2);
    nqp::threadjoin($t3);

    # Try (and fail) to acquire another permit
    nqp::threadrun($t4);
    nqp::threadjoin($t4);

    # Block on acquire, release in separate thread, succeed
    nqp::threadrun($t5);
    nqp::threadrun($t6);
    nqp::threadjoin($t6);
    nqp::threadjoin($t5);
}
