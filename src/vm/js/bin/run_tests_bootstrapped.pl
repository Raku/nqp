use TAP::Harness;

my $harness = TAP::Harness->new({
    exec => sub {
        my ($harness, $test_file) = @_;
        return ['node', 'nqp-bootstrapped.js', $test_file] if $test_file =~ /\.t$/;
        return ['node', $test_file] if $test_file =~ /\.js$/;
    }
});

my @nqp_tests = glob "t/nqp/*.t";

$harness->runtests(@nqp_tests);

