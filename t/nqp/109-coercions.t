plan(16);

my sub isnan($n) {
    nqp::isnanorinf($n) && $n != nqp::inf() && $n != nqp::neginf();
}

ok(isnan(+'NaN'), 'numifying NaN');
ok(+'Inf' == nqp::inf, 'numifying Inf');
ok(+'+Inf' == nqp::inf, 'numifying +Inf');
ok(+'-Inf' == nqp::neginf, 'numifying -Inf');
is(~100, '100', 'stringifing 100');
is(~100.0, '100', 'stringifing 100');
ok(~3.14 == 3.14, 'stringifing 3.14');
ok(~3.1 == 3.1, 'stringifing 3.1');
ok(~3.0 == 3, 'stringifing 3.0');
ok(~0.0 == 0.0, 'stringifing 0.0');
is(~nqp::nan(), 'NaN', 'stringifing nqp::nan');
is(~nqp::inf(), 'Inf', 'stringifing nqp::inf');
is(~nqp::neginf(), '-Inf', 'stringifing nqp::neginf');

is(~(1/nqp::neginf()), '-0', 'stringifing -0');
is(~(1/nqp::inf()), '0', 'stringifing 0');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('num to str conversion still needs to be standardized on the jvm backend', 1);
} else {
  is(~1.01e100, '1.01e+100', 'stringifing 1.01e100');
}
