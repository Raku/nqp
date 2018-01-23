#! nqp

# Test grammars and regexes

plan(18);

grammar ABC {
    token TOP { ok ' ' <integer> }
    token integer { \d+ }
    token TOP2 { ok ' ' <int-num> }
    token int-num { \d+ }

    token a-or-b { <[ab]> }

    token not_a_or_b { ^ <- a-or-b>+ $ }

    token only_integer { ^ \d $ }
    token only_L { ^ <:L> $ }
    token only_not_backslash { ^ <-[\]\\]> $ }
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

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('not yet fixed on the JVM', 3);
} else {
    ok( ?ABC.parse("7\x[308]", :rule<only_integer>), '\d matches a combining character');

    ok( ?ABC.parse("a\c[COMBINING DIAERESIS]", :rule<only_L>), '<:L> matches a combining character');
    ok( ?ABC.parse("a\c[COMBINING DIAERESIS]", :rule<only_not_backslash>), 'a charclass matches a combining character');
}


my %args;
%args<arg1> := 123;
%args<arg2> := 456;
grammar G {
    token TOP {
        <foo(|%args, :arg1<678>)>
    }
    token literal {
        foo
    }
    method foo(*%args) {
        ok(%args<arg1> == 678, 'correct named args passed to subrule 1/2');
        ok(%args<arg2> == 456, 'correct named args passed to subrule 2/2');
        self.literal;
    }
}
G.parse('foo');

grammar Uniprop {
    token TOP {
      <unum=:No+:Nl>
    }
}

grammar NotUniprop {
    token TOP {
      <unum=:!No>
    }
}

is(Uniprop.parse('½')<unum>, '½', 'uniprop');
is(Uniprop.parse('1')<unum>, '', "uniprop - doesn't match");
is(NotUniprop.parse('12')<unum>, '1', 'negated uniprop - matches');
is(NotUniprop.parse('½')<unum>, '', "negated uniprop - doesn't match");

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('not yet fixed on the JVM', 1);
} else {
    is(Uniprop.parse("\c[CUNEIFORM NUMERIC SIGN TWO ASH]")<unum>, "\c[CUNEIFORM NUMERIC SIGN TWO ASH]", 'astral unicode number');
}
