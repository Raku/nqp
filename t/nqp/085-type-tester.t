plan(21);

my str $typed_str := 'a string';
my     $just_str  := 'a string';
my int $typed_int := 42;
my     $just_int  := 23;
my num $typed_num := 1e0;
my     $just_num  := 23e5;

ok(nqp::isstr('abc'), 'isstr on literal, +');
ok(!nqp::isstr(42),   'isstr on literal, -');
ok(!nqp::isstr(NQPMu),'isstr on NQPMu');
ok(nqp::isstr($typed_str), 'isstr on typed variable +');
ok(!nqp::isstr($typed_int),  'isstr on typed variable -');
ok(nqp::isstr($just_str), 'isstr on untyped variable +');
ok(!nqp::isstr($just_int), 'isstr on untyped variable -');

ok(nqp::isint(1), 'isint on literal, +');
ok(!nqp::isint('1'), 'isint on literal, -');
ok(!nqp::isint(NQPMu),'isint on NQPMu');
ok(nqp::isint($typed_int), 'isint on typed variable +');
ok(!nqp::isint($typed_str), 'isint on typed variable -');
ok(nqp::isint($just_int), 'isint on untyped variable +');
ok(!nqp::isint($just_str), 'isint on untyped variable -');

ok(nqp::isnum(4e2), 'isnum on literal, +');
ok(!nqp::isnum(422), 'isnum on literal, -');
ok(!nqp::isnum(NQPMu), 'isnum on NQPMu');
ok(nqp::isnum($typed_num), 'isnum on typed variable +');
ok(!nqp::isnum($typed_str), 'isnum on typed variable -');
ok(nqp::isnum($just_num), 'isnum on untyped variable +');
ok(!nqp::isnum($just_str), 'isnum on untyped variable -');
