
plan(8);

my $is-windows := nqp::backendconfig()<osname> eq 'MSWin32';
my $args1 := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', 'echo aardvarks')
                         !! nqp::list('/bin/sh', '-c', 'echo aardvarks');
my $args2 := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', 'foo')
                         !! nqp::list('/bin/sh', '-c', 'foo');

my @arr; my @d1; my @d2;
my $out; my $err;

# running with only stdout capture
@arr := run-command($args1, :stdout);
@d1  := @arr[0];
@d2  := @arr[1];
$out := nqp::shift(@d1);
$err := nqp::shift(@d2);
ok($out ~~ /^aardvarks\s*$/, 'got the correct output');
ok($err ~~ /^\s*$/, 'got the correct output');

# running with stdout and stderr capture
@arr := run-command($args1, :stdout, :stderr);
@d1  := @arr[0];
@d2  := @arr[1];
$out := nqp::shift(@d1);
$err := nqp::shift(@d2);
ok($out ~~ /^aardvarks\s*$/, 'got the correct output');
ok($err ~~ /^\s*$/, 'got the correct output');


# running with only stderr capture
@arr := run-command($args2, :stderr);
@d1  := @arr[0];
@d2  := @arr[1];
$out := nqp::shift(@d1);
$err := nqp::shift(@d2);
ok($out ~~ /^\s*$/, 'got the correct output');
ok($err ~~ /^'/bin/sh:' \s* 1':' \s* foo ':' \s* not \s* found \s* $/, 'got the correct output');

# running with stdout and stderr capture
@arr := run-command($args2, :stdout, :stderr);
@d1  := @arr[0];
@d2  := @arr[1];
$out := nqp::shift(@d1);
$err := nqp::shift(@d2);
ok($out ~~ /^\s*$/, 'got the correct output');
ok($err ~~ /^'/bin/sh:' \s* 1':' \s* foo ':' \s* not \s* found \s* $/, 'got the correct output');


