#!./parrot nqp.pbc

# fat arrow

plan(4);

sub hash(*%a) { %a }

my %a := hash(
    alpha   => 1,
    beta    => "blah",
);

ok(%a<alpha> == 1, "first arg is 1");
ok(%a<beta> eq 'blah', "second arg is 'blah'");

my %b := hash( 'foo' => 'bar');
ok(%b<foo> eq 'bar', "single quoted string on the LHS of =>");

my %c := hash( "foo" => 'bar');
ok(%c<foo> eq 'bar', "double quoted string on the LHS of =>");
