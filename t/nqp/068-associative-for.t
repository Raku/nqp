# check hash access methods

plan(16);

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
  if nqp::iterkey_s($_) eq 'a' {
    ok(nqp::iterval($_) == 1000,'correct value for key a - lowlevel way');
  }
  elsif nqp::iterkey_s($_) eq 'b' {
    ok(nqp::iterval($_) == 200,'correct value for key b - lowlevel way');
  }
  elsif nqp::iterkey_s($_) eq '1' {
    ok(nqp::iterval($_) == 30,'correct value for key 1 - lowlevel way');
  }
  elsif nqp::iterkey_s($_) eq 'c' {
    ok(nqp::iterval($_) == 4,'correct value for key 4 - lowlevel way');
  }
  else {
    ok(0);
  }

  if $_.key eq 'a' {
    ok($_ eq 'a', 'keyvalue pair stringifies correctly for key a');
    ok($_.value == 1000,'correct value for key a');
  }
  elsif $_.key eq 'b' {
    ok($_ eq 'b', 'keyvalue pair stringifies correctly for key b');
    ok($_.value == 200,'correct value for key b');
  }
  elsif $_.key eq '1' {
    ok($_.value == 30,'correct value for key 1');
  }
  elsif $_.key eq 'c' {
    ok($_.value == 4,'correct value for key 4');
  }
  else {
    ok(0);
  }

}

ok($sum == 1234,"we iterate over the correct keys");
ok($count == 4,"we iterate the correct number of times");

my $it := nqp::iterator(%h);
nqp::shift($it);
nqp::shift($it);
nqp::shift($it);
ok(nqp::istrue($it) == 1, "iterator is true while we haven't iterator over everything");
nqp::shift($it);
ok(nqp::istrue($it) == 0, "iterator is false when we have iterated over everything");

my %h1;
%h1<foo> := 123;
my $it_h1 := nqp::iterator(%h1);
my $kv := nqp::shift($it_h1);
ok(nqp::iterkey_s($kv) eq 'foo', 'nqp::iterkey_s on the thing returned by shifting an iterator');
ok(nqp::iterval($kv) == 123, 'nqp::iterkey_s on the thing returned by shifting an iterator');
