use nqpmo;

plan(19);

my $MODE_CALL_METHOD := 0;
my $MODE_UNBOX_INT := 1;
my $MODE_UNBOX_NUM := 2;
my $MODE_UNBOX_STR_NOT_EMPTY := 3;
my $MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO := 4;
my $MODE_NOT_TYPE_OBJECT := 5;
my $MODE_BIGINT := 6;
my $MODE_ITER := 7;
my $MODE_HAS_ELEMS := 8;

class Foo {
    has $!counter;
    has $!bool;
    method BUILD() {
      $!bool := 1;
    }
    method half-true() {
        $!bool := !$!bool;
        $!bool;
    }
}
my $table := Foo.HOW.method_table(Foo);
my $method := $table{'half-true'};
my $foo := Foo.new();
nqp::setboolspec(Foo, $MODE_CALL_METHOD, $method);
ok(nqp::istrue($foo) == 0, 'MODE_CALL_METHOD');
ok(nqp::istrue($foo) == 1, 'MODE_CALL_METHOD');
ok(nqp::istrue($foo) == 0, 'MODE_CALL_METHOD');

{
    my $int := NQPClassHOW.new_type(:name('boxing_int'), :repr('P6opaque'));
    $int.HOW.add_attribute($int, NQPAttribute.new(
        :name('$!value'), :type(int), :box_target(1)
    ));
    $int.HOW.add_parent($int, NQPMu);
    $int.HOW.compose($int);

    nqp::setboolspec($int, $MODE_UNBOX_INT, nqp::null());

    # Try some basic operations with it.
    my $i100 := nqp::box_i(100, $int);
    my $zero := nqp::box_i(0, $int);

    ok(nqp::istrue($i100), 'MODE_UNBOX_INT - 100 is true');
    ok(!nqp::istrue($zero), 'MODE_UNBOX_INT - 0 is false');
}

{
    my $num := NQPClassHOW.new_type(:name('boxing_str'), :repr('P6opaque'));
    $num.HOW.add_attribute($num, NQPAttribute.new(
        :name('$!value'), :type(num), :box_target(1)
    ));
    $num.HOW.add_parent($num, NQPMu);
    $num.HOW.compose($num);

    nqp::setboolspec($num, $MODE_UNBOX_NUM, nqp::null());

    # Try some basic operations with it.
    my $half := nqp::box_n(0.5, $num);
    my $zero := nqp::box_n(0, $num);

    ok(nqp::istrue($half), 'MODE_UNBOX_NUM - 0.5 is true');
    ok(!nqp::istrue($zero), 'MODE_UNBOX_NUM - 0 is false');
}

{
    my $not_empty_or_zero := NQPClassHOW.new_type(:name('boxing_str'), :repr('P6opaque'));
    $not_empty_or_zero.HOW.add_attribute($not_empty_or_zero, NQPAttribute.new(
        :name('$!value'), :type(str), :box_target(1)
    ));
    $not_empty_or_zero.HOW.add_parent($not_empty_or_zero, NQPMu);
    $not_empty_or_zero.HOW.compose($not_empty_or_zero);

    nqp::setboolspec($not_empty_or_zero, $MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO, nqp::null());

    # Try some basic operations with it.
    my $hello := nqp::box_s('hello', $not_empty_or_zero);
    my $empty := nqp::box_s('', $not_empty_or_zero);
    my $zero  := nqp::box_s('0', $not_empty_or_zero);

    ok(nqp::istrue($hello), 'MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO - "hello" is true');
    ok(!nqp::istrue($zero), 'MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO - "0" is false');
    ok(!nqp::istrue($empty), 'MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO - "" is false');
}

{
    my $not_empty := NQPClassHOW.new_type(:name('boxing_str'), :repr('P6opaque'));
    $not_empty.HOW.add_attribute($not_empty, NQPAttribute.new(
        :name('$!value'), :type(str), :box_target(1)
    ));
    $not_empty.HOW.add_parent($not_empty, NQPMu);
    $not_empty.HOW.compose($not_empty);

    nqp::setboolspec($not_empty, $MODE_UNBOX_STR_NOT_EMPTY, nqp::null());

    # Try some basic operations with it.
    my $hello := nqp::box_s('hello', $not_empty);
    my $empty := nqp::box_s('', $not_empty);
    my $zero  := nqp::box_s('0', $not_empty);

    ok(nqp::istrue($hello), 'MODE_UNBOX_STR_NOT_EMPT - "hello" is true');
    ok(nqp::istrue($zero), 'MODE_UNBOX_STR_NOT_EMPTY - "0" is true');
    ok(!nqp::istrue($empty), 'MODE_UNBOX_STR_NOT_EMPTY - "" is false');
}


class Bar {
}

my $bar := Bar.new();

nqp::setboolspec(Bar, $MODE_NOT_TYPE_OBJECT, nqp::null());
ok(nqp::istrue($bar) == 1, "setboolspec MODE_NOT_TYPE_OBJECT = 5 works correctly in true case");
ok(nqp::istrue(Bar) == 0, "setboolspec MODE_NOT_TYPE_OBJECT = 5 works correctly in false case");


{
    my $knowhow := nqp::knowhow();
    my $bi_type := $knowhow.new_type(:name('TestBigInt'), :repr('P6bigint'));
    $bi_type.HOW.compose($bi_type);

    my $bignum := NQPClassHOW.new_type(:name('boxing_bignum'), :repr('P6opaque'));
    $bignum.HOW.add_attribute($bignum, NQPAttribute.new(
        :name('$!value'), :type($bi_type), :box_target(1)
    ));
    $bignum.HOW.add_parent($bignum, NQPMu);
    $bignum.HOW.compose($bignum);

    nqp::setboolspec($bignum, $MODE_BIGINT, nqp::null());

    # Try some basic operations with it.
    my $two := nqp::fromstr_I('38', $bignum);
    my $zero  := nqp::fromstr_I('0', $bignum);

    ok(nqp::istrue($two), 'MODE_BIGINT - 2 is true');
    ok(!nqp::istrue($zero), 'MODE_BIGINT - 0 is false');
}
{
    class HasElems {
        has @!pos_bar is positional_delegate;
    }
    nqp::setboolspec(HasElems, $MODE_HAS_ELEMS, nqp::null());

    my $empty := HasElems.new();
    my $not_empty := HasElems.new();
    $not_empty[0] := 123;
    $not_empty[1] := 456;


    ok(nqp::istrue($not_empty), 'MODE_HAS_ELEMS');
    ok(!nqp::istrue($empty), 'MODE_HAS_ELEMS');
}
