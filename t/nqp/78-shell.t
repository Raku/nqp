plan(4);

my $a := nqp::getenvhash();
$a<foo> := 123;
my $b := nqp::getenvhash();
$b<foo> := 456;

ok(nqp::ishash($a),'nqp::getenvhash() returns a hash');
ok($a<foo> == 123,'nqp::getenvhash() is a fresh hash');
ok($b<foo> == 456,'nqp::getenvhash() is a fresh hash');

my $tmp_file := "tmp";
nqp::shell("echo Hello > $tmp_file",nqp::cwd(),nqp::getenvhash());
my $output := slurp($tmp_file);
ok($output ~~ /^Hello/,'nqp::shell works with the echo shell command');
