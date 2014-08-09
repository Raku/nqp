use QASTNode;

# The different types of js things a Chunk expr can be
my $T_OBJ  := 0; 
my $T_INT  := 1; # We use a javascript number but always treat it as a 32bit integer
my $T_NUM  := 2; # We use a javascript number for that
my $T_STR  := 3; # We use a javascript str for that
my $T_VOID := -1; # Value of this type shouldn't exist, we use a "" as the expr

class Chunk {
    has int $!type; # the js type of $!expr
    has str $!expr; # a javascript expression without side effects
    has $!node; # a QAST::Node that contains info for source maps
    has @!setup; # stuff that needs to be executed before the value of $!expr can be used, this contains strings and Chunks.

    method new($type, $expr, @setup, :$node) {
        my $obj := nqp::create(self);
        $obj.BUILD($type, $expr, @setup, :$node);
        $obj
    }

    method BUILD($type, $expr, @setup, :$node) {
        $!type := $type;
        $!expr := $expr;
        @!setup := @setup;
        $!node := $node if nqp::defined($node);
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

    method type() {
        $!type;
    }

    method expr() {
        $!expr;
    }
}

class QAST::OperationsJS {
    my %ops;

    method add_op($op, $cb) {
        %ops{$op} := $cb;
    }

    QAST::OperationsJS.add_op('add_n', sub ($comp, $node, :$want) {
        my $a := $comp.as_js($node[0], :want($T_NUM));
        my $b := $comp.as_js($node[1], :want($T_NUM));
        Chunk.new($T_NUM, "({$a.expr} + {$b.expr})", [$a, $b], :$node);
    });

    QAST::OperationsJS.add_op('say', sub ($comp, $node, :$want) {
        my $arg := $comp.as_js($node[0], :want($T_STR));
        Chunk.new($T_VOID, "" , [$arg, "nqp.op.say({$arg.expr});\n"], :$node);
    });

    method compile_op($comp, $op, :$want) {
        my str $name := $op.op;
        if nqp::existskey(%ops, $name) {
            %ops{$name}($comp, $op, :$want);
        } else {
            Chunk.new($T_VOID, "", ["//QAST::Op {$op.op}\n"]);
        }
    }
}

class QAST::CompilerJS {
    method coerce($chunk, $desired) {
        my $got := $chunk.type;
        if $got != $desired {
            if $got == $T_INT && $desired == $T_NUM {
                # we store both as a javascript number, and 32bit integers fit into doubles
                return $chunk;
            }
            if $desired == $T_STR {
                if $got == $T_INT || $got == $T_NUM {
                    return Chunk.new($T_STR, $chunk.expr ~ '.toString()', [$chunk]);
                }
            }
            return Chunk.new($desired, "coercion($got, $desired, {$chunk.expr})", []) #TODO
        }
        $chunk;
    }


    # turn a string into a javascript literal
    method quote_string($str) {
        # This could be simplified a lot when running on none-parrot nqps, as most of the complexity is required to transform \x{...}  which is parrot nqp::escape specific

        my $out := '';
        my $quoted := nqp::escape($str);

        # We use a lot of variables to keep track of the state as we can only iterate the chars sequentialy
        # nqp::escape on nqp-p returns \x{..} on parrot which we have to transform 
        my $backslash := 0;
        my $x := 0;
        my $curly := 0;

        my $escape := '';

        for nqp::split('',$quoted~'') -> $c {
            if $backslash && $c eq 'e' {
                $out := $out ~ 'x1b';
            } elsif $backslash && $c eq 'a' {
                $out := $out ~ 'x07';
            } elsif $backslash && $c eq 'x' {
                $x := 1;
            } elsif $x && $c eq '{' {
                $x := 0;
                $curly := 1;
            } elsif $curly && $c eq '}' {
               $out := $out ~ 'u'~nqp::x("0",4-nqp::chars($escape))~$escape;
               $escape := '';
               $curly := 0;
            } elsif $curly {
                $escape := $escape ~ $c;
            } else {
                $out := $out ~ $c;
            }
            $backslash := !$backslash && $c eq '\\';
        }
        "\""~$out~"\"";
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
        Chunk.new('?', $T_INT, @setup);
    }

    multi method as_js(QAST::Block $node, :$want) {
        # TODO wrap the statements in a block
        my $stmts := self.compile_all_the_statements($node, $want);
        $stmts;
    }

    multi method as_js(QAST::IVal $node, :$want) {
        Chunk.new($T_INT,'('~$node.value()~')',[],:$node);
    }

    multi method as_js(QAST::SVal $node, :$want) {
        Chunk.new($T_STR,self.quote_string($node.value()),[],:$node);
    }

    multi method as_js(QAST::Stmts $node, :$want) {
        self.compile_all_the_statements($node, $want);
    }

    multi method as_js(QAST::VM $node, :$want) {
        # We ignore QAST::VM as we don't support a js specific one, and the ones nqp generate contain parrot specific stuff we don't care about.
        Chunk.new($T_VOID,'',[]);
    }

    multi method as_js(QAST::Op $node, :$want) {
        QAST::OperationsJS.compile_op(self, $node, :$want);
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
        Chunk.new($T_VOID,"{$unknown.HOW.name($unknown)}?",["//Unknown QAST node type " ~ $unknown.HOW.name($unknown) ~ "\n"]);
#        nqp::die("Unknown QAST node type " ~ $unknown.HOW.name($unknown));
    }

    method emit($ast) {
       "var nqp = require('nqp-runtime');\n"
       ~ "\nvar top_ctx = nqp.top_context();\n"
       ~ self.as_js($ast).join
    }
}
