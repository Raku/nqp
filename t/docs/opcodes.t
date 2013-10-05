#! nqp

use NQPHLL;

my %documented_ops := nqp::hash();

my @doc_lines := nqp::split("\n", nqp::readallfh(nqp::open("docs/ops.markdown","r")));
for @doc_lines -> $line {
    next unless $line ~~ / ^ '* ' .* '(' /;
    $line := nqp::substr2($line, 3);
    $line := nqp::split("(", $line)[0];
    %documented_ops{$line} := 1 ;
}

my %jvm_ops := nqp::hash();
my @jvm_lines := nqp::split("\n", nqp::readallfh(nqp::open("src/vm/jvm/QAST/Compiler.nqp","r")));
for @jvm_lines -> $line {
    next unless $line ~~ / 'map_classlib_core_op' | 'add_core_op' | 'map_jvm_core_op' /;
    $line := nqp::split("'", $line)[1];
    next unless nqp::chars($line);
    %jvm_ops{$line} := 1;
}

# These are harder to tease out of the definitions in java, so add them manually
for <if unless while until repeat_while repeat_until> -> $op_name {
    %jvm_ops{$op_name} := 1;
}

# All the jvm ops must be documented

for %jvm_ops -> $jvm_op {
    ok(%documented_ops{$jvm_op}, "JVM op '$jvm_op' is documented");
}

for %documented_ops -> $doc_op {
    ok(%jvm_ops{$doc_op}, "documented op '$doc_op' exists in the JVM");
}

my %pvm_ops := nqp::hash();
my @pvm_lines := nqp::split("\n", nqp::readallfh(nqp::open("src/vm/parrot/QAST/Operations.nqp","r")));
for @pvm_lines -> $line {
    next unless $line ~~ / 'add_core_op' | 'add_core_pirop_mapping' /;
    $line := nqp::split("'", $line)[1];
    next unless nqp::chars($line);
    %pvm_ops{$line} := 1;
}

# All the pvm ops must be documented

for %pvm_ops -> $pvm_op {
    ok(%documented_ops{$pvm_op}, "PVM op '$pvm_op' is documented");
}

for %documented_ops -> $doc_op {
    ok(%pvm_ops{$doc_op}, "documented op '$doc_op' exists in the PVM");
}
