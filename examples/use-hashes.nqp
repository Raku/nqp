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

my $k3 := 'k3';
my $v3 := 3;

# add a new pair
nqp::bindkey(%h, $k3, $v3);

# check existence of a key
if nqp::existskey(%h, $k3) {
    say("key $k3 exists");
}




