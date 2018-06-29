#! nqp

# test optional arguments and parameters

plan(5);

sub f1 ($x, $y!, $z?) { 1 }
ok(f1(1, 2), 'optional args ignorable');
ok(f1(2, 2, 2), 'optional args passable');

sub f2 ($x?, $y?) { 1 }
ok(f2(), 'only optional args');

# XXX: Maybe replace nqp::isconcrete with .defined()
# But .defined() does not work now
sub f3 ($x, $y?) {
  nqp::isconcrete($y)
    ?? 'optional args get passed values'
    !! 'unpassed optional args are undef'
}
is(f3(2), 'unpassed optional args are undef', 'unpassed optional args are undef');
is(f3(8, 3), 'optional args get passed values', 'optional args get passed values');

# XXX: need to be able to test that the following is illegal
#sub f4 ($x?, $y) { $y; }
