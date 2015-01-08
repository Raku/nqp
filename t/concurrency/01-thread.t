#! nqp

BEGIN {
    if nqp::getcomp('nqp').backend.name eq 'parrot' {
        nqp::say('1..0 # Skipped: Concurrency primitives are NYI on parrot');
        nqp::exit(0);
    }
}

plan(20);

# 2 tests
{
    my $ran := 0;
    my $t   := nqp::newthread({ $ran := 1 }, 0);
    ok(nqp::defined($t), 'Can create a new non-app-lifetime thread');
    nqp::threadrun($t);
    nqp::threadjoin($t);
    ok($ran, 'Can run and join the new thread');
}

# 2 tests
{
    my $start := nqp::time_n();
    my $t     := nqp::newthread({ nqp::sleep(10.0) }, 1);
    ok(nqp::defined($t), 'Can create a new app-lifetime thread');
    nqp::threadrun($t);
    ok(nqp::time_n() - $start < 10.0,
       'Sleeping app-lifetime thread does not block main thread');
}

# 4 tests
{
    my $t := nqp::newthread({
        ok(1, 'Can write to STDOUT in child thread')
    }, 0);
    ok(1, 'Can write to STDOUT in parent thread before threadrun');
    nqp::threadrun($t);
    ok(1, 'Can write to STDOUT in parent thread after threadrun');
    nqp::threadjoin($t);
    ok(1, 'Can write to STDOUT in parent thread after threadjoin');
}

# 9 tests
{
    my $c   := nqp::currentthread();
    my $pid := nqp::threadid($c);
    ok($pid, 'Parent thread has a non-zero ID');

    my $tid := 0;
    my $cid := 0;
    my $t   := nqp::newthread({
        $cid := nqp::threadid(nqp::currentthread());
    }, 0);
    ok(nqp::defined($t), 'Can create another new thread after previous joins');

    # XXXX: nqp-m locks up here, but nqp-j does not
    $tid := nqp::threadid($t);
    ok($tid, 'New thread has a non-zero ID');
    ok($tid != $pid, 'Parent and new thread have different IDs');

    nqp::threadrun($t);
    ok($tid == nqp::threadid($t), 'Thread keeps same ID after threadrun()');

    nqp::threadjoin($t);
    ok($tid == nqp::threadid($t), 'Thread keeps same ID after threadjoin()');

    ok($cid, 'Child thread knew its own thread ID');
    ok($cid == $tid, 'Parent saw same ID for child as child did');

    ok($pid == nqp::threadid(nqp::currentthread()),
       'Parent thread still has the same ID');
}

# 3 tests
{
    my $a  := 0;
    my $b  := 0;
    my $t1 := nqp::newthread({ $a := 21 }, 0);
    my $t2 := nqp::newthread({ $b := 42 }, 0);

    nqp::threadrun($t1);
    nqp::threadrun($t2);

    ok(nqp::threadid($t1) != nqp::threadid($t2),
       'Two new child threads have different IDs');

    nqp::threadjoin($t1);
    nqp::threadjoin($t2);

    ok($a == 21, 'First child thread actually ran');
    ok($b == 42, 'Second child thread also ran');
}

# XXXX: Tests for nqp::threadyield() -- not tested in Perl 6 spectests either
# XXXX: Stress tests -- Perl 6 spectests starting at S17-lowlevel/thread.t:100
