#! nqp

# for string_to_int
use QRegex;

my %backendconfig := nqp::backendconfig();
my $vm := nqp::existskey(%backendconfig, 'moar') ?? 'moar' !!
          nqp::existskey(%backendconfig, 'runtime.jars') ?? 'jvm' !! '';
my @files := [
    'rx_captures',
    'rx_qcaps',
    'rx_basic',
    'rx_quantifiers',
    'rx_metachars',
    'rx_charclass',
    'rx_backtrack',
    'rx_subrules',
#    'rx_lookarounds',
    'rx_modifiers',
    'rx_goal',
];

my %expansions;
%expansions<n> := "\n";
%expansions<r> := "\r";
%expansions<e> := "\e";
%expansions<t> := "\t";
%expansions<f> := "\f";
sub unescape($s) {
    $s := subst($s, /\\(<[nretf]>)/, -> $m { %expansions{$m[0]} }, :global);
    subst($s, /\\x(<[a..fA..F0..9]>**4)/, -> $m { nqp::chr(HLL::Actions.string_to_int(~$m[0], 16)) }, :global);
}


sub test_line($line) {
    my @parts  := match($line, /\T+/, :global);
    my $regex  := @parts[0];
    my $target := @parts[1];
    my $expect := @parts[2];
    my $desc   := @parts[3];

    $target := '' if $target eq "''";
    $target := unescape($target);

    my $expect_substr := nqp::eqat($expect, '<', 0)
                           ?? nqp::substr($expect, 1, nqp::chars($expect) - 2)
                           !! '';

    my $rxcomp := nqp::getcomp('QRegex::P6Regex');
    try {
        my $rxsub  := $rxcomp.compile($regex);
        my $cursor := NQPCursor."!cursor_init"($target, :c(0));
        my $match  := $rxsub($cursor).MATCH;
        if $expect_substr {
            my $got := ~$match."!dump_str"('mob');
            my $m := nqp::index($got, $expect_substr) >= 0;
            ok($m, $desc);
            say("#      got: $got\n# expected: $expect_substr") unless $m;
        }
        else {
            ok($expect eq 'y' ?? $match !! !$match, $desc);
        }
        CATCH {
            if $expect_substr {
                my $m := nqp::index(~$_, $expect_substr) >= 0;
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
    my @lines    := nqp::index($contents, "\r\n") >= 0
        ?? nqp::split("\r\n", $contents)
        !! nqp::split("\n", $contents);

    for @lines -> $l {
        my $m := $l ~~ / ^ '# todo ' .*? (\d+)? .*? ':' (\S+) '<' (.*) '>'/;
        if $m {
            my $to-todo := $m[0] ?? nqp::radix(10, $m[0], 0, 0)[0] !! 1;
            todo($m[2], $to-todo) if $m[1] eq $vm || $m[1] eq 'any';
        }
        else {
            next if $l ~~ /^ \s* '#' | ^ \s* $ /;
            test_line($l);
            $tests := $tests + 1;
        }
    }
    say("# done with file $fn");
}
say("1..$tests");


# vim: ft=perl6
