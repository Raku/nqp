#! nqp

plan(31);

use NQPHLL;

my $x := HLL::CommandLine::Parser.new(['a', 'b', 'e=s', 'target=s', 'verbose']);
my $r := $x.parse(['-a', 'b']);

ok($r.isa(HLL::CommandLine::Result), 'got the right object type back');
ok($r.arguments()[0] eq 'b', '"b" got classified as argument')
    || say("# arguments: '", nqp::join('|', $r.arguments()), "'");
ok($r.options(){'a'} == 1, '-a is an option');


$r := $x.parse(['-ab']);

ok($r.options(){'a'} == 1, '-ab counts as -a (clustering)');
ok($r.options(){'b'} == 1, '-ab counts as -b (clustering)');

$r := $x.parse(['-e', 'foo bar', 'x']);

ok($r.options(){'e'} eq 'foo bar', 'short options + value');
ok(+$r.arguments == 1, 'one argument remaining');

$r := $x.parse(['--verbose', '--target=foo']);
ok($r.options{'verbose'} == 1,    'long option without value');
ok($r.options{'target'} eq 'foo', 'long option with value supplied via =');

$r := $x.parse(['--target', 'foo', 'bar']);
ok($r.options{'target'} eq 'foo', 'long option with value as separate argument');
ok(+$r.arguments == 1, '...on remaining argument');
ok($r.arguments[0] eq 'bar', '...and  it is the right one');

$r := $x.parse(['a', '--', 'b', '--target', 'c']);
ok(+$r.arguments == 4, 'got 4 arguments, -- does not count');
ok(nqp::join(',',$r.arguments) eq 'a,b,--target,c', '... and the right arguments');

$x.add-stopper('-e');

$r := $x.parse(['-e', 'foo', '--target', 'bar']);
ok(+$r.arguments == 2,
    'if -e is stopper, everything after its value is an argument');
ok($r.options{'e'} eq 'foo', '... and -e still got the right value');

$x.add-stopper('stopper');
$r := $x.parse(['stopper', '--verbose']);
ok(+$r.arguments == 1, 'non-option stopper worked');

$x.stop-after-first-arg;

$r := $x.parse(['-a', 'script.pl', '--verbose']);
ok(nqp::join(',', $r.arguments) eq 'script.pl,--verbose',
    'stop-after-first-arg');

$r := $x.parse(['-aefoo']);
ok($r.options{'a'}, 'can group one-letter options of which one has an argument');
ok($r.options{'e'} eq 'foo', 'can join one-letter option and its argument');

# TODO: tests for long options as stoppers

$x := HLL::CommandLine::Parser.new(['a|b', 'l|long',
            'w|with-arg=s', 'other|o=s']);
$r := $x.parse(['-a', '-b', '-l', '--long', '-w', 'v1',
                '--other=v3', '-o', 'v4',
                '--with-arg', 'v2', 'arg1', 'arg2']);

ok(nqp::join(',', $r.arguments) eq 'arg1,arg2',
        'arguments in presence of aliases');

ok($r.options{'a'} == 1, 'short alias (left)');
ok($r.options{'b'} == 1, 'short alias (right)');
ok($r.options{'l'} == 1, 'short+long alias (left)');
ok($r.options{'long'} == 1, 'short+long alias (right)');

ok($r.options{'w'} eq 'v1', 'short+long alias with value (left)');
ok($r.options{'with-arg'} eq 'v2', 'short+long alias  with value(right)');

ok($r.options<o> eq 'v4', 'long|short alias (short)');
ok($r.options<other> eq 'v3', 'long|short alias (short)');

$r := $x.parse(['-w', 'A', '-w', 'B']);
ok(nqp::join(',', $r.options<w>) eq 'A,B', 'multiple options with the same name');

$x := HLL::CommandLine::Parser.new(['e=s']);
$r := $x.parse(['-e', '-1 < 0']);
ok($r.options<e> eq '-1 < 0', 'can have option values that start with a dash');
