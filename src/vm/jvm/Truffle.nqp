my $OBJ  := 0;
my $INT  := 1;
my $NUM  := 2;
my $STR  := 3;
my $VOID := -1; # Value of this type shouldn't exist
my $CALL_ARG := 5; # Something that will be passed to a sub/method call
my $RETVAL := 8; # Something that will be returned from a sub/method call

my %type_names;
%type_names{$OBJ} := 'OBJ';
%type_names{$INT} := 'INT';
%type_names{$NUM} := 'NUM';
%type_names{$STR} := 'STR';
%type_names{$VOID} := 'VOID';
%type_names{$CALL_ARG} := 'CALL_ARG';
%type_names{$RETVAL} := 'RETVAL';


class TAST {
    has int $!type;
    has $!tree;

    method tree() { $!tree }
    method type() { $!type }

    method new($type, $tree) {
        my $obj := nqp::create(self);
        $obj.BUILD($type, $tree);
        $obj;
    }

    method BUILD($type, $tree) {
        $!type := $type;
        $!tree := $tree;
    }

    method run() {
        nqp::runtruffle($!tree);
    }

    method write_bytecode($output) {
        nqp::tasttobytecode($!tree, $output);
    }

    sub sexpr(int $unquoted, $thing, int $indent = 0) {
      if nqp::islist($thing) {
          my @ret;
          my int $first := 1;
          for $thing -> $element {
              nqp::push(@ret, ($first ?? '' !! nqp::x('  ', $indent+1)) ~ sexpr($first, $element, $indent + 1));
              $first := 0;
          }
          '(' ~ nqp::join("\n", @ret) ~ ')';
      } elsif nqp::isint($thing) {
          ~$thing;
      } elsif nqp::isnum($thing) {
          ~$thing;
      } elsif nqp::isstr($thing) {
          $unquoted ?? $thing !! '"' ~ nqp::escape($thing) ~ '"';
      } else {
          nqp::die("Can't dump: {$thing.HOW.name($thing)}");
      }
    }

    method dump() {
        sexpr(0, $!tree) ~ "\n";
    }
}

class QAST::OperationsTruffle {
    my %ops;
    my %hll_ops;

    my %inlinable;

    sub add_op($op, $cb, :$inlinable = 1, :$hll) {
        if $hll {
            %hll_ops{$hll} := nqp::hash() unless nqp::existskey(%hll_ops, $hll);
            %hll_ops{$hll}{$op} := $cb;
        } else {
            %ops{$op} := $cb;
        }
        %inlinable{$op} := $inlinable;
    }

    sub add_simple_op($op, $return_type, @argument_types, :$side_effects, :$inlinable = 1, :$decont, :$hll) {
        my @decont;
        if nqp::islist($decont) {
            for $decont -> $index {
                @decont[$index] := 1;
            }
        }
        elsif nqp::defined($decont) {
            @decont[$decont] := 1;
        }


        add_op($op, sub ($comp, $node, :$want) {
            if $node.list > @argument_types {
                nqp::die("{+$node.list} arguments for {$node.op}, the maximum is {+@argument_types}");
            }

            my @ret := [$op];

            my int $i := 0;
            for $node.list -> $arg {
                my $tast := $comp.as_truffle($arg, :want(@argument_types[$i]));
                nqp::push(@ret, @decont[$i] ?? ['decont', $tast.tree] !! $tast.tree);
                $i := $i + 1;
            }

            TAST.new($return_type, @ret);
        }, :$inlinable, :$hll);
    }


    for <while until repeat_while repeat_until> -> $op {
        add_op($op, sub ($comp, $node, :$want) {
            my $label;
            my int $handler := 1;
            my @operands;
            for $node.list {
                if $_.named eq 'nohandler' { $handler := 0; }
                elsif $_.named eq 'label' { $label := $_; }
                else { @operands.push($_) }
            }

            return $comp.NYI("3 argument $op") if +@operands == 3 && $op ne 'while';

            TAST.new($VOID, [
                $op,
                $comp.as_truffle(@operands[0], :want($OBJ)).tree,
                $comp.as_truffle(@operands[1], :want($VOID)).tree
            ]);
        });
    }

    add_simple_op('createsc', $OBJ, [$STR]);
    add_simple_op('scsetdesc', $STR, [$OBJ, $STR]);
    add_simple_op('scgetdesc', $STR, [$OBJ]);
    add_simple_op('scgethandle', $STR, [$OBJ]);

    add_simple_op('pushcompsc', $OBJ, [$OBJ]);
    add_simple_op('popcompsc', $OBJ, []);

    add_simple_op('deserialize', $STR, [$STR, $OBJ, $OBJ, $OBJ, $OBJ]);

    add_simple_op('scwbenable', $INT, [], :side_effects);
    add_simple_op('scwbdisable', $INT, [], :side_effects);

    add_op('list_b', sub ($comp, $node, :$want) {
        my @cuids;
        for $node.list -> $block {
            @cuids.push($block.cuid);
        }
        TAST.new($OBJ, ['list_b', @cuids]);
    });

    add_simple_op('die', $VOID, [$STR]);
    %ops<die_s> := %ops<die>;

    add_simple_op('getenvhash', $OBJ, []);

    add_simple_op('getcurhllsym', $OBJ, [$STR]);
    add_simple_op('bindcurhllsym', $OBJ, [$STR, $OBJ]);

    add_simple_op('gethllsym', $OBJ, [$STR, $STR]);
    add_simple_op('bindhllsym', $OBJ, [$STR, $STR, $OBJ]);

    add_simple_op('bindcomp', $OBJ, [$STR, $OBJ], :side_effects);
    add_simple_op('getcomp', $OBJ, [$STR]);

    add_simple_op('getcodename', $STR, [$OBJ]);
    add_simple_op('setcodename', $OBJ, [$OBJ, $STR]);

    add_simple_op('loadbytecode', $STR, [$STR]);
    add_simple_op('forceouterctx', $OBJ, [$OBJ, $OBJ]);

    add_simple_op('getstdout', $OBJ, [], :side_effects);
    add_simple_op('getstderr', $OBJ, [], :side_effects);
    add_simple_op('getstdin', $OBJ, [], :side_effects);

    add_simple_op('say', $STR, [$STR], :side_effects);
    add_simple_op('print', $STR, [$STR], :side_effects);

    add_simple_op('writefh', $INT, [$OBJ, $OBJ]);

    add_simple_op('encode', $OBJ, [$STR, $STR, $OBJ], :side_effects);

    add_simple_op('null', $OBJ, []);

    add_simple_op('null_s', $STR, []);

    add_simple_op('concat', $STR, [$STR, $STR]);

    add_simple_op('lc', $STR, [$STR]);

    add_simple_op('uc', $STR, [$STR]);

    add_simple_op('chars', $INT, [$STR]);

    add_simple_op('tc', $STR, [$STR]);

    add_simple_op('falsey', $INT, [$OBJ]);
    %ops<isfalse> := %ops<falsey>;
    add_simple_op('istrue', $INT, [$OBJ]);

    add_simple_op('split', $OBJ, [$STR, $STR]);

    # substr can take 2 or 3 args, so needs special handling.
    add_simple_op('substr2', $STR, [$STR, $INT]);
    add_simple_op('substr3', $STR, [$STR, $INT, $INT]);

    add_op('substr', sub ($comp, $node, :$want) {
        my @operands := $node.list;
        $comp.as_truffle(+@operands == 2
            ?? QAST::Op.new( :op('substr2'), |@operands )
            !! QAST::Op.new( :op('substr3'), |@operands ), :$want);
    });

    # index may or may not take a starting position
    add_simple_op('indexfrom', $INT, [$STR, $STR, $INT]);
    add_op('index', sub ($comp, $node, :$want) {
        my @operands := $node.list;
        $comp.as_truffle(+@operands == 2
            ?? QAST::Op.new( :op('indexfrom'), |@operands, QAST::IVal.new( :value(0)) )
            !! QAST::Op.new( :op('indexfrom'), |@operands ), :$want);
    });

    # rindex may or may not take a starting position
    add_simple_op('rindexfromend', $INT, [$STR, $STR]);
    add_simple_op('rindexfrom', $INT, [$STR, $STR, $INT]);
    add_op('rindex', sub ($comp, $node, :$want) {
        my @operands := $node.list;
        $comp.as_truffle(+@operands == 2
            ?? QAST::Op.new( :op('rindexfromend'), |@operands )
            !! QAST::Op.new( :op('rindexfrom'), |@operands ), :$want);
    });

    add_op('stringify', sub ($comp, $node, :$want) {
        $comp.as_truffle($node[0], :want($STR));
    });
    add_op('numify', sub ($comp, $node, :$want) {
        $comp.as_truffle($node[0], :want($NUM));
    });

    add_op('indexingoptimized', sub ($comp, $node, :$want) {
        $comp.as_truffle($node[0], :want($STR));
    });


    for ['_i', $INT, '_n', $NUM, '_s', $STR] -> $suffix, $type {
        for <le lt gt ge eq ne> -> $cmp {
            add_simple_op('is' ~ $cmp ~ $suffix, $INT, [$type, $type]);
        }
    }

    add_simple_op('eqaddr', $INT, [$OBJ, $OBJ]);

    for ['_i', $INT, '', $OBJ, '_s', $STR, '_n', $NUM] -> $suffix, $type {
        my str $op_name := 'list' ~ $suffix;
        add_op($op_name, sub ($comp, $node, :$want) {

           my @tree := [$op_name];

           for $node.list -> $elem {
               my $tast := $comp.as_truffle($elem, :want($type));
               @tree.push($tast.tree);
           }

           TAST.new($OBJ, @tree);
        });

        add_simple_op('atpos' ~ $suffix, $type, [$OBJ, $INT]);
        add_simple_op('bindpos' ~ $suffix, $type, [$OBJ, $INT, $type]);

        add_simple_op('atkey' ~ $suffix, $type, [$OBJ, $STR]);
        add_simple_op('bindkey' ~ $suffix, $type, [$OBJ, $STR, $type], :side_effects);
        add_simple_op('shift' ~ $suffix, $type, [$OBJ]);
        add_simple_op('pop' ~ $suffix, $type, [$OBJ]);
        add_simple_op('unshift' ~ $suffix, $type, [$OBJ, $type]);
        add_simple_op('push' ~ $suffix, $type, [$OBJ, $type]);
    }

    add_simple_op('existskey', $INT, [$OBJ, $STR]);
    add_simple_op('existspos', $INT, [$OBJ, $INT]);
    add_simple_op('deletekey', $OBJ, [$OBJ, $STR]);

    add_simple_op('islist', $INT, [$OBJ]);

    add_simple_op('iterator', $OBJ, [$OBJ]);

    add_simple_op('setinvokespec', $OBJ, [$OBJ, $OBJ, $STR, $OBJ], :side_effects, :decont(0));
    add_simple_op('setdebugtypename', $OBJ, [$OBJ, $STR], :side_effects);
    add_simple_op('decoderconfigure', $OBJ, [$OBJ, $STR, $OBJ], :side_effects);
    add_simple_op('decodersetlineseps', $OBJ, [$OBJ, $OBJ], :side_effects);
    add_simple_op('settypehllrole', $OBJ, [$OBJ, $INT], :side_effects);

    add_op('hash', sub ($comp, $node, :$want) {
        my @tree := ['hash'];
        for $node.list -> $key, $val {
            my $key_tast := $comp.as_truffle($key, :want($STR));
            my $val_tast := $comp.as_truffle($val, :want($OBJ));
            @tree.push($key_tast.tree);
            @tree.push($val_tast.tree);
         }
         TAST.new($OBJ, @tree);
    });

    add_simple_op('elems', $INT, [$OBJ]);

    add_simple_op('tclc', $STR, [$STR]);

    for ['_i', $INT, '_n', $NUM] -> $suffix, $type {
        for <add div mod mul sub pow> -> $math-op {
            add_simple_op($math-op ~ $suffix, $type, [$type, $type]);
        }
    }

    for ['_i', $INT, '_n', $NUM] -> $suffix, $type {
        for <abs neg> -> $math-op {
            add_simple_op($math-op ~ $suffix, $type, [$type]);
        }
    }

    for ['_i', $INT, '_s', $STR] -> $suffix, $type {
        for <bitand bitor bitxor> -> $bit-op {
            add_simple_op($bit-op ~ $suffix, $type, [$type, $type]);
        }
    }

    add_simple_op('bitneg_i', $INT, [$INT]);
    add_simple_op('bitshiftl_i', $INT, [$INT, $INT]);
    add_simple_op('bitshiftr_i', $INT, [$INT, $INT]);

    for <gcd lcm> -> $math-op {
        add_simple_op($math-op ~ '_i', $INT, [$INT, $INT]);
    }

    for <ceil exp floor log sqrt> -> $math-op {
        add_simple_op($math-op ~ '_n', $NUM, [$NUM]);
    }

    for <inf nan neginf> -> $math-op {
        add_simple_op($math-op, $NUM, []);
    }

    for <asec asin acos atan cos cosh sin sinh sec sech tan tanh> -> $math-op {
        add_simple_op($math-op ~ '_n', $NUM, [$NUM]);
    }

    add_simple_op('atan2_n', $NUM, [$NUM, $NUM]);

    add_simple_op('isnanorinf', $INT, [$NUM]);

    add_simple_op('isinvokable', $INT, [$OBJ]);

    add_simple_op('isnull', $INT, [$OBJ]);
    add_simple_op('ifnull', $OBJ, [$OBJ, $OBJ]);

    add_simple_op('x', $STR, [$STR, $INT]);

    add_simple_op('chr', $STR, [$INT]);
    add_simple_op('codepointfromname', $INT, [$STR]);
    add_simple_op('strfromname', $STR, [$STR]);
    add_simple_op('escape', $STR, [$STR]);
    add_simple_op('flip', $STR, [$STR]);
    add_simple_op('findcclass', $INT, [$INT, $STR, $INT, $INT]);
    add_simple_op('findnotcclass', $INT, [$INT, $STR, $INT, $INT]);
    add_simple_op('iscclass', $INT, [$INT, $STR, $INT]);
    add_simple_op('ordbaseat', $INT, [$STR, $INT]);

    add_simple_op('ordfirst', $INT, [$STR]);
    add_simple_op('ordat', $INT, [$STR, $INT]);

    add_op('ord', sub ($comp, $node, :$want) {
        my @operands := $node.list;
        $comp.as_truffle(+@operands == 1
            ?? QAST::Op.new( :op('ordfirst'), |@operands )
            !! QAST::Op.new( :op('ordat'), |@operands ), :$want);
    });

    add_simple_op('replace', $STR, [$STR, $INT, $INT, $STR]);
    add_simple_op('codes', $INT, [$STR]);
    add_simple_op('join', $STR, [$STR, $OBJ]);

    add_simple_op('stat', $INT, [$STR, $INT]);
    add_simple_op('lstat', $INT, [$STR, $INT]);
    add_simple_op('stat_time', $NUM, [$STR, $INT]);
    add_simple_op('lstat_time', $NUM, [$STR, $INT]);
    add_simple_op('chdir', $STR, [$STR]);
    add_simple_op('chmod', $INT, [$STR, $INT]);
    add_simple_op('copy', $INT, [$STR, $STR]);
    add_simple_op('cwd', $STR, []);
    add_simple_op('fileexecutable', $INT, [$STR]);
    add_simple_op('fileislink', $INT, [$STR]);
    add_simple_op('filereadable', $INT, [$STR]);
    add_simple_op('filewritable', $INT, [$STR]);
    add_simple_op('link', $INT, [$STR, $STR]);
    add_simple_op('mkdir', $INT, [$STR, $INT]);
    add_simple_op('rename', $INT, [$STR, $STR]);
    add_simple_op('rmdir', $INT, [$STR]);
    add_simple_op('symlink', $INT, [$STR, $STR]);
    add_simple_op('unlink', $INT, [$STR]);

    add_simple_op('sha1', $STR, [$STR]);
    
    add_simple_op('time_i', $INT, []);
    add_simple_op('time_n', $NUM, []);

    add_simple_op('not_i', $INT, [$INT]);

    add_simple_op('cmp_i', $INT, [$INT, $INT]);
    add_simple_op('cmp_n', $INT, [$NUM, $NUM]);
    add_simple_op('cmp_s', $INT, [$STR, $STR]);

    add_simple_op('eqat', $INT, [$STR, $STR, $INT]);
    add_simple_op('eqatic', $INT, [$STR, $STR, $INT]);

    add_simple_op('sleep', $NUM, [$NUM]);
    add_simple_op('getpid', $INT, []);

    add_simple_op('istrue_s', $INT, [$STR]);
    add_simple_op('isfalse_s', $INT, [$STR]);
    add_simple_op('isnull_s', $INT, [$STR]);

    for <postinc postdec> -> $op {
        add_op($op, sub ($comp, $node, :$want) {
            my $old_value := $comp.as_truffle($node[0], :want($INT));
            my str $action := $op eq 'postinc' ?? 'add_i' !! 'sub_i';
            my $do_action := $comp.as_truffle(
                QAST::Op.new(
                    :op('bind'),
                    $node[0],
                    QAST::Op.new(:op($action),$node[0],QAST::IVal.new(:value(1)))
                ),
                :want($VOID)
            );

            TAST.new($INT, ['old-int-value', $old_value.tree, $do_action.tree]);
       });
    }

    # explicit takeclosure is used by the JVM backend we no-op it.
    add_op('takeclosure', sub ($comp, $node, :$want) {
        $comp.as_truffle($node[0], :want($want));
    });

    my sub compile_args($comp, @args, @trees, @flags, @names) {
        my int $NAMED := 1;
        my int $FLAT := 2;

        for @args -> $arg {
            my int $flags := 0;

            if $arg.named {
                $flags := $flags +| $NAMED;
            }
            if $arg.flat {
                $flags := $flags +| $FLAT;
            }

            if $arg.named && !$arg.flat {
                @names.push($arg.named);
            }

            nqp::push(@flags, $flags);

            nqp::push(@trees, $comp.as_truffle($arg, :want($CALL_ARG)).tree);
        }
    }

    add_op('callmethod', :!inlinable, sub ($comp, $node, :$want) {
        my $call := ['callmethod'];

        my @args := nqp::clone($node.list);

        nqp::push($call, $comp.as_truffle(@args.shift, :want($OBJ)).tree);

        if $node.name {
            nqp::push($call, ['sval', $node.name]);
        }
        else {
            nqp::push($call, $comp.as_truffle(@args.shift, :want($STR)).tree);
        }

        my @flags;
        my @names;

        compile_args($comp, @args, $call, @flags, @names);

        nqp::splice($call, [@flags, @names], 3, 0);

        TAST.new($OBJ, $call);
    });


    # TODO :$want
    add_op('call', :!inlinable, sub ($comp, $node, :$want) {
        my $ret := ['call'];

        my @args := nqp::clone($node.list);

        if $node.name {
            nqp::push($ret, ['get-lexical', $node.name]);
        }
        else {
            nqp::push($ret, $comp.as_truffle(nqp::shift(@args), :want($OBJ)).tree);
        }

        my @flags;
        my @names;

        compile_args($comp, @args, $ret, @flags, @names);

        nqp::splice($ret, [@flags, @names], 2, 0);

        TAST.new($OBJ, $ret);
    });

    add_op('handle', :!inlinable, sub ($comp, $node, :$want) {
        my @children := nqp::clone($node.list());
        if @children == 0 {
            nqp::die("The 'handle' op requires at least one child");
        }

        # If there's exactly one child, then there's nothing protecting
        # it; just compile it and we're done.
        my $protected := @children.shift();

        unless @children {
            return $comp.as_truffle($protected, :$want);
        }


        my @types;
        my @tree := ['handle', $comp.as_truffle($protected, :want($OBJ)).tree];

        for @children -> $type, $handler {
            nqp::push(@types, $type);
            nqp::push(@tree, $comp.as_truffle($handler, :want($OBJ)).tree);
        }

        nqp::splice(@tree, [@types], 2, 0);

        TAST.new($OBJ, @tree);
    });

    add_simple_op('decont', $OBJ, [$OBJ]);

    add_simple_op('can', $INT, [$OBJ, $STR], :decont(0));
    add_simple_op('defined', $INT, [$OBJ], :decont(0));
    add_simple_op('who', $OBJ, [$OBJ], :decont(0));
    add_simple_op('how', $OBJ, [$OBJ], :decont(0));
    add_simple_op('what', $OBJ, [$OBJ], :decont(0));
    add_simple_op('create', $OBJ, [$OBJ], :side_effects);
    add_simple_op('newtype', $OBJ, [$OBJ, $STR], :side_effects, :decont(0));

    add_simple_op('composetype', $OBJ, [$OBJ, $OBJ], :side_effects);
    add_simple_op('sethllconfig', $OBJ, [$STR, $OBJ], :side_effects);

    add_simple_op('setboolspec', $OBJ, [$OBJ, $INT, $OBJ], :side_effects, :decont(0));

    add_simple_op('knowhow', $OBJ, []);
    add_simple_op('knowhowattr', $OBJ, []);

    add_simple_op('ctx', $OBJ, []);
    add_simple_op('ctxlexpad', $OBJ, [$OBJ], :!inlineable);


    %ops<callstatic> := %ops<call>;

    add_op('bind', sub ($comp, $node, :$want) {
        my @children := $node.list;
        if +@children != 2 {
            nqp::die("A 'bind' op must have exactly two children");
        }
        unless nqp::istype(@children[0], QAST::Var) {
            nqp::die("First child of a 'bind' op must be a QAST::Var");
        }

        my $*BINDVAL := @children[1];
        $comp.as_truffle(@children[0], :want($want));
    });

    for <if unless> -> $op_name {
        add_op($op_name, sub ($comp, $node, :$want) {
            my int $operands := +$node.list;

            nqp::die("Operation 'if' needs either 2 or 3 operands")
                if $operands < 2 || $operands > 3;

            my int $result_type := $want == $VOID ?? $VOID !! $OBJ;

            my $cond := $comp.as_truffle($node[0], :want($OBJ));
            my $then := $comp.as_truffle($node[1], :want($result_type));

            my @tree := $operands == 3
                  ?? [$op_name ~ '-else', $cond.tree, $then.tree, $comp.as_truffle($node[2], :want($result_type)).tree]
                  !! [$op_name, $cond.tree, $then.tree];

            return TAST.new($result_type, @tree);
        });
    }

    # TODO avoid copy & paste - move it into code shared between backends
    add_op('defor', sub ($comp, $node, :$want) {
        if +$node.list != 2 {
            nqp::die("Operation 'defor' needs 2 operands");
        }
        my str $tmp := $node.unique('defined');
        $comp.as_truffle(QAST::Stmts.new(
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

    add_op('xor', sub ($comp, $node, :$want) {
        my @tree := ['xor', -1];

        my int $index := 0;
        for $node.list {
            if $_.named eq 'false' {
                @tree[1] := $index;
            }
            @tree.push($comp.as_truffle($_, :want($OBJ)).tree);
            $index := $index + 1;
        }

        TAST.new($OBJ, @tree);
    });


    method compile_op($comp, $op, $hll, :$want) {
        my str $name := $op.op;
        if nqp::existskey(%hll_ops, $hll) && nqp::existskey(%hll_ops{$hll}, $name) {
            %hll_ops{$hll}{$name}($comp, $op, :$want);
        }
        elsif nqp::existskey(%ops, $name) {
            %ops{$name}($comp, $op, :$want);
        }
        else {
            $comp.NYI("unimplemented QAST::Op {$op.op}");
        }
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

        [$serialized,$sh];
    }

    method serialize_sc($sc) {
        if %*SC_CACHE<enabled> {
            my $handle := nqp::scgethandle($sc);
            if nqp::existskey(%*SC_CACHE,$handle) {
              %*SC_CACHE{$handle};
            }
            else {
              %*SC_CACHE{$handle}  := self.serialize_sc_without_caching($sc);
            }
        }
        else {
          self.serialize_sc_without_caching($sc);
        }
    }
}

class QAST::TruffleCompiler does SerializeOnce {
    my class BlockInfo {
        has $!qast; # The QAST::Block
        has $!outer; # Outer block's BlockInfo
        has @!params; # the parameters the block takes
        has $!var_types; # Mapping of variables types
        has $!has_dynamic_context; # Do we create a new dynamic context

        method var_type($var) {
            $!var_types{$var.scope}{$var.name};
        }
        method register_var_type($var, $type) {
            $!var_types{$var.scope}{$var.name} := $type;
        }

        method new($qast, $outer) {
            my $obj := nqp::create(self);
            $obj.BUILD($qast, $outer);
            $obj
        }

        method BUILD($qast, $outer) {
            $!qast := $qast;
            $!outer := $outer;
            @!params := nqp::list();
            $!var_types := nqp::hash('local', nqp::hash(), 'lexical', nqp::hash());
        }

        method add_param($param) {
            @!params.push($param);
        }

        method params() { @!params }
        method outer() { $!outer }

        method has_dynamic_context($value = NO_VALUE) {
            $!has_dynamic_context := $value unless $value =:= NO_VALUE;
            $!has_dynamic_context;
        }
    }

    method compile(QAST::CompUnit $cu) {
        self.as_truffle($cu, :want($VOID));
    }

    my %want_char := nqp::hash($INT, 'I', $NUM, 'N', $STR, 'S', $VOID, 'v');
    sub want($node, $type) {
        my @possibles := nqp::clone($node.list);
        my $best := @possibles.shift;
        return $best unless %want_char{$type};
        my $char := %want_char{$type};
        for @possibles -> $sel, $ast {
            if nqp::index($sel, $char) >= 0 {
                $best := $ast;
            }
        }
        $best
    }

    method coerce(TAST $tast, $desired) {
        my int $got := $tast.type;
        if $got != $desired {
            if $desired == $VOID {
                return TAST.new($VOID, $tast.tree);
            }

            if $desired == $CALL_ARG {
                if $got == $INT {
                    return TAST.new($CALL_ARG, ['int-arg', $tast.tree]);
                }
                elsif $got == $NUM {
                    return TAST.new($CALL_ARG, ['num-arg', $tast.tree]);
                }
                elsif $got == $STR {
                    return TAST.new($CALL_ARG, ['str-arg', $tast.tree]);
                }
                elsif $got == $OBJ {
                    return TAST.new($CALL_ARG, $tast.tree);
                }
            }

            if $desired == $OBJ {
                if $got == $INT {
                    return TAST.new($OBJ, ['box-nqp-int', $tast.tree]);
                }
                if $got == $STR {
                    return TAST.new($OBJ, ['box-nqp-str', $tast.tree]);
                }
                if $got == $NUM {
                    return TAST.new($OBJ, ['box-nqp-num', $tast.tree]);
                }
                if $got == $VOID {
                    return TAST.new($OBJ, ['coerce-void-to-obj', $tast.tree]);
                }
            }

            if $desired == $RETVAL {
                if $got == $INT {
                    return TAST.new($RETVAL, ['retval-int', $tast.tree]);
                }
                if $got == $STR {
                    return TAST.new($RETVAL, ['retval-str', $tast.tree]);
                }
                if $got == $NUM {
                    return TAST.new($RETVAL, ['retval-num', $tast.tree]);
                }
                if $got == $OBJ {
                    return TAST.new($RETVAL, $tast.tree);
                }
                if $got == $VOID {
                    return TAST.new($RETVAL, ['coerce-void-to-obj', $tast.tree]);
                }
            }

            if $desired == $NUM {
                if $got == $INT {
                    return TAST.new($NUM, ['coerce-int-to-num', $tast.tree]);
                }
                if $got == $STR {
                    return TAST.new($NUM, ['coerce-str-to-num', $tast.tree]);
                }
            }

            if $desired == $STR {
                if $got == $INT {
                    return TAST.new($STR, ['coerce-int-to-str', $tast.tree]);
                }
                if $got == $NUM {
                    return TAST.new($STR, ['coerce-num-to-str', $tast.tree]);
                }
            }

            if $desired == $INT {
                if $got == $NUM {
                    return TAST.new($INT, ['coerce-num-to-int', $tast.tree]);
                }
                if $got == $STR {
                    return TAST.new($INT, ['coerce-str-to-int', $tast.tree]);
                }
            }

            # TODO - Perl 6 proper does it differently than nqp
            if $got == $OBJ {
                if $desired == $STR {
                    return TAST.new($STR, ['smart-stringify', $tast.tree]);
                } elsif $desired == $INT {
                    return TAST.new($INT, ['smart-intify', $tast.tree]);
                } elsif $desired == $NUM {
                    return TAST.new($NUM, ['smart-numify', $tast.tree]);
                }
            }


            say("Can't coerce {%type_names{$got}} to {%type_names{$desired}}");
            $tast;
        } else {
            $tast;
        }
    }

    my @types := [$OBJ, $INT, $NUM, $STR];
    method type_from_typeobj($typeobj) {
        my int $type := nqp::objprimspec($typeobj);
        @types[$type];
    }

    method figure_out_type(QAST::Var $var) {
        my $type := $*BLOCK.var_type($var);
        if nqp::defined($type) {
            return $type;
        }

        if $var.scope eq 'lexical' || $var.scope eq 'typevar' {
            # Try to find it in an outer scope.
            my $cur_block := $*BLOCK.outer();
            while nqp::istype($cur_block, BlockInfo) {
                $type := $cur_block.var_type($var);
                if nqp::defined($type) {
                    return $type;
                }
                else {
                    $cur_block := $cur_block.outer();
                }
            }
        }

        # TODO var not found and has .returns

        $OBJ;
    }

    proto method as_truffle($node, :$want) {
        if nqp::defined($want) {
            if nqp::istype($node, QAST::Want) {
                self.coerce(self.as_truffle(want($node, $want), :$want), $want)
            }
            else {
                self.coerce({*}, $want)
            }
        }
        else {
            nqp::die("Unknown want");
        }
    }

    method deserialization_code($cu) {
        # Serialize it.

        my $sc_tuple := self.serialize_sc($cu.sc);
        my $serialized := $sc_tuple[0];
        my $sh := $sc_tuple[1];

        # Now it's serialized, pop this SC off the compiling SC stack.
        nqp::popcompsc();

        # String heap QAST.
        my $sh_ast := QAST::Op.new( :op('list_s') );
        my $sh_elems := nqp::elems($sh);
        my $i := 0;
        while $i < $sh_elems {
            $sh_ast.push(nqp::isnull_s(nqp::atpos_s($sh, $i))
                ?? QAST::Op.new( :op('null_s') )
                !! QAST::SVal.new( :value(nqp::atpos_s($sh, $i)) ));
            $i := $i + 1;
        }
        $sh_ast := QAST::Block.new( :blocktype('immediate'), $sh_ast );

        my @code_ref_blocks := $cu.code_ref_blocks;
        my $cr_ast := QAST::Op.new( :op('list_b'), |@code_ref_blocks );

        my $repo_conflict_resolver;

        # Handle repossession conflict resolution code, if any.
        if $cu.repo_conflict_resolver {
            $repo_conflict_resolver := nqp::clone($cu.repo_conflict_resolver);
            $repo_conflict_resolver.push(QAST::Var.new( :name('conflicts'), :scope('local') ));
        }
        else {
            $repo_conflict_resolver := QAST::Op.new(
                :op('die_s'),
                QAST::SVal.new( :value('Repossession conflicts occurred during deserialization') )
            );
        }

        # Overall deserialization QAST.
        QAST::Stmts.new(
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('cur_sc'), :scope('local'), :decl('var') ),
                QAST::Op.new( :op('createsc'), QAST::SVal.new( :value(nqp::scgethandle($cu.sc)) ) )
            ),
            QAST::Op.new(
                :op('scsetdesc'),
                QAST::Var.new( :name('cur_sc'), :scope('local') ),
                QAST::SVal.new( :value(nqp::scgetdesc($cu.sc)) )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('conflicts'), :scope('local'), :decl('var') ),
                QAST::Op.new( :op('list') )
            ),
            QAST::Op.new(
                :op('deserialize'),
                nqp::isnull($serialized) ?? QAST::Op.new( :op('null_s') ) !! QAST::SVal.new( :value($serialized) ),
                QAST::Var.new( :name('cur_sc'), :scope('local') ),
                $sh_ast,
                $cr_ast,
                QAST::Var.new( :name('conflicts'), :scope('local') )
            ),
            QAST::Op.new(
                :op('if'),
                QAST::Op.new(
                    :op('elems'),
                    QAST::Var.new( :name('conflicts'), :scope('local') )
                ),
                $repo_conflict_resolver
            )
        );
    }

    multi method as_truffle(QAST::CompUnit $node, :$want) {
        my $*HLL := '';
        if $node.hll {
            $*HLL := $node.hll;
        }

        my $*BLOCK := BlockInfo.new(NQPMu, NQPMu);

        my @*DECLARATIONS := ['stmts'];

        my $pre_deserialize := ['stmts'];

        my $deserialization_code := $node.compilation_mode
            ?? self.as_truffle(self.deserialization_code($node), :want($VOID)).tree
            !! ['stmts'];


        if $node.pre_deserialize {
            for $node.pre_deserialize -> $pre {
                nqp::push($pre_deserialize, self.as_truffle($pre, :want($VOID)).tree);
            }
        }

        # TODO main/load

        my $block := self.as_truffle($node[0], :want($OBJ)).tree;
        nqp::splice($block, ['block-forced-outer'], 0, 1);

        TAST.new($OBJ, [
            'comp-unit', $node.hll, ['stmts',
                [$*BLOCK.has_dynamic_context ?? 'create-new-context' !! 'get-parent-context'],
                @*DECLARATIONS,
                $pre_deserialize,
                $deserialization_code,
                ['call', $block, [], []]
            ]
        ]);
    }

    multi method as_truffle(QAST::VM $node, :$want) {
        if $node.supports('truffle') {
            self.as_truffle($node.alternative('truffle'), :$want);
        }
        else {
            self.NYI("To compile on the Truffle backend, QAST::VM must have an alternative 'truffle'|" ~ $node.dump);
        }
    }

    multi method as_truffle(QAST::Stmts $node, :$want) {
        my @tree := ['stmts'];
        self.compile_all_the_children($node, $want, @tree);
        TAST.new($want, @tree);
    }

    method compile_params(@params) {
        my @ret;
        my int $index := 0;
        my @known_keys;

        for @params -> $param {
            if $param.slurpy {
                if $param.named {
                    nqp::push(@ret, ["get-{$param.scope}-slurpy-named", $param.name, @known_keys]);
                }
                else {
                    nqp::push(@ret, ["get-{$param.scope}-slurpy-positionals", $param.name, $index]);
                }
            }
            else {
                my $type := $OBJ; # TODO native params
                if $param.named {
                    my @names := nqp::islist($param.named) ?? $param.named !! nqp::list($param.named);
                    for @names -> $name {
                        @known_keys.push($name);
                    }

                    if $param.default {
                        my $default := self.as_truffle($param.default, :want($type)).tree;
                        nqp::push(@ret, [
                            "get-{$param.scope}-optional-named",
                            $param.name,
                            @names,
                            $default]);
                    }
                    else {
                        nqp::push(@ret, [
                            "get-{$param.scope}-required-named",
                             $param.name,
                             @names]);
                    }
                }
                else {
                    if $param.default {
                        my $default := self.as_truffle($param.default, :want($type)).tree;
                        nqp::push(@ret, [
                            "get-{$param.scope}-positional-optional",
                            $param.name,
                            $index,
                            $default]);
                    }
                    else {
                        nqp::push(@ret, [
                            "get-{$param.scope}-positional",
                            $param.name,
                            $index]);
                    }
                    $index := $index + 1;
                }
            }
        }
        @ret;
    }

    method compile_all_the_children($node, $want, @tree, :$result_child) {
        my @stmts := $node.list;

        if $want == $VOID {
            $result_child := -1;
        }
        elsif !nqp::defined($result_child) {
            $result_child := +@stmts - 1;
        }

        my int $i := 0;
        for @stmts -> $stmt {
            my $tast := self.as_truffle(@stmts[$i], :want($i == $result_child ?? $want !! $VOID));
            nqp::push(@tree, $tast.tree);
            $i := $i + 1;
        }
    }

    multi method as_truffle(QAST::Block $node, :$want) {
        my $outer := try $*BLOCK;
        my $block := BlockInfo.new($node, $outer);
        {
            my $*BLOCK := $block;
            my $*BINDVAL := 0;

            my @body;
            my @tree;

            if $node.blocktype eq 'immediate' {
                @body := ['block'];
                @tree := ['call', @body, [], []];
            }
            elsif $node.blocktype eq 'declaration' || $node.blocktype eq '' {
                @body := ['block'];
                @tree := @body;
            }
            elsif $node.blocktype eq 'declaration_static' {
                @body := ['block-static'];
                @tree := @body;
            }

            @body.push($node.cuid);
            @body.push($node.name);

            my $setup_context := [];

            @body.push($setup_context);

            my @*DECLARATIONS := ['stmts'];
            @body.push(@*DECLARATIONS);

            my int $start_of_body := +@body;

            self.compile_all_the_children($node, $RETVAL, @body);

            if $*BLOCK.has_dynamic_context {
                $setup_context[0] := 'create-new-context';
            } else {
                $setup_context[0] := 'get-parent-context';
            }

            my @compiled_params := self.compile_params($*BLOCK.params);

            nqp::splice(@body, @compiled_params, $start_of_body, 0);

            TAST.new($OBJ, @tree);
        }
    }

    multi method as_truffle(QAST::SVal $node, :$want) {
        TAST.new($STR, ['sval', $node.value]);
    }

    multi method as_truffle(QAST::IVal $node, :$want) {
        TAST.new($INT, ['ival', $node.value]);
    }

    multi method as_truffle(QAST::NVal $node, :$want) {
        TAST.new($NUM, ['nval', $node.value]);
    }

    method is_dynamic_var(QAST::Var $var) {
        # HACK due to a nqp misdesign we need to check the name for the * twigil
        # TODO Make nqp mark dynamic variables explicitly
        my str $name := $var.name;
        if nqp::chars($name) > 2 {
            my str $sigil := nqp::substr($name, 0, 1);
            my str $twigil := nqp::substr($name, 1, 1);
            if $twigil eq '*' || $twigil eq '?' {
              return 1;
            }
        }

        return 0;
    }

    # TODO native types for variables
    method compile_var(QAST::Var $node, :$want) {
        my $type := self.figure_out_type($node);

        if $node.scope eq 'lexical' && self.is_dynamic_var($node) {
            $*BLOCK.has_dynamic_context(1);

            if $node.decl eq 'var' {
                # TODO avoid double binds
                @*DECLARATIONS.push(["dynamic-bind-direct", $node.name, ["null"]]);
            } elsif $node.decl eq 'static' {
                @*DECLARATIONS.push(["dynamic-bind-direct", $node.name, self.value_as_wval($node.value)]);
            }

            if $*BINDVAL {
                my $value := self.as_truffle_clear_bindval($*BINDVAL, :want($type));
                return TAST.new($OBJ, ["dynamic-bind-direct", $node.name, $value.tree]);
            } else {
                return TAST.new($OBJ, ["dynamic-get-direct", $node.name]);
            }
        }
        elsif $node.scope eq 'lexical' || $node.scope eq 'local' {

            my str $scope := $node.scope;

            if $node.decl eq '' {
                # It's not a declaration
            }
            elsif $node.decl eq 'var' || $node.decl eq 'static' {
                my int $type := self.type_from_typeobj($node.returns);
                $*BLOCK.register_var_type($node, $type);
                @*DECLARATIONS.push(["declare-{$node.scope}", $type, $node.name]);
                if $node.decl eq 'static' {
                    my $bind := QAST::Op.new(:op<bind>,
                        QAST::Var.new(:scope($node.scope), :name($node.name)),
                        QAST::WVal.new(:value($node.value))
                    );
                    @*DECLARATIONS.push(self.as_truffle_clear_bindval($bind, :want($VOID)).tree);
                }
            }
            elsif $node.decl eq 'param' {
                $*BLOCK.add_param($node);
            }
            else {
                self.NYI("var declaration type {$node.decl}");
            }

            return TAST.new($type, $*BINDVAL
                ?? [
                    "bind-{nqp::lc(%type_names{$type})}-{$node.scope}",
                    $node.name,
                    self.as_truffle_clear_bindval($*BINDVAL, :want($type)).tree
                ]
                !! ["get-$scope", $node.name]
            );
        }
        elsif $node.scope eq 'positional' {
            return self.as_truffle_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('bindpos'), $node[0], $node[1], $*BINDVAL)
                !! QAST::Op.new( :op('atpos'), $node[0], $node[1]), :$want);
        }
        elsif $node.scope eq 'associative' {
            return self.as_truffle_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('bindkey'), $node[0], $node[1], $*BINDVAL)
                !! QAST::Op.new( :op('atkey'), $node[0], $node[1]), :$want);
        }
        elsif $node.scope eq 'contextual' {
            if $*BINDVAL {
                my $value := self.as_truffle_clear_bindval($*BINDVAL, :want($OBJ));
                return TAST.new($OBJ, ['dynamic-bind', $node.name, $value.tree]);
            } else {
                return TAST.new($OBJ, ['dynamic-get', $node.name]);
            }
        }
        elsif $node.scope eq 'attribute' {
            my int $type := self.type_from_typeobj($node.returns);
            my $obj := self.as_truffle_clear_bindval($node[0], :want($OBJ)).tree;
            my $class_handle := self.as_truffle_clear_bindval($node[1], :want($OBJ)).tree;

            if $*BINDVAL {
                my $value := self.as_truffle_clear_bindval($*BINDVAL, :want($OBJ)).tree;
                return TAST.new($OBJ, ['attribute-bind', $obj, $class_handle, $node.name, $value]);
            } else {
                return TAST.new($OBJ, ['attribute-get', $obj, $class_handle, $node.name]);
            }
        }
        else {
            self.NYI("var scope {$node.scope}");
        }
    }

    multi method as_truffle(QAST::Var $node, :$want) {
        self.compile_var($node, :$want);
    }

    multi method as_truffle(QAST::VarWithFallback $node, :$want) {
        my $var := self.compile_var($node, :$want);

        my int $can_be_null :=
          $var.type == $OBJ
          || $var.type == $CALL_ARG
          || $var.type == $RETVAL;

        if $*BINDVAL || !$can_be_null {
            $var;
        }
        else {
            my $fallback := self.as_truffle($node.fallback, :want($OBJ));
            return TAST.new($OBJ, [
                'fallback',
                $var.tree,
                $fallback.tree]);
        }
    }

    multi method as_truffle(QAST::Op $node, :$want) {
        QAST::OperationsTruffle.compile_op(self, $node, $*HLL, :$want);
    }

    method as_truffle_clear_bindval($node, :$want) {
        my $*BINDVAL := 0;
        self.as_truffle($node, :$want);
    }

    multi method as_truffle(QAST::Node $node, :$want) {
        self.NYI('QAST node: ' ~ $node.HOW.name($node));
    }

    multi method as_truffle(QAST::BVal $node, :$want) {
        TAST.new($OBJ, ['bval', $node.value.cuid]);
    }

    method value_as_wval($value) {
        my $sc     := nqp::getobjsc($value);
        my str $handle := nqp::scgethandle($sc);
        my int $idx    := nqp::scgetobjidx($sc, $value);
        ['wval', $handle, $idx];
    }

    multi method as_truffle(QAST::WVal $node, :$want) {
        TAST.new($OBJ, self.value_as_wval($node.value));
    }

    method NYI($msg) {
        #nqp::die("NYI: $msg");
        note("NYI: $msg");
        TAST.new($OBJ, ['nyi', $msg]);
    }
}

class TruffleBackend {
    method start($source, *%adverbs) {
        $source;
    }

    method stages() {
        'tast bytecode truffle'
    }

    method bytecode($tast, *%adverbs) {
        if (%adverbs<target> eq 'bytecode') && %adverbs<output> {
            $tast.write_bytecode(%adverbs<output>);
            nqp::null;
        }
        else {
            $tast;
        }
    }

    method tast($qast, *%adverbs) {
        QAST::TruffleCompiler.compile($qast);
    }

    method truffle($tast, *%adverbs) {
        sub (*@args) {
            $tast.run();
        }
    }

    method is_precomp_stage($stage) {
        # Currently, everything is pre-comp since we're a cross-compiler.
        1;
    }

    method is_textual_stage($stage) {
        0;
    }

    method apply_transcodings($s, $transcode) {
        $s
    }

    method compunit_mainline($cu) {
        nqp::isinvokable($cu) ?? $cu !! nqp::compunitmainline($cu);
    }

    method compunit_coderefs($cu) {
        nqp::compunitcodes($cu);
    }

    method is_compunit($cuish) {
        !nqp::isnull($cuish) && (nqp::isinvokable($cuish) || nqp::iscompunit($cuish));
    }
}
