plan(27);

my sub isnan($n) {
    nqp::isnanorinf($n) && $n != nqp::inf() && $n != nqp::neginf();
}

ok(isnan(+'NaN'), 'numifying NaN');
ok(+'Inf' == nqp::inf, 'numifying Inf');
ok(+'+Inf' == nqp::inf, 'numifying +Inf');
ok(+'-Inf' == nqp::neginf, 'numifying -Inf');
ok(+'−Inf' == nqp::neginf, 'numifying −Inf');
ok(+'3.14159_26535' == 3.1415926535, 'numifying works with underscores');
ok(+'−123e0' == -123, 'numifying works with unicode minus U+2212');
is(+'1230E−1', 123, 'numifying works with 1230E−1');
is(+'−1230E−1', -123, 'numifying works with −1230E−1');

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

my int32 $int32 := 100;
my num $int32_as_num := $int32;
is($int32_as_num, 100, 'int32 to num conversion');

my int16 $int16 := 100;
my num $int16_as_num := $int16;
is($int16_as_num, 100, 'int16 to num conversion');

my int8 $int8 := 100;
my num $int8_as_num := $int32;
is($int8_as_num, 100, 'int8 to num conversion');

my uint32 $uint32 := 100;
my num $uint32_as_num := $uint32;
is($uint32_as_num, 100, 'uint32 to num conversion');

my uint16 $uint16 := 100;
my num $uint16_as_num := $uint16;
is($uint16_as_num, 100, 'uint16 to num conversion');

my uint8 $uint8 := 100;
my num $uint8_as_num := $uint32;
is($uint8_as_num, 100, 'uint8 to num conversion');
