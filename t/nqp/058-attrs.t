#! nqp

plan(20);

class Foo {
    has $!answer;
    method question($what) { $!answer := $what }
    method answer() { $!answer }
};

my $first  := Foo.new;
my $second := Foo.new;

$first.question(42);
$second.question(23);
ok($first.answer  == 42, "attributes work");
ok($second.answer == 23, "... and are not shared among objects");

class Lowlevel {
    has int $!int;
    method get_int() {
        $!int;
    }

    has num $!num;
    method get_num() {
        $!num;
    }

    has str $!str;
    method get_str() {
        $!str;
    }

    has $!obj;
    method get_obj() {
        $!obj;
    }

    method defaults_ok() {
        ok($!int == 0, 'correct default for int');
        ok($!num == 0, 'correct default for num');
        ok(nqp::isnull_s($!str), 'default for str');
    }
}

my $obj := nqp::list(1000,2000);

my $low := Lowlevel.new;
nqp::bindattr_i($low, Lowlevel, '$!int', 456);
nqp::bindattr_n($low, Lowlevel, '$!num', 12.3);
nqp::bindattr_s($low, Lowlevel, '$!str', "hello world");
nqp::bindattr($low, Lowlevel, '$!obj', $obj);

Lowlevel.new.defaults_ok();

ok($low.get_int == 456, 'nqp::bindattr_i');
ok($low.get_num == 12.3, 'nqp::bindattr_n');
is($low.get_str, "hello world", 'nqp::bindattr_s');
ok(nqp::eqaddr($low.get_obj,$obj), 'nqp::bindattr');

ok(nqp::getattr_i($low, Lowlevel, '$!int') == 456, 'nqp::getattr_i');
ok(nqp::getattr_n($low, Lowlevel, '$!num') == 12.3, 'nqp::getattr_n');
is(nqp::getattr_s($low, Lowlevel, '$!str'), 'hello world', 'nqp::getattr_s');
ok(nqp::eqaddr(nqp::getattr($low, Lowlevel, '$!obj'), $obj), 'nqp::getattr');

ok(nqp::getattr($low, Lowlevel, '$!int') == 456, 'nqp::getattr for an int attribute get the correct value');
ok(nqp::isint(nqp::getattr($low, Lowlevel, '$!int')), '...as an int');

class ClassA {
    has %!starts_with_hash;
    method get_attr() {
        %!starts_with_hash;
    }
}
class ClassB {
    method new(:$name) {
        my $obj := nqp::create(self);
        $obj
    }

    has %!starts_with_null;
    method get_attr() {
        %!starts_with_null;
    }
}
ok(nqp::ishash(ClassA.new.get_attr), 'BUILD initializes a % attribute with a hash');
ok(nqp::isnull(ClassB.new.get_attr), 'without a BUILD a % attribute is initialized with a null');

class AttrInitedTest {
    has $!attr1;
    has $!attr2;
    method get_attr1() {
        $!attr1;
    }
    method set_attr2() {
        $!attr2 := 200
    }
    has int $!attr3;
    method set_attr3() {
        $!attr3 := 200
    }

    has int $!attr4;
    method get_attr4() {
        $!attr1;
    }
}
my $partial := AttrInitedTest.new;
ok(!nqp::attrinited($partial, AttrInitedTest, '$!attr1'), 'nqp::attrinitied on a uninitialized attr');
$partial.get_attr1;
ok(nqp::attrinited($partial, AttrInitedTest, '$!attr1'), 'nqp::attrinitied on a attr that has been autovivified');
$partial.set_attr2;
ok(nqp::attrinited($partial, AttrInitedTest, '$!attr2'), 'nqp::attrinitied on a attr that has been bound to');
