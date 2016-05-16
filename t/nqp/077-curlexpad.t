plan(9);
my $outer := "hello there";
sub foo() {
  my $foo := "hello";
  my $bar := "hi";
  my $lexpad := nqp::curlexpad();
  ok(nqp::atkey($lexpad,'$foo') eq "hello","accessing a variable using nqp::curlexpad()");
  ok(nqp::atkey($lexpad,'$bar') eq "hi","accessing a different variable using nqp::curlexpad()");

  ok(!nqp::existskey($lexpad, '$outer'), "nqp::existskey on a outer variable in a lexpad");
  ok(nqp::existskey($lexpad, '$foo'), "nqp::existskey on a lexpad with a variable that does exists");
  ok(!nqp::existskey($lexpad, '$no_such_var_ever'), "nqp::existskey on a lexpad with a variable that doesn't exist");

  nqp::bindkey($lexpad,'$foo', 'ciao');
  ok($foo eq 'ciao', "binding to a variable using curlexpad");

  ok(nqp::getlexrel($lexpad, '$bar') eq 'hi', 'accessing a variable using getlexrel');
  ok(nqp::isnull(nqp::getlexrel($lexpad, '$no_such')), 'nqp::getlexrel returns null for a missing variable');
  $lexpad;
}
my $pad := foo();
ok(nqp::atkey($pad,'$bar') eq "hi","accessing a variable using nqp::curlexpad outside of that sub");


