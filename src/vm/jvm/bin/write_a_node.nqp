my $OBJ  := 0;
my $INT  := 1;
my $NUM  := 2;
my $STR  := 3;

my @types;
@types[$OBJ] := '';
@types[$INT] := 'Int';
@types[$NUM] := 'Num';
@types[$STR] := 'Str';

my @return_type;
@return_type[$OBJ] := 'Object';
@return_type[$INT] := 'long';
@return_type[$NUM] := 'double';
@return_type[$STR] := 'String';

my sub ucfirst($str) {
    nqp::uc(nqp::substr($str, 0, 1)) ~ nqp::substr($str, 1);
}

my $package := 'expression';

sub add_simple_op($name, $return_type, $args) {
    my $out := '';
    $out := $out ~ "package org.perl6.nqp.truffle.nodes.$package;\n";
    $out := $out ~ 'import com.oracle.truffle.api.frame.VirtualFrame;' ~ "\n";
    $out := $out ~ 'import com.oracle.truffle.api.nodes.NodeInfo;' ~ "\n";
    $out := $out ~ 'import org.perl6.nqp.truffle.nodes.NQPNode;' ~ "\n";
    $out := $out ~ 'import org.perl6.nqp.dsl.Deserializer;' ~ "\n";
    $out := $out ~ '' ~ "\n";

    $out := $out ~ "@NodeInfo(shortName = \"$name\")" ~ "\n"; 
    my $java_name := 'NQP' ~ ucfirst($name) ~ 'Node';

    for <_i Int _n Num _s Str _I Bigint _u UInt _b CodeBlock> -> $suffix, $java_suffix {
        $java_name := subst($java_name, /$suffix/, $java_suffix);
    }

    $out := $out ~ "public final class $java_name extends NQPNode \{" ~ "\n";

    my @children;


    if nqp::elems($args) == 1 {
        @children := ['argNode'];
    }
    elsif nqp::elems($args) == 2 {
        @children := ['leftNode', 'rightNode'];
    }
    else {
        my $char_code := nqp::ord('a');
        for $args {
            @children.push(nqp::chr($char_code) ~ 'Node');
            $char_code := $char_code + 1;
        }
    }


    for @children -> $child {
        $out := $out ~ "    @Child private NQPNode $child;" ~ "\n";
    }

    my @sig;
    for @children -> $child {
        @sig.push("NQPNode $child");
    }

    $out := $out ~ "\n";
    $out := $out ~ "    @Deserializer\n";

    $out := $out ~ "    public $java_name({nqp::join(', ', @sig)}) \{" ~ "\n";
    for @children -> $child {
    $out := $out ~ "        this.$child = $child;" ~ "\n";
    }
    $out := $out ~ "    \}" ~ "\n";

    $out := $out ~ "" ~ "\n";

    my @args;
    my $i := 0;
    for @children -> $child {
        @args.push("$child.execute{@types[$args[$i]]}(frame)");
        $i := $i + 1;
    }

    $out := $out ~ "    @Override\n";
    $out := $out ~ "    public {@return_type[$return_type]} execute{@types[$return_type]}(VirtualFrame frame) \{" ~ "\n";
    $out := $out ~ "        //return $name({nqp::join(', ', @args)})" ~ ";\n";
    $out := $out ~ "    \}" ~ "\n";

    $out := $out ~ "\}" ~ "\n";

    my $path := "src/vm/jvm/runtime/org/perl6/nqp/truffle/nodes/$package/$java_name.java";
    if (nqp::stat($path, nqp::const::STAT_EXISTS) == 1) {
        say("Did NOT OVERWRITE $path");
    } else {
        say("Wrote $path");
        spurt($path, $out);
    }
}


add_simple_op('falsey', $INT, [$OBJ]);
add_simple_op('istrue', $INT, [$OBJ]);

