plan(2);

my $tmp-file := "tmp";
spew($tmp-file, "\n");
my $is-windows := nqp::stat($tmp-file, nqp::const::STAT_FILESIZE) == 2;
nqp::unlink($tmp-file);

my $args := $is-windows ?? nqp::list(nqp::getenvhash()<CompSpec>, '/c', 'echo aardvarks') !! nqp::list('/bin/sh', '-c', 'echo aardvarks');

my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    nqp::setmethcache($buf, nqp::hash('new', method () {nqp::create($buf)}));
    $buf;
}

my $done := 0;

my class Queue is repr('ConcBlockingQueue') { }
my $queue := nqp::create(Queue);

my @stdout_bytes;
my $read_all := 0;

my $called_ready := 0;


my $config := nqp::hash(
    'done', -> $status {
        $done := $done + 1;
    },
    'ready', -> $stdin?, $stdout? {
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
    'buf_type', create_buf(uint8)
);


my $task := nqp::spawnprocasync($queue, $args, nqp::cwd(), nqp::getenvhash(), $config);

nqp::permit($task, 1, -1);

while !$done || !$read_all {
  if nqp::shift($queue) -> $task {
    if nqp::list($task) {
      my $code := nqp::shift($task);
      $code(|$task);
    } else {
      $task();
    }
  }
}

my class VMDecoder is repr('Decoder') {}
my $dec := nqp::create(VMDecoder);
nqp::decoderconfigure($dec, 'utf8', nqp::hash());

is($called_ready, 1, 'called the ready callback once');

for @stdout_bytes -> $bytes {
    nqp::decoderaddbytes($dec, $bytes);
}
ok(nqp::decodertakeallchars($dec) ~~ /^aardvarks\s*$/, 'got the correct output');
