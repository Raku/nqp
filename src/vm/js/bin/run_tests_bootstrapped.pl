use TAP::Harness;

my $harness = TAP::Harness->new({
    exec => sub {
        my ($harness, $test_file) = @_;
        return ['node', 'nqp-bootstrapped.js', $test_file] if $test_file =~ /\.t$/;
        return ['node', $test_file] if $test_file =~ /\.js$/;
    }
});

# skip test 055 which doesn't work when immediately evaling code rather than saving it to disk
my @nqp_tests = grep {$_ !~ /055/} glob "t/nqp/*.t t/serialization/*.t t/qast/*.t";

$harness->runtests(@nqp_tests);

