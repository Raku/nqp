#!./parrot nqp.pbc

# check hash access methods

plan(6);

my %h;

%h<a> := 1000;
%h<b> := 200;
%h{1} := 30;
%h{'c'} := 4;

my $count := 0;
my $sum := 0;
for %h {
  $count := $count + 1;
  $sum := $sum + nqp::iterval($_);
  if ($_.key eq 'a') {
    ok(nqp::iterval($_) == 1000,'correct value for key a');
  }
  if ($_.key eq 'b') {
    ok(nqp::iterval($_) == 200,'correct value for key b');
  }
  if ($_.key eq '1') {
    ok(nqp::iterval($_) == 30,'correct value for key 1');
  }
  if ($_.key eq 'c') {
    ok(nqp::iterval($_) == 4,'correct value for key 4');
  }
}

ok($sum == 1234,"we iterate over the correct keys");
ok($count == 4,"we iterate the correct number of times");

