#! nqp
use nqpmo;

plan(19);

pir::nqp_bigint_setup__v();

my $knowhow := pir::get_knowhow__P();
my $bi_type := $knowhow.new_type(:name('TestBigInt'), :repr('P6bigint'));
$bi_type.HOW.compose($bi_type);
sub s($x) { pir::nqp_bigint_to_str__SP($x) };
sub iseq($x, $y) { nqp::iseq_I($x, nqp::box_i($y, $bi_type)) }
sub box($x) { nqp::box_i($x, $bi_type) }

my $one := box(1);

my $b := pir::nqp_bigint_from_str__PPS($one, '-123');
my $c := box(-123);

ok(s($b) eq '-123', 'can round-trip negative number (string)');
ok(s($c) eq '-123', 'can round-trip negative number (string) by boxing');
ok(nqp::unbox_i($b) == -123, 'can round-trip negative number by unboxing');
ok(!nqp::iseq_I($one, $b), 'nqp::iseq_I can return false');
ok(nqp::iseq_I($one, $one), 'nqp::iseq_I can return true');
ok(iseq(nqp::mul_I($b, $b), 15129,), 'multiplication');
ok(iseq(nqp::add_I($b, $b),  -246,), 'addition');
ok(nqp::iseq_I(nqp::sub_I($b, $b), nqp::box_i(0, $bi_type)), 'subtraction');
ok(nqp::iseq_I(nqp::div_I($b, $b), $one), 'division');

ok(iseq(nqp::bitshiftl_I($one, 3), 8), 'bitshift left');
ok(iseq($one, 1), 'original not modified by bitshift left');
ok(iseq(nqp::bitshiftr_I(box(16), 4), 1), 'bitshift right');

ok(iseq(nqp::bitand_I(box(0xdead), box(0xbeef)), 0x9ead), 'bit and');
ok(iseq(nqp::bitor_I( box(0xdead), box(0xbeef)), 0xfeef), 'bit or');
ok(iseq(nqp::bitxor_I(box(0xdead), box(0xbeef)), 0x6042), 'bit xor');

ok(iseq(nqp::bitneg_I(box(-123)), 122), 'bit negation');


# Now we'll create a type that boxes a P6bigint.
my $bi_boxer := $knowhow.new_type(:name('TestPerl6Int'), :repr('P6opaque'));
$bi_boxer.HOW.add_attribute($bi_boxer, NQPAttribute.new(
    :name('$!value'), :type($bi_type), :box_target(1)
));
$bi_boxer.HOW.compose($bi_boxer);

# Try some basic operations with it.
my $box_val_1 := nqp::box_i(4, $bi_boxer);
ok(iseq($box_val_1, 4), 'can box to a complex type with a P6bigint target');
my $box_val_2 := pir::nqp_bigint_from_str__PPS($bi_boxer, '38');
ok(iseq($box_val_2, 38), 'can get a bigint from a string with boxing type');
ok(iseq(nqp::add_I($box_val_1, $box_val_2), 42), 'addition works on boxing type');
