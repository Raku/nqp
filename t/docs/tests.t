#!/usr/bin/env raku

# Do all the documented opcodes have tests? ... is the question we want to
# ask. This test asks "does the opcode appear in nqp::" form in the
# test suite, which is close.

use Test;

my %documented-ops;

for "docs/ops.markdown".IO.lines -> $line {
    next unless $line ~~ / ^ '* ' .* '(' /;
    my $opcode = $line.substr(3).split('(')[0];
    %documented-ops{$opcode}  = True;
}

# Include indirect testing by presence in bootstrapped files.
my @folders = <t src/NQP src/how src/core src/HLL src/QRegex>;

# Recursively get files from to plevel folders specified
my @files;
while (@folders) {
    my $folder = @folders.shift;

    for dir($folder) -> $item {
        if $item.d {
            @folders.push: $item;
        } else {
            @files.push: $item;
        }
    }
}


my %tested-ops;

for @files -> $file {
    for $file.lines -> $line {
        for $line ~~ m:g/ 'nqp::' (<[a..z0..9_]>+?) '(' /  -> $match {
            %tested-ops{~$match[0]} = True;
        }
        for $line ~~ m:g/ ':op(\'' (<[a..z0..9_]>+?) '\')' / -> $match {
            %tested-ops{~$match[0]} = True;
        }
    }
}


# All the documented ops must be tested, vice versa

for %tested-ops.keys.sort -> $op {
    ok(%documented-ops{$op}, "tested op '$op' is documented");
}

for %documented-ops.keys.sort -> $op {
    ok(%tested-ops{$op}, "documented op '$op' is tested");
}
