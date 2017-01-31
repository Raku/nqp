#! nqp

# test named parameters and arguments

plan(5);

sub f1 ($x, :$y) { $x - $y; }
is(f1(2, :y(1)), 1, 'named args passable');

sub f2 ($x, :$y) { $x; }
is(f2(2), 2, 'named args ignorable');

sub f3 (:$x, :$y) { $x - $y; }
is(f3(:y(2), :x(5)), 3, 'args reorderable');

sub f4 ($w, $x, :$y, :$z) { $w + $x + $y + $z; }
is(f4(:z(2), -3, :y(1), 4), 4, 'named/positional intermixable');

my $y := 5;
is(f1(10, :$y), 5, ':$x colonpair syntax');


# XXX: test mandatory named args are actually mandatory
