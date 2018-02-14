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
    nqp::setmethcache($buf, nqp::hash('new', method () {nqp::create($buf)}));
    $buf;
}

# reusable vars
my str $s; # for testing output
my $regex;
# reusable vars needing reset
my $done         := 0;
my $read_all     := 0;
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
            $read_all := 1;
        }
    },
    'stderr_bytes', -> $seq, $data, $err {
        if nqp::isconcrete($data) {
            @stderr_bytes[$seq] := $data;
        }
        else {
            $read_all := 1;
        }
    },
    'buf_type', create_buf(uint8)
);

# define a task
my $args := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', 'echo aardvarks')
                        !! nqp::list('/bin/sh', '-c', 'echo aardvarks');
my $task := nqp::spawnprocasync($queue, $args, nqp::cwd(), nqp::getenvhash(), $config);
nqp::permit($task, 1, -1);

# run the task
while !$done || !$read_all {
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
ok($s ~~ /^aardvarks\s*$/, 'got the correct output on stdout');

#== test for stderr ============
# reset some reusable vars
$done         := 0;
$read_all     := 0;
$called_ready := 0;

# define the task
$args := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', 'foo')
                     !! nqp::list('/bin/sh', '-c', 'foo');
$task := nqp::spawnprocasync($queue, $args, nqp::cwd(), nqp::getenvhash(), $config);
nqp::permit($task, 2, -1);

# run the task
while !$done || !$read_all {
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

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("no output from spawnprocasync stderr on the jvm", 1);
}
else {
    ok($s  ~~ / '/bin/sh:' \s+ \d+ ':' \s+ foo \s* ':' \s* not \s* found/,
       'got the correct output on stderr');
}
