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

# vim: ft=perl6
