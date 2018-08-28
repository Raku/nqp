#!/usr/bin/env nqp

# create a line => words splitting function
my $line := ' #   one  two ';

say("\$line: '$line'");

my @w := words($line);

say("'$line' => words");
for @w {
    say("  word: $_");
}

sub words($line) {
    my @arr := nqp::split(' ', $line);
    my @words := [];
    for @arr {
        my $s := $_;
        # remove any whitespace
        $s := subst($s, /\s+/, '', :global);
        next if !$s;
        @words.push($s);
    }

    return @words;
}
