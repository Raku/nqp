plan(5);

my $a := nqp::getenvhash();
$a<foo> := 123;
my $b := nqp::getenvhash();
$b<foo> := 456;

ok(nqp::ishash($a),'nqp::getenvhash() returns a hash');
ok($a<foo> == 123,'nqp::getenvhash() is a fresh hash');
ok($b<foo> == 456,'nqp::getenvhash() is a fresh hash');

my $tmp-file := "tmp";
nqp::shell("echo Hello > $tmp-file",nqp::cwd(),nqp::getenvhash(), nqp::null(), nqp::null(), nqp::null(),
    nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_INHERIT_OUT + nqp::const::PIPE_INHERIT_ERR);
my $output := slurp($tmp-file);
ok($output ~~ /^Hello/,'nqp::shell works with the echo shell command');

my $env := nqp::getenvhash();
$env<NQP_SHELL_TEST_ENV_VAR> := "123foo";

nqp::shell("echo %NQP_SHELL_TEST_ENV_VAR% > $tmp-file",nqp::cwd(),$env, nqp::null(), nqp::null(), nqp::null(),
    nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_INHERIT_OUT + nqp::const::PIPE_INHERIT_ERR);
$output := slurp($tmp-file);
if $output eq "%NQP_SHELL_TEST_ENV_VAR%\n" {
    nqp::shell("echo \$NQP_SHELL_TEST_ENV_VAR > $tmp-file",nqp::cwd(),$env, nqp::null(), nqp::null(), nqp::null(),
        nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_INHERIT_OUT + nqp::const::PIPE_INHERIT_ERR);
    my $output := slurp($tmp-file);
    is($output, "123foo\n","passing env variables to child processes works linux");
} else {
  ok($output ~~ /^123foo/,"passing env variables to child processes works on windows");
}
nqp::unlink($tmp-file);
