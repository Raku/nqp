#!nqp
use nqpmo;

plan(12);

# Now we'll create a type that boxes a P6bigint.
my $int_boxer := NQPClassHOW.new_type(:name('boxing_int'), :repr('P6opaque'));
$int_boxer.HOW.add_attribute($int_boxer, NQPAttribute.new(
    :name('$!value'), :type(int), :box_target(1)
));
$int_boxer.HOW.add_parent($int_boxer, NQPMu);
$int_boxer.HOW.compose($int_boxer);

# Try some basic operations with it.
my $box_val_1 := nqp::box_i(4, $int_boxer);

ok(nqp::unbox_i($box_val_1) == 4);
ok(nqp::decont_i($box_val_1) == 4);

my $num_boxer := NQPClassHOW.new_type(:name('boxing_num'), :repr('P6opaque'));
$num_boxer.HOW.add_attribute($num_boxer, NQPAttribute.new(
    :name('$!value'), :type(num), :box_target(1)
));
$num_boxer.HOW.add_parent($num_boxer, NQPMu);
$num_boxer.HOW.compose($num_boxer);

# Try some basic operations with it.
my $box_val_2 := nqp::box_n(3.14, $num_boxer);

ok(nqp::unbox_n($box_val_2) == 3.14);
ok(nqp::decont_n($box_val_2) == 3.14);

my $str_boxer := NQPClassHOW.new_type(:name('boxing_str'), :repr('P6opaque'));
$str_boxer.HOW.add_attribute($str_boxer, NQPAttribute.new(
    :name('$!value'), :type(str), :box_target(1)
));
$str_boxer.HOW.add_parent($str_boxer, NQPMu);
$str_boxer.HOW.compose($str_boxer);

# Try some basic operations with it.
my $box_val_3 := nqp::box_s('hello', $str_boxer);

is(nqp::unbox_s($box_val_3), 'hello');
is(nqp::decont_s($box_val_3), 'hello');


{
    my class Direct is repr('P6int') {
    }
    my $value := nqp::box_i(4, Direct);

    ok(nqp::unbox_i($value) == 4);
    ok(nqp::decont_i($value) == 4);
};

{
    my class Direct is repr('P6num') {
    }
    my $value := nqp::box_n(4.14, Direct);

    ok(nqp::unbox_n($value) == 4.14);
    ok(nqp::decont_n($value) == 4.14);
};


{
    my class Direct is repr('P6str') {
    }
    my $value := nqp::box_s('hello', Direct);
    is(nqp::unbox_s($value), 'hello');
    is(nqp::decont_s($value), 'hello');
};
