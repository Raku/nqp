#! nqp

# Tests for try and catch

plan(20);

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
ok($msg eq "oops!", "nqp::getmessage");

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

ok($ok eq "oops!", "combination of both try and CATCH");

{
        CATCH {$ok := $_}
        oops_s();
}
ok($ok eq "oops_s!", "nqp::die_s");


{
    my $exception := nqp::newexception();
    nqp::setmessage($exception, "a cute exception");
    nqp::setpayload($exception, "cute payload");
    nqp::throw($exception);
    CATCH {
       ok(nqp::getmessage($_) eq "a cute exception", "nqp::setmessage/nqp::getmessage"); 
       ok(nqp::getpayload($_) eq "cute payload", "nqp::setpayload/nqp::getpayload"); 
    }
}

{
    class Foo is repr('VMException') {
        method custom_stuff() {"cool stuff"}
    }

    my $exception := Foo.new(custom_attr=>'custom');
    my $msg := "a custom exception";
    ok(nqp::setmessage($exception, $msg) eq $msg, "correct return value for nqp::setmessage");
    my $payload := "custom payload";
    ok(nqp::setpayload($exception, $payload) eq $payload, "correct return value for nqp::setpayload");
    nqp::throw($exception);
    CATCH {
       ok($_.custom_stuff eq "cool stuff", "calling method on custom exception");
       ok(nqp::getmessage($_) eq "a custom exception", "nqp::setmessage/nqp::getmessage on custom exception"); 
       ok(nqp::getpayload($_) eq "custom payload", "nqp::setpayload/nqp::getpayload on custom exception"); 
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
ok($log eq '#1#3', 'rethrow works from a scope higher then CATCH');

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

ok($log eq '#1#3', 'rethrow works from a scope that is not a direct ancestor');
