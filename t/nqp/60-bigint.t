#! nqp
plan(9);

pir::nqp_bigint_setup__v();

my $knowhow := pir::get_knowhow__P();
my $bi_type := $knowhow.HOW.new_type(:name('TestBigInt'), :repr('P6bigint'));
$bi_type.HOW.compose($bi_type);
sub s($x) { pir::nqp_bigint_to_str__SP($x) };

my $one := nqp::box_i(1, $bi_type);

my $b := pir::nqp_bigint_from_str__PPS($one, '-123');
my $c := nqp::box_i(-123, $bi_type);

ok(s($b) eq '-123', 'can round-trip negative number (string)');
ok(s($c) eq '-123', 'can round-trip negative number (string) by boxing');
ok(nqp::unbox_i($b) == -123, 'can round-trip negative number by unboxing');
ok(!nqp::iseq_I($one, $b), 'nqp::iseq_I can return false');
ok(nqp::iseq_I($one, $one), 'nqp::iseq_I can return true');
ok(nqp::iseq_I(nqp::mul_I($b, $b), 15129,), 'multiplication');
ok(nqp::iseq_I(nqp::add_I($b, $b),  -246,), 'addition');
ok(nqp::iseq_I(nqp::sub_I($b, $b), nqp::box_i(0, $bi_type)), 'subtraction');
ok(nqp::iseq_I(nqp::div_I($b, $b), $one), 'division');
