plan(63);

# Basic tests for a bunch of mathematical functions

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

is_approx(nqp::exp_n(-1), 0.36787944117144233, 'nqp::exp_n(-1)');
is_approx(nqp::exp_n(1), 2.7182818284590452, 'nqp::exp_n(1)');

is_approx(nqp::sin_n(1), 0.841470984807897, "nqp::sin_n(1)");
is_approx(nqp::sin_n(2), 0.909297426825682, "nqp::sin_n(2)");
is_approx(nqp::sin_n(3), 0.141120008059867, "nqp::sin_n(3)");
is_approx(nqp::sin_n(4), -0.756802495307928, "nqp::sin_n(4)");

is_approx(nqp::cos_n(1), 0.54030230586814, "nqp::cos_n(1)");
is_approx(nqp::cos_n(2), -0.416146836547142, "nqp::cos_n(2)");
is_approx(nqp::cos_n(3), -0.989992496600445, "nqp::cos_n(3)");
is_approx(nqp::cos_n(4), -0.653643620863612, "nqp::cos_n(4)");

my sub isnan($n) {
    nqp::isnanorinf($n) && $n != nqp::inf() && $n != nqp::neginf();
}

ok(isnan(nqp::cos_n(nqp::neginf)) , "nqp::cos_n(nqp::neginf)");
ok(isnan(nqp::cos_n(nqp::inf)), "nqp::cos_n(nqp::inf)");

is_approx(nqp::tan_n(1), 1.5574077246549, "nqp::tan_n(1)");
is_approx(nqp::tan_n(2), -2.18503986326152, "nqp::tan_n(2)");
is_approx(nqp::tan_n(3), -0.142546543074278, "nqp::tan_n(3)");
is_approx(nqp::tan_n(4), 1.15782128234958, "nqp::tan_n(4)");

is_approx(nqp::sec_n(1), 1.85081571768093, "nqp::sec_n(1)");
is_approx(nqp::sec_n(2), -2.40299796172238, "nqp::sec_n(2)");
is_approx(nqp::sec_n(3), -1.01010866590799, "nqp::sec_n(3)");
is_approx(nqp::sec_n(4), -1.5298856564664, "nqp::sec_n(4)");

is_approx(nqp::atan_n(-10), -1.47112767430373, "nqp::atan_n(-10)");
is_approx(nqp::atan_n(-3), -1.24904577239825, "nqp::atan_n(-3)");
is_approx(nqp::atan_n(0), 0, "nqp::atan_n(0)");
is_approx(nqp::atan_n(3), 1.24904577239825, "nqp::atan_n(3)");
is_approx(nqp::atan_n(10), 1.47112767430373, "nqp::atan_n(10)");

is_approx(nqp::acos_n(-1), 3.14159265358979, "nqp::acos_n(-1)");
is_approx(nqp::acos_n(-0.5), 2.0943951023932, "nqp::acos_n(-0.5)");
is_approx(nqp::acos_n(0), 1.5707963267949, "nqp::acos_n(0)");
is_approx(nqp::acos_n(0.5), 1.0471975511966, "nqp::acos_n(0.5)");
is_approx(nqp::acos_n(1), 0, "nqp::acos_n(1)");

is_approx(nqp::asin_n(-1), -1.5707963267949, "nqp::asin_n(-1)");
is_approx(nqp::asin_n(-0.5), -0.523598775598299, "nqp::asin_n(-0.5)");
is_approx(nqp::asin_n(0), 0, "nqp::asin_n(0)");
is_approx(nqp::asin_n(0.5), 0.523598775598299, "nqp::asin_n(0.5)");
is_approx(nqp::asin_n(1), 1.5707963267949, "nqp::asin_n(1)");

is_approx(nqp::asec_n(-2), 2.0943951023932, "nqp::asec_n(-2)");
is_approx(nqp::asec_n(-1), 3.14159265358979, "nqp::asec_n(-1)");
is_approx(nqp::asec_n(1), 0, "nqp::asec_n(1)");
is_approx(nqp::asec_n(2), 1.0471975511966, "nqp::asec_n(2)");

is_approx(nqp::sinh_n(-7), -548.316123273246, "nqp::sinh_n(-7)");
is_approx(nqp::sinh_n(-1), -1.1752011936438, "nqp::sinh_n(-1)");
is_approx(nqp::sinh_n(0), 0, "nqp::sinh_n(0)");
is_approx(nqp::sinh_n(1), 1.1752011936438, "nqp::sinh_n(1)");
is_approx(nqp::sinh_n(7), 548.316123273246, "nqp::sinh_n(7)");

is_approx(nqp::cosh_n(-7), 548.317035155212, "nqp::cosh_n(-7)");
is_approx(nqp::cosh_n(-1), 1.54308063481524, "nqp::cosh_n(-1)");
is_approx(nqp::cosh_n(0), 1, "nqp::cosh_n(0)");
is_approx(nqp::cosh_n(1), 1.54308063481524, "nqp::cosh_n(1)");
is_approx(nqp::cosh_n(7), 548.317035155212, "nqp::cosh_n(7)");

is_approx(nqp::tanh_n(-7), -0.999998336943945, "nqp::tanh_n(-7)");
is_approx(nqp::tanh_n(-1), -0.761594155955765, "nqp::tanh_n(-1)");
is_approx(nqp::tanh_n(0), 0, "nqp::tanh_n(0)");
is_approx(nqp::tanh_n(1), 0.761594155955765, "nqp::tanh_n(1)");
is_approx(nqp::tanh_n(7), 0.999998336943945, "nqp::tanh_n(7)");

is_approx(nqp::sech_n(-2), 0.26580222883408, "nqp::sech_n(-2)");
is_approx(nqp::sech_n(-1.5), 0.42509603494228, "nqp::sech_n(-1.5)");
is_approx(nqp::sech_n(0), 1, "nqp::sech_n(0)");
is_approx(nqp::sech_n(1.5), 0.42509603494228, "nqp::sech_n(1.5)");
is_approx(nqp::sech_n(2), 0.26580222883408, "nqp::sech_n(2)");

is_approx(nqp::atan2_n(90, 15), 1.4056476493802699, "nqp::atan2_n(90, 15)");
is_approx(nqp::atan2_n(15, 90), 0.16514867741462683, "nqp::atan2_n(15, 90)");
