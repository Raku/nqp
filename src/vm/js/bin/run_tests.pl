use TAP::Harness;

my $harness = TAP::Harness->new({
    exec => sub {
        my ($harness, $test_file) = @_;
        return ['./nqp-js', $test_file] if $test_file =~ /\.t$/;
        return ['node', $test_file] if $test_file =~ /\.js$/;
    }
});
my @regex = "gen/js/qregex.t";
my @serialization = "t/serialization/02-types.t";
my @qast = glob "t/qast/02*";
my @js_specific = "t/js/getcomp-js.t";

my @nqp_tests = glob "t/nqp/{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,25,26,27,28,31,32,33,34,35,36,37,38,39,40,41,42,44,45,46,47,48,50,51,53,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,83,84,88,89,90,91,92,93,94,95,96}*.t";

my @runtime_unit_tests = qw(t/js/varint.js);

my $node_version = `node -v`;

# avoid failures on the old node.js travis version
if ($node_version =~ /^0\.10/) {

    @nqp_tests = grep {!/19|78/} @nqp_tests;
}

$harness->runtests(@runtime_unit_tests, @regex, @nqp_tests, @serialization, @qast, @js_specific);
