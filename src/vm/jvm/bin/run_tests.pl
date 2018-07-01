use TAP::Harness;

my ($skip_qregex) = @ARGV;

my $harness = TAP::Harness->new({
    exec => sub {
        my ($harness, $test_file) = @_;
        return ['./nqp-j', 'nqp-truffle.nqp', $test_file] if $test_file =~ /\.t$/;
    }
});

my @nqp_tests = glob "t/nqp/{001,002,003,004,005,008,009}*.t";

$harness->runtests(@nqp_tests);
