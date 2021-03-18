plan(50);

# Basic tests for a bunch of mathematical functions

my $log_5 := nqp::div_n(940945.0, 584642.0);
my $log_one_tenth := nqp::div_n(-254834.0, 110673.0);

sub is_approx($got, $expected, $descr =  "$got is approximately $expected") {
    my $tol  := nqp::islt_n(nqp::abs_n($expected), 1e-6) ?? 1e-5 !! nqp::mul_n(nqp::abs_n($expected), 1e-6);
    my $test := nqp::isle_n(nqp::abs_n(nqp::sub_n($got, $expected)), $tol);
    ok(?$test, $descr);
    unless $test {
        say("#got:      $got");
        say("#expected: $expected");
    }
    ?$test;
}

is_approx(nqp::log_n(5.0), $log_5, 'got the log of 5.0');
is_approx(nqp::log_n(0.1), $log_one_tenth, 'got the log of 0.1');

is_approx(nqp::exp_n(-1.0), 0.36787944117144233, 'nqp::exp_n(-1.0)');
is_approx(nqp::exp_n(1.0), 2.7182818284590452, 'nqp::exp_n(1.0)');

is_approx(nqp::sin_n(1.0), 0.841470984807897, "nqp::sin_n(1.0)");
is_approx(nqp::sin_n(2.0), 0.909297426825682, "nqp::sin_n(2.0)");
is_approx(nqp::sin_n(3.0), 0.141120008059867, "nqp::sin_n(3.0)");
is_approx(nqp::sin_n(4.0), -0.756802495307928, "nqp::sin_n(4.0)");

is_approx(nqp::cos_n(1.0), 0.54030230586814, "nqp::cos_n(1.0)");
is_approx(nqp::cos_n(2.0), -0.416146836547142, "nqp::cos_n(2.0)");
is_approx(nqp::cos_n(3.0), -0.989992496600445, "nqp::cos_n(3.0)");
is_approx(nqp::cos_n(4.0), -0.653643620863612, "nqp::cos_n(4.0)");

my sub isnan($n) {
    nqp::isnanorinf($n) && nqp::isne_n($n, nqp::inf()) && nqp::isne_n($n, nqp::neginf());
}

ok(isnan(nqp::cos_n(nqp::neginf)) , "nqp::cos_n(nqp::neginf)");
ok(isnan(nqp::cos_n(nqp::inf)), "nqp::cos_n(nqp::inf)");

is_approx(nqp::tan_n(1.0), 1.5574077246549, "nqp::tan_n(1.0)");
is_approx(nqp::tan_n(2.0), -2.18503986326152, "nqp::tan_n(2.0)");
is_approx(nqp::tan_n(3.0), -0.142546543074278, "nqp::tan_n(3.0)");
is_approx(nqp::tan_n(4.0), 1.15782128234958, "nqp::tan_n(4.0)");

is_approx(nqp::atan_n(-10.0), -1.47112767430373, "nqp::atan_n(-10.0)");
is_approx(nqp::atan_n(-3.0), -1.24904577239825, "nqp::atan_n(-3.0)");
is_approx(nqp::atan_n(0.0), 0.0, "nqp::atan_n(0.0)");
is_approx(nqp::atan_n(3.0), 1.24904577239825, "nqp::atan_n(3.0)");
is_approx(nqp::atan_n(10.0), 1.47112767430373, "nqp::atan_n(10.0)");

is_approx(nqp::acos_n(-1.0), 3.14159265358979, "nqp::acos_n(-1)");
is_approx(nqp::acos_n(-0.5), 2.0943951023932, "nqp::acos_n(-0.5)");
is_approx(nqp::acos_n(0.0), 1.5707963267949, "nqp::acos_n(0.0)");
is_approx(nqp::acos_n(0.5), 1.0471975511966, "nqp::acos_n(0.5)");
is_approx(nqp::acos_n(1.0), 0.0, "nqp::acos_n(1.0)");

is_approx(nqp::asin_n(-1.0), -1.5707963267949, "nqp::asin_n(-1.0)");
is_approx(nqp::asin_n(-0.5), -0.523598775598299, "nqp::asin_n(-0.5)");
is_approx(nqp::asin_n(0.0), 0.0, "nqp::asin_n(0.0)");
is_approx(nqp::asin_n(0.5), 0.523598775598299, "nqp::asin_n(0.5)");
is_approx(nqp::asin_n(1.0), 1.5707963267949, "nqp::asin_n(1.0)");

is_approx(nqp::sinh_n(-7.0), -548.316123273246, "nqp::sinh_n(-7.0)");
is_approx(nqp::sinh_n(-1.0), -1.1752011936438, "nqp::sinh_n(-1.0)");
is_approx(nqp::sinh_n(0.0), 0.0, "nqp::sinh_n(0.0)");
is_approx(nqp::sinh_n(1.0), 1.1752011936438, "nqp::sinh_n(1.0)");
is_approx(nqp::sinh_n(7.0), 548.316123273246, "nqp::sinh_n(7.0)");

is_approx(nqp::cosh_n(-7.0), 548.317035155212, "nqp::cosh_n(-7.0)");
is_approx(nqp::cosh_n(-1.0), 1.54308063481524, "nqp::cosh_n(-1.0)");
is_approx(nqp::cosh_n(0.0), 1.0, "nqp::cosh_n(0.0)");
is_approx(nqp::cosh_n(1.0), 1.54308063481524, "nqp::cosh_n(1.0)");
is_approx(nqp::cosh_n(7.0), 548.317035155212, "nqp::cosh_n(7.0)");

is_approx(nqp::tanh_n(-7.0), -0.999998336943945, "nqp::tanh_n(-7.0)");
is_approx(nqp::tanh_n(-1.0), -0.761594155955765, "nqp::tanh_n(-1.0)");
is_approx(nqp::tanh_n(0.0), 0.0, "nqp::tanh_n(0.0)");
is_approx(nqp::tanh_n(1.0), 0.761594155955765, "nqp::tanh_n(1.0)");
is_approx(nqp::tanh_n(7.0), 0.999998336943945, "nqp::tanh_n(7.0)");

is_approx(nqp::atan2_n(90.0, 15.0), 1.4056476493802699, "nqp::atan2_n(90.0, 15.0)");
is_approx(nqp::atan2_n(15.0, 90.0), 0.16514867741462683, "nqp::atan2_n(15.0, 90.0)");
