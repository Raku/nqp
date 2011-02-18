#! nqp

plan(2);

class Foo {
    has $bar;

    has $!answer;
    method question() { $!answer := 42 };
};

my $foo := Foo.new;

$foo.question();
ok($foo.answer == 42, "Read-only accessors works");

$foo.bar(42);
ok($foo.bar == 42, 'Read-write accessors works');
