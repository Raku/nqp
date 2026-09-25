plan(15);

# A frugal quantifier ends the declarative prefix a branch contributes to
# longest token matching. What comes before it still counts.

my $m := 'aaaaaaaaa' ~~ / | a+? | a+ /;
is(~$m, 'aaaaaaaaa', 'a greedy branch beats a frugal branch declared before it');

$m := 'aaaaaaaaa' ~~ / | a+ | a+? /;
is(~$m, 'aaaaaaaaa', 'a greedy branch beats a frugal branch declared after it');

$m := 'aab' ~~ / \w a?? | \w a /;
is(~$m, 'aa', 'a frugal optional branch loses to a longer branch');

$m := 'a12' ~~ / a \d **? 1..2 | a \d \d /;
is(~$m, 'a12', 'a frugal range quantifier ends the prefix');

$m := 'a1,2,3' ~~ / . . . . . | a \d+? % ',' /;
is(~$m, 'a1,2,', 'a frugal separated quantifier ends the prefix');

$m := 'xabbb' ~~ / x | xab+? /;
is(~$m, 'xab', 'the atoms before a frugal quantifier still form the prefix');

$m := 'aaab' ~~ / a+?b | . . . /;
is(~$m, 'aaa', 'the atoms after a frugal quantifier do not extend the prefix');

$m := 'abbb' ~~ / a [ b+? | bb ] /;
is(~$m, 'abb', 'a frugal branch nested in a group loses to a longer branch');

$m := 'abcbc' ~~ / . . . . | a [ b | c ]+? /;
is(~$m, 'abcb', 'a frugal quantifier on a group ends the prefix');

$m := 'aab' ~~ / .*?b | a /;
is(~$m, 'a', 'a branch that starts with a frugal quantifier declares an empty prefix');

$m := '(ab)/c' ~~ / '(' | <?before .+? '/'> . . . . . . /;
is(~$m, '(', 'a frugal quantifier inside a lookahead ends the prefix');

$m := '(ab)/c' ~~ / '(' | <?before .+ '/'> . . . . . . /;
is(~$m, '(ab)/c', 'a greedy quantifier inside a lookahead keeps declaring the prefix');

grammar Proto {
    proto token TOP {*}
    token TOP:sym<frugal> { a+? }
    token TOP:sym<greedy> { a+ }
}

is(~Proto.parse('aaaa'), 'aaaa', 'a greedy proto token candidate beats a frugal candidate');

grammar Call {
    token F   { a+? }
    token G   { a+ }
    token TOP { <F> | <G> }
}

$m := Call.parse('aaaa');
is(~$m, 'aaaa', 'a branch calling a greedy subrule beats a branch calling a frugal subrule');
ok(!$m<F> && ?$m<G>, 'the greedy subrule is the one that ran');
