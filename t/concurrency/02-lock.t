#! nqp

BEGIN {
    if nqp::getcomp('nqp').backend.name eq 'parrot' {
        nqp::say('1..0 # Skipped: Concurrency primitives are NYI on parrot');
        nqp::exit(0);
    }
}

plan(11);

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
        nqp::unlock($l);
    }, 0);
    nqp::threadrun($t2);

    nqp::threadjoin($t1);
    $now2 := nqp::time_n();
    nqp::threadjoin($t2);

    my $ok := nqp::join(',', @log) eq 'ale,porter,stout';
    ok($ok, 'Condition variable worked');

    say("# log = {@log}{ $now1 > $now2 ?? ', thread was running *after* join' !! ''}") if !$ok;
}

# XXXX: Test nqp::condsignalall -- not tested in Perl 6 spectests
