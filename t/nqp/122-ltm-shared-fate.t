plan(5);

# A fate that repeats an earlier one in the same NFA still ends the
# declarative prefix. Nothing after it belongs to the longest token.

my $m := 'xzzz' ~~ / <?before 'x' {}> . . . | 'x' . /;
is(~$m, 'xz', 'atoms after a lookahead ended by a code block do not extend the prefix');

$m := 'acc' ~~ / [ 'a' {} | 'b' {} ] 'c' 'c' | 'a' . /;
is(~$m, 'ac', 'atoms after a group whose branches end in code blocks do not extend the prefix');

$m := 'xzzz' ~~ / 'x' <?before {}> . . | 'x' . /;
is(~$m, 'xz', 'atoms after a lookahead whose body is only a code block do not extend the prefix');

$m := 'xzzz' ~~ / <?before <.ws> 'x'> . . . | 'x' . /;
is(~$m, 'xz', 'atoms after a lookahead whose body starts with ws do not extend the prefix');

grammar Proto {
    proto token TOP {*}
    token TOP:sym<lookahead> { <?before 'x' {}> . . . }
    token TOP:sym<x>         { 'x' . }
}

is(~Proto.parse('xzzz'), 'xz', 'atoms after a lookahead ended by a code block do not extend a proto token candidate');
