#! nqp

# Tests for try and catch

plan(10);

sub oops($msg = "oops!") { # throw an exception
    nqp::die($msg);
}

# for historical reasons we have nqp::die_s and nqp::die until one of them dies test both
sub oops_s() { # throw an exception using nqp::die_s
    nqp::die_s("oops_s!");
}

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
