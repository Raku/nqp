plan(2);

# Basic tests for nqp::log_n

my $log_5 := 940945/584642;
my $log_one_tenth := -254834/110673;

sub is_approx($got, $expected, $descr =  "$got is approximately $expected") {
    my $tol := nqp::abs_n($expected) < 1e-6 ?? 1e-5 !! nqp::abs_n($expected) * 1e-6;
    my $test := nqp::abs_n($got - $expected) <= $tol;
    ok(?$test, $descr);
    unless $test {
        say("#got:      $got");
        say("#expected: $expected");
    }
    ?$test;
}

is_approx(nqp::log_n(5), $log_5, 'got the log of 5');
is_approx(nqp::log_n(0.1), $log_one_tenth, 'got the log of 0.1');
