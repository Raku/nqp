plan(11);

my sub isnan($n) {
    nqp::isnanorinf($n) && $n != nqp::inf() && $n != nqp::neginf();
}

ok(isnan(+'NaN'), 'numifying NaN');
ok(+'Inf' == nqp::inf, 'numifying Inf');
ok(+'+Inf' == nqp::inf, 'numifying +Inf');
ok(+'-Inf' == nqp::neginf, 'numifying -Inf');
is(~100, '100', 'stringifing 100');
is(~nqp::nan(), 'NaN', 'stringifing nqp::nan');
is(~nqp::inf(), 'Inf', 'stringifing nqp::inf');
is(~nqp::neginf(), '-Inf', 'stringifing nqp::neginf');

is(~(1/nqp::neginf()), '-0', 'stringifing -0');
is(~(1/nqp::inf()), '0', 'stringifing -0');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('num to str conversion still needs to be standardized on the jvm backend', 1);
} else {
  is(~1.01e100, '1.01e+100', 'stringifing 1.01e100');
}
