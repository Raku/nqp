plan(27);

grammar ABC {
    token TOP { { ok(1, 'basic code assertion'); } }
}
ABC.parse('abc');

grammar BCD {
    token TOP { $<bcd>=[.*] { is( $<bcd>, 'bcd', 'match in assertion' ); } }
}
BCD.parse('bcd');

grammar CDE {
    token TOP { \d+ <?{ +$/ < 255}> cde }
}
ok( ?CDE.parse('123cde'),  'passes assertion, match after');
ok( !CDE.parse('1234cde'), 'fails assertion');
ok( ?CDE.parse('0cde'),    'passes assertion, match after');
ok( !CDE.parse('1234'),    'fails assertion');
ok( !CDE.parse('123'),     'fails regex after passing assertion');

grammar DEF {
    token TOP { \d+ <!{ +$/ < 255 }> def }
}
ok( !DEF.parse('123def'),  'fails assertion');
ok( ?DEF.parse('1234def'), 'passes assertion, text after');
ok( !DEF.parse('0def'),    'fails assertion');
ok( !DEF.parse('1234'),    'passes assertion, fails text after');
ok( ?DEF.parse('999def'),  'passes assertion, text after');

grammar SeeCursor {
    token TOP {
        $<bcd>=[.*]
        {
            my $get := nqp::getlex('$¢');
            is($get<bcd>, 'abc', 'getting stuff from nqp::getlex "$¢" works');
        }
    }
}
SeeCursor.parse('abc');

# A block quantifier inside a subrule computes its limits when the
# subrule runs. Backtracking into that subrule restarts it, and the
# restarted subrule must honor the same limits.
my $n := 2;
grammar DynQuant {
    regex TOP     { (. ** {2})+ n }
    regex range   { (. ** {[2,3]})+ n }
    regex lexical { (. ** {$n})+ n }
    regex named   { <pair>+ n }
    regex pair    { . ** {2} }
    regex frugal  { (a **? {[1,2]}) c }
    regex frugal3 { (a **? {[1,3]}) c }
    regex two     { (x ** {2} . ** {2})+ n }
    regex sep     { (<[a..z]> ** {2} % ',') ',b' }
    regex sepex   { (a **? {2} % ',') $ }
    regex seprng  { (a **? {[1,3]} % ',') ',c' }
}
sub caps($m) {
    return 'no match' unless $m;
    my $c := $m[0];
    return ~$c unless nqp::islist($c);
    my @s;
    for $c { nqp::push(@s, ~$_) }
    nqp::join(",", @s)
}
if nqp::getcomp('nqp').backend.name ne 'moar' {
    skip('block quantifier limits are lost on restart', 10);
}
else {
    ok( !DynQuant.parse('burden'),
        'backtracking into a capture keeps the block quantifier exact count');
    is( caps(DynQuant.parse('abcdn', :rule<range>)), 'ab,cd',
        'backtracking into a capture keeps the block quantifier minimum');
    ok( !DynQuant.parse('burden', :rule<lexical>),
        'backtracking into a capture keeps a lexical block quantifier count');
    ok( !DynQuant.parse('burden', :rule<named>),
        'backtracking into a named subrule keeps the block quantifier exact count');
    ok( !DynQuant.parse('aaac', :rule<frugal>),
        'frugal block quantifier stops at its maximum when backtracked into');
    is( caps(DynQuant.parse('aaac', :rule<frugal3>)), 'aaa',
        'frugal block quantifier grows up to its maximum when backtracked into');
    ok( !DynQuant.parse('xxan', :rule<two>),
        'backtracking into a capture keeps the limits of each block quantifier in it');
    ok( !DynQuant.parse('a,b', :rule<sep>),
        'backtracking into a capture keeps the block quantifier count with a separator');
    is( caps(DynQuant.parse('a,a', :rule<sepex>)), 'a,a',
        'frugal block quantifier with a separator counts its first repetition once');
    is( caps(DynQuant.parse('a,a,a,c', :rule<seprng>)), 'a,a,a',
        'frugal block quantifier with a separator grows to its maximum when backtracked into');
}

# Backtracking drops captures from the stack, and a code block that runs
# afterwards must see only the captures that remain.
my @seen;
my @empty;
my @alt;
grammar Trimmed {
    regex TOP   { (\w)+ { nqp::push(@seen, ~nqp::elems($/[0])) } bc }
    regex tail  { (\w)+ <?{ my @c := $/[0]; ~@c[nqp::elems(@c) - 1] eq 'b' }> }
    regex empty { (\w)* { nqp::push(@empty, ~nqp::elems($/[0])) } a }
    regex alt   { [ (a) b | a ] { nqp::push(@alt, ~nqp::defined($/[0])) } b }
}
if nqp::getcomp('nqp').backend.name ne 'moar' {
    skip('captures stay in the match after backtracking', 4);
}
else {
    Trimmed.parse('abc');
    is( nqp::join(',', @seen), '3,2,1',
        'a code block sees only the captures left after backtracking');
    is( ~Trimmed.parse('abc', :rule<tail>), 'ab',
        'an assertion sees only the captures left after backtracking');
    Trimmed.parse('ab', :rule<empty>);
    is( nqp::join(',', @empty), '2,1,0',
        'a code block sees no captures after backtracking drops them all');
    Trimmed.parse('ab', :rule<alt>);
    is( nqp::join(',', @alt), '1,0',
        'a code block sees no capture after backtracking into another alternative');
}
