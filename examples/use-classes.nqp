#!/usr/bin/env nqp

# based on blog post by Andrew Shitov:
#
#   https://perl6.online/2018/01/09/what-does-nqpgetattr-do/
#
#   class C {
#       has $.attr is rw;
#   }
#
#   my $o := nqp::create(C);
#   $o.attr = 'other value';
#   nqp::say(nqp::getattr($o, C, '$!attr')); # other value

class Foo {
    has $!line;
    has @!contents;

    method set-line($value) {
        $!line := $value;
    }

    method set-contents(@value) {
        @!contents := @value;
    }

    method add2contents($value) {
        @!contents.push($value);
    }

    method empty-contents() {
        @!contents := [];
    }

    # note the empty parens are required in the declaration
    method show-line() {
        say("  \$!line: '$!line'");
    }

    # note the empty parens are required in the declaration
    method show-contents() {
        say("  \@!contents:");
        if !nqp::elems(@!contents) {
            say("  [empty]");
            return;
        }
        for @!contents {
            say("    $_");
        }
    }
}

my $line1 := ' # text ';
my $line2 := ' text ';

my $o1 := nqp::create(Foo);
$o1.set-line($line1);
my $o2 := nqp::create(Foo);
$o2.set-line($line2);

my $L1 := nqp::getattr($o1, Foo, '$!line');
my $L2 := nqp::getattr($o2, Foo, '$!line');
say("\$o1.line: '$L1'");
say("\$o2.line: '$L2'");

my @arr := nqp::list(
    'elem 0',
    'elem 1',
);

$o1.set-contents(@arr);

my @list := nqp::getattr($o1, Foo, '@!contents');
say("\$o1's contents:");
for @list {
    say("  $_");
}

$o1.add2contents('another elem');
@list := nqp::getattr($o1, Foo, '@!contents');
say("\n\$o1's contents after an update:");
for @list {
    say("  $_");
}

$o1.empty-contents;
@list := nqp::getattr($o1, Foo, '@!contents');
say("\n\$o1's contents after emptying:");
if !nqp::elems(@list) {
    say("  \$o1's \@contents are empty");
}
else {
    for @list {
        say("  $_");
    }
}

my $o3:= nqp::create(Foo);
$o3.set-contents(@arr);
$o3.set-line('line 3');

$o3.show-contents;
$o3.show-line;
