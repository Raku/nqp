#! nqp

# Do all the documented opcodes have tests? ... is the question we want to
# ask. This test asks "does the opcode appear in nqp::" form in the
# test suite.

my %documented_ops := nqp::hash();

my @doc_lines := nqp::split("\n", nqp::readallfh(nqp::open("docs/ops.markdown","r")));
for @doc_lines -> $line {
    next unless $line ~~ / ^ '* ' .* '(' /;
    $line := nqp::substr2($line, 3);
    $line := nqp::split("(", $line)[0];
    %documented_ops{$line} := 1 ;
}

# Include indirect testing by presence in bootstrapped files.
my @folders := nqp::list('t', 'src/NQP', 'src/how', 'src/core', 'src/HLL', 'src/QRegex');

my @files := nqp::list();
while (nqp::elems(@folders)) {
    my $dh := nqp::opendir(@folders.shift);
    my $f  := nqp::nextfiledir($dh);
    while (! nqp::isnull_s($f)) {
        my $isdir := nqp::stat($f,2); # TODO, use nqp::const
        if ($isdir == 1) {
            nqp::push(@folders,$f);
        } else {
            nqp::push(@files, $f);
        }
        $f  := nqp::nextfiledir($dh);
    }
}

my %tested_ops := nqp::hash();

for @files -> $file {
    my @test_lines := nqp::split("\n", nqp::readallfh(nqp::open($file,"r")));
    for @test_lines -> $line {
        my $match := $line ~~ / 'nqp::' (<[a..z0..9_]>+?) '(' /;
        if (?$match) {
            %tested_ops{$match[0]} := 1;
        }
        $match := $line ~~ / ':op(\'' (<[a..z0..9_]>+?) '\')' /;
        if (?$match) {
            %tested_ops{$match[0]} := 1;
        }
    }
}

# All the documented ops must be tested, vice versa

for %tested_ops -> $tested_op {
    ok(%documented_ops{$tested_op}, "tested op '$tested_op' is documented");
}

for %documented_ops -> $doc_op {
    ok(%tested_ops{$doc_op}, "documented op '$doc_op' is tested");
}
