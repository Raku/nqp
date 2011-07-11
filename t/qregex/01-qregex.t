#! nqp

# for string_to_int
use QRegex;

my @files := [
    'rx_basic',
    'rx_quantifiers',
    'rx_metachars',
#    'rx_backtrack',
#    'rx_charclass',
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
sub unescape($s) {
    $s := subst($s, /\\(<[nretf]>)/, -> $m { %expansions{$m[0]} }, :global);
    subst($s, /\\x(<?xdigit>**4)/, -> $m { HLL::Actions::string_to_int(~$m[0], 16) }, :global);
}


sub test_line($line) {
    my @parts  := match($line, /\T+/, :global);
    my $regex  := @parts[0];
    my $target := @parts[1];
    my $expect := @parts[2];
    my $desc   := @parts[3];

    $target := '' if $target eq "''";
    $target := unescape($target);

    my $expect_error := nqp::substr($expect, 0, 1) eq '/';
    my $expect_match := nqp::substr($expect, 0, 1) eq '<';

    my $rxcomp := pir::compreg__Ps('QRegex::P6Regex');
    try {
        my $rxsub  := $rxcomp.compile($regex);
        my $cursor := NQPCursor."!cursor_init"($target, :c(0));
        my $match  := $rxsub($cursor).MATCH;
        if $expect_error {
            ok(0, $desc);
            say("# expected $expect but no exception caught ");
        }
        elsif $expect_match {
            ok($expect eq "<" ~ $match.Str ~ " @ " ~ $match.from ~ ">", $desc);
        }
        else {
            ok($expect eq 'y' ?? $match !! !$match, $desc);
        }
        CATCH {
            if $expect_error {
                my $errpat := pir::chopn__Ssi(nqp::substr($expect, 1), 1);
                my $m := "$_" ~~ /<$errpat>/;
                ok($m, $desc);
                say("#      got: $_\n# expected: $expect") unless $m;
            }
            else {
                ok(0, $desc);
                say("# ERROR: $_");
            }
       }
   }
}


my $tests := 0;
for @files -> $fn {
    say("# file: $fn");
    my $contents := slurp('t/qregex/' ~ $fn);
    my @lines    := pir::split("\n", $contents);

    for @lines -> $l {
        my $m := $l ~~ /'# todo ' .*? ':pge<' (.*?) '>'/;
        if $m {
            todo($m[0], 1);
        }
        else {
            next if $l ~~ /^\s*\# | ^\s*$ /;
            test_line($l);
            $tests := $tests + 1;
        }
    }
    say("# done with file $fn");
}
say("plan 1..$tests");


# vim: ft=perl6
