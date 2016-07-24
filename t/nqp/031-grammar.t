#! nqp

# Test grammars and regexes

plan(6);

grammar ABC {
    token TOP { ok ' ' <integer> }
    token integer { \d+ }
    token TOP2 { ok ' ' <int-num> }
    token int-num { \d+ }

    token a-or-b { <[ab]> }

    token not_a_or_b { ^ <- a-or-b>+ $ }
}

my $match := ABC.parse('not ok');
ok( !$match, 'parse method works on negative match');

ok( $match.chars == 0, 'failed match has 0 .chars');

$match := ABC.parse('ok 123');
ok( ?$match, 'parse method works on positive match');

ok( $match<integer> == 123, 'captured $<integer>');

$match := ABC.parse('ok 123', :rule<TOP2> );
ok( ?$match, 'parse method works with :rule');

ok( $match<int-num> == 123, 'captured $<int-num>');

ok(?ABC.parse('ccc', :rule<not_a_or_b> ), "<- name-with-hyphen> matches");
ok(!ABC.parse('cac', :rule<not_a_or_b> ), "<- name-with-hyphen> doesn't match");
