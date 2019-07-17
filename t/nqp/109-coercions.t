plan(28);

my sub isnan($n) {
    nqp::isnanorinf($n) && nqp::isne_n($n, nqp::inf()) && nqp::isne_n($n, nqp::neginf());
}

ok(isnan(nqp::numify('NaN')), 'numifying NaN');
ok(nqp::iseq_n(nqp::numify('Inf'), nqp::inf), 'numifying Inf');
ok(nqp::iseq_n(nqp::numify('+Inf'), nqp::inf), 'numifying +Inf');
ok(nqp::iseq_n(nqp::numify('-Inf'), nqp::neginf), 'numifying -Inf');
ok(nqp::iseq_n(nqp::numify('3.14159_26535'), 3.1415926535), 'numifying works with underscores');
ok(nqp::iseq_n(nqp::numify('−123e0'), -123.0), 'numifying works with unicode minus U+2212');
ok(nqp::iseq_n(nqp::numify('1230E−1'), 123.0), 'numifying works with 1230E−1');
ok(nqp::iseq_n(nqp::numify('−1230E−1'), -123.0), 'numifying works with -1230E−1');

is(~100, '100', 'stringifing 100');
is(~100.0, '100', 'stringifing 100');
is(~3.14, '3.14', 'stringifing 3.14');
is(~3.1, '3.1', 'stringifing 3.1');
is(~3.0, '3', 'stringifing 3.0');
is(~0.0, '0', 'stringifing 0.0');
is(~nqp::nan(), 'NaN', 'stringifing nqp::nan');
is(~nqp::inf(), 'Inf', 'stringifing nqp::inf');
is(~nqp::neginf(), '-Inf', 'stringifing nqp::neginf');

is(~(nqp::div_n(1.0, nqp::neginf())), '-0', 'stringifing -0');
is(~(nqp::div_n(1.0, nqp::inf())), '0', 'stringifing 0');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('num to str conversion still needs to be standardized on the jvm backend', 1);
} else {
  is(~1.01e100, '1.01e+100', 'stringifing 1.01e100');
}

my int32 $int32 := 100;
my num $int32_as_num := $int32;
ok(nqp::iseq_n($int32_as_num, 100.0), 'int32 to num conversion');

my int16 $int16 := 100;
my num $int16_as_num := $int16;
ok(nqp::iseq_n($int16_as_num, 100.0), 'int16 to num conversion');

my int8 $int8 := 100;
my num $int8_as_num := $int32;
ok(nqp::iseq_n($int8_as_num, 100.0), 'int8 to num conversion');

my uint32 $uint32 := 100;
my num $uint32_as_num := $uint32;
ok(nqp::iseq_n($uint32_as_num, 100.0), 'uint32 to num conversion');

my uint16 $uint16 := 100;
my num $uint16_as_num := $uint16;
ok(nqp::iseq_n($uint16_as_num, 100.0), 'uint16 to num conversion');

my uint8 $uint8 := 100;
my num $uint8_as_num := $uint32;
ok(nqp::iseq_n($uint8_as_num, 100.0), 'uint8 to num conversion');

my num $num_30 := 30.0;
my int32 $int32_30 := $num_30;

is($int32_30, 30, 'num to int32 conversion');

{
  my int $int32 := 30;
  my str $str := $int32;
  is($str, '30', 'int32 to str conversion');
}
