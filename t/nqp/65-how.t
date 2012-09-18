#!./parrot nqp.pbc

# check subs

plan(1);

class Foo {
    has $!private;
}

my $foo := Foo.new();
my $attrs := $foo.HOW.attributes($foo);
ok(1);
