#!./parrot nqp.pbc

# fat arrow

plan(3);

sub hash(*%a) { %a }

my %a := hash(
    alpha   => 1,
    beta    => "blah",
);

ok(%a<alpha> == 1, "first arg is 1");
ok(%a<beta> eq 'blah', "second arg is 'blah'");

my %b := hash( 'foo' => 'bar');
ok(%b<foo> eq 'bar', "%b<foo> eq 'bar'");
