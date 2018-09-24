use TAP::Harness;

my ($skip_qregex) = @ARGV;

my $harness = TAP::Harness->new({
    exec => sub {
        my ($harness, $test_file) = @_;
        return ['./nqp-j', 'nqp-truffle.nqp', $test_file] if $test_file =~ /\.t$/;
    }
});

my @nqp_tests = glob "t/nqp/{001,002,003,004,005,006,007,008,010,011,013,015,016,036,037,038,046,083}*.t";

$harness->runtests(@nqp_tests);
