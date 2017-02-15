# check hash access methods

plan(19);

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
    is($_, 'a', 'keyvalue pair stringifies correctly for key a');
    ok($_.value == 1000,'correct value for key a');
  }
  elsif $_.key eq 'b' {
    is($_, 'b', 'keyvalue pair stringifies correctly for key b');
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
ok($count == 4, "we iterate the correct number of times");

my $it := nqp::iterator(%h);
nqp::shift($it);
nqp::shift($it);
nqp::shift($it);
ok(nqp::istrue($it) == 1, "iterator is true while we haven't iterator over everything");
nqp::shift($it);
ok(nqp::istrue($it) == 0, "iterator is false when we have iterated over everything");


{
    my %h;
    %h<a> := 100;
    %h<b> := 7;
    my $iter := nqp::iterator(%h);

    ok(nqp::eqaddr(nqp::shift($iter), $iter), 'iterator returns itself');


    my str $first_key := nqp::iterkey_s($iter);
    my $first_val := nqp::iterval($iter);

    ok(nqp::eqaddr(nqp::shift($iter), $iter), 'iterator returns itself again');

    my str $second_key := nqp::iterkey_s($iter);
    my $second_val := nqp::iterval($iter);

    ok(
        ($first_key eq 'a' && $second_key eq  'b') || ($first_key eq 'b' && $second_key eq 'a'),
        "got correct keys from iterator");

    is($first_val, %h{$first_key}, "got correct value in first iteration");
    is($second_val, %h{$second_key}, "got correct value in second iteration");
}
