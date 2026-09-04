plan(16);

# The declarative prefix a range quantifier contributes to longest token
# matching must cover exactly the repetitions it allows.

grammar Call {
    regex N    { \d ** 1..3 }
    regex FOO  { 'foo(' <N> ',' <N> ')' }
    regex JUNK { . }
    regex TOP  { [ <FOO> | <JUNK> ]+ }
}

my $/ := Call.parse('foo(371,776)');
ok(?$/, 'a branch calling a range quantified subrule still parses');
is(nqp::elems($<FOO>), 1, 'the branch calling the range quantified subrule wins once');
is(~$<FOO>[0], 'foo(371,776)', 'that branch covers the whole input');
is(~$<FOO>[0]<N>[0], '371', 'the first subrule call takes all three digits');
is(~$<FOO>[0]<N>[1], '776', 'the second subrule call takes all three digits');

my $m := 'a1234' ~~ / . . . . | a \d ** 1..4 /;
is(~$m, 'a1234', 'a range quantifier ending a branch beats a shorter branch');

$m := 'a1234' ~~ / . . . . | a \d ** 0..4 /;
is(~$m, 'a1234', 'a range quantifier with a zero minimum ending a branch beats a shorter branch');

$m := 'a123' ~~ / . . . | a \d ** 3 /;
is(~$m, 'a123', 'an exact count ending a branch beats a shorter branch');

$m := 'a123b' ~~ / . . . . | a \d ** 2..* b /;
is(~$m, 'a123b', 'an open ended range in the middle of a branch beats a shorter branch');

$m := 'a1,2,3' ~~ / . . . . . | a \d ** 1..4 % ',' /;
is(~$m, 'a1,2,3', 'a separated range quantifier ending a branch beats a shorter branch');

$m := 'a1,2,3' ~~ / . . . . . | a \d ** 2..* % ',' /;
is(~$m, 'a1,2,3', 'a separated open ended range ending a branch beats a shorter branch');

$m := 'a1,2,3b' ~~ / . . . . . . | a \d ** 2..* % ',' b /;
is(~$m, 'a1,2,3b', 'a separated open ended range in the middle of a branch beats a shorter branch');

$m := 'a12345' ~~ / a \d \d \d \d | a [ x | \d ** 1..3 ] { } .* /;
is(~$m, 'a1234', 'a range quantifier ending a grouped alternative claims no more than its maximum');

$m := 'a1,2,3,4,5' ~~ / a \d ',' \d ',' \d ',' \d | a [ x | \d ** 1..3 % ',' ] { } .* /;
is(~$m, 'a1,2,3,4', 'a separated range quantifier ending a grouped alternative claims no more than its maximum');

$m := 'a1,23456' ~~ / a \d ',' \d \d \d \d | a [ \d ** 1..3 ] ** 2..* % ',' { } .* /;
is(~$m, 'a1,2345', 'a range quantifier nested in a separated open ended range beats a shorter branch');

grammar Proto {
    proto token TOP {*}
    token TOP:sym<dots> { . . . . }
    token TOP:sym<num>  { a \d ** 1..4 }
}

is(~Proto.parse('a1234'), 'a1234', 'a proto token candidate ending in a range quantifier beats a shorter candidate');
