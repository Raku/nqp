my $test_counter       := 0;
my $todo_upto_test_num := 0;
my $todo_reason        := '';

sub plan($quantity) {
    say("1..$quantity");
}

# We use nqp::push instead of .push to workaround a js backend bug

sub ok($condition, $desc?) {
    $test_counter := $test_counter + 1;

    my @output;
    unless $condition {
#        @output.push("not ");
        nqp::push(@output, "not ");
    }
#    @output.push("ok $test_counter");
    nqp::push(@output, "ok $test_counter");
    if $desc {
        nqp::push(@output, " - $desc");
#        @output.push(" - $desc");
    }
    if $test_counter <= $todo_upto_test_num {
        nqp::push(@output, $todo_reason);
#        @output.push($todo_reason);
    }
    say(|@output);
    
    $condition ?? 1 !! 0
}

sub todo($reason, $count) {
    $todo_upto_test_num := $test_counter + $count;
    $todo_reason        := "# TODO $reason";
}

sub skip($desc) {
    $test_counter := $test_counter + 1;
    say("ok $test_counter # SKIP $desc\n");
}

# vim: ft=perl6
