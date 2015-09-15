#! nqp

# implicit and explicit returns from subs

plan(4);

sub foo() { 1; }


sub bar() {
    return 2;
    0;
}

sub baz() {
    if (1) { return 3; }
    0;
}

sub nested() {
    if (1) { 
        my $try_to_stop_the_nested_block_from_being_optimized_out := 4;
        return $try_to_stop_the_nested_block_from_being_optimized_out;
    }
    0;
}

ok( foo() == 1 , 'last value in block' );
ok( bar() == 2 , 'explicit return value in block');
ok( baz() == 3 , 'explicit return from nested block');
ok( nested() == 4 , 'explicit return from nested block with declared variables');

