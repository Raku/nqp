#! nqp

# for string_to_int
use NQPHLL;

my @files := [
    'rx_basic',
    'rx_metachars',
# contains /<xaaaay @ 0>/ - style things, NYI
#    'rx_quantifiers',
    'rx_backtrack',
    'rx_charclass',
# contains /mob <alnum>: <0 @ 35>/ - style things, NYI
#    'rx_subrules',
#    'rx_lookarounds',
#    'rx_captures',
#    'rx_modifiers',
# loops:
#    'rx_goal',
];



my %expansions;
%expansions<n> := "\n";
%expansions<r> := "\r";
%expansions<e> := "\e";
%expansions<t> := "\t";
%expansions<f> := "\f";
my $expand_basic := sub ($m) {
    %expansions{$m[0]};
}

my $expand_x := sub ($m) {
    HLL::Actions::string_to_int(~$m[0], 16);
}

sub expand_backslashes($s) {
    my $partial := subst($s, /\\(<[nretf]>)/, $expand_basic, :global);
    subst($partial, /\\x(<[abcdefABCDEF0123456789]>**4)/, $expand_x, :global);
}

sub test_line($line) {
    my @chunks      := match($line, /\T+/, :global);
    my $regex       := ~@chunks[0];
    my $string      := expand_backslashes(~@chunks[1]);
    my $expected    := ~@chunks[2];
    my $description := ~@chunks[3];

    my $expected_error := 0;

    if $expected ~~ /^\// {
        $expected_error := pir::substr($expected, 1, pir::length($expected) - 2);
    }
    $string := '' if $string eq "''";

    my $error  := 0;
    try {
        my $result := $string ~~ /<$regex>/;
        CATCH {
            $error := 1;
            if $expected_error {
                my $m := "$_" ~~ /:s <$expected_error>/;
                ok($m, $description);
                unless $m {
                    say("#      got: $_");
                    say("# expected: $expected_error");
                }
            } else {
                ok(0, $description);
                say("# ERROR: $_");
            }
        }
        unless $error {
            if $expected_error {
                ok(0, $description);
                say("# expected error /$expected_error/, but no exception thrown");
            } elsif ($expected eq 'y') {
                ok($result, $description);
            } else {
                ok(!$result, $description);
            }

        }
    }
}

my $tests := 0;
for @files -> $fn {
    say("# file: $fn");
    my $contents := slurp('t/p6regex/' ~ $fn);
    my @lines    := pir::split("\n", $contents);

    # trailing newlines
    pir::pop(@lines);

    for @lines -> $l {
        my $m := $l ~~ /'# todo' .*? ':pge<' (.*?) '>'/;
        if $m {
            todo(~$m[0], 1);
        } else {
            next if     $l ~~ /^'#'/;
            next unless $l ~~ /\S/;
            test_line($l);
            $tests := $tests + 1;
        }
    }
    say("# done with file $fn");
}
say("1..$tests");
pir::exit(0);

# vim: ft=perl6
