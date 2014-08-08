use QASTNode;

# The different types of js objects a QAST::Node returns
my $T_OBJ  := 0; 
my $T_INT  := 1; # We use a javascript number but always treat it as a 32bit integer
my $T_NUM  := 2; # We use a javascript number for that
my $T_STR  := 3; # We use a javascript str for that
my $T_VOID := -1;


class Chunk {
    has int $!type;
    has str $!expr;
    has @!setup;
    method new($type, $expr, @setup, :$node) {
        my $obj := nqp::create(self);
        $obj.BUILD($type, $expr, @setup, :$node);
        $obj
    }
    method BUILD($type, $expr, @setup, :$node) {
        $!type := $type;
        $!expr := $expr;
        @!setup := @setup;
    }
    method join() {
        my $js := ''; 
        for @!setup -> $part {
           if nqp::isstr($part) {
              $js := $js ~ $part;
           } else {
              $js := $js ~ $part.join;
           }
        }
        $js;
    }
}

class QAST::CompilerJS {

    method coerce($chunk, $desired) {
        my $got := $chunk.type;
        if $got != $desired {
            'coercion(...)' #TODO
        }
        $got;
    }

    sub want($node, $desired) {
        # TODO
    }

    proto method as_js($node, :$want) {
        if nqp::defined($want) {
            if nqp::istype($node, QAST::Want) {
                "// TODO: QAST::Want\n"
#                self.coerce(self.as_jast(want($node, $*WANT)), $*WANT)
            }
            else {
                self.coerce({*}, $want)
            }
        }
        else {
            {*}
        }
    }

    method compile_all_the_statements(QAST::Stmts $node, $want) {
        my @setup;
        my @stmts := $node.list;
        my int $n := +@stmts;

#        my $all_void := $*WANT == $T_VOID;

        my int $i := 0;
        for @stmts {
            my $chunk := self.as_js($_);
            nqp::push(@setup, $chunk);
        }
        Chunk.new('0', $T_INT, @setup);
    }

    multi method as_js(QAST::Block $node, :$want) {
        # TODO wrap the statements in a block
        my $stmts := self.compile_all_the_statements($node, $want);
        $stmts;
    }

    multi method as_js(QAST::Stmts $node, :$want) {
        self.compile_all_the_statements($node, $want);
    }

    multi method as_js(QAST::CompUnit $node, :$want) {
        # Should have a single child which is the outer block.
        if +@($node) != 1 || !nqp::istype($node[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
        }

        # Compile the block.
        my $block_js := self.as_js($node[0]);

        $block_js;
    }

    multi method as_js($unknown, :$want) {
        Chunk.new("v",'',["//Unknown QAST node type " ~ $unknown.HOW.name($unknown) ~ "\n"]);
#        nqp::die("Unknown QAST node type " ~ $unknown.HOW.name($unknown));
    }


    method emit($ast) {
       "var nqp = require('nqp-runtime');\n"
       ~ "\nvar top_ctx = nqp.top_context();\n"
       ~ self.as_js($ast).join
    }
}
