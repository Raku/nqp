# The different types of js things a Chunk expr can be
my $T_OBJ  := 0; 
my $T_INT  := 1; # We use a javascript number but always treat it as a 32bit integer
my $T_NUM  := 2; # We use a javascript number for that
my $T_STR  := 3; # We use a javascript str for that
my $T_BOOL := 4; # Something that can be used in boolean context in javascript. To the user it should be presented as a 0 or 1
my $T_VOID := -1; # Value of this type shouldn't exist, we use a "" as the expr
my $T_NONVAL := -2; # something that is not a nqp value

my $T_ARGS := -3; # comma separated arguments to a js call
my $T_ARGS_ARRAY := -4; # an array of arguments to a js call

role Joinable {
    method join() {
        my @strs := nqp::list_s();
        self.collect(@strs);
        nqp::join('', @strs);
    }
}

class Chunk does Joinable {
    has int $!type; # the js type of $!expr
    has str $!expr; # a javascript expression without side effects
    has $!node; # a QAST::Node that contains info for source maps
    has $!setup; # stuff that needs to be executed before the value of $!expr can be used, this contains strings and Chunks.

    method new($type, $expr, $setup = nqp::null(), :$node) {
        my $obj := nqp::create(self);
        $obj.BUILD($type, $expr, $setup, :$node);
        $obj
    }

    method void(*@setup, :$node) {
        self.new($T_VOID, "", @setup, :$node);
    }

    method BUILD($type, $expr, @setup, :$node) {
        $!type := $type;
        $!expr := $expr;
        $!setup := @setup;
        $!node := $node if nqp::defined($node);
    }

    method collect(@strs, :$escape) {
        if nqp::isnull($!setup) {
        }
        elsif nqp::istype($!setup, Chunk) {
            $!setup.collect(@strs, :$escape);
        }
        else {
            for $!setup -> $part {
                if nqp::isstr($part) {
                    nqp::push_s(@strs, $escape ?? nqp::escape($part) !! $part);
                }
                else {
                    $part.collect(@strs, :$escape);
                }
            }
        }
    }
    
    method with_source_map_info() {
        my @parts;
        if nqp::isnull($!setup) {
        }
        elsif nqp::istype($!setup, Chunk) {
            nqp::push(@parts, $!setup.with_source_map_info);
        }
        else {
            for $!setup -> $part {
                if nqp::isstr($part) {
                    nqp::push(@parts,quote_string($part, :json));
                }
                else {
                    nqp::push(@parts,$part.with_source_map_info);
                }
            }
        }
        my $parts := '[' ~ nqp::join(',', @parts) ~ ']';
        if nqp::defined($!node) && $!node.node {
            my $node := $!node.node;
            my $location := HLL::Compiler.line_and_column_of($node.orig(), $node.from(), :cache(1));
            "\{\"line\": {nqp::atpos_i($location, 0)}, \"column\": {nqp::atpos_i($location, 1)}, \"parts\": $parts\}";
        }
        else {
            $parts;
        }
    }

    method source_map_debug() {
        my $js := ''; 
        if nqp::isnull($!setup) {
        }
        elsif nqp::istype($!setup, Chunk) {
            $js := $js ~ $!setup.source_map_debug;
        }
        else {
            for $!setup -> $part {
               if nqp::isstr($part) {
                  $js := $js ~ $part;
               }
               else {
                  $js := $js ~ $part.source_map_debug;
               }
            }
        }

        if nqp::defined($!node) && $!node.node {
            my $node := $!node.node;
            my $line_and_column := HLL::Compiler.line_and_column_of($node.orig(), $node.from(), :cache(1));
            my $where := nqp::atpos_i($line_and_column, 0) ~ ":" ~ nqp::atpos_i($line_and_column, 1);
            "/* LINE $where */\n" ~ $js ~ "/* END $where */"
        }
        else {
            $js;
        }
    }

    method type() {
        $!type;
    }

    method expr() {
        $!expr;
    }

    method setup() {
        $!setup;
    }

    method node() {
        $!node;
    }

    method is_args_array() {
        $!type == $T_ARGS_ARRAY;
    }
}

class ChunkCPS is Chunk {
    has $!cont;

    method new($type, $expr, @setup, $cont, :$node) {
        my $obj := nqp::create(self);
        $obj.BUILD($type, $expr, @setup, $cont, :$node);
        $obj
    }

    method BUILD($type, $expr, @setup, $cont, :$node) {
        Chunk.HOW.method_table(Chunk)<BUILD>(self, $type, $expr, @setup, :$node);
        $!cont := $cont;
    }

    method cont() {
        $!cont;
    }
}

class ChunkEscaped does Joinable {
    has @!setup;

    method new(@setup) {
        my $obj := nqp::create(self);
        $obj.BUILD(@setup);
        $obj
    }

    method BUILD(@setup) {
        @!setup := @setup;
    }

    method with_source_map_info() {
        self.join;
    }

    method collect(@strs, :$escape) {
        if $escape {
            nqp::die("Double escaping NIY");
        }
        nqp::push_s(@strs, '"');
        for @!setup -> $part {
            if nqp::isstr($part) {
                nqp::push_s(@strs, nqp::escape($part));
            }
            else {
                $part.collect(@strs, :escape(1));
            }
        }
        nqp::push_s(@strs, '"');
    }
}
