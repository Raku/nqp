#! nqp

# Tests for try and catch

plan(48);

sub oops($msg = "oops!") { # throw an exception
    nqp::die($msg);
}

# for historical reasons we have nqp::die_s and nqp::die until one of them dies test both
sub oops_s() { # throw an exception using nqp::die_s
    nqp::die_s("oops_s!");
}


my $msg;
try {
  oops();
  CATCH {
    $msg := nqp::getmessage($_);
  }
}
is($msg, "oops!", "nqp::getmessage");

my $ok := 1;
try {
    oops();
    $ok := 0;
}
ok($ok, "exceptions exit a try block");

sub foo() {
    try {
        return 1;
    }
    return 0;
}

ok(foo(), "control exceptions are not caught by a try block");

ok((try 1532) == 1532,"statement prefix form works when not throwing an exception");
ok(nqp::istype((try oops()), NQPMu), "statement prefix form of try works");

{
    CATCH { ok(1, "CATCH blocks are invoked when an exception occurs"); }
    oops();
}


$ok := 1;
sub bar() {
    CATCH { $ok := 0; }
    return 1;
}
bar();
ok($ok, "CATCH blocks ignore control exceptions");

$ok := 1;
{
    {
        {
            {
                oops();
                CATCH { $ok := $ok * 2; nqp::rethrow($!); }
            }
            CATCH { $ok := $ok * 2; nqp::rethrow($!); }
        }
        CATCH { $ok := $ok * 2; nqp::rethrow($!); }
    }
    CATCH { ok($ok == 8, "rethrow and multiple exception handlers work") }
}

$ok := 1;

{
    for 1, 2, 3, 4 {
        $ok := $ok * 2;
        oops();
    }
    CATCH { nqp::resume($!); }
}

ok($ok == 16, "resuming from resumable exceptions works");

$ok := "";
{
  try {
    oops();
    CATCH {
      $ok := $_;
    }
  }
}

is($ok, "oops!", "combination of both try and CATCH");

{
        CATCH {$ok := $_}
        oops_s();
}
is($ok, "oops_s!", "nqp::die_s");


{
    my $exception := nqp::newexception();
    nqp::setmessage($exception, "a cute exception");
    nqp::setpayload($exception, "cute payload");
    nqp::throw($exception);
    CATCH {
       is(nqp::getmessage($_), "a cute exception", "nqp::setmessage/nqp::getmessage"); 
       is(nqp::getpayload($_), "cute payload", "nqp::setpayload/nqp::getpayload"); 
    }
}

{
    my $exception := nqp::newexception();
    nqp::setmessage($exception, "a cute exception");
    nqp::throw($exception);
    CATCH {
       ok(nqp::isnull(nqp::getpayload($_)), "payload is null when not set");
    }
}

{
    class Foo is repr('VMException') {
        method custom_stuff() {"cool stuff"}
    }

    my $exception := Foo.new(custom_attr=>'custom');
    my $msg := "a custom exception";
    is(nqp::setmessage($exception, $msg), $msg, "correct return value for nqp::setmessage");
    my $payload := "custom payload";
    is(nqp::setpayload($exception, $payload), $payload, "correct return value for nqp::setpayload");
    nqp::throw($exception);
    CATCH {
       is($_.custom_stuff, "cool stuff", "calling method on custom exception");
       is(nqp::getmessage($_), "a custom exception", "nqp::setmessage/nqp::getmessage on custom exception"); 
       is(nqp::getpayload($_), "custom payload", "nqp::setpayload/nqp::getpayload on custom exception"); 
    }
}

my $log := '';

my $ex;
{
    {
        {
            {
                oops();
                CATCH {$log := $log ~ "#1"; $ex := $!; }
            }
            CATCH { $log := $log ~ "#2" }
        }
        nqp::rethrow($ex);
        CATCH { $log := $log ~ "#3" }
    }
    CATCH { $log := $log ~ "#4" }
}
is($log, '#1#3', 'rethrow works from a scope higher then CATCH');

$log := '';
my $ex2;
{
    {
        {
            {
                oops();
                CATCH {$log := $log ~ "#1"; $ex2 := $!; }
            }
            CATCH { $log := $log ~ "#2" }
        }
        {
            nqp::rethrow($ex);
            CATCH { $log := $log ~ "#3" }
        }
    }
    CATCH { $log := $log ~ "#4" }
}

is($log, '#1#3', 'rethrow works from a scope that is not a direct ancestor');

{
    oops();
    CATCH { ok(nqp::istrue($!), "exception is true") }
}

my $value := try { 200 };
ok($value == 200, "returning values from try works");

# regression test for issue #170
my $var := 100; try {nqp::die('okohnoes'); $var};
is($var,100, "variable does get overwriten by bug");

my int $int_try_result := try {
    nqp::die("foo");
    200;
};
ok(nqp::iseq_i($int_try_result, 0), "can get a native int result of a try block that catches an exception");

my str $str_try_result := try {
    nqp::die("foo");
    200;
};
ok($str_try_result eq "", "can get a native str result of a try block that catches an exception");

my $result := try {
    my $foo;
    $foo.bar;
}
ok(nqp::istype($result, NQPMu), "we get correct return value from a try that catches a missing method");

my int $result_int := try {
    my $foo;
    $foo.bar;
}
ok($result_int + 0 == 0, "we get correct return value from a try that catches a missing method used as int");

my num $result_num := try {
    my $foo;
    $foo.bar;
}
ok($result_num + 0 == 0, "we get correct return value from a try that catches a missing method used as num");

my str $result_str := try {
    my $foo;
    $foo.bar;
}
ok($result_str ~ '' eq '', "we get correct return value from a try that catches a missing method used as str");

{
    my sub block() {
        my $exception := nqp::newexception();
        nqp::setmessage($exception, "a cute exception");
        nqp::setpayload($exception, "cute payload");
        nqp::throw($exception);
    }
    my sub catch() {
       is(nqp::getmessage(nqp::exception()), "a cute exception", "nqp::setmessage/nqp::getmessage with calling nqp::handle directly");
       is(nqp::getpayload(nqp::exception()), "cute payload", "nqp::setpayload/nqp::getpayload with calling nqp::handle directly");
    }
    nqp::handle(block(), 'CATCH', catch());
}

sub THROW(int $type, $arg) {
    my $ex := nqp::newexception();
    nqp::setpayload($ex, $arg);
    nqp::setextype($ex, $type);
    nqp::throw($ex);
    $arg;
}

my $next_payload;
my $redo_payload;
my $last_payload;
my $return_payload;
my $take_payload;
my $warn_payload;
my $succeed_payload;
my $proceed_payload;
my $emit_payload;
my $done_payload;

sub handle($throws) {
   nqp::handle(
       $throws(),
       'NEXT', $next_payload := nqp::getpayload(nqp::exception()),
       'REDO', $redo_payload := nqp::getpayload(nqp::exception()),
       'LAST', $last_payload := nqp::getpayload(nqp::exception()),
       'RETURN', $return_payload := nqp::getpayload(nqp::exception()),
       'TAKE', $take_payload := nqp::getpayload(nqp::exception()),
       'WARN', $warn_payload := nqp::getpayload(nqp::exception()),
       'SUCCEED', $succeed_payload := nqp::getpayload(nqp::exception()),
       'PROCEED', $proceed_payload := nqp::getpayload(nqp::exception()),
       'EMIT', $emit_payload := nqp::getpayload(nqp::exception()),
       'DONE', $done_payload := nqp::getpayload(nqp::exception()),
    );
}

handle(-> { THROW(nqp::const::CONTROL_NEXT, 'next'); });
handle(-> { THROW(nqp::const::CONTROL_REDO, 'redo'); });
handle(-> { THROW(nqp::const::CONTROL_LAST, 'last'); });
handle(-> { THROW(nqp::const::CONTROL_RETURN, 'return'); });
handle(-> { THROW(nqp::const::CONTROL_TAKE, 'take'); });
handle(-> { THROW(nqp::const::CONTROL_WARN, 'warn'); });
handle(-> { THROW(nqp::const::CONTROL_SUCCEED, 'succeed'); });
handle(-> { THROW(nqp::const::CONTROL_PROCEED, 'proceed'); });
handle(-> { THROW(nqp::const::CONTROL_EMIT, 'emit'); });
handle(-> { THROW(nqp::const::CONTROL_DONE, 'done'); });

is($next_payload, 'next', 'caught NEXT exception');
is($redo_payload, 'redo', 'caught REDO exception');
is($last_payload, 'last', 'caught LAST exception');
is($return_payload, 'return', 'caught RETURN exception');
is($take_payload, 'take', 'caught TAKE exception');
is($warn_payload, 'warn', 'caught WARN exception');
is($succeed_payload, 'succeed', 'caught SUCCEED exception');
is($proceed_payload, 'proceed', 'caught PROCEED exception');
is($emit_payload, 'emit', 'caught EMIT exception');
is($done_payload, 'done', 'caught DONE exception');

my $control_ex;
{
    THROW(nqp::const::CONTROL_NEXT, 'fancy payload');
    CONTROL { $control_ex := $!; }
}

is(nqp::getpayload($control_ex), 'fancy payload', 'CONTROL block works');

{
    my $control_ex;
    {
        THROW(nqp::const::CONTROL_WARN, 'fancy warn payload');
        CONTROL {
            $control_ex := $!;
        }
    }

    is(nqp::getpayload($control_ex), 'fancy warn payload', 'CONTROL block works with WARN');
    is(nqp::getextype($control_ex), nqp::const::CONTROL_WARN, 'nqp::getextype gets the correct type');
}

my $control_called := 0;
my $caught := 0;
{
    CATCH {
        $caught := 1;
    }
    {
        1.no_such_method;
        CONTROL {
            $control_called := 1;
        }
    }
}

ok(!$control_called, 'CONTROL not caught');
ok($caught, 'CATCH caught the lowlevel error');

{
    my $caught_next := 0;
    sub throw_next() {
        nqp::throwextype(nqp::const::CONTROL_NEXT);
        nqp::null();
    }
    sub catch_next() {
        ($caught_next := 1);
    }
    nqp::handle(
        throw_next(),
        'NEXT', catch_next()
    );

    ok($caught_next, 'throwextype works');
}
