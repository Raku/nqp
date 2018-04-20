use make;

plan(20);

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

my $make := Makefile::Grammar.parse(q[
TEST_DIR = gen/make_test
clean:
	rm -f gen/make_test/foo
	rm -f gen/make_test/bar
	rm -f gen/make_test/baz
all: $(TEST_DIR)/foo
$(TEST_DIR)/foo: $(TEST_DIR)/bar
	nqp -e "spurt('$(TEST_DIR)/foo', slurp('$(TEST_DIR)/bar'))"
$(TEST_DIR)/bar: $(TEST_DIR)/baz
	nqp -e "spurt('$(TEST_DIR)/bar', slurp('$(TEST_DIR)/baz'))"
$(TEST_DIR)/baz: $(TEST_DIR)
	nqp -e "spurt('$(TEST_DIR)/baz', 'baz!')"
$(TEST_DIR):
	mkdir $(TEST_DIR)
], :actions(Makefile::Actions.new));

my $test_dir := 'gen/make_test';

$make.ast.make('clean');
$make.ast.make($test_dir ~ '/foo');

ok(nqp::stat($test_dir ~ '/foo', nqp::const::STAT_EXISTS));
ok(nqp::stat($test_dir ~ '/bar', nqp::const::STAT_EXISTS));
ok(nqp::stat($test_dir ~ '/baz', nqp::const::STAT_EXISTS));
is(slurp($test_dir ~ '/foo'), 'baz!', 'foo has correct content');
spurt($test_dir ~ '/baz', 'bazz!');
$make.ast.make($test_dir ~ '/foo');
is(slurp($test_dir ~ '/foo'), 'bazz!', 'foo updated after distant dependency changed');

my $before := nqp::stat_time($test_dir ~ '/foo', nqp::const::STAT_MODIFYTIME);
$make.ast.make('all');
my $after := nqp::stat_time($test_dir ~ '/foo', nqp::const::STAT_MODIFYTIME);
is($after, $before, "foo did not get updated when dependencies didn't change");

$make := Makefile::Grammar.parse(q[
TEST_DIR = gen/make_test
clean:
	rm -f $(TEST_DIR)/qux
$(TEST_DIR)/qux: $(TEST_DIR)/foo
	nqp -e "spurt('$(TEST_DIR)/qux', slurp('$(TEST_DIR)/foo'))"
], :actions(Makefile::Actions.new));
$make.ast.make('clean');
$make.ast.make($test_dir ~ '/qux');
is(slurp($test_dir ~ '/qux'), 'bazz!', 'Built from non-target source file');
nqp::sleep(0.1);
spurt($test_dir ~ '/foo', 'foo');
$make.ast.make($test_dir ~ '/qux');
is(slurp($test_dir ~ '/qux'), 'foo', 'Noticed change in non-target source file');
