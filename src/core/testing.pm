my $test_counter := 0;

sub plan($quantity) {
    say("1..$quantity");
}

sub ok($condition, $desc?) {
    $test_counter := $test_counter + 1;
    
    unless $condition {
        print("not ");
    }
    print("ok $test_counter");
    if $desc {
        print(" - $desc");
    }
    print("\n");
    
    $condition ?? 1 !! 0
}

sub skip($desc) {
    $test_counter := $test_counter + 1;
    say("ok $test_counter # SKIP $desc\n");
}
