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

sub dies-ok($code, $description, :$message) {
    my $died := 0;
    my $got-message := '';
    try { $code(); CATCH { $died := 1; $got-message := nqp::getmessage($_); } }
    ok($died, $description);
    if $message {
        if nqp::isstr($message) {
          is($got-message, $message, 'got correct exception message');
        } else {
          ok($got-message ~~ $message, 'exception message matches');
        }
    }
}

# vim: ft=perl6
