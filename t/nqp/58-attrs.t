#! nqp

plan(10);

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
}

my $obj := nqp::list(1000,2000);

my $low := Lowlevel.new;
nqp::bindattr_i($low, Lowlevel, '$!int', 456);
nqp::bindattr_n($low, Lowlevel, '$!num', 12.3);
nqp::bindattr_s($low, Lowlevel, '$!str', "hello world");
nqp::bindattr($low, Lowlevel, '$!obj', $obj);

ok($low.get_int == 456, 'nqp::bindattr_i');
ok($low.get_num == 12.3, 'nqp::bindattr_n');
ok($low.get_str eq "hello world", 'nqp::bindattr_s');
ok(nqp::eqaddr($low.get_obj,$obj), 'nqp::bindattr');

ok(nqp::getattr_i($low, Lowlevel, '$!int') == 456, 'nqp::getattr_i');
ok(nqp::getattr_n($low, Lowlevel, '$!num') == 12.3, 'nqp::getattr_n');
ok(nqp::getattr_s($low, Lowlevel, '$!str') eq 'hello world', 'nqp::getattr_s');
ok(nqp::eqaddr(nqp::getattr($low, Lowlevel, '$!obj'), $obj), 'nqp::getattr');
