plan(15);
my $outer := "hello there";
sub foo() {
  my $foo := "hello";
  my $bar := "hi";

  my int $int := 150;
  my num $num := 7.5;
  my str $str := "hello";

  my $lexpad := nqp::curlexpad();
  ok(nqp::atkey($lexpad,'$foo') eq "hello","accessing a variable using nqp::curlexpad()");
  ok(nqp::atkey($lexpad,'$bar') eq "hi","accessing a different variable using nqp::curlexpad()");

  ok(nqp::atkey_i($lexpad, '$int') == 150, "accessing an int variable using nqp::atkey_i");
  ok(nqp::atkey_n($lexpad, '$num') == 7.5, "accessing a num variable using nqp::atkey_n");
  ok(nqp::atkey_s($lexpad, '$str') eq "hello", "accessing a str variable using nqp::atkey_s");


  ok(!nqp::existskey($lexpad, '$outer'), "nqp::existskey on an outer variable in a lexpad");
  ok(nqp::existskey($lexpad, '$foo'), "nqp::existskey on a lexpad with a variable that does exists");
  ok(!nqp::existskey($lexpad, '$no_such_var_ever'), "nqp::existskey on a lexpad with a variable that doesn't exist");

  nqp::bindkey($lexpad,'$foo', 'ciao');
  ok($foo eq 'ciao', "binding to a variable using curlexpad");

  nqp::bindkey_i($lexpad, '$int', 300);
  ok($int == 300, "binding to a native int variable using curlexpad and nqp::bindkey_i");

  nqp::bindkey_n($lexpad, '$num', 3.14);
  ok($num == 3.14, "binding to a native num variable using curlexpad and nqp::bindkey_n");

  nqp::bindkey_s($lexpad, '$str', 'hi');
  ok($str eq "hi", "binding to a native str variable using curlexpad and nqp::bindkey_s");


  ok(nqp::getlexrel($lexpad, '$bar') eq 'hi', 'accessing a variable using getlexrel');
  ok(nqp::isnull(nqp::getlexrel($lexpad, '$no_such')), 'nqp::getlexrel returns null for a missing variable');
  $lexpad;
}
my $pad := foo();
ok(nqp::atkey($pad,'$bar') eq "hi","accessing a variable using nqp::curlexpad outside of that sub");


