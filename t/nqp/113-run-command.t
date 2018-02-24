
plan(8);

my $is-windows := nqp::backendconfig()<osname> eq 'MSWin32';
my $args1 := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', 'echo aardvarks')
                         !! nqp::list('/bin/sh', '-c', 'echo aardvarks');

my $errstring  := "expected output from stderr";
my $command    := "echo $errstring >&2";
my $args2 := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', $command)
                         !! nqp::list('/bin/sh', '-c', $command);

my @arr;
my $out;
my $err;

# running with only stdout capture
@arr := run-command($args1, :stdout);
$out := @arr[1];
$err := @arr[2];
ok($out ~~ /^aardvarks\s*$/, 'got the correct output from stdout');
is($err, '', 'got the correct output from stderr');

# running with stdout and stderr capture
@arr := run-command($args1, :stdout, :stderr);
$out := @arr[1];
$err := @arr[2];
ok($out ~~ /^aardvarks\s*$/, 'got the correct output from stdout');
is($err, '', 'got the correct output from stderr');


# running with only stderr capture
@arr := run-command($args2, :stderr);
$out := @arr[1];
$err := @arr[2];
is($out, '', 'got the correct output from stdout');
ok($err ~~ / $errstring /, 'got the correct output from stderr');

# running with stdout and stderr capture
@arr := run-command($args2, :stdout, :stderr);
$out := @arr[1];
$err := @arr[2];
is($out, '', 'got the correct output from stdout');
ok($err ~~ / $errstring /, 'got the correct output from stderr');
