plan(4);

# set up reusable scaffolding
my $is-windows := nqp::backendconfig()<osname> eq 'MSWin32';
my class Queue is repr('ConcBlockingQueue') { }
my $queue := nqp::create(Queue);
my class VMDecoder is repr('Decoder') {}
my $dec := nqp::create(VMDecoder);
nqp::decoderconfigure($dec, 'utf8', nqp::hash());
my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    $buf
}

# reusable vars
my str $s; # for testing output
my $string;
my $command;
my $prog;
my $args;
# reusable vars needing reset
my $done         := 0;
my $read-all1    := 0;
my $read-all2    := 0;
my $called_ready := 0;

# task-specific vars
my @stdout_bytes;
my @stderr_bytes;
my $config := nqp::hash(
    'done', -> $status {
        $done := $done + 1;
    },
    'ready', -> $stdin?, $stdout?, $stderr? {
        $called_ready := $called_ready + 1;
    },
    'stdout_bytes', -> $seq, $data, $err {
        if nqp::isconcrete($data) {
            @stdout_bytes[$seq] := $data;
        }
        else {
            ++$read-all1;
        }
    },
    'stderr_bytes', -> $seq, $data, $err {
        if nqp::isconcrete($data) {
            @stderr_bytes[$seq] := $data;
        }
        else {
            ++$read-all2;
        }
    },
    'buf_type', create_buf(uint8)
);

# define a task
$string  := "expected output from stdout";
$command := "echo $string";
$prog := $is-windows ?? nqp::getenvhash()<ComSpec>
                     !! '/bin/sh';
$args := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', $command)
                     !! nqp::list('/bin/sh', '-c', $command);
my $task := nqp::spawnprocasync($queue, $prog, $args, nqp::cwd(), nqp::getenvhash(), $config);
nqp::permit($task, 1, -1);
nqp::permit($task, 2, -1);

# run the task
while !$done || !$read-all1 || !$read-all2 {
  if nqp::shift($queue) -> $task {
    if nqp::list($task) {
        my $code := nqp::shift($task);
        $code(|$task);
    }
    else {
        $task();
    }
  }
}

# check results
is($called_ready, 1, 'called the ready callback once');
for @stdout_bytes -> $bytes {
    nqp::decoderaddbytes($dec, $bytes);
}
$s := nqp::decodertakeallchars($dec);
ok($s ~~ / $string /, 'got the correct output on stdout');

#== test for stderr ============
# reset some reusable vars
$done         := 0;
$read-all1    := 0;
$read-all2    := 0;
$called_ready := 0;

# define the task
$string  := "expected output from stderr";
$command := "echo $string >&2";
$prog := $is-windows ?? nqp::getenvhash()<ComSpec>
                     !! '/bin/sh';
$args := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', $command)
                     !! nqp::list('/bin/sh', '-c', $command);
$task := nqp::spawnprocasync($queue, $prog, $args, nqp::cwd(), nqp::getenvhash(), $config);
nqp::permit($task, 1, -1);
nqp::permit($task, 2, -1);

# run the task
while !$done || !$read-all1 || !$read-all2 {
  if nqp::shift($queue) -> $task {
    if nqp::list($task) {
        my $code := nqp::shift($task);
        $code(|$task);
    }
    else {
        $task();
    }
  }
}

# check results
is($called_ready, 1, 'called the ready callback once');
for @stderr_bytes -> $bytes {
    nqp::decoderaddbytes($dec, $bytes);
}
$s := nqp::decodertakeallchars($dec);
ok($s ~~ / $string /, 'got the correct output on stderr');
