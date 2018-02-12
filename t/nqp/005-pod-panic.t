plan(1);

# exec nqp commands to test known bad pod
my $pod := Q{
=pod
text...
=cut
};

my $pod-good := Q{
=begin
text...
=end
};

my $fname := 'pod-test.nqp';
my $fh    := open($fname, :w);
$fh.print($pod);
#$fh.print($pod-good);
close($fh);

my $cmd     := './nqp';
my $cmdargs := $fname;
my $is-windows := nqp::backendconfig()<osname> eq 'MSWin32';
my $args := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', 'echo aardvarks')
                        !! nqp::list($cmd, $cmdargs);

# expected first line output to stderr:
#   Obsolete pod format, please use =begin/=end instead at line 4, near "\n"
token errmsg1 {Obsolete \s+ pod \s+ format\, \s+ please \s+ use \s+ '=begin/=end' \s+ instead}

say("== running with no output capture");
my $output := run-command($args);
say("== running with only stdout capture");
my $output2 := run-command($args, :stdout);
say("== running with only stderr capture");
my $output3 := run-command($args, :stderr);
say("== running with stdout and stderr capture");
my $output4 := run-command($args, :stdout, :stderr);
nqp::unlink($fname);

ok($output ~~ /^ $<errmsg1> /, 'got the correct output');

##### all supporting code below here #####
sub run-command($command, :$stdout, :$stderr) {
    my class Queue is repr('ConcBlockingQueue') { }

    # use one output strean or both (merge)
    my @out-bytes;
    my $queue := nqp::create(Queue);

    my $done     := 0;
    my $read-all := 0;

    my $config := nqp::hash(
        'done', -> $status {
            ++$done;
        }
    );

    if $stdout || $stderr {
        $config<buf_type> := create-buf(uint8);
    }

    if $stdout && $stderr {
        $config<merge_bytes> := -> $seq, $data, $err {
            if nqp::isconcrete($data) {
                @out-bytes[$seq] := $data;
            }
            else {
                ++$read-all;
            }
        };
    }
    elsif $stdout {
        $config<stdout_bytes> := -> $seq, $data, $err {
            if nqp::isconcrete($data) {
                @out-bytes[$seq] := $data;
            }
            else {
                ++$read-all;
            }
        };
    }
    elsif $stderr {
        $config<stderr_bytes> := -> $seq, $data, $err {
            if nqp::isconcrete($data) {
                @out-bytes[$seq] := $data;
            }
            else {
                ++$read-all;
            }
        };
    }
    else {
        ++$read-all;
    }

    my $task := nqp::spawnprocasync($queue, $command, nqp::cwd(), nqp::getenvhash(), $config);

    if $stdout || $stderr {
        nqp::permit($task, 1, -1);
    }

    while !$done || !$read-all {
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

    if $stdout || $stderr {
        my class VMDecoder is repr('Decoder') {}
        my $dec := nqp::create(VMDecoder);
        nqp::decoderconfigure($dec, 'utf8', nqp::hash());
        for @out-bytes -> $bytes {
            nqp::decoderaddbytes($dec, $bytes);
        }
        nqp::decodertakeallchars($dec);
    }
    else {
        nqp::null();
    }

    sub create-buf($type) {
        my $buf := nqp::newtype(nqp::null(), 'VMArray');
        nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
        nqp::setmethcache($buf, nqp::hash('new', method () {nqp::create($buf)}));
        $buf;
    }
}
