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
    my $out := '';
    my $quoted := nqp::escape($str);

    my $backslash := 0;

    my $escape := '';

    for nqp::split('',$quoted~'') -> $c {
        if $backslash && $c eq 'e' {
            $out := $out ~ 'x1b';
        } elsif $backslash && $c eq 'a' {
            $out := $out ~ 'x07';
        } else {
            if ($c eq "\x[2028]") {
                $out := $out ~ "\\u2028";
            } elsif ($c eq "\x[2029]") {
                $out := $out ~ "\\u2029";
            } else {
                $out := $out ~ $c;
            }
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

    method void(*@setup, :$node) {
        self.new($T_VOID, "", @setup, :$node);
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

# Holds information about the javascript loop we are emitting code inside of.
# The currently emitted loop is stored in $*LOOP.
my class LoopInfo {
    has $!outer;
    has $!redo;

    has $!label;

    has %!handled;

    method redo() {
        unless nqp::defined($!redo) {
            $!redo := $*BLOCK.add_tmp();
        }
        $!redo;
    }
    method has_redo() {
        nqp::defined($!redo);
    }
    method new($outer, :$label) {
        my $obj := nqp::create(self);
        $obj.BUILD($outer, $label);
        $obj
    }
    method BUILD($outer, $label) {
        $!outer := $outer;
        $!label := $label;
        %!handled := nqp::hash();
    }

    method outer() { $!outer }

    # do we have to catch the control exception? 

    method handled() {
        my @handled;
        for %!handled {
            @handled.push($_.key);
        }
        @handled;
    }

    method handle($type) {
        %!handled{$type} := 1;
    }


    method label(*@value) { $!label := @value[0] if @value;$!label}
}

my class BlockBarrier {
    has $!block;
    has $!outer;

    method new($block, $outer) {
        my $obj := nqp::create(self);
        $obj.BUILD($block, $outer);
        $obj
    }
    method BUILD($block, $outer) {
        $!block := $block;
        $!outer := $outer;
    }
    method outer() { $!outer }
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
        if $node.list > @argument_types {
            nqp::die("{+$node.list} arguments for {$node.op}, the maximum is {+@argument_types}");
        } 
        for $node.list -> $arg {
            my $chunk := $comp.as_js($arg, :want(@argument_types[$i]));
            @exprs.push($chunk.expr);
            @setup.push($chunk);
            $i := $i + 1;
        }
        Chunk.new($return_type, $cb(|@exprs), @setup, :$node);
    }

    sub runtime_op($op, @argument_types) {
        sub (*@args) {
            "nqp.op.$op({nqp::join(',', @args)})";
        }
    }

    sub add_simple_op($op, $return_type, @argument_types, $cb = runtime_op($op, @argument_types), :$sideffects) {
        %ops{$op} := sub ($comp, $node, :$want) {
            my $chunk := op_template($comp, $node, $return_type, @argument_types, $cb);
            $sideffects ?? $comp.stored_result($chunk) !! $chunk;
        };
    }

    sub add_infix_op($op, $left_type, $syntax, $right_type, $return_type) {
        %ops{$op} := sub ($comp, $node, :$want) {
            my $left  := $comp.as_js($node[0], :want($left_type));
            my $right := $comp.as_js($node[1], :want($right_type));
            Chunk.new($return_type, "({$left.expr} $syntax {$right.expr})", [$left, $right], :$node);
        };
    }


    add_simple_op('setcontspec', $T_OBJ, [$T_OBJ, $T_STR, $T_OBJ], :sideffects);
    add_simple_op('assign',  $T_OBJ, [$T_OBJ, $T_OBJ], sub ($cont, $value) {"$cont.\$\$assign({$*CTX},$value)"}, :sideffects);
    add_simple_op('assignunchecked',  $T_OBJ, [$T_OBJ, $T_OBJ], sub ($cont, $value) {"$cont.\$\$assignunchecked({$*CTX},$value)"}, :sideffects);
    add_simple_op('decont', $T_OBJ, [$T_OBJ], sub ($cont) {"nqp.op.decont({$*CTX}, $cont)"});
    add_simple_op('iscont', $T_INT, [$T_OBJ]);

    add_infix_op('add_n', $T_NUM, '+', $T_NUM, $T_NUM);
    add_infix_op('sub_n', $T_NUM, '-', $T_NUM, $T_NUM);
    add_infix_op('mul_n', $T_NUM, '*', $T_NUM, $T_NUM);
    # TODO - think about divide by zero
    add_infix_op('div_n', $T_NUM, '/', $T_NUM, $T_NUM);
    add_infix_op('mod_n', $T_NUM, '%', $T_NUM, $T_NUM);

    add_simple_op('neg_n', $T_NUM, [$T_NUM], sub ($num) {"(-$num)"});
    add_simple_op('neg_i', $T_INT, [$T_INT], sub ($num) {"(-$num)"});

    add_infix_op('concat', $T_STR, '+', $T_STR, $T_STR);

    for ['_i', $T_INT, '_n', $T_NUM] -> $suffix, $type {
        add_infix_op('isle' ~ $suffix, $type, '<=', $type, $T_BOOL);
        add_infix_op('islt' ~ $suffix, $type, '<', $type, $T_BOOL);
        add_infix_op('isgt' ~ $suffix, $type, '>', $type, $T_BOOL);
        add_infix_op('isge' ~ $suffix, $type, '>=', $type, $T_BOOL);
        add_infix_op('iseq' ~ $suffix, $type, '==', $type, $T_BOOL);
        add_infix_op('isne' ~ $suffix, $type, '!=', $type, $T_BOOL);
    }


    add_infix_op('iseq_s', $T_STR, '==', $T_STR, $T_BOOL);
    add_infix_op('isne_s', $T_STR, '!=', $T_STR, $T_BOOL);

    add_infix_op('bitor_i', $T_INT, '|', $T_INT, $T_INT);
    add_infix_op('bitand_i', $T_INT, '&', $T_INT, $T_INT);
    add_infix_op('bitxor_i', $T_INT, '^', $T_INT, $T_INT);
    add_infix_op('bitshiftl_i', $T_INT, '<<', $T_INT, $T_INT);

    add_infix_op('eqaddr', $T_OBJ, '===', $T_OBJ, $T_BOOL);

    # Integer arithmetic
    add_simple_op('add_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a + $b) | 0)"});
    add_simple_op('sub_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a - $b) | 0)"});
    add_simple_op('div_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a / $b) | 0)"});
    add_simple_op('mul_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"Math.imul($a,$b)"});

    add_simple_op('istype', $T_BOOL, [$T_OBJ, $T_OBJ], sub ($value, $type) {"($value instanceof $type.constructor)"});


    add_simple_op('clone', $T_OBJ, [$T_OBJ]);

    # TODO handle attributes properly
    for ['', $T_OBJ, '_i', $T_INT, '_n', $T_NUM, '_s', $T_STR] -> $suffix, $type {
        add_simple_op('bindattr' ~ $suffix, $type, [$T_OBJ, $T_OBJ, $T_STR, $type], :sideffects,
            sub ($obj, $type, $attr, $value) {
                # TODO take second argument into account
                "($obj[$attr] = $value)";
            }
        );
        add_simple_op('getattr' ~ $suffix, $type, [$T_OBJ, $T_OBJ, $T_STR],
            sub ($obj, $type, $attr) {
                # TODO take second argument into account
                "$obj[$attr]";
            }
        );
    }

    add_simple_op('attrinited', $T_BOOL, [$T_OBJ, $T_OBJ, $T_STR],
        sub ($obj, $type, $attr) {
            # TODO take second argument into account
            "$obj.hasOwnProperty($attr)";
        }
    );

    add_simple_op('setinvokespec', $T_OBJ, [$T_OBJ, $T_OBJ, $T_STR, $T_OBJ], :sideffects);
    add_simple_op('setboolspec', $T_OBJ, [$T_OBJ, $T_INT, $T_OBJ], :sideffects);

    sub add_cmp_op($op, $type) {
        add_simple_op($op, $T_INT, [$type, $type], sub ($a, $b) {
            "($a < $b ? -1 : ($a == $b ? 0 : 1))"
        });
    }

    add_simple_op('reprname', $T_STR, [$T_OBJ]);
    add_simple_op('newtype', $T_OBJ, [$T_OBJ, $T_STR]);

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

    add_simple_op('isstr', $T_BOOL, [$T_OBJ], sub ($obj) {"(typeof $obj == 'string')"});

    add_simple_op('chars', $T_INT, [$T_STR], sub ($string) {"$string.length"});

    add_simple_op('join', $T_STR, [$T_STR, $T_OBJ], sub ($delim, $list) {"$list.join($delim)"});

    add_simple_op('index', $T_INT, [$T_STR, $T_STR, $T_INT], sub ($string, $pattern, $from?) {
        nqp::defined($from) ?? "$string.indexOf($pattern,$from)" !! "$string.indexOf($pattern)";
    });

    add_simple_op('substr', $T_STR, [$T_STR, $T_INT, $T_INT], sub ($string, $start, $length?) {
        nqp::defined($length) ?? "$string.substr($start,$length)" !! "$string.substr($start)";
    });

    # TODO portability to JScript (according to mdn it doesn't support negative offset - check it)
    add_simple_op('eqat', $T_BOOL, [$T_STR, $T_STR, $T_INT], sub ($haystack, $needle, $offset) {
        "($haystack.substr($offset, $needle.length) === $needle)"
    });



    add_simple_op('chr', $T_STR, [$T_INT], sub ($code) {"String.fromCharCode($code)"});

    add_simple_op('lc', $T_STR, [$T_STR], sub ($string) {"$string.toLowerCase()"});
    add_simple_op('uc', $T_STR, [$T_STR], sub ($string) {"$string.toUpperCase()"});

    add_simple_op('flip', $T_STR, [$T_STR], sub ($string) {"$string.split('').reverse().join('')"});

    add_simple_op('ord', $T_INT, [$T_STR, $T_INT], sub ($string, $pos='0') {"$string.charCodeAt($pos)"});
    %ops<ordat> := %ops<ord>;

    add_simple_op('null', $T_OBJ, [], sub () {"null"});

    #HACK we need to avoid using undefined at all
    add_simple_op('isnull', $T_BOOL, [$T_OBJ], sub ($obj) {"($obj === null || $obj === undefined)"});

    add_simple_op('null_s', $T_STR, [], sub () {"null"});
    add_simple_op('isnull_s', $T_BOOL, [$T_STR], sub ($obj) {"($obj === null)"});

    add_simple_op('time_n', $T_NUM, [], sub () {"(new Date().getTime() / 1000)"}, :sideffects);
    add_simple_op('time_i', $T_NUM, [], sub () {"Math.floor(new Date().getTime() / 1000)"}, :sideffects);

    add_simple_op('escape', $T_STR, [$T_STR]);
    add_simple_op('x', $T_STR, [$T_STR, $T_INT]);

    add_simple_op('getcomp', $T_OBJ, [$T_STR], :sideffects);

    add_simple_op('say', $T_VOID, [$T_STR], :sideffects);
    add_simple_op('print', $T_VOID, [$T_STR], :sideffects);

    add_simple_op('getstderr', $T_OBJ, [], :sideffects);
    add_simple_op('getstdout', $T_OBJ, [], :sideffects);
    add_simple_op('getstdin', $T_OBJ, [], :sideffects);

    add_simple_op('open', $T_OBJ, [$T_STR, $T_STR], :sideffects);

    add_simple_op('tellfh', $T_INT, [$T_OBJ], :sideffects);
    add_simple_op('seekfh', $T_INT, [$T_OBJ, $T_INT, $T_INT],
        sub ($fh, $offset, $whence) { "nqp.op.seekfh($fh, $offset, $whence, $*CTX)" }, :sideffects);
    add_simple_op('eoffh', $T_INT, [$T_OBJ], :sideffects);
    add_simple_op('readlinefh', $T_STR, [$T_OBJ], :sideffects);
    add_simple_op('readallfh', $T_STR, [$T_OBJ], :sideffects);
    add_simple_op('printfh', $T_OBJ, [$T_OBJ, $T_STR], :sideffects);
    add_simple_op('closefh', $T_OBJ, [$T_OBJ], :sideffects);
    add_simple_op('setinputlinesep', $T_OBJ, [$T_OBJ, $T_STR], :sideffects);

    add_simple_op('symlink', $T_VOID, [$T_STR, $T_STR], :sideffects);
    add_simple_op('link', $T_VOID, [$T_STR, $T_STR], :sideffects);
    add_simple_op('unlink', $T_VOID, [$T_STR], :sideffects);
    add_simple_op('setencoding', $T_VOID, [$T_OBJ, $T_STR], :sideffects);

    add_simple_op('chdir', $T_VOID, [$T_STR], :sideffects);
    add_simple_op('rmdir', $T_VOID, [$T_STR], :sideffects);
    add_simple_op('mkdir', $T_VOID, [$T_STR, $T_INT], :sideffects);

    add_simple_op('getenvhash', $T_OBJ, [], :sideffects);
    add_simple_op('cwd', $T_STR, [], :sideffects);

    add_simple_op('shell', $T_VOID, [$T_STR, $T_STR, $T_OBJ], :sideffects);


    add_simple_op('sha1', $T_STR, [$T_STR]);


    add_simple_op('isinvokable', $T_INT, [$T_OBJ]);

    # Stubs
    add_simple_op('where', $T_INT, [$T_OBJ]);
    add_simple_op('can', $T_INT, [$T_OBJ, $T_STR]);
    add_simple_op('isconcrete', $T_INT, [$T_OBJ]);

    # TODO - think if it's the correct thing to do
    add_op('takeclosure', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_OBJ))~'.takeclosure()';
    });

    add_simple_op('takeclosure', $T_OBJ, [$T_OBJ], sub ($closure) {"$closure.takeclosure()"});

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

    add_op('locallifetime', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($want));
    });

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


    add_op('bindkey', sub ($comp, $node, :$want) {
        $comp.bind_key($node[0], $node[1], $node[2]);
    });
    add_op('bindpos', sub ($comp, $node, :$want) {
        $comp.bind_pos($node[0], $node[1], $node[2]);
    });

    add_simple_op('bindpos_i', $T_INT, [$T_OBJ, $T_INT, $T_INT], sub ($list, $index, $value) {"($list[$index] = $value)"}, :sideffects);

    for ['_i', $T_INT, '', $T_OBJ, '_s', $T_STR] -> $suffix, $type {
        add_op('list' ~ $suffix, sub ($comp, $node, :$want) {
           my @setup;
           my @exprs;

           for $node.list -> $elem {
               my $chunk := $comp.as_js($elem, :want($type));
               @setup.push($chunk);
               @exprs.push($chunk.expr);
           }

           Chunk.new($T_OBJ, '[' ~ nqp::join(',', @exprs) ~ ']' , @setup, :$node);
        });
    }

    add_op('hash', sub ($comp, $node, :$want) {
        my $hash := $*BLOCK.add_tmp();
        my @setup;
        @setup.push("$hash = nqp.hash();\n");
        for $node.list -> $key, $val {
            my $key_chunk := $comp.as_js($key, :want($T_STR));
            my $val_chunk := $comp.as_js($val, :want($T_OBJ));
            @setup.push($key_chunk);
            @setup.push($val_chunk);
            @setup.push("$hash[{$key_chunk.expr}] = {$val_chunk.expr};\n");
         }
         Chunk.new($T_OBJ, $hash , @setup , :$node);
    });
    add_simple_op('ishash', $T_INT, [$T_OBJ]);


    add_op('call', sub ($comp, $node, :$want) {
        if $*BLOCK.is_local_lexotic($node.name) {
            my $value := $comp.as_js($node[0], :want($T_OBJ));
            return Chunk.new($T_VOID, '', [$value, "return {$value.expr};\n"]);
        } elsif $*BLOCK.is_lexotic($node.name) {
            $*BLOCK.mark_lexotic_usage($node.name);
            my $value := $comp.as_js($node[0], :want($T_OBJ));
            return Chunk.new($want, 'null', [$value, $comp.mangle_name($node.name) ~ "(" ~ $value.expr ~ ");\n"]);
        }

        my $args := nqp::clone($node.list);

        my $callee := $node.name
            ?? $comp.as_js(QAST::Var.new(:name($node.name),:scope('lexical')), :want($T_OBJ))
            !! $comp.as_js(nqp::shift($args), :want($T_OBJ));

        my $compiled_args := $comp.args($args);

        my $call;
        if nqp::islist($compiled_args) {
            $compiled_args := $comp.merge_arg_groups($compiled_args);
            $call := '.$apply(';
        } else {
            $call := '.$call(';
        }

        $comp.stored_result(
            Chunk.new($T_OBJ, $callee.expr ~ $call ~ $compiled_args.expr ~ ')' , [$callee, $compiled_args], :$node), :$want);
    });



    # Ops for NFA

    add_simple_op('nfafromstatelist', $T_OBJ, [$T_OBJ, $T_OBJ], :sideffects);
    add_simple_op('nfarunproto', $T_OBJ, [$T_OBJ, $T_STR, $T_INT], :sideffects);
    add_simple_op('nfarunalt', $T_OBJ, [$T_OBJ, $T_STR, $T_INT, $T_OBJ, $T_OBJ, $T_OBJ]);

    # TODO 
    # add_simple_op('nfatostatelist', $T_OBJ, [$T_OBJ]);

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
            my $method_name := $comp.as_js(@args.shift, :want($T_STR));
            @setup.push($method_name);
            $method := "[{$method_name.expr}]";
        }

        my $compiled_args := $comp.args(@args);

        my $call;
        if nqp::islist($compiled_args) {
            $compiled_args := $comp.merge_arg_groups($compiled_args);
            $call := ".apply({$invocant.expr},";
        } else {
            $call := '(';
        }
        @setup.push($compiled_args);

        $comp.stored_result(
            Chunk.new($T_OBJ, $invocant.expr ~ $method ~ $call ~ $compiled_args.expr ~ ')' , @setup, :$node), :$want);

    });

    # TODO - implement and bechmark different ways of preventing the try/catch from murdering performance 
    add_op('handle', sub ($comp, $node, :$want) {
        my @children := nqp::clone($node.list());
        if @children == 0 {
            nqp::die("The 'handle' op requires at least one child");
        }

        # If there's exactly one child, then there's nothing protecting
        # it; just compile it and we're done.
        my $protected := @children.shift();
        unless @children {
            return $comp.as_js($protected, :$want);
        }
        

        my $outer_ctx := $*CTX;
        {
            my $*CTX := $comp.unique_var('ctx');
            my $unwind_marker := $*BLOCK.add_tmp;

            my $try_ret := $want == $T_VOID ?? '' !! $*BLOCK.add_tmp;

            my $handle := '';
            for @children -> $type, $handler {
                if $type eq 'CATCH' {  
                    my $catch_body := $comp.as_js($handler, :want($T_OBJ));
                    $handle := Chunk.void(
                        "//want: $want\n",
                        "$unwind_marker = \{\};\n",
                        "$*CTX.CATCH = function() \{\n",
                        $catch_body,
                        "return {$catch_body.expr};\n",
                        "\};\n",
                        "$*CTX.unwind = $unwind_marker;\n" 
                    );
                } else {
                    return $comp.NYI("Not implemented type with handle: $type");
                }
            }

            my $body := $comp.as_js($protected, :$want);
            return Chunk.new($want, $try_ret, [
                "var $*CTX = new nqp.Ctx($outer_ctx, $outer_ctx);\n",
                $handle,
                "try \{",
                $body,
                # HACK we need to check $body.type if we handle something like return
                "//want: $want, body_expr: <{$body.expr}>, body_type:<{$body.type}>\n",
                (($want == $T_VOID || $body.type == $T_VOID) ?? '' !! "$try_ret = {$body.expr};\n"),
                "\} catch (e) \{if (e === $unwind_marker) \{",
                ($want == $T_VOID ?? '' !! "$try_ret = $unwind_marker.ret;\n"),
                "\} else \{\n",
                "throw e;\n",
                "\}\n",
                "\}\n"
            ], :$node);
        }
    });


    add_simple_op('exception', $T_OBJ, [], sub () {"$*CTX.exception"});
    add_simple_op('rethrow', $T_VOID, [$T_OBJ], sub ($exception) {"$*CTX.rethrow($exception)"}, :sideffects);
    add_simple_op('resume', $T_VOID, [$T_OBJ], sub ($exception) {"$*CTX.resume($exception)"}, :sideffects);

    add_simple_op('findmethod', $T_OBJ, [$T_OBJ, $T_STR], :sideffects);
    add_simple_op('can', $T_INT, [$T_OBJ, $T_STR], :sideffects);

    add_simple_op('istype', $T_INT, [$T_OBJ, $T_OBJ], :sideffects);

    add_simple_op('split', $T_OBJ, [$T_STR, $T_STR], sub ($separator, $string) {
        "({$string} == '' ? [] : {$string}.split({$separator}))"
    });

    add_simple_op('elems', $T_INT, [$T_OBJ], sub ($list) {"($list.length)"});

    add_simple_op('islist', $T_BOOL, [$T_OBJ], sub ($obj) {"($obj instanceof Array)"});

    for ['_i', $T_INT, '', $T_OBJ, '_s', $T_STR] -> $suffix, $type {
        add_simple_op('atpos' ~ $suffix, $type, [$T_OBJ, $T_INT], sub ($array, $index) {"$array[$index]"});
        add_simple_op('pop' ~ $suffix, $type, [$T_OBJ], sub ($array) {"$array.pop()"}, :sideffects);
        add_simple_op('push' ~ $suffix, $type, [$T_OBJ, $type], sub ($array, $elem) {"$array.push($elem)"}, :sideffects);
    }


    # HACK
    add_simple_op('atpos_i', $T_INT, [$T_OBJ, $T_INT], sub ($array, $index) {"($array[$index] === undefined ? 0 : $array[$index])"});

    add_op('curlexpad', sub ($comp, $node, :$want) {
            my @get;
            my @set;
            for $*BLOCK.variables -> $var {
                @set.push(quote_string($var.name) ~ 
                   ~ ': function(value) {' 
                   ~ $comp.mangle_name($var.name) ~ ' = value' 
                   ~ '}');
                @get.push(quote_string($var.name) ~ 
                   ~ ': function() {' 
                   ~ 'return ' ~ $comp.mangle_name($var.name) ~ ''
                   ~ '}');
            }
            Chunk.new($T_OBJ, "new nqp.CurLexpad(\{{nqp::join(',', @get)}\}, \{{nqp::join(',', @set)}\})", [], :$node);
    });

    add_op('atpos', sub ($comp, $node, :$want) { $comp.atpos($node[0], $node[1], :$node) });
    add_op('atpos', sub ($comp, $node, :$want) { $comp.atpos($node[0], $node[1], :$node) });

    add_simple_op('shift', $T_OBJ, [$T_OBJ], sub ($array) {"$array.shift()"}, :sideffects);
    add_simple_op('unshift', $T_OBJ, [$T_OBJ, $T_OBJ], sub ($array, $elem) {"$array.unshift($elem)"}, :sideffects);
    add_simple_op('splice', $T_OBJ, [$T_OBJ, $T_OBJ, $T_INT, $T_INT], :sideffects);

    add_simple_op('setelems', $T_OBJ, [$T_OBJ, $T_INT], :sideffects, sub ($array, $elems) {"($array.length = $elems, $array)"});


    add_simple_op('iterator', $T_OBJ, [$T_OBJ], :sideffects);

    add_simple_op('iterval', $T_OBJ, [$T_OBJ], sub ($iter) {"$iter.iterval()"});
    add_simple_op('iterkey_s', $T_STR, [$T_OBJ], sub ($iter) {"$iter.iterkey_s()"});

    add_simple_op('existskey', $T_BOOL, [$T_OBJ, $T_STR], sub ($hash, $key) {"$hash.\$\$existskey($key)"});

    add_simple_op('existspos', $T_BOOL, [$T_OBJ, $T_INT]);

    for <ceil floor abs log> -> $func {
        add_simple_op($func ~ '_n', $T_NUM, [$T_NUM], sub ($arg) {"Math.$func($arg)"});
    }

    add_simple_op('abs_i', $T_INT, [$T_INT], sub ($arg) {"Math.abs($arg)"});
    add_simple_op('pow_n', $T_NUM, [$T_NUM, $T_NUM], sub ($base, $exponent) {"Math.pow($base, $exponent)"});

    add_simple_op('radix', $T_OBJ, [$T_INT, $T_STR, $T_INT, $T_INT]);

    add_simple_op('stat', $T_INT, [$T_STR, $T_INT]);

    add_simple_op('defined', $T_INT, [$T_OBJ]);
    %ops<isconcrete> := %ops<defined>;

    # TODO - those are stubs until we have serialization support
    add_simple_op('scwbenable', $T_VOID, [], -> {''});
    add_simple_op('scwbdisable', $T_VOID, [], -> {''});

    add_simple_op('settypehllrole', $T_OBJ, [$T_OBJ, $T_INT], :sideffects);
    add_simple_op('sethllconfig', $T_OBJ,  [$T_STR, $T_OBJ], :sideffects);

    # TODO avoid copy & paste - move it into code shared between backends
    add_op('defor', sub ($comp, $node, :$want) {
        if +$node.list != 2 {
            nqp::die("Operation 'defor' needs 2 operands");
        }
        my $tmp := $node.unique('defined');
        $comp.as_js(QAST::Stmts.new(
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name($tmp), :scope('local'), :decl('var') ),
                $node[0]
            ),
            QAST::Op.new(
                :op('if'),
                QAST::Op.new(
                    :op('defined'),
                    QAST::Var.new( :name($tmp), :scope('local') )
                ),
                QAST::Var.new( :name($tmp), :scope('local') ),
                $node[1]
            )), :$want)
    });

    add_op('ifnull', sub ($comp, $node, :$want) {
        if +$node.list != 2 {
            nqp::die("Operation 'ifnull' needs 2 operands");
        }

        my $result := $*BLOCK.add_tmp();
        my $expr := $comp.as_js($node[0], :want($T_OBJ));
        my $then := $comp.as_js($node[1], :want($T_OBJ));
        Chunk.new($T_OBJ, $result, [
            $expr,
            "$result = {$expr.expr};\n",
            "if ($result === null) \{\n",
            $then,
            "$result = {$then.expr};\n",
            "\}\n"], :node($node));
    });

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

            my $cond_without_sideeffects := Chunk.new($cond.type, $cond.expr, []);

            if $node.op eq 'if' {
                $then := $comp.as_js($node[1], :$want);

                if $operands == 3 {
                    $else := $comp.as_js($node[2], :$want);
                } else {
                    $else := $comp.coerce($cond_without_sideeffects, $want);
                }
            } else {
                if $operands == 3 {
                    $then := $comp.as_js($node[2], :$want);
                } else {
                    $then := $comp.coerce($cond_without_sideeffects, $want);
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
        # TODO redo etc.

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

        my $list := $comp.as_js(@operands[0], :want($T_OBJ));

        # TODO think if creating the block once, and the calling it multiple times would be faster

        my @body_args;
        my $arity := @operands[1].arity || 1;
        while $arity > 0 {
            my $iterval := $*BLOCK.add_tmp();
            @body_args.push(Chunk.new($T_OBJ, $iterval, ["$iterval = $iterator.shift();\n"]));
            $arity := $arity - 1;
        }

        my $outer     := try $*BLOCK;
        my $outer_loop := try $*LOOP;

        my $loop := LoopInfo.new($outer_loop, :$label);

        my $body := $comp.compile_block(@operands[1], $outer, $loop , :want($T_VOID), :extra_args(@body_args));


        Chunk.void(
            $list,
            "$iterator = nqp.op.iterator({$list.expr});\n",
            "while ($iterator.idx < $iterator.target) \{\n",
            $comp.handle_control($loop, $body),
            "\}\n"
        , :node($node));
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

            my $loop := LoopInfo.new($*LOOP, :$label);

            my $cond;
            my $body;
            {
                my $*LOOP := $loop;
                $cond := $comp.as_js(@operands[0], :want($T_BOOL));
                $body := $comp.as_js(@operands[1], :want($T_VOID));
            }

            if $op eq 'while' || $op eq 'until' {
                my $neg := $op eq 'while' ?? '!' !! '';

                # handle_control can set redo so we call it here
                my $handled := $comp.handle_control($loop, $body);
                Chunk.void(
                    "for (;;) \{\n",
                    ($loop.has_redo
                        ?? "if ({$loop.redo}) \{;\n"
                            ~ "{$loop.redo} = false;\n"
                            ~  "\} else \{\n"
                        !! ''), 
                    $cond,
                    "if ($neg {$cond.expr}) \{break;\}\n",
                    ($loop.has_redo ?? "\}\n" !! ''),
                    $handled,
                    "\}"
                );
            } else {
                # TODO redo
                my $neg := $op eq 'repeat_while' ?? '' !! '!';
                Chunk.void(
                    "do \{\n",
                    $body,
                    $cond,
                    "\} while ($neg {$cond.expr});"
                );
            }
        });
    }

    # Constant mapping.

    add_op('const', sub ($comp, $node, :$want) {
        if nqp::existskey(%const_map, $node.name) {
            $comp.as_js(QAST::IVal.new( :value(%const_map{$node.name})), :$want);
        } else {
            $comp.NYI("Constant "~$node.name);
        }
    });


    add_simple_op('findcclass', $T_INT, [$T_INT, $T_STR, $T_INT, $T_INT]);
    add_simple_op('findnotcclass', $T_INT, [$T_INT, $T_STR, $T_INT, $T_INT]);
    add_simple_op('iscclass', $T_INT, [$T_INT, $T_STR, $T_INT]);

    # TODO consider/handle if lexotic is not the topmost thing in a block
    add_op('lexotic', sub ($comp, $node, :$want) {
        $*BLOCK.register_lexotic($node.name);
        my $inner := $comp.as_js($node[0], :$want);

        if $*BLOCK.is_lexotic_used($node.name) {
            my $exception := $*BLOCK.add_tmp;
            my $value := $*BLOCK.add_tmp;
            Chunk.new($T_OBJ, $inner.expr, [
                "var {$comp.mangle_name($node.name)} = function(value) \{$value = value; throw $exception\};\n",
                "try \{\n",
                $inner,
                "\} catch (e) \{ if (e === $exception) \{return $value\} else \{ throw e \}\}"
            ]);
        } else {
            $inner;
        }
    });


    add_op('control', sub ($comp, $node, :$want) {
        $comp.throw_control_exception($node.name, $*LOOP, $node[0]);
    });

    add_simple_op('create', $T_OBJ, [$T_OBJ], :sideffects);

    add_simple_op('die', $T_VOID, [$T_STR], :sideffects, sub ($msg) {"{$*CTX}.die($msg)"});


    add_simple_op('how', $T_OBJ, [$T_OBJ], sub ($obj) {"$obj._STable.HOW"});
    add_simple_op('who', $T_OBJ, [$T_OBJ], sub ($obj) {"$obj._STable.WHO"});
    add_simple_op('setwho', $T_OBJ, [$T_OBJ, $T_OBJ], sub ($obj, $who) {"($obj._STable.WHO = $who, $obj)"}, :sideffects);

    add_simple_op('rebless', $T_OBJ, [$T_OBJ, $T_OBJ], :sideffects);
    add_simple_op('composetype', $T_OBJ, [$T_OBJ, $T_OBJ], :sideffects);

    add_simple_op('where', $T_INT, [$T_OBJ]);

    # HACK
    # TODO think what we should return on 1.WHAT and "foo".WHAT
    add_simple_op('what', $T_OBJ, [$T_OBJ], sub ($obj) {"($obj._STable ? $obj._STable.WHAT : null)"});

    add_simple_op('knowhowattr', $T_OBJ, [], sub () {"nqp.knowhowattr"});
    add_simple_op('knowhow', $T_OBJ, [], sub () {"nqp.knowhow"});

    add_simple_op('atkey', $T_OBJ, [$T_OBJ, $T_STR], sub ($hash, $key) {"$hash.\$\$atkey($key)"});

    for <savecapture usecapture> -> $op {
        add_simple_op($op, $T_OBJ, [], sub () {
            "nqp.op.savecapture(Array.prototype.slice.call(arguments))"
        } , :sideffects);
    }

    add_simple_op('getlexdyn', $T_OBJ, [$T_STR], sub ($name) {"{$*CTX}.lookup_dynamic_from_caller($name)"});

    add_simple_op('captureposelems', $T_INT, [$T_OBJ]);
    add_simple_op('captureposarg', $T_OBJ, [$T_OBJ, $T_INT]);
    add_simple_op('invokewithcapture', $T_OBJ, [$T_OBJ, $T_OBJ], sub ($invokee, $capture) {
        "$invokee.\$apply([{$*CTX}].concat($capture.named, $capture.pos))"
    }, :sideffects);


    # TODO implement the multi method cache for better performance
    add_simple_op('multicachefind', $T_INT, [$T_OBJ, $T_OBJ], sub ($cache, $capture) {"null"});
    add_simple_op('multicacheadd', $T_INT, [$T_OBJ, $T_OBJ, $T_OBJ], sub ($cache, $capture, $result) {
        $cache;
    });

    add_simple_op('settypecache', $T_OBJ, [$T_OBJ, $T_OBJ], :sideffects);
    add_simple_op('setmethcache', $T_OBJ, [$T_OBJ, $T_OBJ], :sideffects);
    add_simple_op('setmethcacheauth', $T_OBJ, [$T_OBJ, $T_INT], :sideffects);

    add_simple_op('getcodename', $T_OBJ, [$T_OBJ]);
    add_simple_op('setcodename', $T_OBJ, [$T_OBJ, $T_STR], :sideffects);

    add_simple_op('getcodeobj', $T_OBJ, [$T_OBJ]);
    add_simple_op('setcodeobj', $T_OBJ, [$T_OBJ, $T_OBJ], :sideffects);

    add_simple_op('box_i', $T_OBJ, [$T_INT, $T_OBJ]);
    add_simple_op('unbox_i', $T_INT, [$T_OBJ]);

    add_simple_op('iseq_I', $T_INT, [$T_OBJ, $T_OBJ]);

    # bigint arithmetic operators operators

    add_simple_op('mul_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('add_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('sub_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('div_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('pow_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ]);

    # bigint binary operators

    add_simple_op('bitor_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('bitxor_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('bitand_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('bitneg_I', $T_OBJ, [$T_OBJ, $T_OBJ]);
    add_simple_op('bitshiftl_I', $T_OBJ, [$T_OBJ, $T_INT, $T_OBJ]);
    add_simple_op('bitshiftr_I', $T_OBJ, [$T_OBJ, $T_INT, $T_OBJ]);

    add_simple_op('fromstr_I', $T_OBJ, [$T_STR, $T_OBJ]);
    add_simple_op('tostr_I', $T_STR, [$T_OBJ]);

    add_simple_op('base_I', $T_STR, [$T_OBJ, $T_INT]);


    add_simple_op('div_In', $T_NUM, [$T_OBJ, $T_OBJ]);
    add_simple_op('isle_I', $T_INT, [$T_OBJ, $T_OBJ]);
    add_simple_op('islt_I', $T_INT, [$T_OBJ, $T_OBJ]);
    add_simple_op('isgt_I', $T_INT, [$T_OBJ, $T_OBJ]);

    add_simple_op('gcd_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('lcm_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('isprime_I', $T_INT, [$T_OBJ, $T_INT]);

    add_simple_op('rand_I', $T_OBJ, [$T_OBJ, $T_OBJ]);
    add_simple_op('expmod_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('bool_I', $T_INT, [$T_OBJ]);

    add_simple_op('tonum_I', $T_NUM, [$T_OBJ]);
    add_simple_op('fromnum_I', $T_OBJ, [$T_NUM, $T_OBJ]);


    add_simple_op('curcode', $T_OBJ, []);
    add_simple_op('callercode', $T_OBJ, []);

    method compile_op($comp, $op, :$want) {
        my str $name := $op.op;
        if nqp::existskey(%ops, $name) {
            %ops{$name}($comp, $op, :$want);
        } else {
            $comp.NYI("unimplemented QAST::Op {$op.op}");
        }
    }
}


class RegexCompiler {
    has $!compiler; # a QAST::CompilerJS instance

    has $!label; # the label we will jump to on the next while loop iteration

    has $!js_loop_label; # we need this call break to stop the while loop 

    has $!unique_label; # we need a supply of unique labels

    has $!fail_label; # when we fail and need to backtrack
    has $!done_label; # when we can't backtrack no more
    has $!initial_label; # when we can't backtrack no more

    has $!cursor;
    has $!target; # the string we are matching against
    has $!pos; # the position in $!target we are currently at
    has $!curclass; # the class of the object in $!cursor
    has $!bstack;
    has $!restart;
    has $!cstack;
    has $!subcur;
    has $!rep;

    method compile($node) {
        # TODO better name for $start
        # we need to unpack the array we !cursor_start_all into a bunch of variables 
        my $start := $*BLOCK.add_tmp();

        my $jump := $*BLOCK.add_tmp();
        my $cstack_top := $*BLOCK.add_tmp();

        Chunk.new($T_OBJ, $!cursor, [
            "{$!label} = {$!initial_label};\n",
            "$start = self['!cursor_start_all']({$*CTX}, \{\});\n",
            "{$!cursor} = $start[0];\n",
            "{$!target} = $start[1];\n",
            "{$!pos} = $start[2];\n",
            "{$!curclass} = $start[3];\n",
            "{$!bstack} = $start[4];\n",
            "{$!restart} = $start[5];\n",
            "{$!js_loop_label}: while (1) \{\nswitch ({$!label}) \{\n",

            self.case($!initial_label),
            self.compile_rx($node),

            self.case($!fail_label),
            "if ($!bstack.length == 0) \{{self.goto($!done_label)}\}\n",
            "$cstack_top = $!bstack.pop();\n",
            "if ($!cstack && $!cstack.length != 0) \{\n",
            "$!subcur = $!cstack[$cstack_top-1];\n",
            "\}\n",
            "$!rep = $!bstack.pop();\n$!pos=$!bstack.pop();\n$jump=$!bstack.pop();\n",
            "if ($!pos < -1) \{{self.goto($!done_label)}\}\n",
            "if ($!pos < 0) \{{self.fail}\}\n",
            "if ($jump == 0) \{{self.fail}\}\n",
            "if (!($!cstack instanceof Array)) \{{self.goto($jump)}\}\n",
            "if ($!bstack.length == 0) \{$!cstack.length = 0;{self.goto($jump)}\}\n",
            "$!cstack.length = $!bstack[$!bstack.length-1];\n",
            self.goto($jump),

            self.case($!done_label),
            "{$!cursor}['!cursor_fail']({$*CTX}, \{\});\n",
            "break {$!js_loop_label}\n",
            "\}\n\}\n"
        ]);
    }

    method compile_rx($node) {
        my $rxtype := $node.rxtype() || 'concat';
        if nqp::can(self, $rxtype) {
            self."$rxtype"($node);
        } else {
            $!compiler.NYI("NYI QAST::Regex rxtype = {$node.rxtype}");
        }
    }
    
    method concat($node) {
        my @setup;
        for $node.list {
            @setup.push(self.compile_rx($_));
        }
        Chunk.new($T_VOID, "", @setup);
    }

    method literal($node) {
        my $const := $node.subtype eq 'ignorecase' ?? nqp::lc($node[0]) !! $node[0];
        my $qconst := quote_string($const);
        my $constlen := nqp::chars($const);
        my $cmpop := $node.negate ?? '==' !! '!=';
        my $str := "{$!target}.substr({$!pos},$constlen)";
        if $node.subtype eq 'ignorecase' {
            $str := "$str.toLowerCase()";
        }
        "if ($str $cmpop $qconst) \{{self.fail}\} else \{{$!pos}+=$constlen\}\n";
    }

    method scan($node) {
        my $loop := self.new_label;
        my $scan := self.new_label;
        my $done := self.new_label;

        "if (self['\$!from'] != -1) \{{self.goto($done)}\}\n" # HACK
        ~ self.goto($scan)
        ~ self.case($loop)
        ~ "$!pos++;\n"
        ~ "if ($!pos >= $!target.length) \{{self.fail}\}\n"
        ~ "$!cursor['\$!from'] = $!pos;\n" # HACK
        ~ self.case($scan)
        ~ self.mark($loop,$!pos,0)
        ~ self.case($done);
    }

    method has_char() {
        "if ($!pos >= $!target.length) \{{self.fail()}\}";
    }

    method enumcharlist($node) {
        my $charlist := quote_string($node[0]);
        my $testop := $node.negate ?? '!=' !! '==';

        "if ($!pos >= $!target.length) \{{self.fail()}\}"
        ~ "if ($charlist.indexOf($!target.substr($!pos,1)) $testop -1) \{{self.fail()}\}"
        ~ ($node.subtype eq 'zerowidth' ?? '' !! "$!pos++;\n")
    }

    method charrange($node) {
        if $node[0] eq 'ignorecase' {
            $!compiler.NYI("charrange with ignorecase");
        } else {
            my $lower := $node[1].value;
            my $upper := $node[2].value;

            self.has_char 
            ~ "if ({$node.negate ?? "" !! "!"} ($!target.charCodeAt($!pos) >= $lower && $!target.charCodeAt($!pos) <= $upper)) \{"
            ~ self.fail ~ "\}\n"
            ~ "$!pos++;\n"
        }
    }

    method cclass_check($cclass,:$pos=$!pos,:$negated=0) {
        "if ({$negated ?? '' !! '!'}nqp.op.iscclass({%const_map{$cclass}},$!target,$pos)) \{{self.fail}\}\n";
    }

    method anchor($node) {
        if $node.subtype eq 'eos' {
            "if ($!pos < $!target.length) \{{self.fail}\}\n";
        } elsif $node.subtype eq 'bos' {
            "if ($!pos != 0) \{{self.fail}\}\n";
        } elsif $node.subtype eq 'lwb' {
            "if ($!pos >= $!target.length) \{{self.fail}\}\n"
            ~ self.cclass_check('CCLASS_WORD')
            ~ self.cclass_check('CCLASS_WORD', :negated(1), :pos("$!pos-1"));
        } elsif $node.subtype eq 'rwb' {
            "if ($!pos <= 0) \{{self.fail}\}\n"
            ~ self.cclass_check('CCLASS_WORD', :negated(1), :pos($!pos))
            ~ self.cclass_check('CCLASS_WORD', :pos("$!pos-1"));
        } elsif $node.subtype eq 'bol' {
            my $done_label := self.new_label;

            "if ($!pos == 0) \{{self.goto($done_label)}\}\n"
            ~ "if ($!pos >= $!target.length) \{{self.fail}\}\n"
            ~ self.cclass_check('CCLASS_NEWLINE',:pos("$!pos-1"))
            ~ self.case($done_label);
        } elsif $node.subtype eq 'eol' {
            my $done_label := self.new_label;

            "if (nqp.op.iscclass({%const_map<CCLASS_NEWLINE>},$!target,$!pos)) \{{self.goto($done_label)}\}\n"
            ~ "if ($!pos != $!target.length) \{{self.fail}\}\n"
            ~ "if ($!pos == 0) \{{self.goto($done_label)}\}\n"
            ~ self.cclass_check('CCLASS_NEWLINE', :negated(1), :pos("$!pos-1"))
            ~ self.case($done_label);
        } else {
            $!compiler.NYI("anchor type: {$node.subtype}");
        }
    }


    method pass($node) {
        my $name;

        if $node.name {
            $name := quote_string($node.name);
        } 
        elsif +@($node) == 1 {
            $name := $!compiler.as_js($node[0], :want($T_STR));
        }

        Chunk.void(
            "{$!cursor}['!cursor_pass']({$*CTX},",
            "\{backtrack: {$node.backtrack ne 'r'}\}, {$!pos}",
            (nqp::defined($name) ?? ',' ~ $name !! ''),
            ");\n",
            "break {$!js_loop_label};\n"
        );
    }


    method cclass($node) {
        my %cclass_code;
        %cclass_code<.>  := %const_map<CCLASS_ANY>;
        %cclass_code<d>  := %const_map<CCLASS_NUMERIC>;
        %cclass_code<s>  := %const_map<CCLASS_WHITESPACE>;
        %cclass_code<w>  := %const_map<CCLASS_WORD>;
        %cclass_code<n>  := %const_map<CCLASS_NEWLINE>;

        my $cclass := %cclass_code{ $node.name };
        my $code := "if ($!pos >= $!target.length) \{{self.fail()}\}\n";

        if $node.name ne '.' {
            $code := $code ~ "if ({$node.negate ?? '' !! '!'}nqp.op.iscclass($cclass,$!target,$!pos)) \{{self.fail}\}\n";
            if $node.name eq 'n' {
                $code := $code ~ "if ($!target.substr($!pos,2) == \"\\r\\n\") \{$!pos++\}\n";
            } 
        }
        $code := $code ~ "$!pos++;\n" unless $node.subtype eq 'zerowidth';
        $code;
    }

    my sub call($invocant, $method, *@args) {
        nqp::unshift(@args, $*CTX);
        nqp::unshift(@args, 'nqp.named([])');
        $invocant ~ "[" ~ quote_string($method) ~ "](" ~ nqp::join(",", @args) ~ ")";
    }

    method subrule($node) {
        my $captured := 0;


        my $call;

        if nqp::istype($node[0][0], QAST::SVal) {
            my @args := nqp::clone($node[0].list);
            my $method := @args.shift.value;
            my $compiled_args := $!compiler.args(@args);

            my $invocation;
            if nqp::islist($compiled_args) {
                $compiled_args := $!compiler.merge_arg_groups($compiled_args);
                $invocation := ".apply({$!cursor},";
            } else {
                $invocation := '(';
            }

            $call := Chunk.new($T_OBJ,
                $!cursor ~ '[' ~ quote_string($method) ~ "]" ~ $invocation ~ $compiled_args.expr ~ ')',
                [$compiled_args]);
        }
        else {
            #TODO think if arguments are possible, etc.
            my $block := $!compiler.as_js($node[0][0], :want($T_OBJ));
            $call := Chunk.new($T_OBJ, $block.expr ~ ".\$call({$*CTX},nqp.named([]),$!cursor)", [$block]);
        }

        my $testop := $node.negate ?? '>=' !! '<';

        my $subcur := $*BLOCK.add_tmp;

        my $capture_code := '';

        if $node.subtype ne 'zerowidth' {
            my $pass_label := self.new_label();
            if $node.backtrack eq 'r' {
                unless $node.subtype eq 'method' {
                    $capture_code := self.mark($pass_label,-1,0) ~ self.case($pass_label);
                }
            }
            else {


                my $back_label := self.new_label();

                $capture_code := $capture_code
                    ~ self.goto($pass_label)
                    ~ self.case($back_label)
                    ~ "$subcur =" ~ call($!subcur, "!cursor_next") ~ ";\n"
                    ~ "if($subcur['$!pos'] $testop 0) \{{self.fail}\};\n"
                    ~ self.case($pass_label);

                if $node.subtype eq 'capture' {
                    $capture_code := $capture_code
                        ~ "$!cstack = " 
                        ~ call($!cursor, "!cursor_capture", $subcur, quote_string($node.name)) ~ ";\n";
                    $captured := 1;
                }
                else {
                    $capture_code := $capture_code
                        ~ "$!cstack = "
                        ~ call($!cursor, "!cursor_push_cstack", $subcur) ~ ";\n" ~
                        ~  "$!bstack.push($back_label, 0, $!pos, $!cstack.length);\n";
                }
                
           }
        }

        if !$captured && $node.subtype eq 'capture' {
            $capture_code := $capture_code
                ~ "$!cstack = " ~
                call($!cursor, "!cursor_capture", $subcur,  quote_string($node.name)) ~ ";\n"
        }

        # TODO proper $!pos access
        Chunk.void(
            "$!cursor['\$!pos\'] = $!pos;\n",
            $call,
            "$subcur = {$call.expr};\n",
            "if ($subcur['\$!pos\'] $testop 0) \{{self.fail}\}\n",
            $capture_code,

            ($node.subtype eq 'zerowidth' ?? '' !! "$!pos = $subcur['\$!pos\'];\n")
        );
    }


    method subcapture($node) {
        my $done_label := self.new_label; 
        my $fail_label := self.new_label; 

        my $subcapture_from := $*BLOCK.add_tmp;
        my $subcur := $*BLOCK.add_tmp;

        Chunk.void(
            self.mark($fail_label,$!pos,0),
            self.compile_rx($node[0]),
            self.peek($fail_label,$subcapture_from),
            "$!cursor['\$!pos\'] = $!pos;\n",
            "$subcur = " ~ call($!cursor, '!cursor_start_subcapture', $subcapture_from) ~ ";\n",
            call($subcur, '!cursor_pass', $!pos) ~ ";\n",
            "$!cstack = " ~ call($!cursor, '!cursor_capture', $subcur, quote_string($node.name)) ~ ";\n",
            self.goto($done_label),
            self.case($fail_label),
            self.fail(),
            self.case($done_label)
        );
    }

    method qastnode($node) {
        my $code := $!compiler.as_js($node[0], :want($T_BOOL));

        Chunk.void(
            "$!cursor['\$!pos\'] = $!pos;\n",
            $!compiler.mangle_name("$¢") ~ " = $!cursor;\n",
            $code,
            $node.subtype eq 'zerowidth' ??
                "if ({$node.negate ?? '' !! '!'}{$code.expr}) \{{self.fail}\}\n"
                !! ""
        );
    }

    method quant($node) {
        my $min       := $node.min;
        my $max       := $node.max;
        my $needrep   := $min > 1 || $max > 1;
        my $needmark  := $needrep || $node.backtrack eq 'r';
        my $sep       := $node[1];
        my $loop := self.new_label;
        my $done := self.new_label;

        my $rep := $*BLOCK.add_tmp();

        # TODO - think about removing irep

        if $min == 0 && $max == 0 {
            # Nothing to do, and nothing to backtrack into.
            "";
        } elsif $node.backtrack eq 'f' {
            my $irep := $*BLOCK.add_tmp();
            my $seplabel := self.new_label;

            Chunk.void(
                "$rep = 0;\n",
                 ($min < 1 ?? self.mark($loop,$!pos,$rep) ~ self.goto($done) !! ''),
                 ($sep ?? self.goto($seplabel) !! ''),
                 self.case($loop),
                 "$irep = $rep;\n",
                 ($sep ?? self.compile_rx($sep) ~ self.case($seplabel) !! ''),
                 ($sep ?? self.case($seplabel) !! ''),
                 self.compile_rx($node[0]),
                 self.case($loop),
                 "$rep = $irep;\n",
                 "$rep++;\n",
                 ($min > 1 ?? "if ($rep < $min) \{{self.goto($loop)}\}\n" !! ''),
                 ($max > 1 ?? "if ($rep >= $max) \{{self.goto($done)}\}\n" !! ''),
                 ($max != 1 ?? self.mark($loop, $!pos, $rep) !! ''),
                 self.case($done)
           );
        } else {
            my @code;

            if $min == 0 { @code.push(self.mark($done,$!pos,0)) }
            elsif $needmark { @code.push(self.mark($done,-1,0)) }

            @code.push(self.case($loop));
            @code.push(self.compile_rx($node[0]));

            if $needmark {
                @code.push(self.peek($done, '*', $rep));
                @code.push($node.backtrack eq 'r' ?? self.commit($done)  !! '');
                @code.push("$rep++;\n");
                @code.push(($max > 1 ?? "if ($rep >= {$node.max}) \{{self.goto($done)}\}\n" !! ''));
            }
            unless $max == 1 {
                @code.push(self.mark($done, $!pos, $rep));
                @code.push($sep ?? self.compile_rx($sep) !! '');
                @code.push(self.goto($loop));
            }

            @code.push(self.case($done));
            @code.push($min > 1 ?? "if ($rep < {+$node.min}) \{{self.fail}\}" !! "");

            Chunk.new($T_VOID, "", @code);
        }
    }

    method altseq($node) {
        my @code;

        my $iter     := nqp::iterator($node.list);
        my $endlabel := self.new_label;
        my $altlabel := self.new_label;
        my $acode    := self.compile_rx(nqp::shift($iter));

        while $iter {
            @code.push(self.case($altlabel));
            $altlabel := self.new_label;

            @code.push(self.mark($altlabel, $!pos, 0));
            @code.push($acode);
            @code.push(self.goto($endlabel));

            $acode := self.compile_rx(nqp::shift($iter));
        }

        @code.push(self.case($altlabel));
        @code.push($acode);
        @code.push(self.case($endlabel));

        Chunk.void(|@code);
    }

    method alt($node) {
        unless $node.name {
            return self.altseq($node);
        }

        # Calculate all the branches to try, which populates the bstack
        # with the options. Then immediately fail to start iterating it.

        my $end_label := self.new_label;


        my @alt_code;
        my @alt_labels;

        # Emit all the possible alternations.
        my $iter     := nqp::iterator($node.list);
        while $iter {
            my $alt_label := self.new_label;

            @alt_code.push(self.case($alt_label));
            @alt_code.push(self.compile_rx(nqp::shift($iter)));
            @alt_code.push(self.goto($end_label));

            @alt_labels.push(~$alt_label);
        }

        Chunk.void(
            "$!subcur = [{nqp::join(',',@alt_labels)}];\n",
             self.mark($end_label, -1, 0),
             call($!cursor, '!alt', $!pos, quote_string($node.name), $!subcur) ~ ";\n",
             self.fail,
             Chunk.void(|@alt_code),
             self.case($end_label),
            ($node.backtrack eq 'r' ?? self.commit($end_label) !! '')
        );
    }

    method conjseq($node) {

        my $conj_label := self.new_label;
        my $first_label := self.new_label;

        my $iter := nqp::iterator($node.list);
        # make a mark that holds our starting position in the pos slot

        my $start_pos := $*BLOCK.add_tmp;
        my $end_pos := $*BLOCK.add_tmp;

        my @code;

        @code.push(
            self.mark($conj_label, $!pos, 0)
            ~ self.goto($first_label)
            ~ self.case($conj_label)
            ~ self.fail()

            # call the first child
            ~ self.case($first_label)
        );
        @code.push(self.compile_rx(nqp::shift($iter)));

        # use previous mark to make one with pos=start, rep=end
        @code.push(
            self.peek($conj_label, $start_pos)
            ~ self.mark($conj_label, $start_pos, $!pos));

        while $iter {
            @code.push("$!pos = $start_pos;\n");
            @code.push(self.compile_rx(nqp::shift($iter)));
            @code.push(
                self.peek($conj_label, $start_pos, $end_pos)
                ~ "if ($!pos != $end_pos) \{{self.fail()}\}\n"
            );
        }
        if $node.subtype eq 'zerowidth' {
            @code.push("$!pos = $start_pos;\n");
        }

        Chunk.void(|@code);
    }

    method conj($node) { self.conjseq($node) }

    method BUILD(:$compiler) {
        $!compiler := $compiler;

        $!unique_label := 0;

        $!label := $*BLOCK.add_tmp();

        $!cursor := $*BLOCK.add_tmp();
        $!target := $*BLOCK.add_tmp();
        $!pos := $*BLOCK.add_tmp();
        $!curclass := $*BLOCK.add_tmp();
        $!bstack := $*BLOCK.add_tmp();
        $!restart := $*BLOCK.add_tmp();
        $!cstack := $*BLOCK.add_tmp();
        $!subcur := $*BLOCK.add_tmp();
        $!rep := $*BLOCK.add_tmp();

        $!fail_label := self.new_label;
        $!done_label := self.new_label;
        $!initial_label := self.new_label;

        $!js_loop_label := QAST::Node.unique('js_regex_loop_label');
    }

    # labels are just integers the case statement matches on
    method new_label() {
        $!unique_label++;
    }

    method case($label) {
        "case $label:\n"
    }

    method goto($label) {
        "$!label = $label;break;\n"; 
    }

    method peek($mark, *@regs) {
        my $code := "var peek = nqp.regexPeek($!bstack, $mark);\n";
        for @regs {
            $code := $code ~ "peek++;\n";
            $code := $code ~ "$_ = $!bstack[peek]\n;" if $_ ne '*';
        }
        $code;
    }

    method commit($label) {
        "nqp.regexCommit($!bstack,$label);\n";
    }

    # push a new backtracking mark on the bstack with label $label, position $pos and count $count.
    # (all arguments are taken as js code snippets).
    method mark($label,$pos,$count) {
      "$!bstack.push($label,$pos,$count,$!bstack.length ? $!bstack[$!bstack.length-1] : 0);\n";
    }

    method fail() {
        self.goto($!fail_label);
    }


}

class QAST::CompilerJS does DWIMYNameMangling does SerializeOnce {
    has $!nyi;

    #= If the env var NQPJS_LOG is set log to nqpjs.log
    method log(*@msgs) {
        my %env := nqp::getenvhash();
        if %env<NQPJS_LOG> {
            my $log := nqp::open('nqpjs.log', 'wa');
            nqp::printfh($log, nqp::join(',', @msgs) ~ "\n");
            nqp::closefh($log);
        }
    }

    # Holds information about the QAST::Block we're currently compiling.
    # The currently compiled block is stored in $*BLOCK
    my class BlockInfo {
        has $!qast;             # The QAST::Block
        has $!outer;            # Outer block's BlockInfo
        has @!js_lexicals;      # javascript variables we need to declare for the block
        has $!tmp;              # We use a bunch of TMP{$n} to store intermediate javascript results
        has $!ctx;              # The object we keep dynamic variables and exception handlers in
        has %!lexotic;          
        has @!params;           # the parameters the block takes
        has @!variables;        # the variables declared in this block

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
            @!variables := nqp::list();
            $!tmp := 0;
            %!lexotic := nqp::hash();
        }

        method add_js_lexical($name) {
            @!js_lexicals.push($name);
        }

        method add_variable($var) {
            @!variables.push($var);
        }

        method register_lexotic($name) {
            %!lexotic{$name} := 0;
        }

        method mark_local_lexotic_usage($name) {
            %!lexotic{$name} := 1;
        }

        method is_lexotic_used($name) {
            %!lexotic{$name} == 1;
        }

        method is_local_lexotic($name) {
            nqp::existskey(%!lexotic, $name);
        }

        method mark_lexotic_usage($name) {
            my $block := self;
            while $block {
                if $block.is_local_lexotic($name) {
                    $block.mark_local_lexotic_usage($name);
                    return;
                }
                $block := $block.outer;
            }
        }
        method is_lexotic($name) {
            my $block := self;
            while $block {
                if $block.is_local_lexotic($name) {
                    return 1;
                }
                $block := $block.outer;
            }
            return 0;
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
        method variables() { @!variables }
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

        @groups[0].unshift($*CTX);

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

    method merge_arg_groups($groups) {
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

    method compile_sig(@params) {
        my $slurpy_named; # *%foo
        my $slurpy;       # *@foo

        my @sig := ['caller_ctx','_NAMED'];
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
                my $name := self.mangle_name($_.name);
                if $_.default {
                    # Overwriting a parameter makes the v8 optimizer bail out so to avoid that we introduce a new variable
                    my $tmp := self.unique_var($name~'_');

                    $*BLOCK.add_js_lexical($name);
                    @sig.push($tmp);
                    my $default_value := self.as_js($_.default, :want($T_OBJ));
                    @setup.push(Chunk.void(
                        "if (arguments.length < {+@sig}) \{\n",
                         $default_value,
                         "$name = {$default_value.expr};\n\} else \{\n$name = $tmp;\n\}\n"
                    ));

                } else {
                    @sig.push($name);
                }
            }
        }

        if $slurpy {
            @setup.push("{self.mangle_name($slurpy.name)} = Array.prototype.slice.call(arguments,{+@sig});\n");
        }
        if $slurpy_named {
            @setup.push("{self.mangle_name($slurpy_named.name)} = nqp.slurpy_named(_NAMED);\n");
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
                return Chunk.new($desired, 'nqp.' ~ %convert{$desired} ~ '(' ~ $chunk.expr ~ ", {$*CTX})", [$chunk]);
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

    method handle_control($loop, $body) {
        if nqp::elems($loop.handled) > 0 {
            my $setup_label := "";
            my $check_label := "e.label === null";

            if $loop.label {
                $setup_label := self.as_js($loop.label, :want($T_OBJ));
                $check_label := $check_label ~ ' || e.label === ' ~ $setup_label.expr;
            }


            my @handle_exceptions;

            for $loop.handled -> $type {
                @handle_exceptions.push("if (e instanceof nqp.{ucfirst($type)} && ($check_label)) \{ {self.do_control($type, $loop) } \}\n");
            }

            Chunk.new($body.type, $body.expr, [
                $setup_label,
                "try \{\n",
                $body,
                "\} catch (e) \{\n",
                Chunk.void(|@handle_exceptions),
                "throw (e);",
                "\}\n"
            ]);
        } else {
            $body;
        }
    }


    # It's more usefull for me during this development to emit partial code instead of quiting
    method NYI($msg) {
        if $!nyi eq 'ignore' {
        } elsif $!nyi eq 'warn' {
            nqp::printfh(nqp::getstderr(), "NYI: $msg\n");
        }
        Chunk.new($T_VOID,"NYI({quote_string($msg)})",["console.trace(\"NYI: \"+{quote_string($msg)});\n"]);
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
        my $outer_loop := try $*LOOP;
        self.compile_block($node, $outer, $outer_loop, :$want);
    }

    method mangled_cuid($cuid) {
        my $ret := '';
        for nqp::split('',$cuid) -> $c {
            $ret := $ret ~ ($c eq '.' ?? '_' !! $c); 
        }
        $ret;
    }


    has %!cuids;

    method register_cuid($node) {
        %!cuids{$node.cuid} := $node;
    }

    method is_known_cuid($node) {
        nqp::existskey(%!cuids, $node.cuid);
    }

    method setup_cuids() {
        my @cuids;
        for %!cuids {
            @cuids.push("{self.mangled_cuid($_.key)} = new nqp.CodeRef({quote_string($_.value.name)},{quote_string($_.key)})");
        }
        self.declare_js_vars(@cuids);
    }

    method stored_result($chunk, :$want) {
        if $chunk.type == $T_VOID || $want == $T_VOID {
            Chunk.void($chunk, $chunk.expr~";\n");
        } else {
            my $tmp := $*BLOCK.add_tmp();
            Chunk.new($chunk.type, $tmp, [$chunk, "$tmp = {$chunk.expr};\n"]);
        }
    }

    # We try to use native js lexpads as much as we can to have a chance of decent programs
    # Instead of implementing forceouterctx we use this hack to support settings.
    method setup_setting($node) {
        if nqp::eqaddr($node, $*SETTING_TARGET) {
            my @imported;
            for $node.symtable -> $symbol {
                @imported.push("{self.mangle_name($symbol.key)} = setting[{quote_string($symbol.key)}]");
            }
            "var setting = nqp.setup_setting({quote_string($*SETTING_NAME)});\n"
            ~ self.declare_js_vars(@imported);
        } else {
            '';
        }
    }


    has %!serialized_code_ref_info;

    my class SerializedCodeRefInfo {
        has $!closure_template;
        has $!static_info;
        has $!ctx;
        has $!outer_ctx;
        method ctx() {$!ctx}
        method outer_ctx() {$!outer_ctx}
        method static_info() {$!static_info}
        method closure_template() {$!closure_template}
    }

    method static_info_for_lexicals(BlockInfo $block) {
        my @static_info;
        for $block.variables -> $var {
            nqp::push(@static_info,quote_string($var.name)
                ~ ': [' ~ nqp::objprimspec($var.returns) ~ ',' ~ quote_string(self.mangle_name($var.name)) ~ ']');
        }
        '{' ~ nqp::join(',', @static_info) ~ '}';
    }

    method compile_block(QAST::Block $node, $outer, $outer_loop, :$want, :@extra_args=[]) {
        my $cuid := self.mangled_cuid($node.cuid);

        my $setup;

        my $outer_ctx := try $*CTX;

        if self.is_known_cuid($node) {
            $setup := [];
        } else {
            self.register_cuid($node);
            my $*BINDVAL := 0;
            my $*BLOCK := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu));

            my $*LOOP := BlockBarrier.new($*BLOCK, $outer_loop);

            my $*CTX;
            my $create_ctx := self.create_fresh_ctx();

            my $body_want := $node.blocktype eq 'immediate' ?? $want !! $T_OBJ;

            my $stmts := self.compile_all_the_statements($node, $body_want);

            my $sig := self.compile_sig($*BLOCK.params);

            # Set code object, if any.
            my $set_code_object := '';
            my $code_obj := $node.code_object;
            if nqp::isconcrete($code_obj) {
                 $set_code_object := ".setCodeObj({self.value_as_js($code_obj)})";
            }

            $setup := [
                ];

            my $function := [
                "function({$sig.expr}) \{\n",
                self.setup_setting($node),
                self.declare_js_vars($*BLOCK.tmps),
                self.declare_js_vars($*BLOCK.js_lexicals),
                $sig,
                $create_ctx,
                $stmts,
                "return {$stmts.expr};\n",
                "\}"
            ];

            $setup := nqp::clone($function);

            nqp::unshift($setup, $cuid ~ $set_code_object ~ ".block(");
            nqp::push($setup, ");\n");

            if self.is_block_part_of_sc($node) {
                if $node.blocktype eq 'immediate' {
                    # TODO think about that, and find a way to test this
                    #say("// it's an immediate one");
                } else {
                    %!serialized_code_ref_info{$node.cuid} := SerializedCodeRefInfo.new(
                        closure_template => Chunk.new($T_OBJ, "", $function).join(),
                        ctx => $*CTX,
                        outer_ctx => (nqp::defined($*BLOCK.outer) ?? $*BLOCK.outer.ctx !! ""),
                        static_info => self.static_info_for_lexicals($*BLOCK)
                    );
                }
            }

        }

        if $node.blocktype eq 'immediate' {
            my @args := [$outer_ctx,'{}'];
            for @extra_args -> $arg {
                @args.push($arg.expr);
                $setup.push($arg);
            }
            self.stored_result(Chunk.new($want, $cuid~".\$call({nqp::join(',', @args)})", $setup, :$node), :$want);
        } else {
            Chunk.new($T_OBJ, $cuid, $setup);
        }
    }

    has $!unique_vars;

    # TODO avoid accidental name collisions 
    method unique_var($prefix) {
        $!unique_vars := $!unique_vars + 1;
        $prefix~$!unique_vars;
    }

    method create_fresh_ctx() {
        $*CTX := self.unique_var('ctx');
        $*BLOCK.ctx($*CTX);
        self.create_ctx($*CTX);
    }

    method outer_ctx() {
        $*BLOCK.outer ?? $*BLOCK.outer.ctx !! 'null';
    }

    method create_ctx($name) {
        # TODO think about contexts
        #"var $name = new nqp.Ctx(caller_ctx,{self.outer_ctx},'$name');\n";
        "var $name = new nqp.Ctx(caller_ctx, {self.outer_ctx});\n";
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
        # for performance purposes we use the native js lexicals as much as possible, that means we need hacks for things that other backends can do easily with all the various ctx ops
        if self.is_ctxsave($node) {
            my @lexicals;
            for $*BLOCK.variables -> $var {
                @lexicals.push(quote_string($var.name) ~ ': ' ~ self.mangle_name($var.name));
            }
            Chunk.void("nqp.ctxsave(\{{nqp::join(',', @lexicals)}\});\n");
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
            my $s := nqp::atpos_s($sc_sh,$i);
            my $got := nqp::isnull_s($s) ?? 'null' !! quote_string($s);
            @sh.push($got);
            $i := $i + 1;
        }

        my $quoted_data := nqp::isnull_s($sc_data) ?? 'null' !! quote_string($sc_data);

        my $code_ref_blocks := $ast.code_ref_blocks();

        my @blocks;
        for $code_ref_blocks -> $block {
            @blocks.push(self.mangled_cuid($block.cuid));
        }

        my $set_info := '';
        for $code_ref_blocks -> $block {
            if nqp::existskey(%!serialized_code_ref_info, $block.cuid) {
                my $info := %!serialized_code_ref_info{$block.cuid};
                
                $set_info := $set_info
                    ~ self.mangled_cuid($block.cuid)
                    ~ ".setInfo("
                    ~ quote_string($info.ctx) ~ ","
                    ~ quote_string($info.outer_ctx) ~ ","
                    ~ quote_string($info.closure_template) ~ ","
                    ~ $info.static_info
                    ~ ");\n";
            }
        }

        "var sh=[{nqp::join(',',@sh)}];\n"
        ~ "var sc = nqp.op.createsc({quote_string(nqp::scgethandle($sc))});\n"
        ~ "var code_refs = [{nqp::join(',',@blocks)}];\n" # TODO
        ~ $set_info
        ~ "nqp.op.deserialize($quoted_data,sc,sh,code_refs,null);\n"
        ~ "nqp.op.scsetdesc(sc,{quote_string(nqp::scgetdesc($sc))});\n"
    }

    method do_control($type, $loop) {
        if $type eq 'last' {
            "break;\n";
        } elsif $type eq 'next' {
            "continue;\n";
        } elsif $type eq 'redo' {
            "{$loop.redo} = 1;\n;continue;\n";
        }
    }

    my sub ucfirst($str) {
        nqp::uc(nqp::substr($str, 0, 1)) ~ nqp::substr($str, 1);
    }

    method throw_control_exception($type, $loop, $label) {
        while nqp::defined($loop) {
            if $loop ~~ LoopInfo {
                if $label {
                    # TODO compare labels which are WVals to reduce the number of loops that catch exceptions
                    $loop.handle($type);
                } else {
                    $loop.handle($type);
                    return Chunk.void("throw new nqp.{ucfirst($type)}(null);\n");
                }
            }
            $loop := $loop.outer;
        }

        if $label {
            my $compiled_label := self.as_js($label, :want($T_OBJ));
            Chunk.void($compiled_label, "throw new nqp.{ucfirst($type)}({$compiled_label.expr});\n");
        } else {
            self.NYI("can't find surrounding loop for last");
        }
    }

    multi method as_js(QAST::CompUnit $node, :$want) {
        # Should have a single child which is the outer block.
        if +@($node) != 1 || !nqp::istype($node[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
        }

        my $*COMPUNIT := $node;

        my $*SETTING_NAME;
        my $*SETTING_TARGET;

        my $pre := '';

        for $node.pre_deserialize -> $obj {
            if nqp::istype($obj, QAST::Stmts) {
                for $obj.list -> $op {
                    if nqp::istype($op, QAST::Op) && $op.op eq 'forceouterctx' {
                        $*SETTING_NAME := $op[1][1].value;
                        $*SETTING_TARGET := $op[0].value;
                        $pre := $pre ~ "nqp.load_setting({quote_string($*SETTING_NAME)});\n";
                    } elsif nqp::istype($op, QAST::Op)
                        && $op.op eq 'callmethod'
                        && $op.name eq 'load_module' {
                        $pre := $pre ~ "nqp.load_module({quote_string($op[1].value)});\n";
                    } else {
#                        self.log($op.dump);
                    }
                }
            }
        }

        my @post;
        for $node.post_deserialize -> $node {
            self.log($node.dump);
            @post.push(self.as_js($node, :want($T_VOID)));
        }
        my $post := Chunk.new($T_VOID, "", @post);

        # Compile the block.
        my $block_js := self.as_js($node[0], :want($T_VOID));

        my $body;

        if nqp::defined($node.main) {
            my $main_block := QAST::Block.new($node.main);

            my $main := self.as_js($main_block, :want($T_VOID));

            $body := Chunk.void($block_js, $main, self.mangled_cuid($main_block.cuid) ~ ".\$call();\n");
            
        } else {
            $body := $block_js;
        }

        Chunk.void(self.setup_cuids(), $pre , self.create_sc($node), $post, $body);
    }


    method is_block_part_of_sc($block) {
        for $*COMPUNIT.code_ref_blocks() -> $block_in_compunit {
            if nqp::eqaddr($block, $block_in_compunit) {
                return 1;
            }
        }
        return 0;
    }

    method declare_var(QAST::Var $node) {
        # TODO vars more complex the non-dynamic lexicals
        if $node.decl eq 'var' || $node.decl eq 'static' {
            $*BLOCK.add_variable($node);
            my $static := $node.decl eq 'static' ?? " = {self.value_as_js($node.value)}" !! '';
            $*BLOCK.add_js_lexical(self.mangle_name($node.name) ~ $static);
        } elsif $node.decl eq 'param' {
            $*BLOCK.add_variable($node);
            if $node.scope eq 'local' || $node.scope eq 'lexical' {
                $*BLOCK.add_param($node);
            } else {
                nqp::die("Parameter cannot have scope '{$node.scope}'; use 'local' or 'lexical'");
            }
        } elsif $node.decl eq '' {
        } else {
            nqp::die("Unimplemented var declaration type {$node.decl}");
        }
    }

    multi method as_js(QAST::Var $node, :$want) {
        self.declare_var($node);
        self.compile_var($node);
    }

    multi method as_js(QAST::VarWithFallback $node, :$want) {
        my $var := self.compile_var($node);
        if $var.type == $T_OBJ {
            my $fallback := self.as_js($node.fallback, :want($T_OBJ));
            my $tmp := $*BLOCK.add_tmp();
            Chunk.new($T_OBJ, $tmp, [
                $var,
                "if ({$var.expr} == null) \{\n"
                    ,$fallback
                    ,"$tmp = {$fallback.expr};\n\} else \{\n$tmp = {$var.expr};\n\}\n"
                    ]);
        } else {
            $var;
        }
    }

    multi method as_js(QAST::Regex $node, :$want) {
        RegexCompiler.new(compiler => self).compile($node);
    }

    method value_as_js($value) {
        my $sc     := nqp::getobjsc($value);
        my $handle := nqp::scgethandle($sc);
        my $idx    := nqp::scgetobjidx($sc, $value);
        "nqp.wval({quote_string($handle)},$idx)";
    }

    multi method as_js(QAST::WVal $node, :$want) {
        Chunk.new($T_OBJ, self.value_as_js($node.value), []);
    }
    
    method var_is_lexicalish(QAST::Var $var) {
        $var.scope eq 'lexical' || $var.scope eq 'typevar';
    }

    method as_js_clear_bindval($node, :$want) {
        my $*BINDVAL := 0;
        self.as_js($node, :$want);
    }

    method is_dynamic_var($var) {
        # HACK due to a nqp misdesign we need a HACK
        # TODO Make nqp mark dynamic variables explicitly
        my $name := $var.name;
        if nqp::chars($name) > 2 {
            my str $sigil := nqp::substr($name, 0, 1);
            my str $twigil := nqp::substr($name, 1, 1);
            if $twigil eq '*' {
              return 1;
            }
        }
        return 0;
    }

    method atpos($array, $index, :$node) {
        my $array_chunk := self.as_js($array, :want($T_OBJ));
        my $index_chunk := self.as_js($index, :want($T_INT));
        Chunk.new($T_OBJ, "nqp.op.atpos({$array_chunk.expr},{$index_chunk.expr})", [$array_chunk, $index_chunk], :node($node));
    }

    method compile_var(QAST::Var $var) {
        if self.var_is_lexicalish($var) && self.is_dynamic_var($var) {
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                if $var.decl eq 'var' {
                    self.stored_result(Chunk.new($T_OBJ, "({$*CTX}[{quote_string($var.name)}] = {$bindval.expr})",  [$bindval]));
                } else {
                    self.stored_result(Chunk.new($T_OBJ, "{$*CTX}.bind({quote_string($var.name)}, {$bindval.expr})",  [$bindval]));
                }
            } else {
                if $var.decl eq 'var' {
                    self.stored_result(Chunk.new($T_OBJ, "({$*CTX}[{quote_string($var.name)}] = null)",  []));
                } else {
                    Chunk.new($T_OBJ, "{$*CTX}.lookup({quote_string($var.name)})", [], :node($var));
                }
            }
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
                my $bindval := $*BINDVAL;
                {
                    my $*BINDVAL;
                    self.bind_pos($var[0], $var[1], $bindval, :node($var));
                }
            } else {
                self.atpos($var[0], $var[1], :node($var));
            }
        } elsif ($var.scope eq 'associative') {
            # TODO work on things other than nqp lists
            # TODO think about nulls and missing elements
            if $*BINDVAL {
                my $bindval := $*BINDVAL;
                {
                    my $*BINDVAL;
                    self.bind_key($var[0], $var[1], $bindval, :node($var));
                }
            } else {
                my $hash := self.as_js($var[0], :want($T_OBJ));
                my $key := self.as_js($var[1], :want($T_STR));
                Chunk.new($T_OBJ, "{$hash.expr}.\$\$atkey({$key.expr})", [$hash, $key], :node($var));
            }
        } elsif ($var.scope eq 'attribute') {
            # TODO take second argument into account
            # TODO figure out if the second argument can be always assumed to be a WVal 
            # TODO types
            my $self := self.as_js_clear_bindval($var[0], :want($T_OBJ));
            my $attr := Chunk.new($T_OBJ, "{$self.expr}[{quote_string($var.name)}]", [$self]);
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                Chunk.new($T_OBJ, $bindval.expr, [$attr, $bindval, "{$attr.expr} = {$bindval.expr};\n"]);
            } else {
                $attr;
            }
        } elsif ($var.scope eq 'contextual') {
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                self.stored_result(Chunk.new($T_OBJ, "{$*CTX}.bind_dynamic({quote_string($var.name)},{$bindval.expr})", [$bindval]));
            } else {
                Chunk.new($T_OBJ, "{$*CTX}.lookup_dynamic({quote_string($var.name)})", []);
            }
        } else {
            self.NYI("Unimplemented QAST::Var scope: " ~ $var.scope);
        }
    }

    method bind_key($hash, $key, $value, :$node) {
        my $hash_chunk := self.as_js($hash, :want($T_OBJ));
        my $key_chunk := self.as_js($key, :want($T_STR));
        my $value_chunk := self.as_js($value, :want($T_OBJ));

        Chunk.new($T_OBJ, $value_chunk.expr, [$hash_chunk, $key_chunk, $value_chunk, "{$hash_chunk.expr}.\$\$bindkey({$key_chunk.expr},{$value_chunk.expr});\n"], :node($node));
    }

    method bind_pos($array, $index, $value, :$node) {
        my $array_chunk := self.as_js($array, :want($T_OBJ));
        my $index_chunk := self.as_js($index, :want($T_STR));
        my $value_chunk := self.as_js($value, :want($T_OBJ));

        Chunk.new($T_OBJ, $value_chunk.expr, [$array_chunk, $index_chunk, $value_chunk, "nqp.op.bindpos({$array_chunk.expr},{$index_chunk.expr},{$value_chunk.expr});\n"], :node($node));
    }



    multi method as_js($unknown, :$want) {
        self.NYI("Unimplemented QAST node type: " ~ $unknown.HOW.name($unknown));
    }


    method as_js_with_prelude($ast) {
        Chunk.void(
            "var nqp = require('nqp-runtime');\n",
            "\nvar top_ctx = nqp.top_context();\n",
            # temporary HACK
            "var ARGS = process.argv;\n",
            self.as_js($ast, :want($T_VOID))
        );
    }

    method emit($ast) {
       self.as_js_with_prelude($ast).join
    }

    # return a json datastructure we later process into a source map
    method emit_with_source_map($ast) {
       self.as_js_with_prelude($ast).with_source_map_info
    }
}
