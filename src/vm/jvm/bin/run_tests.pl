use TAP::Harness;

my ($skip_qregex) = @ARGV;

my $harness = TAP::Harness->new({
    exec => sub {
        my ($harness, $test_file) = @_;
        return ['./nqp-j', 'nqp-truffle.nqp', $test_file] if $test_file =~ /\.t$/;
    }
});

my @nqp_tests = glob "t/nqp/{001,002,003,004,005,006,007,008,010,011,012,013,015,016,017,018,022,025,026,036,037,038,046,083,091,109}*.t";

$harness->runtests(@nqp_tests);
