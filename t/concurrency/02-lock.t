#! nqp

BEGIN {
    if nqp::getcomp('nqp').backend.name eq 'parrot' {
        nqp::say('1..0 # Skipped: Concurrency primitives are NYI on parrot');
        nqp::exit(0);
    }
}

plan(15);

my class Lock    is repr('ReentrantMutex')    { }
my class CondVar is repr('ConditionVariable') { }

# 2 tests
{
    my $l := Lock.new;
    nqp::lock($l);
    { ok(1, 'Code runs under lock'); }
    nqp::unlock($l);

    nqp::lock($l);
    { ok(1, 'Lock can be used more than once'); }
    nqp::unlock($l);
}

# 5 tests
{
    my $l := Lock.new;
    my $died := 0;
    my $thrown_message := 'Dying with lock held';
    my $caught_message := '';
    {
        nqp::lock($l);
        nqp::die($thrown_message);
        CATCH {
            $died := 1;
            $caught_message := $_;
            nqp::unlock($l);
        }
    }

    ok($died, 'Can die with a lock held and CATCH it');
    ok($thrown_message eq $caught_message,
       'Got expected message from die with lock held');

    {
        nqp::lock($l);
        ok(1, 'Can unlock in CATCH and relock after');
        nqp::unlock($l);
    }

    my $t := nqp::newthread({
        nqp::lock($l);
        ok(1, 'Lock that survived CATCH works in another thread too');
        nqp::unlock($l);
    }, 0);
    nqp::threadrun($t);
    nqp::threadjoin($t);

    {
        nqp::lock($l);
        ok(1, 'Lock from CATCH and other thread works in main thread again');
        nqp::unlock($l);
    }
}

# 2 tests
# XXXX: Currently slow on nqp-j, and probably too fast on nqp-m
{
    my $l      := Lock.new;
    my $count  := 100_000;
    my $output := '';

    my $t1     := nqp::newthread({
        nqp::lock($l);
        my $i := 0;
        while ++$i <= $count {
            $output := $output ~ 'a';
        }
        nqp::unlock($l);
    }, 0);

    my $t2     := nqp::newthread({
        nqp::lock($l);
        my $i := 0;
        while ++$i <= $count {
            $output := $output ~ 'b';
        }
        nqp::unlock($l);
    }, 0);

    nqp::threadrun($t1);
    nqp::threadrun($t2);
    nqp::threadjoin($t1);
    nqp::threadjoin($t2);

    ok($output ~~ /^ [ a+: b+: | b+: a+: ] $/,
       'Lock is at least somewhat effective');
    ok(nqp::chars($output) == 2 * $count, 'Result is correct length');
}

# 2 tests
{
    my $l := Lock.new;
    my $c := nqp::getlockcondvar($l, CondVar);
    ok(nqp::defined($c), 'Can create condition variable from lock');

    my $now1 := 0.0;
    my $now2 := nqp::time_n();
    my @log;

    my $t1 := nqp::newthread({
        nqp::lock($l);
        nqp::push(@log, 'ale');
        nqp::condwait($c);
        nqp::push(@log, 'stout');
        nqp::condsignalall($c);
        $now1 := nqp::time_n();
        nqp::unlock($l);
    }, 0);
    nqp::threadrun($t1);

    my $elems := 0;
    until $elems == 1 {
        nqp::lock($l);
        $elems := nqp::elems(@log);
        nqp::unlock($l);
    }

    my $t2 := nqp::newthread({
        nqp::lock($l);
        nqp::push(@log, 'porter');
        nqp::condsignalone($c);
        nqp::condwait($c);
        nqp::push(@log, 'lager');
        nqp::unlock($l);
    }, 0);
    nqp::threadrun($t2);

    nqp::threadjoin($t1);
    $now2 := nqp::time_n();
    nqp::threadjoin($t2);

    my $ok := nqp::join(',', @log) eq 'ale,porter,stout,lager';
    ok($ok, 'Condition variable worked');

    say("# log = {@log}{ $now1 > $now2 ?? ', thread was running *after* join' !! ''}") if !$ok;
}

# 4 tests
{
    my $l  := Lock.new;
    my $c1 := nqp::getlockcondvar($l, CondVar);
    my $c2 := nqp::getlockcondvar($l, CondVar);
    ok(nqp::defined($c1) && nqp::defined($c2),
       'Can create more than one condvar from same lock');
    ok(nqp::where($c1) != nqp::where($c2),
       'Multiple condvars from same lock are different');

    my $count_one := 0;
    my $count_all := 0;

    my $t1 := nqp::newthread({
        nqp::lock($l);
        nqp::condsignalone($c1);
        nqp::condsignalall($c2);
        nqp::unlock($l);
    }, 0);

    my $t2 := nqp::newthread({
        nqp::lock($l);
        nqp::condwait($c1);
        $count_one++;
        nqp::unlock($l);
    }, 0);

    my $t3 := nqp::newthread({
        nqp::lock($l);
        nqp::condwait($c1);
        $count_one++;
        nqp::unlock($l);
    }, 0);

    my $t4 := nqp::newthread({
        nqp::lock($l);
        nqp::condwait($c2);
        $count_all++;
        nqp::unlock($l);
    }, 0);

    my $t5 := nqp::newthread({
        nqp::lock($l);
        nqp::condwait($c2);
        $count_all++;
        nqp::unlock($l);
    }, 0);

    # Start all waiting threads
    nqp::threadrun($t2);
    nqp::threadrun($t3);
    nqp::threadrun($t4);
    nqp::threadrun($t5);

    # Start signaling thread
    nqp::threadrun($t1);

    # Check for condsignalone result, then signal it again to unblock
    nqp::sleep(2.0);
    my $c1_snap := $count_one;
    nqp::lock($l);
    nqp::condsignalone($c1);
    nqp::unlock($l);

    # Join 'em up
    nqp::threadjoin($t2);
    nqp::threadjoin($t3);
    nqp::threadjoin($t4);
    nqp::threadjoin($t5);
    nqp::threadjoin($t1);

    ok($c1_snap   == 1, 'condsignalone signaled exactly one waiting thread');
    ok($count_all == 2, 'condsignalall signaled both waiting threads');
}
