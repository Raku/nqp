#!/usr/bin/env nqp

# test optional arguments and parameters

plan(7);

sub f1 ($x, $y!, $z?) { 1 }
ok(f1(1, 2), 'optional args ignorable');
ok(f1(2, 2, 2), 'optional args passable');

sub f2 ($x?, $y?) { 1 }
ok(f2(), 'only optional args');

sub f3 ($x, $y?) {
  nqp::isconcrete($y)
    ?? 'optional args get passed values'
    !! 'unpassed optional args are undef'
}
is(f3(2), 'unpassed optional args are undef', 'unpassed optional args are undef');
is(f3(8, 3), 'optional args get passed values', 'optional args get passed values');

my $comp := nqp::getcomp('nqp');
dies-ok({ $comp.eval('sub f4 ($x?, $y) { $y; }') },
  'illegal optional args dies ok',
  :message('Required positionals must come before all optional positionals'));
