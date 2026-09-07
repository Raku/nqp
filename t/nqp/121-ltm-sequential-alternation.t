plan(19);

# Only the first branch of a sequential alternation takes part in longest
# token matching. The rest of the group and what follows it are hidden.

my $m := 'yz' ~~ / w | [ x || y ] z /;
is(~$m, 'yz', 'a branch whose sequential alternation starts with a non matching option is still tried');

$m := 'yz' ~~ / [ x || y ] z | w /;
is(~$m, 'yz', 'the same branch is still tried when it comes first');

$m := 'xz' ~~ / w | [ x || y ] z /;
is(~$m, 'xz', 'the first option of the sequential alternation still matches');

$m := 'wz' ~~ / w | [ x || y ] z /;
is(~$m, 'w', 'the other branch still matches');

$m := 'abc' ~~ / ab | [ a || ab ] c /;
is(~$m, 'ab', 'only the first option of the sequential alternation counts towards the declarative prefix');

$m := 'abc' ~~ / a | [ ab || a ] c /;
is(~$m, 'abc', 'a longer first option beats a shorter branch');

$m := 'yz' ~~ / w | <?before x || y> yz /;
is(~$m, 'yz', 'a sequential alternation inside a lookahead does not hide the branch');

$m := 'xzz' ~~ / xz | [ x || y ] zz /;
is(~$m, 'xz', 'what follows the sequential alternation does not extend the declarative prefix');

$m := 'xzz' ~~ / xz | [ x || y ] { } zz /;
is(~$m, 'xz', 'a code block after the sequential alternation still ends the declarative prefix');

$m := 'xxz' ~~ / xx | [ x || q ] ** 2 z /;
is(~$m, 'xx', 'a quantified sequential alternation does not extend the declarative prefix');

$m := 'yyz' ~~ / w | [ x || y ] ** 2 z /;
is(~$m, 'yyz', 'a quantified sequential alternation does not hide the branch');

$m := 'yz' ~~ / w | [ x || y ]? z /;
is(~$m, 'yz', 'an optional sequential alternation does not hide the branch');

$m := 'yyz' ~~ / w | [ x || y ]+ z /;
is(~$m, 'yyz', 'a repeated sequential alternation does not hide the branch');

$m := 'yz' ~~ / w | ( x || y ) z /;
is(~$m, 'yz', 'a capturing sequential alternation does not hide the branch');

$m := 'yz' ~~ / w | [ x || q || y ] z /;
is(~$m, 'yz', 'a sequential alternation with three options does not hide the branch');

$m := 'yz' ~~ / w | [ q || [ x | y ] ] z /;
is(~$m, 'yz', 'a longest token alternation nested in a sequential alternation does not hide the branch');

grammar Call {
    token opt { x || y }
    token TOP { w | <opt> z }
}

is(~Call.parse('yz'), 'yz', 'a called subrule starting with a sequential alternation does not hide the branch');

grammar Proto {
    proto token TOP {*}
    token TOP:sym<w>  { w }
    token TOP:sym<xy> { [ x || y ] z }
}

is(~Proto.parse('yz'), 'yz', 'a proto token candidate starting with a sequential alternation is still tried');
is(~Proto.parse('xz'), 'xz', 'the first option of that candidate still matches');
