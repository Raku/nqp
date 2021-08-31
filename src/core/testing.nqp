my $test_counter       := 0;
my $todo_upto_test_num := 0;
my $todo_reason        := '';

sub plan($quantity) {
    say("1..$quantity");
}

sub ok($condition, $desc?) {
    $test_counter := $test_counter + 1;

    my @output;
    unless $condition {
        @output.push("not ");
    }
    @output.push("ok $test_counter");
    if $desc {
        @output.push(" - $desc");
    }
    if $test_counter <= $todo_upto_test_num {
        @output.push($todo_reason);
    }
    say(|@output);

    $condition ?? 1 !! 0
}

sub is($got, $expected, $desc?) {
    ok($got eq $expected, $desc);
    if $got ne $expected {
        my $out := '';
        for nqp::split("\n", "     got: '$got'\nexpected: '$expected'") -> $line {
            $out := $out ~ "# $line\n";
        }
        print($out);
    }
}

sub todo($reason, $count) {
    $todo_upto_test_num := $test_counter + $count;
    $todo_reason        := "# TODO $reason";
}

sub skip($desc, $count=1) {
    my $skip_to := $test_counter + $count;
    while ($test_counter < $skip_to) {
        $test_counter := $test_counter + 1;
        say("ok $test_counter # SKIP $desc");
    }
}

# Workaround for a JVM bug
sub bug-workaround($code) {
    my $died := 0;
    my $got-message := '';
    try { $code(); CATCH { $died := 1; $got-message := nqp::getmessage($_); } }
    nqp::hash('died', $died, 'got-message', $got-message);
}

sub dies-ok($code, $description, :$message) {
    my $workaround := bug-workaround($code);
    my $died := $workaround<died>;
    my $got-message := $workaround<got-message>;
    ok($died, $description);
    if $message {
        if nqp::isstr($message) {
          is($got-message, $message, 'got correct exception message');
        }
        else {
          ok($got-message ~~ $message, 'exception message matches');
        }
    }
}

# for testing process failures
sub run-command($command, :$stdout, :$stderr) {
    my class Queue is repr('ConcBlockingQueue') { }

    # We alway capture stdout and stderr output, but we only return
    # what is asked for.  Returns an array of two elements, one for
    # each stream, with element 1 being output from stdout (file descriptor 1) and 2
    # being output from stderr (fd 2).  The element for a stream will
    # be the empty string if it wasn't requested.

    my @stdout-bytes;
    my @stderr-bytes;
    my $queue := nqp::create(Queue);
    my $done         := 0;
    my $read-all1    := 0;
    my $read-all2    := 0;
    my $called-ready := 0;

    my $config := nqp::hash();
    $config<done> := -> $status {
        ++$done;
    };
    $config<buf_type> := create-buf(uint8);
    $config<ready> := -> $stdout?, $stderr? {
        ++called-ready;
    };
    $config<stdout_bytes> := -> $seq, $data, $err {
        if nqp::isconcrete($data) {
            @stdout-bytes[$seq] := $data;
        }
        else {
            ++$read-all1;
        }
    };
    $config<stderr_bytes> := -> $seq, $data, $err {
        if nqp::isconcrete($data) {
            @stderr-bytes[$seq] := $data;
        }
        else {
            ++$read-all2;
        }
    };
    $config<error> := -> $err {
      my $ex := nqp::newexception();
      nqp::setmessage($ex, $err);
      nqp::setpayload($ex, nqp::null());
      nqp::throw($ex)
    }

    # define the task
    my $task := nqp::spawnprocasync($queue, $command[0], $command, nqp::cwd(),
        nqp::getenvhash(), $config);
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

    # extract task results
    my str $stdout-str := '';
    my str $stderr-str := '';
    if $stdout || $stderr {
        my class VMDecoder is repr('Decoder') {}
        my $dec := nqp::create(VMDecoder);
        nqp::decoderconfigure($dec, 'utf8', nqp::hash());

        if $stdout {
            for @stdout-bytes -> $bytes {
                nqp::decoderaddbytes($dec, $bytes);
            }
            $stdout-str := nqp::decodertakeallchars($dec);
        }
        if $stderr {
            for @stderr-bytes -> $bytes {
                nqp::decoderaddbytes($dec, $bytes);
            }
            $stderr-str := nqp::decodertakeallchars($dec);
        }
    }

    my @arr := nqp::list('', $stdout-str, $stderr-str);
    return @arr;

    sub create-buf($type) {
        my $buf := nqp::newtype(nqp::null(), 'VMArray');
        nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
#?if !moar
        nqp::setmethcache($buf, nqp::hash('new', method () {nqp::create($buf)}));
#?endif
        $buf;
    }
}

# vim: ft=perl6
