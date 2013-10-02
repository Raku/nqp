#! nqp

use NQPHLL;

my %documented_ops := nqp::hash();

my @doc_lines := nqp::split("\n", nqp::readallfh(nqp::open("docs/ops.markdown","r")));
for @doc_lines -> $line {
    next unless $line ~~ / ^ '*  ' /;
    $line := nqp::substr2($line, 4);
    $line := nqp::split("(", $line)[0];
    %documented_ops{$line} := 1 ;
}

my %jvm_ops := nqp::hash();
my @jvm_lines := nqp::split("\n", nqp::readallfh(nqp::open("src/vm/jvm/QAST/Compiler.nqp","r")));
for @jvm_lines -> $line {
    next unless $line ~~ / 'map_classlib_core_op' | 'add_core_op' | 'map_jvm_core_op' /;
    $line := nqp::split("'", $line)[1];
    %jvm_ops{$line} := 1;
}

# All the jvm ops must be documented

for %jvm_ops -> $jvm_op {
    ok(%documented_ops{$jvm_op}, "JVM op '$jvm_op' is documented");
}

for %documented_ops -> $doc_op {
    ok(%jvm_ops{$doc_op}, "documented op '$doc_op' exists in the JVM");
}
