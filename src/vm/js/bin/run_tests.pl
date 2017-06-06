use TAP::Harness;

my ($skip_qregex) = @ARGV;

my $harness = TAP::Harness->new({
    exec => sub {
        my ($harness, $test_file) = @_;
        return ['./nqp-js-cross', $test_file] if $test_file =~ /\.t$/;
        return ['node', $test_file] if $test_file =~ /\.js$/;
    }
});
my @regex = "gen/js/qregex.t" unless $skip_qregex;
my @serialization = glob "t/serialization/{01,02,03}*.t";
my @qast = glob "t/qast/02*";
my @js_specific = "t/js/getcomp-js.t";

my @nqp_tests = grep {$_ !~ /regex-interpolation/} glob "t/nqp/*.t";

my @moar_tests = (); # qw(t/moar/03-line-seps.t);

my @runtime_unit_tests = qw(t/js/varint.js);
my @continuation_tests = qw(t/js/continuations.t);

my @native_call_tests = qw(t/nativecall/01-basic.t);
my @hll_tests = qw(t/hll/06-sprintf.t);

my $node_version = `node -v`;

# avoid failures on the old node.js travis version
if ($node_version =~ /^0\.10/) {

    @nqp_tests = grep {!/19|78/} @nqp_tests;
}

$harness->runtests(@runtime_unit_tests,  @nqp_tests, @moar_tests, @regex, @serialization, @qast, @js_specific, @continuation_tests, @native_call_tests, @hll_tests);
