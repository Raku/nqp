#! nqp

say("1..5");

our multi sub foo(Float $f) {
    say("ok 1");
}

our multi sub foo(NQP::Grammar $f) {
    say("ok 2");
}

our multi sub foo($def) {
    say($def);
}

foo(42.01);
foo(NQP::Grammar.new);
foo("ok 3");

class Foo {
    our multi method bar(Float $f) {
        say("ok 4");
    };

    our multi method bar($f) {
        say($f);
    };
};

my $f := Foo.new;
$f.bar(43.5 - 0.5);
$f.bar("ok 5");

