plan(20);

my $x;
sub savecapture($arg, *%named) {
  my $capture := nqp::savecapture();
  $capture;
}


sub foo($a,$b,$c,:$d) {
  my $capture := nqp::usecapture();
  ok(nqp::captureposelems($capture) == 3,"nqp::captureposelems on result of usecapture");
  ok(nqp::captureposarg($capture,1) == 20,"nqp::captureposarg on result of usecapture");
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
ok(nqp::captureposarg($saved,0) == 100,"the capture returned by nqp::savecapture survives the next call to savecapture");

sub invokee($arg, :$named_arg_1) {
  ok($arg == 100,"nqp::invokewithcapture");
  ok($named_arg_1 == 200, "nqp::invokewithcapture takes a named argument");
}
nqp::invokewithcapture(&invokee,$saved);

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
    ok(nqp::captureposarg($capture,2) == 20,"nqp::captureposarg on result of usecapture in a class");
    ok(nqp::capturehasnameds($capture) == 0,"nqp::capturehasnameds with no nameds in a class");
    is(nqp::captureposarg($capture,0).attr, 'foobar' ,"nqp::captureposarg on an invocant");
  }
}

my $foo := Foo.new(attr => "foobar");
$foo.foo(10,20,30);


my $capture := savecapture(100);

my $clone := nqp::clone($capture);
ok(nqp::captureposarg($clone, 0) == 100,"nqp::captureposarg on a cloned capture");
