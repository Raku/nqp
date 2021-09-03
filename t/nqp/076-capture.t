plan(34);

my $x;
sub savecapture($arg, *%named) {
  my $capture := nqp::savecapture();
  $capture;
}


sub foo($a,$b,$c,:$d) {
  my $capture := nqp::usecapture();
  ok(nqp::captureposelems($capture) == 3,"nqp::captureposelems on result of usecapture");
  ok(nqp::captureposarg_i($capture,1) == 20,"nqp::captureposarg on result of usecapture");
  ok(nqp::capturehasnameds($capture) == 0,"nqp::capturehasnameds with no nameds");
}
foo(10,20,30);

sub bar($a,$b,:$c,:$d) {
  my $capture := nqp::usecapture();
  ok(nqp::capturehasnameds($capture) == 1,"nqp::capturehasnameds with nameds");
  ok(nqp::captureexistsnamed($capture, "c") == 1,"nqp::captureexistsnamed with a named that exists");
  ok(nqp::captureexistsnamed($capture, "d") == 0,"nqp::captureexistsnamed with a named that does not exist");
}

bar(1, 2, :c(3));


my $saved := savecapture(100, :named_arg_1(200));
savecapture(200);
ok(nqp::captureposarg_i($saved,0) == 100,"the capture returned by nqp::savecapture survives the next call to savecapture");

sub namedhash(:$known, *%c) {
  my $capture := nqp::usecapture();
  my $hash := nqp::capturenamedshash($capture);
  ok(nqp::ishash($hash), "nqp::capturenamedhash returns a hash");
  ok($hash<a> == 100 && $hash<b> == 200, "...which contains the right values");
  is($hash<d>, "Hello", "string with nqp::capturenamedhash");
  ok($hash<e> == 2.4, "number with nqp::capturenamedhash");
  nqp::deletekey($hash, 'b');
  ok(nqp::existskey($hash, 'a') && !nqp::existskey($hash, 'b'), "...which allows deletion of keys");
  ok(nqp::existskey(nqp::capturenamedshash($capture), 'b'), "...without changing the oringal capture");
}
namedhash(:a(100), :b(200), :extra(42), :d("Hello"), :e(2.4));


class Foo {
  has $!attr;
  method attr() {$!attr}
  method foo($a,$b,$c,:$d) {
    my $capture := nqp::usecapture();
    ok(nqp::captureposelems($capture) == 4,"nqp::captureposelems on result of usecapture in a class");
    ok(nqp::captureposarg_i($capture,2) == 20,"nqp::captureposarg on result of usecapture in a class");
    ok(nqp::capturehasnameds($capture) == 0,"nqp::capturehasnameds with no nameds in a class");
    is(nqp::captureposarg($capture,0).attr, 'foobar' ,"nqp::captureposarg on an invocant");
  }
}

my $foo := Foo.new(attr => "foobar");
$foo.foo(10,20,30);


my $capture := savecapture(100);

my $clone := nqp::clone($capture);
ok(nqp::captureposarg_i($clone, 0) == 100,"nqp::captureposarg on a cloned capture");

sub savecapture_three($arg1, $arg2, $arg3) {
  my $capture := nqp::savecapture();
  $capture;
}

{
  is(nqp::captureposprimspec(savecapture(nqp::list()), 0), 0, 'nqp::captureposprimspec with nqp::list');
  is(nqp::captureposprimspec(savecapture(100), 0), 1, 'nqp::captureposprimspec with int');
  is(nqp::captureposprimspec(savecapture(13.2), 0), 2, 'nqp::captureposprimspec with num');
  is(nqp::captureposprimspec(savecapture("foo"), 0), 3, 'nqp::captureposprimspec with str');

  is(nqp::captureposprimspec(savecapture(int), 0), 0, 'nqp::captureposprimspec with int type object');
  is(nqp::captureposprimspec(savecapture(num), 0), 0, 'nqp::captureposprimspec with int type object');
  is(nqp::captureposprimspec(savecapture(str), 0), 0, 'nqp::captureposprimspec with int type object');

  is(nqp::captureposprimspec(savecapture(13.2), 0), 2, 'nqp::captureposprimspec with num');
  is(nqp::captureposprimspec(savecapture("foo"), 0), 3, 'nqp::captureposprimspec with str');

  my $all := savecapture_three(100, 12.3, "foo",);
  ok(nqp::captureposprimspec($all, 0) == 1 &&  nqp::captureposprimspec($all, 2) == 3, 'nqp::captureposprimspec uses index');

  ok(nqp::captureposarg_i($all, 0) == 100, 'nqp::captureposarg_i');
  ok(nqp::iseq_n(nqp::captureposarg_n($all, 1), 12.3), 'nqp::captureposarg_n');
  is(nqp::captureposarg_s($all, 2), "foo", 'nqp::captureposarg_s');

  my int $int := 100;
  my num $num := 12.3;
  my str $str := "foo";

  my $natived := savecapture_three($int, $num, $str);

  ok(nqp::captureposarg_i($natived, 0) == 100, 'nqp::captureposarg_i');
  ok(nqp::iseq_n(nqp::captureposarg_n($natived, 1), 12.3), 'nqp::captureposarg_n');
  is(nqp::captureposarg_s($natived, 2), "foo", 'nqp::captureposarg_s');
}
