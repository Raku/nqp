plan(30);

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

dies-ok({
  Foo.answer;
}, "can't get an attribute from a type object");

dies-ok({
  Foo.question(100);
}, "can't set an attribute on a type object");

class Bar {
}

dies-ok({
  nqp::getattr(Foo.new, Foo, '$!no_such');
}, "getting a attribute that's not in a class dies");

dies-ok({
  nqp::bindattr(Foo.new, Foo, '$!no_such', 123);
}, "binding a attribute that's not in a class dies");

dies-ok({
  nqp::getattr(Foo.new, Bar, '$!answer');
}, "getting a attribute that's not in a class dies");

dies-ok({
  nqp::bindattr(Foo.new, Bar, '$!answer', 123);
}, "binding a attribute that's not in a class dies");

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
ok(nqp::bindattr_i($low, Lowlevel, '$!int', 456) == 456, 'correct return value of nqp::bindattr_i');
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

ok(nqp::getattr($low, Lowlevel, '$!int') == 456, 'nqp::getattr for an int attribute gets the correct value');
ok(nqp::getattr($low, Lowlevel, '$!num') == 12.3, 'nqp::getattr for an num attribute gets the correct value');
ok(nqp::getattr($low, Lowlevel, '$!str') eq 'hello world', 'nqp::getattr for an str attribute gets the correct value');

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

use nqpmo;

class Mutable {
    has $!counter;
    method get() {
        $!counter;
    }
    method inc() {
        $!counter := $!counter + 1;
    }
}

my $knowhow := nqp::knowhow();

my $type := NQPClassHOW.new_type(:name('TestAutoviv'), :repr('P6opaque'));
$type.HOW.add_attribute($type, NQPAttribute.new(
    :name('$!value'), :default(Mutable.new(counter=>10)),
));
$type.HOW.add_attribute($type, NQPAttribute.new(
    :name('$!type_object'), :default(Mutable)
));
$type.HOW.add_parent($type, NQPMu);
$type.HOW.compose($type);

my $a := $type.new;
my $b := $type.new;

my $got1 := nqp::getattr($a, $type, '$!value');
ok($got1.get == 10, 'autoviving a value for an attribute');

$got1.inc;

ok(nqp::getattr($a, $type, '$!value').get == 11, 'got the same value from the same object when fetching twice');

ok(nqp::getattr($b, $type, '$!value').get == 10, 'got a fresh copy when autoviving from a different object');

ok(nqp::eqaddr(nqp::getattr($a, $type, '$!type_object'), Mutable), 'autoviving type object');
