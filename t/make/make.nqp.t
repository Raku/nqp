use make;

plan(14);

my $match := Makefile::Grammar.parse('
# just a comment

FOO=expfoo

FILES = *.txt \
      *.zip

BAR=baz

foo: bar baz-qux
	do something
	some more

bar :
	whatever

cl: foo\
    bar

foo/bar:

$(FOO): $(BAR)

t/*/*.t t/*.t t/*/*/*/*.t: all

m-coretest: m-coretest$(HARNESS_TYPE)
', :actions(Makefile::Actions.new));
is($match<target-definition>[1]<recipe><recipe-line>[0]<command>, "whatever");
is($match<target-definition>[2]<prerequisites><target>[0], "foo");
is($match<target-definition>[2]<prerequisites><target>[1], "bar");
is($match<target-definition>[3]<target>[0], 'foo/bar');
is($match<target-definition>[4]<target>[0], '$(FOO)');
is($match<target-definition>[4]<prerequisites><target>[0], '$(BAR)');
is($match<target-definition>[5]<target>[0], 't/*/*.t');
is($match<target-definition>[5]<target>[1], 't/*.t');
is($match<macro-definition>[0]<macro-assign><target>, 'FOO');
is($match<macro-definition>[0]<macro-assign><command>, 'expfoo');
is($match<macro-definition>[1]<macro-assign><command>, "*.txt \\\n      *.zip");

is($match.ast.targets[4].name, '$(FOO)');
is($match.ast.target('bar').name, 'bar');

$match := Makefile::Grammar.parse('
M_STAGE1_DIR = gen/moar/stage1
NQP_MO_MOAR     = nqpmo.moarvm
$(M_STAGE1_DIR)/$(NQP_MO_MOAR):
', :actions(Makefile::Actions.new));
is($match.ast.expand-macros($match.ast.targets[0].name), 'gen/moar/stage1/nqpmo.moarvm');
