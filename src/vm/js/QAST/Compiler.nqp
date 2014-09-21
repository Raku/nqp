use QASTNode;

# The different types of js things a Chunk expr can be
my $T_OBJ  := 0; 
my $T_INT  := 1; # We use a javascript number but always treat it as a 32bit integer
my $T_NUM  := 2; # We use a javascript number for that
my $T_STR  := 3; # We use a javascript str for that
my $T_BOOL := 4; # Something that can be used in boolean context in javascript. To the user it should be presented as a 0 or 1
my $T_VOID := -1; # Value of this type shouldn't exist, we use a "" as the expr
my $T_NONVAL := -2; # something that is not a nqp value

# turn a string into a javascript literal
sub quote_string($str) {
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
    
    method with_source_map_info() {
        my @parts;
        for @!setup -> $part {
            if nqp::isstr($part) {
                nqp::push(@parts,quote_string($part));
            } else {
                nqp::push(@parts,$part.with_source_map_info);
            }
        }
        my $parts := '[' ~ nqp::join(',', @parts) ~ ']';
        if nqp::defined($!node) && $!node.node {
            my $node := $!node.node;
            my $line := HLL::Compiler.lineof($node.orig(), $node.from(), :cache(1));
            "\{\"line\": $line, \"parts\": $parts\}";
        } else {
            $parts;
        }
    }

    method type() {
        $!type;
    }

    method expr() {
        $!expr;
    }

    method setup() {
        @!setup;
    }
}

# It only makes sense to serialize a serialization context once, so when cross compiling we cache the result
role SerializeOnce {
    method serialize_sc_without_caching($sc) {
        # Serialize it.

        # HACK - we are avoiding an  MoarVM specific optimalization
        # On MoarVM if an sc is on top of the compiling_scs stackthread the serialized data is stored on the thread context
        # We have no way of accessing it, so we try to avoid that
        # If we put a fake sc on top of the stack it won't be cached
        # we avoid anything that creates a write barrier while it's on top
        my $fake_stack_top_sc := nqp::createsc('JS_HACK');
        nqp::pushcompsc($fake_stack_top_sc);

        my $sh := nqp::list_s();
        my $serialized := nqp::serialize($sc, $sh);

        # HACK - now we pop our fake sc
        nqp::popcompsc();

        # Now it's serialized, pop this SC off the compiling SC stack.
        nqp::popcompsc();
        [$serialized,$sh];
    }

    method serialize_sc($sc) {
        if %*SC_CACHE<enabled> {
            my $handle := nqp::scgethandle($sc);
            if nqp::existskey(%*SC_CACHE,$handle) {
              %*SC_CACHE{$handle};
            } else {
              %*SC_CACHE{$handle}  := self.serialize_sc_without_caching($sc);
            }
        } else {
          self.serialize_sc_without_caching($sc);
        }
    }
}

# TODO think if we should be using such a complicated name mangling scheme
# It's separated into a role so we may replace it with an different scheme when we won't to reduce the output size
role DWIMYNameMangling {
    # List taken from https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Reserved_Words
    my %reserved_words;
    for nqp::split(" ",'break case catch continue debugger default delete do else finally for function if in instanceof new return switch this throw try typeof var void while with implements interface let package private protected public static yield class enum export extends import super') {
        %reserved_words{$_} := 1;
    }
    method is_reserved_word($identifier) {
        nqp::existskey(%reserved_words, $identifier);
    }

    my %mangle;
    %mangle<_> := 'UNDERSCORE';
    %mangle<&> := 'AMPERSAND';
    %mangle<:> := 'COLON';
    %mangle<;> := 'SEMI';
    %mangle<<> := 'LESS';
    %mangle<>> := 'MORE';
    %mangle<{> := 'CURLY_OPEN';
    %mangle<}> := 'CURLY_CLOSE';
    %mangle<[> := 'BRACKET_OPEN';
    %mangle<]> := 'BRACKET_CLOSE';
    %mangle<(> := 'PAREN_OPEN';
    %mangle<)> := 'PAREN_CLOSE';
    %mangle<~> := 'TILDE';
    %mangle<+> := 'PLUS';
    %mangle<=> := 'EQUAL';
    %mangle<?> := 'QUESTION';
    %mangle<!> := 'BANG';
    %mangle</> := 'SLASH';
    %mangle<*> := 'STAR';
    %mangle<-> := 'MINUS';
    %mangle<@> := 'AT';
    %mangle<,> := 'COMMA';
    %mangle<%> := 'PERCENT';
    %mangle<¢> := 'CENT';
    %mangle< > := 'SPACE';
    %mangle<'> := 'SINGLE';
    %mangle<"> := 'QUOTE';
    %mangle<^> := 'CARET';
    %mangle<.> := 'DOT';
    %mangle<|> := 'PIPE';
    %mangle<`> := 'BACKTICK';
    %mangle<$> := 'DOLLAR';
    %mangle<\\> := 'BACKSLASH';

    method mangle_name($name) {
        if self.is_reserved_word($name) {$name := "_$name"}

        my $mangled := '';

        for nqp::split('',$name) -> $char {
            if nqp::iscclass(nqp::const::CCLASS_ALPHANUMERIC, $char, 0) {
                $mangled := $mangled ~ $char;
            } else {
                if nqp::existskey(%mangle, $char) {
                    $mangled := $mangled ~ '_' ~ %mangle{$char} ~ '_';
                } else {
                    $mangled := $mangled ~ '_' ~ nqp::ord($char) ~ '_';
                }
            }
        }

        $mangled;
    }
}

class QAST::OperationsJS {
    my %ops;


    sub add_op($op, $cb) {
        %ops{$op} := $cb;
    }

    sub op_template($comp, $node, $return_type, @argument_types, $cb) {
        my @exprs;
        my @setup;
        my $i := 0;
        for $node.list -> $arg {
            my $chunk := $comp.as_js($arg, :want(@argument_types[$i]));
            @exprs.push($chunk.expr);
            @setup.push($chunk);
            $i := $i + 1;
        }
        Chunk.new($return_type, $cb(|@exprs), @setup, :$node);
    }
    sub add_simple_op($op, $return_type, @argument_types, $cb) {
        %ops{$op} := sub ($comp, $node, :$want) {
            op_template($comp, $node, $return_type, @argument_types, $cb);
        };
    }

    sub add_sideffect_op($op, $return_type, @argument_types, $cb) {
        %ops{$op} := sub ($comp, $node, :$want) {
            $comp.stored_result(op_template($comp, $node, $return_type, @argument_types, $cb), :$want);
        };
    }

    sub add_infix_op($op, $left_type, $syntax, $right_type, $return_type) {
        %ops{$op} := sub ($comp, $node, :$want) {
            my $left  := $comp.as_js($node[0], :want($left_type));
            my $right := $comp.as_js($node[1], :want($right_type));
            Chunk.new($return_type, "({$left.expr} $syntax {$right.expr})", [$left, $right], :$node);
        };
    }

    add_infix_op('add_n', $T_NUM, '+', $T_NUM, $T_NUM);
    add_infix_op('sub_n', $T_NUM, '-', $T_NUM, $T_NUM);
    add_infix_op('mul_n', $T_NUM, '*', $T_NUM, $T_NUM);
    # TODO - think about divide by zero
    add_infix_op('div_n', $T_NUM, '/', $T_NUM, $T_NUM);
    add_infix_op('mod_n', $T_NUM, '%', $T_NUM, $T_NUM);

    add_simple_op('neg_n', $T_NUM, [$T_NUM], sub ($num) {"(-$num)"});
    add_simple_op('neg_i', $T_INT, [$T_INT], sub ($num) {"(-$num)"});

    add_infix_op('concat', $T_STR, '+', $T_STR, $T_STR);

    add_infix_op('isle_n', $T_NUM, '<=', $T_NUM, $T_BOOL);
    add_infix_op('islt_n', $T_NUM, '<', $T_NUM, $T_BOOL);
    add_infix_op('isgt_n', $T_NUM, '>', $T_NUM, $T_BOOL);
    add_infix_op('isge_n', $T_NUM, '>=', $T_NUM, $T_BOOL);
    add_infix_op('iseq_n', $T_NUM, '==', $T_NUM, $T_BOOL);
    add_infix_op('isne_n', $T_NUM, '!=', $T_NUM, $T_BOOL);

    add_infix_op('iseq_i', $T_INT, '==', $T_INT, $T_BOOL);
    add_infix_op('iseq_s', $T_STR, '==', $T_STR, $T_BOOL);
    add_infix_op('isne_s', $T_STR, '!=', $T_STR, $T_BOOL);

    add_infix_op('bitor_i', $T_INT, '|', $T_INT, $T_INT);
    add_infix_op('bitand_i', $T_INT, '&', $T_INT, $T_INT);
    add_infix_op('bitxor_i', $T_INT, '^', $T_INT, $T_INT);

    add_infix_op('eqaddr', $T_OBJ, '===', $T_OBJ, $T_BOOL);

    # Integer arithmetic
    add_simple_op('add_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a + $b) | 0)"});
    add_simple_op('sub_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a - $b) | 0)"});
    add_simple_op('div_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a / $b) | 0)"});
    add_simple_op('mul_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"Math.imul($a,$b)"});

    sub add_cmp_op($op, $type) {
        add_simple_op($op, $T_INT, [$type, $type], sub ($a, $b) {
            "($a < $b ? -1 : ($a == $b ? 0 : 1))"
        });
    }

    add_cmp_op('cmp_i', $T_INT);
    add_cmp_op('cmp_n', $T_NUM);
    add_cmp_op('cmp_s', $T_STR);

    for <preinc predec> -> $op {
        add_op($op, sub ($comp, $node, :$want) {
            my $action := $op eq 'preinc' ?? 'add_i' !! 'sub_i';
            $comp.as_js(
                QAST::Op.new(
                    :op('bind'),
                    $node[0],
                    QAST::Op.new(:op($action),$node[0],QAST::IVal.new(:value(1)))
                ),
                :$want
            );
        });
    }

    for <postinc postdec> -> $op {
        add_op($op, sub ($comp, $node, :$want) {
            my $tmp := $*BLOCK.add_tmp();
            my $var := $comp.as_js($node[0], :want($T_INT));
            my $action := $op eq 'postinc' ?? 'add_i' !! 'sub_i';
            my $do_action := $comp.as_js(
                QAST::Op.new(
                    :op('bind'),
                    $node[0],
                    QAST::Op.new(:op($action),$node[0],QAST::IVal.new(:value(1)))
                ),
                :want($T_VOID)
            );
            Chunk.new($T_INT, $tmp, [$var, "$tmp = {$var.expr};\n", $do_action]);
       });
    }

    add_simple_op('chars', $T_INT, [$T_STR], sub ($string) {"$string.length"});

    add_simple_op('join', $T_STR, [$T_STR, $T_OBJ], sub ($delim, $list) {"$list.join($delim)"});

    add_simple_op('index', $T_INT, [$T_STR, $T_STR, $T_INT], sub ($string, $pattern, $from?) {
        nqp::defined($from) ?? "$string.indexOf($pattern,$from)" !! "$string.indexOf($pattern)";
    });

    add_simple_op('substr', $T_STR, [$T_STR, $T_INT, $T_INT], sub ($string, $start, $length?) {
        nqp::defined($length) ?? "$string.substr($start,$length)" !! "$string.substr($start)";
    });


    add_simple_op('chr', $T_STR, [$T_INT], sub ($code) {"String.fromCharCode($code)"});

    add_simple_op('lc', $T_STR, [$T_STR], sub ($string) {"$string.toLowerCase()"});
    add_simple_op('uc', $T_STR, [$T_STR], sub ($string) {"$string.toUpperCase()"});

    add_simple_op('flip', $T_STR, [$T_STR], sub ($string) {"$string.split('').reverse().join('')"});

    add_simple_op('ord', $T_INT, [$T_STR, $T_INT], sub ($string, $pos='0') {"$string.charCodeAt($pos)"});

    add_simple_op('null', $T_OBJ, [], sub () {"null"});
    add_simple_op('isnull', $T_BOOL, [$T_OBJ], sub ($obj) {"($obj === null)"});

    add_simple_op('escape', $T_STR, [$T_STR], sub ($string) {"nqp.op.escape($string)"});
    add_simple_op('x', $T_STR, [$T_STR, $T_INT], sub ($string, $times) {"nqp.op.x($string,$times)"});

    add_sideffect_op('getcomp', $T_OBJ, [$T_STR], sub ($lang) {"nqp.op.getcomp($lang)"});

    add_sideffect_op('say', $T_VOID, [$T_STR], sub ($arg) {"nqp.op.say({$arg})"});
    add_sideffect_op('print', $T_VOID, [$T_STR], sub ($arg) {"nqp.op.print({$arg})"});

    add_sideffect_op('open', $T_OBJ, [$T_STR, $T_STR], sub ($file, $mode) {"nqp.op.open($file,$mode)"});

    add_sideffect_op('tellfh', $T_INT, [$T_OBJ], sub ($fh) {"nqp.op.tellfh($fh)"});
    add_sideffect_op('readlinefh', $T_STR, [$T_OBJ], sub ($fh) {"nqp.op.readlinefh($fh)"});
    add_sideffect_op('readallfh', $T_STR, [$T_OBJ], sub ($fh) {"nqp.op.readallfh($fh)"});
    add_sideffect_op('printfh', $T_OBJ, [$T_OBJ, $T_STR], sub ($fh, $content) {"nqp.op.printfh($fh,$content)"});
    add_sideffect_op('closefh', $T_OBJ, [$T_OBJ], sub ($fh) {"nqp.op.closefh($fh)"});

    add_simple_op('isinvokable', $T_INT, [$T_OBJ], sub ($arg) {"nqp.op.isinvokable($arg)"});

    # TODO - think if it's the correct thing to do
    add_op('takeclosure', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_OBJ));
    });

    add_op('istrue', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_BOOL));
    });
    add_op('stringify', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_STR));
    });
    add_op('numify', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_NUM));
    });

    add_simple_op('falsey', $T_BOOL, [$T_BOOL], sub ($boolified) {"(!$boolified)"});

    add_simple_op('not_i', $T_BOOL, [$T_INT], sub ($int) {"(!$int)"});

    add_op('bind', sub ($comp, $node, :$want) {
        my @children := $node.list;
        if +@children != 2 {
            nqp::die("A 'bind' op must have exactly two children");
        }
        unless nqp::istype(@children[0], QAST::Var) {
            nqp::die("First child of a 'bind' op must be a QAST::Var");
        }

        # TODO take the type of variable into account
        my $*BINDVAL := @children[1];
        $comp.as_js(@children[0], :want($T_OBJ));
    });

    add_op('list', sub ($comp, $node, :$want) {
       my @setup;
       my @exprs;

       for $node.list -> $elem {
           my $chunk := $comp.as_js($elem, :want($T_OBJ));
           @setup.push($chunk);
           @exprs.push($chunk.expr);
       }

       Chunk.new($T_OBJ, '[' ~ nqp::join(',', @exprs) ~ ']' , @setup, :$node);
    });

    add_op('hash', sub ($comp, $node, :$want) {
       my @setup;
       Chunk.new($T_OBJ, 'nqp.hash()', @setup , :$node);
    });
    add_simple_op('ishash', $T_INT, [$T_OBJ], sub ($obj) {"nqp.op.ishash($obj)"});

    sub merge_arg_groups($groups) {
        if nqp::islist($groups) {
            my @exprs;

            my @setup := [];

            for $groups -> $group {
                @exprs.push($group.expr);
                @setup.push($group);
            }

            Chunk.new($T_NONVAL, @exprs.shift ~ '.concat(' ~ nqp::join(',', @exprs) ~ ')', $groups);
        }
    }

    add_op('call', sub ($comp, $node, :$want) {
        if $*BLOCK.is_local_lexotic($node.name) {
            my $value := $comp.as_js($node[0], :want($T_OBJ));
            return Chunk.new($want, '', [$value, "return {$value.expr};\n"]);
        }

        my $args := nqp::clone($node.list);

        my $callee := $node.name
            ?? $comp.as_js(QAST::Var.new(:name($node.name),:scope('lexical')), :want($T_OBJ))
            !! $comp.as_js(nqp::shift($args), :want($T_OBJ));

        my $compiled_args := $comp.args($args);

        my $call;
        if nqp::islist($compiled_args) {
            $compiled_args := merge_arg_groups($compiled_args);
            $call := '.apply(undefined,';
        } else {
            $call := '(';
        }

        $comp.stored_result(
            Chunk.new($T_OBJ, $callee.expr ~ $call ~ $compiled_args.expr ~ ')' , [$callee, $compiled_args], :$node), :$want);
    });


    add_op('callmethod', sub ($comp, $node, :$want) {

        my @args := nqp::clone($node.list);

        my $invocant := $comp.as_js(@args.shift, :want($T_OBJ));

        my @setup := [$invocant];

        my $method;
        if $node.name {
            if $comp.is_valid_js_identifier($node.name) {
                $method := '.' ~ $node.name;
            } else {
                $method := '[' ~ quote_string($node.name) ~ ']';
            }
        } else {
            my $method := $comp.as_js(@args.shift, :want($T_STR));
            my $tmp := $*BLOCK.add_tmp();
            @setup.push($method);
            @setup.push("$tmp := {$method.expr};\n");
            $method := "[$tmp]";
        }

        my $compiled_args := $comp.args(@args);

        my $call;
        if nqp::islist($compiled_args) {
            $compiled_args := merge_arg_groups($compiled_args);
            $call := ".apply({$invocant.expr},";
        } else {
            $call := '(';
        }

        $comp.stored_result(
            Chunk.new($T_OBJ, $invocant.expr ~ $method ~ $call ~ $compiled_args.expr ~ ')' , [$invocant, $compiled_args], :$node), :$want);

    });

    add_simple_op('split', $T_OBJ, [$T_STR, $T_STR], sub ($separator, $string) {
        "({$string} == '' ? [] : {$string}.split({$separator}))"
    });

    add_simple_op('elems', $T_INT, [$T_OBJ], sub ($list) {"($list.length)"});

    add_simple_op('islist', $T_BOOL, [$T_OBJ], sub ($obj) {"($obj instanceof Array)"});

    add_simple_op('atpos', $T_OBJ, [$T_OBJ, $T_INT], sub ($array, $index) {"$array[$index]"});

    add_sideffect_op('shift', $T_OBJ, [$T_OBJ], sub ($array) {"$array.shift()"});
    add_sideffect_op('pop', $T_OBJ, [$T_OBJ], sub ($array) {"$array.pop()"});
    add_sideffect_op('push', $T_OBJ, [$T_OBJ, $T_OBJ], sub ($array, $elem) {"$array.push($elem)"});

    add_sideffect_op('iterator', $T_OBJ, [$T_OBJ], sub ($array) {"nqp.op.iterator($array)"});

    add_simple_op('iterval', $T_OBJ, [$T_OBJ], sub ($iter) {"$iter.iterval()"});
    add_simple_op('iterkey_s', $T_STR, [$T_OBJ], sub ($iter) {"$iter.iterkey_s()"});

    add_simple_op('existskey', $T_BOOL, [$T_OBJ, $T_STR], sub ($hash, $key) {"$hash.hasOwnProperty($key)"});

    add_simple_op('existspos', $T_BOOL, [$T_OBJ, $T_INT], sub ($array, $index) {"nqp.op.existspos($array,$index)"});

    for <ceil floor abs log> -> $func {
        add_simple_op($func ~ '_n', $T_NUM, [$T_NUM], sub ($arg) {"Math.$func($arg)"});
    }

    add_simple_op('abs_i', $T_INT, [$T_INT], sub ($arg) {"Math.abs($arg)"});
    add_simple_op('pow_n', $T_NUM, [$T_NUM, $T_NUM], sub ($base, $exponent) {"Math.pow($base, $exponent)"});

    add_simple_op('radix', $T_OBJ, [$T_INT, $T_STR, $T_INT, $T_INT], sub ($radix, $str, $pos, $flags) {"nqp.op.radix($radix,$str,$pos,$flags)"});

    add_simple_op('stat', $T_INT, [$T_STR, $T_INT], sub ($path, $flag) {"nqp.op.stat($path,$flag)"});

    for <if unless> -> $op_name {
        add_op($op_name, sub ($comp, $node, :$want) {
            unless nqp::defined($want) {
                nqp::die("Unknown want");
            }

            my $operands := +$node.list;
            nqp::die("Operation '"~$node.op~"' needs either 2 or 3 operands")
                if $operands < 2 || $operands > 3;

            # The 2 operand form of if in a non-void context also uses the cond as the return value
            my $cond := $comp.as_js($node[0], :want( ($operands == 3 || $want == $T_VOID) ?? $T_BOOL !! $want));
            my $then;
            my $else;

            my $result;

            if $want != $T_VOID {
                $result := $*BLOCK.add_tmp();
            }

            # See if any immediate block wants to be passed the condition.
            my $im_then := (nqp::istype($node[1], QAST::Block) && 
                           $node[1].blocktype eq 'immediate' &&
                           $node[1].arity > 0) ?? 1 !! 0;
            my $im_else := ($operands == 3 &&
                           nqp::istype($node[2], QAST::Block) && 
                           $node[2].blocktype eq 'immediate' &&
                           $node[2].arity > 0) ?? 1 !! 0;

            # TODO if cond() -> $var {...}

            my $boolifed_cond := $comp.coerce($cond, $T_BOOL);


            if $node.op eq 'if' {
                $then := $comp.as_js($node[1], :$want);

                if $operands == 3 {
                    $else := $comp.as_js($node[2], :$want);
                } else {
                    $else := $comp.coerce($cond, $want);
                }
            } else {
                if $operands == 3 {
                    $then := $comp.as_js($node[2], :$want);
                } else {
                    $then := $comp.coerce($cond, $want);
                }
                $else := $comp.as_js($node[1], :$want);
            }


            Chunk.new($want, $result, [
                $boolifed_cond,
                "if ({$boolifed_cond.expr}) \{\n",
                $then,
                $want != $T_VOID ?? "$result = {$then.expr};\n" !! '',
                "\} else \{\n",
                $else,
                $want != $T_VOID ?? "$result = {$else.expr};\n" !! '',
                "\}\n"
            ], :node($node));
        });
    }

    add_op('for', sub ($comp, $node, :$want) {
        my $handler := 1;
        my @operands;
        my $label;
        for $node.list {
            if $_.named eq 'nohandler' { $handler := 0; }
            elsif $_.named eq 'label' { $label := $_; }
            else { @operands.push($_) }
        }
        
        if +@operands != 2 {
            nqp::die("Operation 'for' needs 2 operands");
        }
        unless nqp::istype(@operands[1], QAST::Block) {
            nqp::die("Operation 'for' expects a block as its second operand");
        }

        my $iterator := $*BLOCK.add_tmp();
        my $iterval := $*BLOCK.add_tmp();

        my $list := $comp.as_js(@operands[0], :want($T_OBJ));

        # TODO think if creating the block once, and the calling it multiple times would be faster

        my $outer     := try $*BLOCK;
        my $body := $comp.compile_block(@operands[1], $outer, :want($T_VOID), :arg($iterval));


        Chunk.new($T_VOID, '', [
            $list,
            "$iterator = nqp.op.iterator({$list.expr});\n",
            "while ($iterator.idx < $iterator.target) \{\n",
            "$iterval = $iterator.shift();\n",
            $body,
            "\}\n"
        ], :node($node));
    });

    for <while until repeat_while repeat_until> -> $op {
        add_op($op, sub ($comp, $node, :$want) {
            my $label;
            my $handler := 1;
            my @operands;
            for $node.list {
                if $_.named eq 'nohandler' { $handler := 0; }
                elsif $_.named eq 'label' { $label := $_; }
                else { @operands.push($_) }
            }

            return $comp.NYI("3 argument $op") if +@operands == 3;
            # TODO - return value
            # TODO while ... -> $cond {} 

            my $cond := $comp.as_js(@operands[0], :want($T_BOOL));
            my $body := $comp.as_js(@operands[1], :want($T_VOID));

            if $op eq 'while' || $op eq 'until' {
                my $neg := $op eq 'while' ?? '!' !! '';
                Chunk.new($T_VOID, '', [
                    "for (;;) \{\n",
                    $cond,
                    "if ($neg {$cond.expr}) \{break;\}\n",
                    $body,
                    "\}"
                ]);
            } else {
                my $neg := $op eq 'repeat_while' ?? '' !! '!';
                Chunk.new($T_VOID, '', [
                    "do \{\n",
                    $body,
                    $cond,
                    "\} while ($neg {$cond.expr});"
                ]);
            }
        });
    }

    # Constant mapping.
    my %const_map := nqp::hash(
        'CCLASS_ANY',           65535,
        'CCLASS_UPPERCASE',     1,
        'CCLASS_LOWERCASE',     2,
        'CCLASS_ALPHABETIC',    4,
        'CCLASS_NUMERIC',       8,
        'CCLASS_HEXADECIMAL',   16,
        'CCLASS_WHITESPACE',    32,
        'CCLASS_PRINTING',      64,
        'CCLASS_BLANK',         256,
        'CCLASS_CONTROL',       512,
        'CCLASS_PUNCTUATION',   1024,
        'CCLASS_ALPHANUMERIC',  2048,
        'CCLASS_NEWLINE',       4096,
        'CCLASS_WORD',          8192,
        
        'HLL_ROLE_NONE',        0,
        'HLL_ROLE_INT',         1,
        'HLL_ROLE_NUM',         2,
        'HLL_ROLE_STR',         3,
        'HLL_ROLE_ARRAY',       4,
        'HLL_ROLE_HASH',        5,
        'HLL_ROLE_CODE',        6,
        
        'CONTROL_TAKE',         32,
        'CONTROL_LAST',         16,
        'CONTROL_NEXT',         4,
        'CONTROL_REDO',         8,
        'CONTROL_SUCCEED',      128,
        'CONTROL_PROCEED',      256,
        'CONTROL_WARN',         64,
        
        'STAT_EXISTS',             0,
        'STAT_FILESIZE',           1,
        'STAT_ISDIR',              2,
        'STAT_ISREG',              3,
        'STAT_ISDEV',              4,
        'STAT_CREATETIME',         5,
        'STAT_ACCESSTIME',         6,
        'STAT_MODIFYTIME',         7,
        'STAT_CHANGETIME',         8,
        'STAT_BACKUPTIME',         9,
        'STAT_UID',                10,
        'STAT_GID',                11,
        'STAT_ISLNK',              12,
        'STAT_PLATFORM_DEV',       -1,
        'STAT_PLATFORM_INODE',     -2,
        'STAT_PLATFORM_MODE',      -3,
        'STAT_PLATFORM_NLINKS',    -4,
        'STAT_PLATFORM_DEVTYPE',   -5,
        'STAT_PLATFORM_BLOCKSIZE', -6,
        'STAT_PLATFORM_BLOCKS',    -7,
     );

    add_op('const', sub ($comp, $node, :$want) {
        if nqp::existskey(%const_map, $node.name) {
            $comp.as_js(QAST::IVal.new( :value(%const_map{$node.name})), :$want);
        } else {
            self.nyi("Constant "~$node.name);
        }
    });

    # TODO consider/handle if lexotic is not the topmost thing in a block
    # TODO implement returning from nested block
    add_op('lexotic', sub ($comp, $node, :$want) {
       $*BLOCK.register_lexotic($node.name);
       $comp.as_js($node[0], :$want);
    });

    method compile_op($comp, $op, :$want) {
        my str $name := $op.op;
        if nqp::existskey(%ops, $name) {
            %ops{$name}($comp, $op, :$want);
        } else {
            $comp.NYI("unimplemented QAST::Op {$op.op}");
        }
    }
}

class QAST::CompilerJS does DWIMYNameMangling does SerializeOnce {

    # Holds information about the QAST::Block we're currently compiling.
    # The currently compiled block is stored in $*BLOCK
    my class BlockInfo {
        has $!qast;             # The QAST::Block
        has $!outer;            # Outer block's BlockInfo
        has @!js_lexicals;      # javascript variables we need to declare for the block
        has $!tmp;              # We use a bunch of TMP{$n} to store intermediate javascript results
        has $!ctx;              # The object we keep dynamic variables and exception handlers in
        has %!lexotic;           # the parameters the block takes
        has @!params;           # the parameters the block takes

        method new($qast, $outer) {
            my $obj := nqp::create(self);
            $obj.BUILD($qast, $outer);
            $obj
        }

        method BUILD($qast, $outer) {
            $!qast := $qast;
            $!outer := $outer;
            @!js_lexicals := nqp::list();
            @!params := nqp::list();
            $!tmp := 0;
            %!lexotic := nqp::hash();
        }

        method add_js_lexical($name) {
            @!js_lexicals.push($name);
        }

        method register_lexotic($name) {
            %!lexotic{$name} := 1;
        }
        method is_local_lexotic($name) {
            nqp::existskey(%!lexotic, $name);
        }

        method add_tmp() {
            $!tmp := $!tmp + 1;
            'TMP'~$!tmp;
        }

        method add_param($param) {
            @!params.push($param);
        }

        method tmps() {
            my @tmps;
            my $i := 1;
            while $i <= $!tmp {
                @tmps.push('TMP'~$i);
                $i := $i+1;
            }
            @tmps;
        }

        method js_lexicals() { @!js_lexicals }
        method outer() { $!outer }
        method qast() { $!qast }
        method ctx(*@value) { $!ctx := @value[0] if @value;$!ctx}
        method params() { @!params }
    }


    method is_valid_js_identifier($identifier) {
        # TODO - implement a simplified version of https://mathiasbynens.be/notes/javascript-identifiers
        0;
    }

    sub join_exprs($delim, @chunks) {
        my @exprs;
        for @chunks -> $chunk {
            @exprs.push($chunk.expr);
        }
        nqp::join($delim, @exprs);
    }

    # TODO improve comments
    # turns a list of arguments for a call into a js code according to our most generall calling convention
    # $args is the list of QAST::Node arguments
    # returns either a js code string which contains the arguments, or a list of js code strings that when executed create arrays of arguments (suitable for concatenating and passing into Function.apply) 

    method args($args) {
        my @setup;
        my @args;

        my @named;
        my @named_exprs;

        my @named_groups;

        my @groups := [[]];
        for $args -> $arg {
            if nqp::istype($arg,QAST::SpecialArg) {
                if $arg.flat {
                    if $arg.named {
                        @named_groups.push(self.as_js($arg, :want($T_OBJ)));
                    } else {
                        @groups.push(self.as_js($arg, :want($T_OBJ)));
                        @groups.push([]);
                    }
                }
                elsif $arg.named {
                    my $compiled_arg := self.as_js($arg, :want($T_OBJ));
                    @named.push($compiled_arg);
                    @named_exprs.push(quote_string($arg.named) ~ ":" ~ $compiled_arg.expr);

                }
                else {
                    @groups[@groups-1].push(self.as_js($arg, :want($T_OBJ)));
                }
            } else {
                @groups[@groups-1].push(self.as_js($arg, :want($T_OBJ)));
            }
        }

        # We want to always have at leat 1 thing to pass as the named argument
        if @named || @named_groups == 0 {
            @named_groups.push(Chunk.new($T_OBJ,'{' ~ nqp::join(',',@named_exprs) ~ '}', @named));
        }

        if +@named_groups > 1 {
            @groups[0].unshift(Chunk.new($T_NONVAL, 'nqp.named([' ~ join_exprs(',', @named_groups) ~ '])', @named_groups));
        } else {
            @groups[0].unshift(@named_groups[0]);
        }

        @groups[0].unshift($*BLOCK.ctx);

        my sub chunkify(@group, $pre = '', $post = '') {
            my @exprs;
            my @setup;
            for @group -> $arg {
                if nqp::isstr($arg) {
                    @exprs.push($arg);
                } else {
                    @exprs.push($arg.expr);
                    @setup.push($arg);
                }
            }
            Chunk.new($T_NONVAL, $pre ~ nqp::join(',', @exprs) ~ $post, @setup);
        } 

        if +@groups == 1 {
            return chunkify(@groups[0]);
        }

        my @js_args;
        for @groups -> $group {
            if nqp::islist($group) {
                @js_args.push(chunkify($group, '[', ']')) if +$group
            } else {
                @js_args.push($group);
            }
        }
        @js_args;
    }

    method compile_sig(@params) {
        my $slurpy_named; # *%foo
        my $slurpy;       # *@foo

        my @pos;          # $foo
        my @setup;

        my $bind_named := '';
        for @params {
            if $_.slurpy {
                if $_.named {
                    # TODO
                    $slurpy_named := $_; 
                } else {
                    $slurpy := $_;
                }
            } elsif $_.named {
                $*BLOCK.add_js_lexical(self.mangle_name($_.name));
                my $quoted := quote_string($_.named);
                my $value := "_NAMED[$quoted]";
                if $_.default {
                    # TODO types

                    my $default := self.as_js($_.default, :want($T_OBJ));
                    @setup.push($default);
                    $value := "(_NAMED.hasOwnProperty($quoted) ? $value : {$default.expr})";
                }
                # TODO required named arguments and defaultless optional ones

                @setup.push("{self.mangle_name($_.name)} = $value;\n");
            } else {
                my $default := '';
                if $_.default {
                    # TODO
                    #$default := self.as_js($_.default, :want($T_OBJ));
                }
                @pos.push([$_,$default]);
            }
        }

#        if $slurpy_named {
#            $bind_named := $bind_named ~ self.bind_var($slurpy_named,self.js('_NAMED'),1) ~ ";\n";
#        }

        my @sig := ['caller_ctx','_NAMED'];

        for @pos -> $pos {
            @sig.push(self.mangle_name($pos[0].name));
        }

        if $slurpy {
            @setup.push("{self.mangle_name($slurpy.name)} = Array.prototype.slice.call(arguments,{2+@pos});\n");
        }

        Chunk.new($T_NONVAL, nqp::join(',', @sig), @setup);
    }


    method coerce($chunk, $desired) {
        my $got := $chunk.type;
        if $got != $desired {
            if $desired == $T_VOID {
                return Chunk.new($T_VOID, "", $chunk.setup);
            }

            if $desired == $T_NUM {
                if $got == $T_INT {
                    # we store both as a javascript number, and 32bit integers fit into doubles
                    return Chunk.new($T_NUM, $chunk.expr, [$chunk]);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_NUM, "({$chunk.expr} ? 1 : 0)", [$chunk]);
                }
                if $got == $T_STR {
                    my $tmp := $*BLOCK.add_tmp();
                    return Chunk.new($T_NUM, "(isNaN($tmp) ? 0 : $tmp)", [$chunk,"$tmp = parseFloat({$chunk.expr});\n"]);
                }
            }

            if $desired == $T_INT {
                if $got == $T_STR {
                    return Chunk.new($T_INT, "parseInt({$chunk.expr})", [$chunk]);
                }
                if $got == $T_NUM {
                    return Chunk.new($T_INT, "({$chunk.expr}|0)", [$chunk]);
                }
            }

            if $got == $T_OBJ {
                my %convert;
                %convert{$T_STR} := 'to_str';
                %convert{$T_NUM} := 'to_num';
                %convert{$T_INT} := 'to_int';
                %convert{$T_BOOL} := 'to_bool';
                return Chunk.new($desired, 'nqp.' ~ %convert{$desired} ~ '(' ~ $chunk.expr ~ ')', [$chunk]);
            }

            if $desired == $T_STR {
                if $got == $T_INT || $got == $T_NUM {
                    return Chunk.new($T_STR, $chunk.expr ~ '.toString()', [$chunk]);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_STR, "({$chunk.expr} ? '1' : '0')", [$chunk]);
                }
            }

            if $desired == $T_OBJ {
                if $got == $T_INT || $got == $T_NUM || $got == $T_STR {
                    return $chunk;
                } elsif $got == $T_BOOL {
                    return Chunk.new($T_OBJ, "({$chunk.expr} ? 1 : 0)", [$chunk]);
                } elsif $got == $T_VOID {
                    # TODO think what's the correct thing here
                    return Chunk.new($T_OBJ, "null", [$chunk]);
                }
            }

            if $desired == $T_BOOL {
                if $got == $T_INT || $got == $T_NUM {
                    return Chunk.new($T_BOOL, $chunk.expr, [$chunk]);
                } elsif $got == $T_STR {
                    return Chunk.new($T_BOOL, "({$chunk.expr} != '0' && {$chunk.expr})", [$chunk]);
                }
            }


            return Chunk.new($desired, "coercion($got, $desired, {$chunk.expr})", []) #TODO
        }
        $chunk;
    }


    # It's more usefull for me during this development to emit partial code instead of quiting
    method NYI($msg) {
        Chunk.new($T_VOID,"NYI($msg)",["// NYI: $msg\n"]);
        #nqp::die("NYI: $msg");
    }


    method declare_js_vars(@vars) {
        if +@vars {
            'var '~nqp::join(",\n",@vars)~";\n";
        } else {
            '';
        }
    }

    sub want($node, $desired) {
        # TODO
    }

    proto method as_js($node, :$want) {
        unless nqp::defined($want) {
            nqp::die("Unknown want");
        }

        if nqp::defined($want) {
            if nqp::istype($node, QAST::Want) {
                self.NYI("QAST::Want");
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


    # detect the result of HLL::Compiler.CTXSAVE, we need to handle this specially as for performance reasons we store some lexicals as actual javascript lexicals instead of on the context
    method is_ctxsave($node) {
        +$node.list == 2
        && nqp::istype($node[0], QAST::Op)
        && $node[0].op eq 'bind'
        && +$node[0].list == 2
        && nqp::istype($node[0][0], QAST::Var)
        && $node[0][0].name eq 'ctxsave';
    }

    # TODO save the value of the last statement
    method compile_all_the_statements(QAST::Stmts $node, $want, :$resultchild) {
        my @setup;
        my @stmts := $node.list;
        my int $n := +@stmts;

#        my $all_void := $*WANT == $T_VOID;

        unless nqp::defined($resultchild) {
            $resultchild := $n - 1;
        }

        my $result := "";

        my int $i := 0;
        for @stmts {
            my $chunk := self.as_js($_, :want($i == $resultchild ?? $want !! $T_VOID));
            $result := $chunk.expr if $i == $resultchild;
            nqp::push(@setup, $chunk);
            $i := $i + 1;
        }
        Chunk.new($want, $result, @setup);
    }

    multi method as_js(QAST::Block $node, :$want) {
        my $outer     := try $*BLOCK;
        self.compile_block($node, $outer, :$want);
    }

    method mangled_cuid($node) {
        my $ret := '';
        for nqp::split('',$node.cuid) -> $c {
            $ret := $ret ~ ($c eq '.' ?? '_' !! $c); 
        }
        $ret;
    }

    has %!cuids;

    method register_cuid($node) {
        %!cuids{$node.cuid} := 1;
    }

    method is_known_cuid($node) {
        nqp::existskey(%!cuids, $node.cuid);
    }

    method stored_result($chunk, :$want) {
        if $chunk.type == $T_VOID || $want == $T_VOID {
            Chunk.new($T_VOID, '', [$chunk, $chunk.expr~";\n"]);
        } else {
            my $tmp := $*BLOCK.add_tmp();
            Chunk.new($chunk.type, $tmp, [$chunk, "$tmp = {$chunk.expr};\n"]);
        }
    }

    method compile_block(QAST::Block $node, $outer, :$want, :$arg='') {
        my $cuid := self.mangled_cuid($node);

        my $setup;

        if self.is_known_cuid($node) {
            $setup := [];
        } else {
            self.register_cuid($node);
            my $*BINDVAL := 0;
            my $*BLOCK := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu));

            my $create_ctx := self.create_fresh_ctx();

            my $body_want := $node.blocktype eq 'immediate' ?? $want !! $T_OBJ;

            my $stmts := self.compile_all_the_statements($node, $body_want);

            my $sig := self.compile_sig($*BLOCK.params);

            $setup := [
                "$cuid = function({$sig.expr}) \{",
                self.declare_js_vars($*BLOCK.tmps),
                self.declare_js_vars($*BLOCK.js_lexicals),
                $sig,
                $create_ctx,
                $stmts,
                "return {$stmts.expr};\n",
                "\};\n"];
        }

        if $node.blocktype eq 'immediate' {
            my $extra_args := $arg ?? ",$arg" !! '';
            self.stored_result(Chunk.new($want, $cuid~"({$outer.ctx},\{\}$extra_args)", $setup, :$node), :$want);
        } else {
            Chunk.new($T_OBJ, $cuid, $setup);
        }
    }

    has $!unique_vars;

    method unique_var($prefix) {
        $!unique_vars := $!unique_vars + 1;
        $prefix~$!unique_vars;
    }

    method create_fresh_ctx() {
        $*BLOCK.ctx(self.unique_var('ctx'));
        self.create_ctx($*BLOCK.ctx);
    }

    method create_ctx($name) {
        # TODO think about contexts
        #"var $name = new nqp.Ctx(caller_ctx,{self.outer_ctx},'$name');\n";
        "var $name = null;\n";
    }

    multi method as_js(QAST::IVal $node, :$want) {
        Chunk.new($T_INT,'('~$node.value()~')',[],:$node);
    }

    multi method as_js(QAST::NVal $node, :$want) {
        Chunk.new($T_NUM,'('~$node.value()~')',[],:$node);
    }

    multi method as_js(QAST::SVal $node, :$want) {
        Chunk.new($T_STR,quote_string($node.value()),[],:$node);
    }

    multi method as_js(QAST::BVal $node, :$want) {
        self.as_js($node.value, :$want);
    }

    multi method as_js(QAST::Stmts $node, :$want) {
        if self.is_ctxsave($node) {
            self.NYI("handle CTXSAVE");
        } else {
            self.compile_all_the_statements($node, $want);
        }
    }

    multi method as_js(QAST::VM $node, :$want) {
        # We ignore QAST::VM as we don't support a js specific one, and the ones nqp generate contain parrot specific stuff we don't care about.
        Chunk.new($T_VOID,'',[]);
    }

    multi method as_js(QAST::Op $node, :$want) {
        QAST::OperationsJS.compile_op(self, $node, :$want);
    }

    method create_sc($ast) {
        my @sh;
        my $sc := $ast.sc;

        my $sc_tuple := self.serialize_sc($sc);
        my $sc_data := $sc_tuple[0];
        my $sc_sh := $sc_tuple[1];


        my $i := 0;
        while $i < nqp::elems($sc_sh) {
            say(nqp::elems($sc_sh));
            my $s := nqp::atpos_s($sc_sh,$i);
            my $got := nqp::isnull_s($s) ?? 'null' !! quote_string($s);
            @sh.push($got);
            $i := $i + 1;
        }

        my $quoted_data := nqp::isnull_s($sc_data) ?? 'null' !! quote_string($sc_data);

        "var sh=[{nqp::join(',',@sh)}];\n"
        ~ "var sc = nqp.op.createsc({quote_string(nqp::scgethandle($sc))});\n"
        ~ "var code_refs = [];\n" # TODO
        ~ "nqp.op.deserialize($quoted_data,sc,sh,code_refs,null);\n"
        ~ "nqp.op.scsetdesc(sc,{quote_string(nqp::scgetdesc($sc))});\n"
    }

    multi method as_js(QAST::CompUnit $node, :$want) {
        # Should have a single child which is the outer block.
        if +@($node) != 1 || !nqp::istype($node[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
        }

        # Compile the block.
        my $block_js := self.as_js($node[0], :want($T_VOID));

        my $body;

        if nqp::defined($node.main) {
            my $main_block := QAST::Block.new($node.main);

            my $main := self.as_js($main_block, :want($T_VOID));

            $body := Chunk.new($T_VOID, "", [$block_js, $main, self.mangled_cuid($main_block) ~ "();\n"]);
            
        } else {
            $body := $block_js;
        }
        
        Chunk.new($T_VOID, "", [self.create_sc($node), $body]);

    }

    method declare_var(QAST::Var $node) {
        # TODO vars more complex the non-dynamic lexicals
        if $node.decl eq 'var' {
            $*BLOCK.add_js_lexical(self.mangle_name($node.name));
        } elsif $node.decl eq 'param' {
            if $node.scope eq 'local' || $node.scope eq 'lexical' {
                $*BLOCK.add_param($node);
            } else {
                nqp::die("Parameter cannot have scope '{$node.scope}'; use 'local' or 'lexical'");
            }
        }
    }

    multi method as_js(QAST::Var $node, :$want) {
        self.declare_var($node);
        self.compile_var($node);
    }
    
    method var_is_lexicalish(QAST::Var $var) {
        $var.scope eq 'lexical' || $var.scope eq 'typevar';
    }

    method as_js_clear_bindval($node, :$want) {
        my $*BINDVAL := 0;
        self.as_js($node, :$want);
    }

    method is_dynamic_var($var) {
        # TODO
        0;
    }

    method compile_var(QAST::Var $var) {
        if self.var_is_lexicalish($var) && self.is_dynamic_var($var) {
            self.TODO("dynamic variables");
        } elsif self.var_is_lexicalish($var) || $var.scope eq 'local' {
            my $type := $T_OBJ;
            my $mangled := self.mangle_name($var.name);
            if $*BINDVAL {
                # TODO better source mapping
                # TODO use the proper type 
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                Chunk.new($type,$mangled, [$bindval,'('~$mangled~' = ('~ $bindval.expr ~ "));\n"]);
            } else {
                # TODO get the proper type 
                Chunk.new($type, $mangled, [], :node($var));
            }
        } elsif ($var.scope eq 'positional') {
            # TODO work on things other than nqp lists
            # TODO think about nulls and missing elements
            if $*BINDVAL {
                my $array := self.as_js_clear_bindval($var[0], :want($T_OBJ));
                my $index := self.as_js_clear_bindval($var[1], :want($T_INT));
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                Chunk.new($T_OBJ, $bindval.expr, [$array, $index, $bindval, "({$array.expr}[{$index.expr}] = {$bindval.expr});\n"], :node($var));
            } else {
                my $array := self.as_js($var[0], :want($T_OBJ));
                my $index := self.as_js($var[1], :want($T_INT));
                Chunk.new($T_OBJ, "{$array.expr}[{$index.expr}]", [$array, $index], :node($var));
            }
        } elsif ($var.scope eq 'associative') {
            # TODO work on things other than nqp lists
            # TODO think about nulls and missing elements
            if $*BINDVAL {
                my $hash := self.as_js_clear_bindval($var[0], :want($T_OBJ));
                my $key := self.as_js_clear_bindval($var[1], :want($T_STR));
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                Chunk.new($T_OBJ, $bindval.expr, [$hash, $key, $bindval, "({$hash.expr}[{$key.expr}] = {$bindval.expr});\n"], :node($var));
            } else {
                my $hash := self.as_js($var[0], :want($T_OBJ));
                my $key := self.as_js($var[1], :want($T_STR));
                Chunk.new($T_OBJ, "{$hash.expr}[{$key.expr}]", [$hash, $key], :node($var));
            }
        } else {
            self.NYI("Unimplemented QAST::Var scope: " ~ $var.scope);
        }
    }

    multi method as_js($unknown, :$want) {
        self.NYI("Unimplemented QAST node type: " ~ $unknown.HOW.name($unknown));
    }


    method as_js_with_prelude($ast) {
        Chunk.new($T_VOID,"",[
            "var nqp = require('nqp-runtime');\n",
            "\nvar top_ctx = nqp.top_context();\n",
            # temporary HACK
            "var ARGS = process.argv;\n",
            self.as_js($ast, :want($T_VOID))
        ]);
    }

    method emit($ast) {
       self.as_js_with_prelude($ast).join
    }

    # return a json datastructure we later process into a source map
    method emit_with_source_map($ast) {
       self.as_js_with_prelude($ast).with_source_map_info
    }
}
