#!/usr/bin/env nqp

# create a hash
my %h := nqp::hash(
  'k1', 0,
  'k2', 1,
);

# iterate over the hash
for %h {
    my $k := nqp::iterkey_s($_); 
    my $v := nqp::iterval($_);
    say("key $k => val $v");
}

my $k1 := 'k1';
my $k2 := 'k2';

# return value of a key
my $v := nqp::atkey(%h, $k1);
say("value of key $k1 is $v");

# check existence of a key

if nqp::existskey(%h, $k2) {
    say("key $k2 exists");
}




