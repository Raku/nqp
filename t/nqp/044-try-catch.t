#! nqp

# Tests for try and catch

plan(32);

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
