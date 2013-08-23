plan(1);
my $tmp_file := "tmp";
nqp::shell("echo Hello > $tmp_file",nqp::cwd(),nqp::getenvhash());
my $output := slurp($tmp_file);
ok($output ~~ /^Hello/);
