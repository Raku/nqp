plan(8);

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
