class QAST::OperationsJS {
    my %ops;
    my %hll_ops;

    my %inlinable;

    my %result_type;

    my %hll_unbox;

    sub add_op($op, $cb, :$inlinable = 1, :$hll) {
        if $hll {
            %hll_ops{$hll} := nqp::hash() unless nqp::existskey(%hll_ops, $hll);
            %hll_ops{$hll}{$op} := $cb;
        } else {
            %ops{$op} := $cb;
        }
        %inlinable{$op} := $inlinable;
    }

    sub op_template($comp, $node, $return_type, @argument_types, $cb, :$ctx, :$decont, :$method_call, :$takes_hll, :$await) {
        my @exprs;
        my @setup;

        my @decont;
        if nqp::islist($decont) {
            for $decont -> $index {
                @decont[$index] := 1;
            }
        }
        elsif nqp::defined($decont) {
            @decont[$decont] := 1;
        }

        if $node.list > @argument_types {
            nqp::die("{+$node.list} arguments for {$node.op}, the maximum is {+@argument_types}");
        }

        my int $i := 0;
        for $node.list -> $arg {
            my $chunk := $comp.as_js($arg, :want(@argument_types[$i]));
            @exprs.push(@decont[$i] ?? $comp.await("{$chunk.expr}.\$\$decont($*CTX)") !! $chunk.expr);
            @setup.push($chunk);
            $i := $i + 1;
        }

        if $takes_hll {
            if $method_call {
                nqp::splice(@exprs, 'HLL', 1, 0);
            } else {
                @exprs.unshift('HLL');
            }
        }

        if $ctx {
            if $method_call {
                nqp::splice(@exprs, nqp::list($*CTX), 1, 0);
            } else {
                @exprs.unshift($*CTX);
            }
        }

        my $expr := $cb(|@exprs);
        Chunk.new($return_type, $await ?? $comp.await($expr) !! $expr, @setup, :$node);
    }

    sub runtime_op($op) {
        sub (*@args) {
            "nqp.op.$op({nqp::join(',', @args)})";
        }
    }

    sub method_call($op) {
        sub (*@args) {
            nqp::shift(@args) ~ '.$$' ~ $op ~ '(' ~ nqp::join(',', @args) ~ ')'
        }
    }

    sub add_simple_op($op, $return_type, @argument_types, $cb = runtime_op($op), :$side_effects, :$ctx, :$inlinable = 1, :$decont, :$method_call, :$takes_hll, :$hll, :$await) {

        add_op($op, sub ($comp, $node, :$want) {
            my $gen_code := $method_call ?? method_call($op) !! $cb;
            my $chunk := op_template($comp, $node, $return_type, @argument_types, $gen_code, :$ctx, :$decont, :$method_call, :$takes_hll, :$await);
            $side_effects ?? $comp.stored_result($chunk, :$want) !! $chunk;
        }, :$inlinable, :$hll);

        set_op_result_type($op, $return_type);
    }

    sub add_hll_op($op) {
        %ops{$op} := sub ($comp, $node, :$want) {
            my @operands := $node.list;
            $comp.as_js(QAST::Op.new(
                :op('call'),
                :returns(str),
                QAST::Op.new(
                    :op('gethllsym'),
                    QAST::SVal.new( :value('nqp') ),
                    QAST::SVal.new( :value($op) )
                ),
                |@operands ), :$want);
        };
    }

    sub add_infix_op($op, $left_type, $syntax, $right_type, $return_type) {
        %ops{$op} := sub ($comp, $node, :$want) {
            my $left  := $comp.as_js($node[0], :want($left_type));
            my $right := $comp.as_js($node[1], :want($right_type));
            Chunk.new($return_type, "({$left.expr} $syntax {$right.expr})", [$left, $right], :$node);
        };
    }

    # Sets op native result type at a core level.
    sub set_op_result_type(str $op, $type) {
        if $type == $T_INT {
            %result_type{$op} := int;
        }
        elsif $type == $T_NUM {
            %result_type{$op} := num;
        }
        elsif $type == $T_STR {
            %result_type{$op} := str;
        }
    }

    # Sets returns on an op node if we it has a native result type.
    method attach_result_type($hll, $node) {
        my str $op := $node.op;
        if nqp::existskey(%result_type, $op) {
            $node.returns(%result_type{$op});
        }
    }

    method is_inlinable(str $hll, str $op) {
        return %inlinable{$op};
    }

    # The code being compiled has access to this class as "nqp::getcomp('QAST').operations".
    # We expose &add_op as a method so that it can call it.
    method add_op(*@args, *%args) {
        add_op(|@args, |%args);
    }

    method add_simple_op(*@args, *%args) {
        add_simple_op(|@args, |%args);
    }

    method OBJ() { $T_OBJ }
    method INT() { $T_INT }
    method STR() { $T_STR }
    method NUM() { $T_NUM }
    method BOOL() { $T_BOOL }
    method VOID() { $T_VOID }

    method quote_string($str) { quote_string($str) }

    method new_chunk(*@args) { Chunk.new(|@args) }

    add_simple_op('setcontspec', $T_OBJ, [$T_OBJ, $T_STR, $T_OBJ], :side_effects, :decont(0));

    sub add_assign_op($op_name, $value_kind) {
        # TODO If possible lower it to a bind instead just like on the moarvm backend
        # POTENTIAL OPTIMALIZATION

        add_op($op_name, sub ($comp, $node, :$want) {
            my $cont := $comp.as_js($node[0], :want($T_OBJ));
            my $value := $comp.as_js($node[1], :want($value_kind));

            my $deconted := $value_kind == $T_OBJ ?? $comp.await("{$value.expr}.\$\$decont($*CTX)") !! $value.expr;
            Chunk.new($T_OBJ, $cont.expr, [
                $cont,
                $value,
                $comp.await ~ $cont.expr ~ '.$$' ~ $op_name ~ '(' ~ $*CTX ~ ', ' ~ $deconted ~ ");\n"
            ]);
        });
    }

    add_assign_op('assignunchecked', $T_OBJ);
    add_assign_op('assign', $T_OBJ);

    add_assign_op('assign_i', $T_INT);
    add_assign_op('assign_n', $T_NUM);
    add_assign_op('assign_s', $T_STR);


    add_simple_op('decont', $T_OBJ, [$T_OBJ], :method_call, :ctx, :await);

    add_simple_op('decont_i', $T_INT, [$T_OBJ], :method_call, :ctx, :await);
    add_simple_op('decont_n', $T_NUM, [$T_OBJ], :method_call, :ctx, :await);
    add_simple_op('decont_s', $T_STR, [$T_OBJ], :method_call, :ctx, :await);

    add_simple_op('iscont', $T_INT, [$T_OBJ]);
    add_simple_op('isrwcont', $T_INT, [$T_OBJ]);

    add_simple_op('iscont_i', $T_INT, [$T_OBJ]);
    add_simple_op('iscont_s', $T_INT, [$T_OBJ]);
    add_simple_op('iscont_n', $T_INT, [$T_OBJ]);

    add_infix_op('add_n', $T_NUM, '+', $T_NUM, $T_NUM);
    add_infix_op('sub_n', $T_NUM, '-', $T_NUM, $T_NUM);
    add_infix_op('mul_n', $T_NUM, '*', $T_NUM, $T_NUM);
    # TODO - think about divide by zero
    add_infix_op('div_n', $T_NUM, '/', $T_NUM, $T_NUM);
    add_infix_op('mod_n', $T_NUM, '%', $T_NUM, $T_NUM);

    add_simple_op('mod_n', $T_NUM, [$T_NUM, $T_NUM]);


    add_simple_op('neg_n', $T_NUM, [$T_NUM], sub ($num) {"(-$num)"});
    add_simple_op('neg_i', $T_INT, [$T_INT], sub ($num) {"(-$num)"});

    add_infix_op('concat', $T_STR, '+', $T_STR, $T_STR);

    for ['_i', $T_INT, '_n', $T_NUM, '_s', $T_STR] -> $suffix, $type {
        add_infix_op('isle' ~ $suffix, $type, '<=', $type, $T_BOOL);
        add_infix_op('islt' ~ $suffix, $type, '<', $type, $T_BOOL);
        add_infix_op('isgt' ~ $suffix, $type, '>', $type, $T_BOOL);
        add_infix_op('isge' ~ $suffix, $type, '>=', $type, $T_BOOL);
        add_infix_op('iseq' ~ $suffix, $type, '==', $type, $T_BOOL);
        add_infix_op('isne' ~ $suffix, $type, '!=', $type, $T_BOOL);
    }

    add_simple_op('inf', $T_NUM, [], sub () {"Infinity"});
    add_simple_op('neginf', $T_NUM, [], sub () {"(-Infinity)"});
    add_simple_op('nan', $T_NUM, [], sub () {"NaN"});
    add_simple_op('isnanorinf', $T_INT, [$T_NUM]);

    add_infix_op('bitor_i', $T_INT, '|', $T_INT, $T_INT);
    add_infix_op('bitand_i', $T_INT, '&', $T_INT, $T_INT);
    add_infix_op('bitxor_i', $T_INT, '^', $T_INT, $T_INT);
    add_infix_op('bitshiftl_i', $T_INT, '<<', $T_INT, $T_INT);
    add_infix_op('bitshiftr_i', $T_INT, '>>', $T_INT, $T_INT);

    add_simple_op('bitor_s', $T_STR, [$T_STR, $T_STR]);
    add_simple_op('bitand_s', $T_STR, [$T_STR, $T_STR]);
    add_simple_op('bitxor_s', $T_STR, [$T_STR, $T_STR]);

    add_simple_op('bitneg_i', $T_INT, [$T_INT], sub ($n) {"(~$n)"});

    add_infix_op('eqaddr', $T_OBJ, '===', $T_OBJ, $T_BOOL);

    # Integer arithmetic
    add_simple_op('add_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a + $b) | 0)"});
    add_simple_op('sub_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a - $b) | 0)"});
    add_simple_op('div_i', $T_INT, [$T_INT, $T_INT], :side_effects);
    add_simple_op('mod_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(($a % $b) | 0)"});
    add_simple_op('mul_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"Math.imul($a,$b)"});
    add_simple_op('pow_i', $T_INT, [$T_INT, $T_INT], sub ($a, $b) {"(Math.pow($a,$b)|0)"});
    add_simple_op('gcd_i', $T_INT, [$T_INT, $T_INT]);
    add_simple_op('lcm_i', $T_INT, [$T_INT, $T_INT]);

    add_op('chain', sub ($comp, $node, :$want) {
        my str $ret := $*BLOCK.add_tmp;

        my sub is_chain($part) {
            nqp::istype($part, QAST::Op)
                && ($part.op eq 'chain' || $part.op eq 'chainstatic');
        }

        my sub chain_part($part) {
            if is_chain($part) {
                # Check if callee sub in name, if not first child is callee, not arg
                my int $arg_idx := $part.name ?? 0 !! 1;

                my $callee := $comp.as_js( :want($T_OBJ),
                    $part.name
                        ?? QAST::Var.new(:name($part.name),:scope('lexical'))
                        !! $part[0]
                );
                my $left := chain_part($part[$arg_idx]);
                my $right := $comp.as_js($part[$arg_idx + 1], :want($T_OBJ));
                my @setup;

                @setup.push($left);

                @setup.push("if ($ret.\$\$toBool($*CTX)) \{\n") if is_chain($part[$arg_idx]);
                @setup.push($callee);
                @setup.push($right);
                @setup.push("$ret = nqp.retval(HLL, {$callee.expr}.\$\$call($*CTX, null, {$left.expr}, {$right.expr}));\n");
                @setup.push("\}") if is_chain($part[$arg_idx]);

                Chunk.new($T_OBJ, $right.expr, @setup, :node($part));
            }
            else {
                $comp.as_js($part, :want($T_OBJ));
            }
        }

        Chunk.new($T_OBJ, $ret, [chain_part($node)]);
    });
    %ops<chainstatic> := %ops<chain>;

    add_simple_op('clone', $T_OBJ, [$T_OBJ], :decont(0), :method_call, :side_effects);
    add_simple_op('clone_nd', $T_OBJ, [$T_OBJ], method_call('clone'), :side_effects);

    my sub static_hint($node) {
        my int $hint := -1;

        # disabled till we handle hints with multi-inheritance correctly
        #if $node[1].has_compile_time_value && nqp::istype($node[2], QAST::SVal) {
        #    $hint := nqp::hintfor($node[1].compile_time_value, $node[2].value);
        #}

        $hint != -1 ?? $hint !! NQPMu;
    }

    my sub bindattr($type, :$inverted_result) {
        sub ($comp, $node, :$want) {
            my $obj := $comp.as_js(:want($T_OBJ), $node[0]);
            my $value := $comp.as_js(:want($type), $node[3]);
            my str $suffix := $comp.suffix_from_type($type);
            my @setup;
            my str $action;
            if static_hint($node) -> $hint {
                @setup := [$obj, $value];
                $action := $type == $T_OBJ
                    ??  "{$obj.expr}\.\$\$bindattr\${$hint}({$value.expr})"
                    !! "({$obj.expr}\.attr\${$hint} = {$value.expr})";
            }
            else {
                my $classHandle := $comp.as_js(:want($T_OBJ), $node[1]);
                my $attrName := $comp.as_js(:want($T_STR), $node[2]);

                $action := "{$obj.expr}\.\$\$bindattr{$suffix}({$classHandle.expr}, {$attrName.expr}, {$value.expr})";
                @setup := [$obj, $classHandle, $attrName, $value];
            }

            if $inverted_result {
                @setup.push($action ~ ";\n");
                Chunk.new($type, $obj.expr, @setup);
            } else {
                $comp.stored_result(Chunk.new($type, $action, @setup), :$want);
            }
        }
    }

    method bindattr($type, :$inverted_result) {
        bindattr($type, :$inverted_result);
    }

    for ['', $T_OBJ, '_i', $T_INT, '_n', $T_NUM, '_s', $T_STR] -> $suffix, $type {
        add_op('bindattr' ~ $suffix, bindattr($type));

        add_op('getattr' ~ $suffix, sub ($comp, $node, :$want) {
            my $obj := $comp.as_js(:want($T_OBJ), $node[0]);
            if static_hint($node) -> $hint {
                if $type == $T_OBJ {
                    $comp.stored_result(Chunk.new($T_OBJ, "{$obj.expr}\.\$\$getattr\${$hint}()", $obj), :$want);
                }
                else {
                    Chunk.new($type, "{$obj.expr}\.attr\${$hint}", $obj);
                }
            }
            else {
                my $classHandle := $comp.as_js(:want($T_OBJ), $node[1]);
                my $attrName := $comp.as_js(:want($T_STR), $node[2]);

                $comp.stored_result(Chunk.new($type, "{$obj.expr}\.\$\$getattr{$suffix}({$classHandle.expr}, {$attrName.expr})",
                    [$obj, $classHandle, $attrName]), :$want);
            }
        });
    }

    for ['_i', '_n', '_s'] -> $suffix {
        add_simple_op('getattrref' ~ $suffix, $T_OBJ, [$T_OBJ, $T_OBJ, $T_STR], :takes_hll);
        add_simple_op('atposref' ~ $suffix, $T_OBJ, [$T_OBJ, $T_INT], :takes_hll);
        add_simple_op('multidimref' ~ $suffix, $T_OBJ, [$T_OBJ, $T_OBJ], :takes_hll);
    }

    add_simple_op('attrinited', $T_INT, [$T_OBJ, $T_OBJ, $T_STR], :decont(1), :method_call);
    add_simple_op('hintfor', $T_INT, [$T_OBJ, $T_STR]);


    add_hll_op('sprintf');
    add_hll_op('sprintfdirectives');
    add_hll_op('sprintfaddargumenthandler');

    add_simple_op('setinvokespec', $T_OBJ, [$T_OBJ, $T_OBJ, $T_STR, $T_OBJ], :side_effects, :decont(0));
    add_simple_op('setboolspec', $T_OBJ, [$T_OBJ, $T_INT, $T_OBJ], :side_effects, :decont(0));

    sub add_cmp_op($op, $type) {
        add_simple_op($op, $T_INT, [$type, $type], sub ($a, $b) {
            "($a < $b ? -1 : ($a > $b ? 1 : 0))"
        });
    }

    add_simple_op('reprname', $T_STR, [$T_OBJ], :decont(0));
    add_simple_op('newtype', $T_OBJ, [$T_OBJ, $T_STR], :side_effects, :decont(0));

    add_cmp_op('cmp_i', $T_INT);
    add_cmp_op('cmp_n', $T_NUM);
    add_cmp_op('cmp_s', $T_STR);

    for <preinc predec> -> $op {
        add_op($op, sub ($comp, $node, :$want) {
            my str $action := $op eq 'preinc' ?? 'add_i' !! 'sub_i';
            $comp.as_js(
                QAST::Op.new(
                    :op('bind'),
                    $node[0],
                    QAST::Op.new(:op($action),$node[0],QAST::IVal.new(:value(1)))
                ),
                :$want,
            );
        });
    }

    for <postinc postdec> -> $op {
        add_op($op, sub ($comp, $node, :$want) {
            my str $tmp := $*BLOCK.add_tmp();
            my $var := $comp.as_js($node[0], :want($T_INT));
            my str $action := $op eq 'postinc' ?? 'add_i' !! 'sub_i';
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

    add_simple_op('isstr', $T_INT, [$T_OBJ], :decont(0));
    add_simple_op('isint', $T_INT, [$T_OBJ], :decont(0));
    add_simple_op('isnum', $T_INT, [$T_OBJ], :decont(0));

    add_simple_op('chars', $T_INT, [$T_STR], sub ($string) {"$string.length"});

    add_simple_op('join', $T_STR, [$T_STR, $T_OBJ], sub ($delim, $list) {"$list.\$\$join($delim)"});

    add_simple_op('index', $T_INT, [$T_STR, $T_STR, $T_INT], sub ($string, $pattern, $from?) {
        nqp::defined($from) ?? "($from > $string.length ? -1 : $string.indexOf($pattern,$from))" !! "$string.indexOf($pattern)";
    });

    add_simple_op('rindex', $T_INT, [$T_STR, $T_STR, $T_INT], sub ($string, $pattern, $from?) {
        nqp::defined($from) ?? "($from > $string.length ? -1 : $string.lastIndexOf($pattern,$from))" !! "$string.lastIndexOf($pattern)";
    });

    add_simple_op('substr', $T_STR, [$T_STR, $T_INT, $T_INT], sub ($string, $start, $length?) {
        nqp::defined($length) ?? "$string.substr($start,$length)" !! "$string.substr($start)";
    });

    add_simple_op('replace', $T_STR, [$T_STR, $T_INT, $T_INT, $T_STR]);

    add_simple_op('eqat', $T_INT, [$T_STR, $T_STR, $T_INT]);
    add_simple_op('eqatic', $T_INT, [$T_STR, $T_STR, $T_INT]);
    add_simple_op('eqatim', $T_INT, [$T_STR, $T_STR, $T_INT]);
    add_simple_op('eqaticim', $T_INT, [$T_STR, $T_STR, $T_INT]);



    add_simple_op('chr', $T_STR, [$T_INT], sub ($code) {"String.fromCodePoint($code)"});

    add_simple_op('lc', $T_STR, [$T_STR], sub ($string) {"$string.toLowerCase()"});
    add_simple_op('fc', $T_STR, [$T_STR]);
    add_simple_op('uc', $T_STR, [$T_STR], sub ($string) {"$string.toUpperCase()"});
    add_simple_op('tc', $T_STR, [$T_STR]);
    add_simple_op('tclc', $T_STR, [$T_STR]);

    add_simple_op('flip', $T_STR, [$T_STR]);

    #TODO: make the offset be something better then a UTF16 offset
    add_simple_op('ord', $T_INT, [$T_STR, $T_INT], sub ($string, $pos='0') {"$string.codePointAt($pos)"});
    %ops<ordat> := %ops<ord>;

    add_simple_op('ordbaseat', $T_INT, [$T_STR, $T_INT]);

    add_simple_op('getcodelocation', $T_OBJ, [$T_OBJ]);

    add_simple_op('null', $T_OBJ, [], sub () {"nqp.Null"});

    add_simple_op('isnull', $T_BOOL, [$T_OBJ], sub ($obj) {"($obj === nqp.Null)"});

    add_simple_op('null_s', $T_STR, [], sub () {"nqp.null_s"});
    add_simple_op('isnull_s', $T_BOOL, [$T_STR], sub ($obj) {"($obj === nqp.null_s)"});

    add_simple_op('time_n', $T_NUM, [], sub () {"(new Date().getTime() / 1000)"}, :side_effects);
    add_simple_op('time_i', $T_NUM, [], sub () {"Math.floor(new Date().getTime() / 1000)"}, :side_effects);

    add_simple_op('escape', $T_STR, [$T_STR]);
    add_simple_op('x', $T_STR, [$T_STR, $T_INT], sub ($what, $times) {"$what.repeat($times)"});

    add_simple_op('getcomp', $T_OBJ, [$T_STR], :side_effects);

    add_simple_op('say', $T_STR, [$T_STR], :side_effects);
    add_simple_op('print', $T_STR, [$T_STR], :side_effects);

    add_simple_op('getstderr', $T_OBJ, [], :side_effects);
    add_simple_op('getstdout', $T_OBJ, [], :side_effects);
    add_simple_op('getstdin', $T_OBJ, [], :side_effects);

    add_simple_op('open', $T_OBJ, [$T_STR, $T_STR], :side_effects);

    add_simple_op('opendir', $T_OBJ, [$T_STR], :side_effects);
    add_simple_op('nextfiledir', $T_STR, [$T_OBJ], :side_effects, :method_call);
    add_simple_op('closedir', $T_VOID, [$T_OBJ], :side_effects, :method_call);

    add_simple_op('readfh', $T_OBJ, [$T_OBJ, $T_OBJ, $T_INT], :side_effects, :method_call);
    add_simple_op('writefh', $T_INT, [$T_OBJ, $T_OBJ], :side_effects, :method_call);
    add_simple_op('tellfh', $T_INT, [$T_OBJ], :side_effects, :method_call);
    add_simple_op('seekfh', $T_INT, [$T_OBJ, $T_INT, $T_INT], :ctx, :side_effects);
    add_simple_op('eoffh', $T_INT, [$T_OBJ], :side_effects, :method_call);
    add_simple_op('filenofh', $T_INT, [$T_OBJ], :method_call);
    add_simple_op('setbuffersizefh', $T_OBJ, [$T_OBJ, $T_INT], :side_effects, :method_call);

    add_simple_op('flushfh', $T_OBJ, [$T_OBJ], :side_effects, :method_call);
    add_simple_op('closefh', $T_OBJ, [$T_OBJ], :side_effects, :method_call);
    add_simple_op('isttyfh', $T_INT, [$T_OBJ], :method_call);
    add_simple_op('copy', $T_VOID, [$T_STR, $T_STR], :side_effects);
    add_simple_op('rename', $T_VOID, [$T_STR, $T_STR], :side_effects);

    add_simple_op('lockfh', $T_OBJ, [$T_OBJ, $T_INT], :side_effects, :method_call);
    add_simple_op('unlockfh', $T_OBJ, [$T_OBJ], :side_effects, :method_call);

    add_simple_op('bootarray', $T_OBJ, []);

    add_simple_op('getpid', $T_INT, []);
    add_simple_op('getppid', $T_INT, []);

    add_simple_op('exit', $T_VOID, [$T_INT], :side_effects);


    add_simple_op('symlink', $T_VOID, [$T_STR, $T_STR], :side_effects);
    add_simple_op('link', $T_VOID, [$T_STR, $T_STR], :side_effects);
    add_simple_op('unlink', $T_VOID, [$T_STR], :side_effects);

    add_simple_op('readlink', $T_STR, [$T_STR]);

    add_simple_op('chdir', $T_VOID, [$T_STR], :side_effects);
    add_simple_op('rmdir', $T_VOID, [$T_STR], :side_effects);
    add_simple_op('mkdir', $T_VOID, [$T_STR, $T_INT], :side_effects);

    add_simple_op('chmod', $T_VOID, [$T_STR, $T_INT], :side_effects);

    add_simple_op('getenvhash', $T_OBJ, [], :side_effects);
    add_simple_op('getsignals', $T_OBJ, [], :side_effects, :takes_hll);
    add_simple_op('cwd', $T_STR, [], :side_effects);


    add_simple_op('sha1', $T_STR, [$T_STR]);

    add_simple_op('isinvokable', $T_INT, [$T_OBJ]);

    add_simple_op('encode', $T_OBJ, [$T_STR, $T_STR, $T_OBJ], :side_effects);
    add_simple_op('encoderep', $T_OBJ, [$T_STR, $T_STR, $T_STR, $T_OBJ], :side_effects);

    add_simple_op('encodeconf', $T_OBJ, [$T_STR, $T_STR, $T_OBJ, $T_INT], :side_effects);
    add_simple_op('encoderepconf', $T_OBJ, [$T_STR, $T_STR, $T_STR, $T_OBJ, $T_INT], :side_effects);

    add_simple_op('decode', $T_STR, [$T_OBJ, $T_STR]);
    add_simple_op('decodeconf', $T_STR, [$T_OBJ, $T_STR, $T_INT]);
    add_simple_op('decoderepconf', $T_STR, [$T_OBJ, $T_STR, $T_STR, $T_INT]);

    add_simple_op('gethostname', $T_STR, [$T_STR]);

    # XXX explicit takeclosure is used by the JVM backend we no-op it.
    add_op('takeclosure', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($want));
    });

    add_simple_op('indexingoptimized', $T_STR, [$T_STR], sub ($str) {$str});

    # TODO decont
    add_op('istrue', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_BOOL));
    });
    add_op('stringify', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_STR));
    });
    add_op('numify', sub ($comp, $node, :$want) {
        $comp.as_js($node[0], :want($T_NUM));
    });

    add_simple_op('isfalse', $T_BOOL, [$T_BOOL], sub ($boolified) {"(!$boolified)"});
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

        my $*BINDVAL := @children[1];
        $comp.as_js(@children[0], :want($want));
    });



    for ['_i', $T_INT, '', $T_OBJ, '_s', $T_STR, '_n', $T_NUM] -> $suffix, $type {
        add_op('list' ~ $suffix, sub ($comp, $node, :$want) {
           my @setup;
           my @exprs;

           my str $list := $*BLOCK.add_tmp();

           for $node.list -> $elem {
               my $chunk := $comp.as_js($elem, :want($type));
               @setup.push($chunk);
               @exprs.push($chunk.expr);
           }

           my $hll := $type == $T_OBJ ?? 'HLL,' !! '';
           @setup.push($list ~ " = nqp.list" ~ $suffix ~ "(" ~ $hll ~ "[" ~ nqp::join(',', @exprs) ~ "]);\n");

           Chunk.new($T_OBJ, $list , @setup, :$node);
        });

        add_simple_op('bindpos' ~ $suffix, $type, [$T_OBJ, $T_INT, $type], :side_effects, :method_call);
        add_simple_op('atpos' ~ $suffix, $type, [$T_OBJ, $T_INT], :method_call);

        add_simple_op('pop' ~ $suffix, $type, [$T_OBJ], :side_effects, :method_call);
        add_simple_op('push' ~ $suffix, $type, [$T_OBJ, $type], :side_effects, :method_call);
        add_simple_op('unshift' ~ $suffix, $type, [$T_OBJ, $type], :side_effects, :method_call);
        add_simple_op('shift' ~ $suffix, $type, [$T_OBJ], :side_effects, :method_call);

        add_simple_op('atposnd' ~ $suffix, $type, [$T_OBJ, $T_OBJ]);
        add_simple_op('atpos2d' ~ $suffix, $type, [$T_OBJ, $T_INT, $T_INT, $type],  :side_effects);
        add_simple_op('atpos3d' ~ $suffix, $type, [$T_OBJ, $T_INT, $T_INT, $T_INT, $type], :side_effects);

        add_simple_op('bindposnd' ~ $suffix, $type, [$T_OBJ, $T_OBJ, $type], :side_effects);
        add_simple_op('bindpos2d' ~ $suffix, $type, [$T_OBJ, $T_INT, $T_INT, $type], :side_effects);
        add_simple_op('bindpos3d' ~ $suffix, $type, [$T_OBJ, $T_INT, $T_INT, $T_INT, $type], :side_effects);

        add_simple_op('atkey' ~ $suffix, $type, [$T_OBJ, $T_STR], :method_call);
        add_simple_op('bindkey' ~ $suffix, $type, [$T_OBJ, $T_STR, $type], :method_call, :side_effects);
    }

    add_simple_op('numdimensions', $T_INT, [$T_OBJ]);
    add_simple_op('dimensions', $T_OBJ, [$T_OBJ]);
    add_simple_op('setdimensions', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects);

    add_op('hash', sub ($comp, $node, :$want) {
        my str $hash := $*BLOCK.add_tmp();
        my @setup;
        @setup.push("$hash = nqp.hash();\n");
        for $node.list -> $key, $val {
            my $key_chunk := $comp.as_js($key, :want($T_STR));
            my $val_chunk := $comp.as_js($val, :want($T_OBJ));
            @setup.push($key_chunk);
            @setup.push($val_chunk);
            @setup.push("$hash.content.set({$key_chunk.expr}, {$val_chunk.expr});\n");
         }
         Chunk.new($T_OBJ, $hash , @setup , :$node);
    });
    add_simple_op('ishash', $T_INT, [$T_OBJ], :decont(0));


    add_op('call', :!inlinable, sub ($comp, $node, :$want) {
        my $args := nqp::clone($node.list);

        my $callee := $node.name
            ?? $comp.as_js(QAST::Var.new(:name($node.name),:scope('lexical')), :want($T_OBJ))
            !! $comp.as_js(nqp::shift($args), :want($T_OBJ));

        my $compiled_args := $comp.args($args);

        my str $call := $compiled_args.is_args_array ?? '.$$apply(' !! '.$$call(';

        $comp.get_return_value($comp.await ~ $comp.await($callee.expr ~ ".\$\$decont($*CTX)") ~ $call ~ $compiled_args.expr ~ ')' , [$callee, $compiled_args], :$node, :$want);
    });

    %ops<callstatic> := %ops<call>;

    add_simple_op('serialize', $T_STR, [$T_OBJ, $T_OBJ], :side_effects);
    add_simple_op('scobjcount', $T_INT, [$T_OBJ]);
    add_simple_op('createsc', $T_OBJ, [$T_STR], :side_effects);
    add_simple_op('deserialize', $T_OBJ, [$T_STR, $T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ], :side_effects, :takes_hll);
    add_simple_op('scsetobj', $T_OBJ, [$T_OBJ, $T_INT, $T_OBJ], :side_effects);
    add_simple_op('scgetobj', $T_OBJ, [$T_OBJ, $T_INT], :side_effects);
    add_simple_op('scsetcode', $T_OBJ, [$T_OBJ, $T_INT, $T_OBJ], :side_effects);
    add_simple_op('setobjsc', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects);
    add_simple_op('markcodestatic', $T_OBJ, [$T_OBJ], :side_effects);

    add_simple_op('freshcoderef', $T_OBJ, [$T_OBJ]);
    add_simple_op('markcodestub', $T_OBJ, [$T_OBJ], :side_effects);

    add_simple_op('scsetdesc', $T_STR, [$T_OBJ, $T_STR], :side_effects);
    add_simple_op('scgetdesc', $T_STR, [$T_OBJ]);

    add_simple_op('scgethandle', $T_STR, [$T_OBJ]);

    add_simple_op('getobjsc', $T_OBJ, [$T_OBJ]);
    add_simple_op('scgetobjidx', $T_INT, [$T_OBJ, $T_OBJ]);

    add_simple_op('pushcompsc', $T_OBJ, [$T_OBJ], :side_effects);
    add_simple_op('popcompsc', $T_OBJ, [], :side_effects);

    add_simple_op('getstaticcode', $T_OBJ, [$T_OBJ]);

    # Misc ops

    add_simple_op('backendconfig', $T_OBJ, []);

    # Ops for NFA

    add_simple_op('nfafromstatelist', $T_OBJ, [$T_OBJ, $T_OBJ], :ctx, :side_effects, :await);
    add_simple_op('nfarunproto', $T_OBJ, [$T_OBJ, $T_STR, $T_INT], :side_effects);
    add_simple_op('nfarunalt', $T_OBJ, [$T_OBJ, $T_STR, $T_INT, $T_OBJ, $T_OBJ, $T_OBJ]);

    add_op('callmethod', sub ($comp, $node, :$want) {
        my @args := nqp::clone($node.list);

        my $invocant := $comp.as_js(@args.shift, :want($T_OBJ));

        my @setup := [$invocant];

        my str $method;
        if $node.name {
            if $comp.is_valid_js_identifier($node.name) {
                $method := '.' ~ $node.name;
            }
            else {
                $method := '[' ~ quote_string($node.name) ~ ']';
            }
        }
        else {
            my $method_name := $comp.as_js(@args.shift, :want($T_STR));
            @setup.push($method_name);
            $method := "[{$method_name.expr}]";
        }

        my $compiled_args := $comp.args(@args, :invocant($invocant.expr));

        my str $call := $compiled_args.is_args_array ?? ".apply({$invocant.expr}.\$\$decont($*CTX)," !! '(';

        @setup.push($compiled_args);

        $comp.get_return_value($comp.await ~ $comp.await("{$invocant.expr}.\$\$decont($*CTX)") ~ $method ~ $call ~ $compiled_args.expr ~ ')', @setup, :$want, :$node);

    });

    add_simple_op('settypefinalize', $T_VOID, [$T_OBJ, $T_INT]);

    # TODO - implement and benchmark different ways of preventing the try/catch from murdering performance
    add_op('handle', :!inlinable, sub ($comp, $node, :$want) {
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

        my $*RETURN_FROM_HANDLER; # needed to implement nqp::p6return

        my str $outer_ctx := $*CTX;
        {
            my $handler_ctx := $comp.unique_var('ctx');
            my $unwind_marker := $*BLOCK.add_tmp;

            my str $try_ret := '';
            my $set_try_ret := '';

            my @setup;

            my $has_catch := 0;

            for @children -> $type, $handler {
                if $type eq 'LABELED' {
                    my $label := $comp.as_js($handler, :want($T_OBJ));
                    @setup.push($label);
                    @setup.push("$handler_ctx.\$\$label = {$label.expr};\n");
                }
                else {
                    my $*CTX := '$$sourceCtx';
                    my $catch_body := $comp.as_js($handler, :want($T_OBJ));
                    @setup.push("$handler_ctx.\$\${$type} = {$comp.async}function(\$\$sourceCtx) \{\n");
                    @setup.push("\$\$sourceCtx.\$\${$type eq 'CATCH' ?? 'catch' !! 'control'}HandlerOuter = $outer_ctx;\n");
                    @setup.push($catch_body);
                    @setup.push( "return {$catch_body.expr};\n" ~ "\};\n");
                    $has_catch := 1 if $type eq 'CATCH';
                }
            }

            @setup.push("$unwind_marker = \{\};\n");
            @setup.push("$handler_ctx.\$\$unwind = $unwind_marker;\n");

            {
                my $*CTX := $handler_ctx;
                my $body := $comp.as_js($protected, :$want);

                my str $catch_wrapped_exception := "{$comp.await}$handler_ctx.catchException(nqp.wrapException(e))";
                my str $catch_exception := "{$comp.await}$handler_ctx.catchException(e)";

                if $want != $T_VOID {
                    $try_ret := $*BLOCK.add_tmp;
                    my $coerced_ret := $comp.coerce(Chunk.new($T_OBJ, "$unwind_marker.ret"), $want);
                    $set_try_ret := Chunk.new($T_VOID, '', [$coerced_ret, "$try_ret = {$coerced_ret.expr};\n"]);

                    my %convert;
                    %convert{$T_STR} := 'toStr';
                    %convert{$T_NUM} := 'toNum';
                    %convert{$T_INT} := 'toInt';
                    if nqp::existskey(%convert, $want) {
                      $catch_exception := $comp.await ~ 'nqp.' ~ %convert{$want} ~ '(' ~ $catch_exception ~ ')';
                      $catch_wrapped_exception := $comp.await ~ 'nqp.' ~ %convert{$want} ~ '(' ~ $catch_wrapped_exception ~ ')';
                    }

                    $catch_exception := "$try_ret = $catch_exception";
                    $catch_wrapped_exception := "$try_ret = $catch_wrapped_exception";
                }

                my $catch_unresumable := $has_catch
                  ?? "\} else if (e instanceof nqp.NQPException) \{\n"
                  ~ "$catch_exception\n"
                  ~ "\} else if (e instanceof TypeError) \{\n" # HACK - we should catch more exceptions
                  ~ "$catch_wrapped_exception;\n"
                  !! '';

                return Chunk.new($want, $try_ret, [
                    "var $handler_ctx = new nqp.CtxJustHandler($outer_ctx, $outer_ctx, $outer_ctx.\$\$callThis);\n",
                    Chunk.void(|@setup),
                    "try \{",
                    $body,
# HACK we need to check $body.type if we handle something like return
                    (($want == $T_VOID || $body.type == $T_VOID) ?? '' !! "$try_ret = {$body.expr};\n"),
                    "\} catch (e) \{if (e === $unwind_marker) \{",
                    $set_try_ret,
                    $catch_unresumable,
                    "\} else \{\n",
                    "throw e;\n",
                    "\}\n",
                    "\}\n",
                    ($*RETURN_FROM_HANDLER ?? "if ($*RETURN_FROM_HANDLER !== undefined) return $*RETURN_FROM_HANDLER;\n" !! '')
                ], :$node);
            }
        }
    });


    add_simple_op('exception', $T_OBJ, []);
    add_simple_op('rethrow', $T_VOID, [$T_OBJ], sub ($exception) {"$*CTX.rethrow($exception)"}, :side_effects, :await);
    add_simple_op('resume', $T_VOID, [$T_OBJ], sub ($exception) {"$*CTX.resume($exception)"}, :side_effects);
    add_simple_op('throw', $T_VOID, [$T_OBJ], :side_effects, sub ($exception) {"{$*CTX}.throw($exception)"}, :await);

    add_simple_op('setpayload', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects);
    add_simple_op('getpayload', $T_OBJ, [$T_OBJ, $T_OBJ]);

    add_simple_op('setmessage', $T_STR, [$T_OBJ, $T_STR], :side_effects);
    add_simple_op('getmessage', $T_STR, [$T_OBJ]);

    add_simple_op('setextype', $T_INT, [$T_OBJ, $T_INT], :side_effects);
    add_simple_op('getextype', $T_INT, [$T_OBJ]);

    add_simple_op('getmessage', $T_STR, [$T_OBJ]);

    add_simple_op('newexception', $T_OBJ, [], :side_effects);

    add_simple_op('backtracestrings', $T_OBJ, [$T_OBJ], :takes_hll);
    add_simple_op('backtrace', $T_OBJ, [$T_OBJ], :takes_hll);

    add_simple_op('findmethod', $T_OBJ, [$T_OBJ, $T_STR], :side_effects, :decont(0), :ctx, :await);
    add_simple_op('tryfindmethod', $T_OBJ, [$T_OBJ, $T_STR], :side_effects, :decont(0), :ctx, :await);

    add_simple_op('can', $T_INT, [$T_OBJ, $T_STR], :side_effects, :decont(0), :ctx, :method_call, :await);

    add_simple_op('istype', $T_INT, [$T_OBJ, $T_OBJ], :side_effects, :ctx, :decont(0, 1), :method_call, :await);

    add_simple_op('split', $T_OBJ, [$T_STR, $T_STR], :takes_hll);

    add_simple_op('ctxlexpad', :!inlinable, $T_OBJ, [$T_OBJ]);
    add_simple_op('lexprimspec', $T_INT, [$T_OBJ, $T_STR]);
    add_simple_op('objprimspec', $T_INT, [$T_OBJ]);
    add_simple_op('objprimbits', $T_INT, [$T_OBJ]);
    add_simple_op('objprimunsigned', $T_INT, [$T_OBJ]);

    add_simple_op('ctxouter', :!inlinable, $T_OBJ, [$T_OBJ]);

    add_simple_op('ctxouterskipthunks', :!inlinable, $T_OBJ, [$T_OBJ]);
    add_simple_op('ctxcallerskipthunks', :!inlinable, $T_OBJ, [$T_OBJ]);

    add_simple_op('forceouterctx', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects);

    add_simple_op('elems', $T_INT, [$T_OBJ], :method_call);

    add_simple_op('islist', $T_INT, [$T_OBJ], :decont(0));



    add_op('curlexpad', :!inlinable, sub ($comp, $node, :$want) {
        if $*HLL eq 'nqp' {
            my @get;
            my @set;

            for $*BLOCK.variables -> $var {
                my str $storage := $comp.is_dynamic_var($*BLOCK, $var)
                    ?? "{$*CTX}[{quote_string($var.name)}]"
                    !! $*BLOCK.mangle_var($var);

                @set.push(quote_string($var.name) ~
                   ~ ': function(value) {'
                   ~ $storage ~ ' = value'
                   ~ '}');
                @get.push(quote_string($var.name) ~
                   ~ ': function() {'
                   ~ 'return ' ~ $storage ~ ''
                   ~ '}');
            }
            Chunk.new($T_OBJ, "new nqp.CurLexpad(\{{nqp::join(',', @get)}\}, \{{nqp::join(',', @set)}\})", :$node);
        } else {
            Chunk.new($T_OBJ, $*CTX, :$node);
        }
    });

    add_op('getlexouter', :!inlinable, sub ($comp, $node, :$want) {
        unless nqp::istype($node[0], QAST::SVal) {
            $comp.NYI("getlexouter with an argument that isn't a string literal");
        }
        my str $var_name := $node[0].value;
        my $block := $*BLOCK.outer;
        while $block {
            if ($block.qast && $block.qast.ann('DYN_COMP_WRAPPER')) {
                $block := NQPMu;
                last;
            }
            last if $block.has_own_variable($var_name);
            $block := $block.outer;
        }

        # TODO type

        my $var := QAST::Var.new(:name($var_name), :scope<lexical>);

        if !$block {
            Chunk.new($T_OBJ, "{$*BLOCK.ctx}.lookupFromOuter({quote_string($var_name)})", :$node);
        }
        elsif $comp.is_dynamic_var($block, $var) {
            Chunk.new($T_OBJ, $*BLOCK.ctx_for_var($var, :from_outer) ~ "[" ~ quote_string($var_name) ~ "]", :$node);
        }
        else {
            Chunk.new($T_OBJ, $*BLOCK.outer.mangle_lexical($var_name) , :$node);
        }
    });

    add_simple_op('slice', $T_OBJ, [$T_OBJ, $T_INT, $T_INT], :method_call, :side_effects);

    add_simple_op('splice', $T_OBJ, [$T_OBJ, $T_OBJ, $T_INT, $T_INT],
        :method_call, :side_effects);

    add_simple_op('setelems', $T_OBJ, [$T_OBJ, $T_INT], :side_effects);


    add_simple_op('iterator', $T_OBJ, [$T_OBJ], :method_call, :side_effects);

    add_simple_op('iterval', $T_OBJ, [$T_OBJ], :method_call);
    add_simple_op('iterkey_s', $T_STR, [$T_OBJ], :method_call);

    add_simple_op('existskey', $T_BOOL, [$T_OBJ, $T_STR], :method_call);
    add_simple_op('deletekey', $T_OBJ, [$T_OBJ, $T_STR], :method_call, :side_effects);

    add_simple_op('existspos', $T_BOOL, [$T_OBJ, $T_INT], :method_call);

    for <ceil floor abs log sqrt exp sin acos cos atan tan asin sinh cosh tanh> -> $func {
        add_simple_op($func ~ '_n', $T_NUM, [$T_NUM], sub ($arg) {"Math.$func($arg)"});
    }

    add_simple_op('atan2_n', $T_NUM, [$T_NUM, $T_NUM], sub ($y, $x) {"Math.atan2($y, $x)"});

    add_simple_op('sec_n', $T_NUM, [$T_NUM]);
    add_simple_op('asec_n', $T_NUM, [$T_NUM]);
    add_simple_op('sech_n', $T_NUM, [$T_NUM]);

    add_simple_op('abs_i', $T_INT, [$T_INT], sub ($arg) {"Math.abs($arg)"});
    add_simple_op('pow_n', $T_NUM, [$T_NUM, $T_NUM]);

    add_simple_op('srand', $T_INT, [$T_INT], :side_effects);
    add_simple_op('rand_n', $T_NUM, [$T_NUM]);

    add_simple_op('radix', $T_OBJ, [$T_INT, $T_STR, $T_INT, $T_INT], :takes_hll);

    add_simple_op('stat', $T_INT, [$T_STR, $T_INT], :side_effects);
    add_simple_op('stat_time', $T_NUM, [$T_STR, $T_INT], :side_effects);

    add_simple_op('lstat', $T_INT, [$T_STR, $T_INT], :side_effects);
    add_simple_op('lstat_time', $T_NUM, [$T_STR, $T_INT], :side_effects);

    add_simple_op('fileislink', $T_INT, [$T_STR], :side_effects);

    add_simple_op('filewritable', $T_INT, [$T_STR], :side_effects);
    add_simple_op('filereadable', $T_INT, [$T_STR], :side_effects);
    add_simple_op('fileexecutable', $T_INT, [$T_STR], :side_effects);

    add_simple_op('defined', $T_INT, [$T_OBJ], :decont(0));
    %ops<isconcrete> := %ops<defined>;

    add_simple_op('isconcrete_nd', $T_INT, [$T_OBJ], runtime_op('defined'));

    add_simple_op('scwbenable', $T_INT, [], :side_effects);
    add_simple_op('scwbdisable', $T_INT, [], :side_effects);

    add_simple_op('neverrepossess', $T_OBJ, [$T_OBJ], :side_effects);

    add_simple_op('settypehllrole', $T_OBJ, [$T_OBJ, $T_INT], :side_effects);
    add_simple_op('settypehll', $T_OBJ, [$T_OBJ, $T_STR], :side_effects);

    add_simple_op('sethllconfig', $T_OBJ,  [$T_STR, $T_OBJ], :side_effects);

    add_simple_op('bindcurhllsym', $T_OBJ, [$T_STR, $T_OBJ], :side_effects, sub ($sym, $value) {
        "nqp.op.bindhllsym({quote_string($*HLL)}, $sym, $value)"
    });
    add_simple_op('getcurhllsym', $T_OBJ, [$T_STR], sub ($sym) {
        "nqp.op.gethllsym({quote_string($*HLL)}, $sym)"
    });

    add_simple_op('bindhllsym', $T_OBJ, [$T_STR, $T_STR, $T_OBJ], :side_effects);
    add_simple_op('gethllsym', $T_OBJ, [$T_STR, $T_STR]);

    add_simple_op('hllizefor', $T_OBJ, [$T_OBJ, $T_STR], :ctx, :side_effects, :await);

    add_simple_op('hllize', $T_OBJ, [$T_OBJ], :ctx, :side_effects, sub ($ctx, $obj) {
        "nqp.op.hllizefor($ctx, $obj, {quote_string($*HLL)})"
    });

    add_simple_op('bindcomp', $T_OBJ, [$T_STR, $T_OBJ], :side_effects);
    add_simple_op('getcomp', $T_OBJ, [$T_STR], :side_effects);

    add_simple_op('setparameterizer', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :ctx, :decont(0,1));
    add_simple_op('parameterizetype', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :ctx, :decont(0,1), :await);
    add_simple_op('typeparameterized', $T_OBJ, [$T_OBJ], :decont(0));
    add_simple_op('typeparameters', $T_OBJ, [$T_OBJ], :ctx, :decont(0));
    add_simple_op('typeparameterat', $T_OBJ, [$T_OBJ, $T_INT], :ctx, :decont(0));

    # TODO avoid copy & paste - move it into code shared between backends
    add_op('defor', sub ($comp, $node, :$want) {
        if +$node.list != 2 {
            nqp::die("Operation 'defor' needs 2 operands");
        }
        my str $tmp := $node.unique('defined');
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

        my str $result := $*BLOCK.add_tmp();
        my $expr := $comp.as_js($node[0], :want($T_OBJ));
        my $then := $comp.as_js($node[1], :want($T_OBJ));
        Chunk.new($T_OBJ, $result, [
            $expr,
            "$result = {$expr.expr};\n",
            "if ($result === nqp.Null) \{\n",
            $then,
            "$result = {$then.expr};\n",
            "\}\n"], :node($node));
    });

    my sub needs_cond_passed($n) {
        nqp::istype($n, QAST::Block) && ($n.arity > 0 || $n.ann: 'count') # slurpies would have .arity 0
            && ($n.blocktype eq 'immediate' || $n.blocktype eq 'immediate_static')
    }

    for <if unless with without> -> $op_name {
        add_op($op_name, sub ($comp, $node, :$want) {
            unless nqp::defined($want) {
                nqp::die("Unknown want");
            }

            my $is_withy := $op_name eq 'with' || $op_name eq 'without';

            my $operands := +$node.list;
            nqp::die("Operation '"~$node.op~"' needs either 2 or 3 operands")
                if $operands < 2 || $operands > 3;



            my int $cond_type := (needs_cond_passed($node[1]) || needs_cond_passed($node[2]) || $is_withy)
                ?? $T_OBJ
                !! (($operands == 3 || $want == $T_VOID) ?? $T_BOOL !! $want);

            $cond_type := $T_OBJ if $cond_type == $T_CALL_ARG;

            # The 2 operand form of if in a non-void context also uses the cond as the return value
            my $cond := $comp.as_js($node[0], :want($T_OBJ));
            my $then;
            my $else;

            my str $result;

            if $want != $T_VOID {
                $result := $*BLOCK.add_tmp();
            }

            my $check_cond;
            if $is_withy {
                my $defined := $comp.await("{$cond.expr}.defined($*CTX, null, {$cond.expr})");
                my $retvaled := "nqp.retval(HLL, $defined)";
                my $deconted := $comp.await("$retvaled.\$\$decont($*CTX)");
                $check_cond := Chunk.new($T_INT, $comp.await("$deconted.\$\$toBool($*CTX)"), $cond);
            } else {
                $check_cond := $comp.coerce($cond, $T_BOOL);
            }

            my $cond_without_sideeffects := Chunk.new($cond.type, $cond.expr);


            my sub compile_block($node) {
                if needs_cond_passed($node) {
                    my $block := try $*BLOCK;
                    my $loop := try $*LOOP;
                    $comp.compile_block($node, $block, $loop, :$want, :extra_args([$cond.expr]));
                }
                else {
                    $comp.as_js($node, :$want);
                }
            }

            if $node.op eq 'if' || $node.op eq 'with' {
                $then := compile_block($node[1]);

                if $operands == 3 {
                    $else := compile_block($node[2]);
                }
                else {
                    $else := $comp.coerce($cond_without_sideeffects, $want);
                }
            }
            else {
                if $operands == 3 {
                    $then := compile_block($node[2]);
                }
                else {
                    $then := $comp.coerce($cond_without_sideeffects, $want);
                }
                $else := compile_block($node[1]);
            }

            Chunk.new($want, $result, [
                $check_cond,
                "if ({$check_cond.expr}) \{\n",
                $then,
                $want != $T_VOID ?? "$result = {$then.expr};\n" !! '',
                "\} else \{\n",
                $else,
                $want != $T_VOID ?? "$result = {$else.expr};\n" !! '',
                "\}\n"
            ], :node($node));
        });
    }

    add_op('xor', sub ($comp, $node, :$want) {
        my @childlist;
        my $f_ast;
        for $node.list {
            if $_.named eq 'false' {
                $f_ast := $_;
            }
            else {
                nqp::push(@childlist, $comp.as_js(:want($T_OBJ), $_));
            }
        }

        my $ret := $*BLOCK.add_tmp;
        my $true_count := $*BLOCK.add_tmp;

        my @setup;

        @setup.push("$true_count = 0;\n");

        for @childlist -> $chunk {
            @setup.push("if ($true_count < 2) \{");
            @setup.push($chunk);
            @setup.push(
                "if ({$chunk.expr}.\$\$decont($*CTX).\$\$toBool($*CTX)) \{\n"
                ~ "$true_count++;\n"
                ~ "$ret = {$chunk.expr};\n"
                ~ "\}\n"
            );

            @setup.push("\}\n");
        }

        @setup.push("if ($true_count == 2) \{\n");
        if $f_ast {
            my $chunk := $comp.as_js(:want($T_OBJ), $f_ast);
            @setup.push($chunk);
            @setup.push("$ret = {$chunk.expr};\n");
        }
        else {
            @setup.push("$ret = nqp.Null;\n");
        }
        @setup.push(
            "\} else if ($true_count == 0) \{\n"
            ~ "$ret = {@childlist[@childlist-1].expr};\n"
            ~ "\}"
        );

        Chunk.new($T_OBJ, $ret, @setup);
    });

    add_op('for', sub ($comp, $node, :$want) {

        my int $handler := 1;
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

        unless @operands[1].blocktype eq 'immediate' {
            nqp::die("Operation 'for' expects the block to have blocktype to be immediate, is: {@operands[1].blocktype}");
        }

        my str $iterator := $*BLOCK.add_tmp();

        my $list := $comp.as_js(@operands[0], :want($T_OBJ));

        # TODO think if creating the block once, and the calling it multiple times would be faster

        my @body_args;
        my @setup;
        my $arity := @operands[1].arity || 1;
        while $arity > 0 {
            my str $iterval := $*BLOCK.add_tmp();
            @setup.push("$iterval = $iterator.\$\$shift();\n");
            @body_args.push($iterval);
            $arity := $arity - 1;
        }

        my $outer     := try $*BLOCK;
        my $outer_loop := try $*LOOP;

        my $loop := $handler ?? LoopInfo.new($outer_loop, :$label) !! $outer_loop;

        my str $control_ctx := $handler ?? $*BLOCK.add_tmp() !! $*CTX;

        my $body;
        {
            my $*CTX := $control_ctx;
            $body := $comp.compile_block(@operands[1], $outer, $loop , :want($T_VOID), :extra_args(@body_args));
        }

        my int $has_redo := $handler && $loop.has_redo;

        if $has_redo {
            $loop.redo_label(QAST::Node.unique('redo_label'));
        }

        Chunk.new($T_OBJ, 'null', [
            $list,
            "$iterator = {$list.expr}.\$\$iterator();\n",
            "{$handler ?? $loop.js_label ~ ':' !! ''} while ($iterator.\$\$idx < $iterator.\$\$target) \{\n",
            Chunk.void(|@setup),
            ($has_redo ?? "{$loop.redo_label}: do \{{$loop.redo} = false;\n" !! ''),
            $handler ?? $comp.handle_control($loop, $control_ctx, $body) !! $body,
            ($has_redo ?? "\} while ({$loop.redo});\n" !! ''),
            "\}\n"
        ], :node($node));

    });

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

            my $loop := $handler ?? LoopInfo.new($*LOOP, :$label) !! $*LOOP;


            my int $cond_type := needs_cond_passed($node[1]) ?? $T_OBJ !! $T_BOOL;

            my $control_ctx := $handler ?? $*BLOCK.add_tmp !! $*CTX;

            my int $repeat_variant := ($op eq 'repeat_while' || $op eq 'repeat_until');

            my str $setup_previous_cond := '';
            my str $store_previous_cond := '';

            my $check_cond;
            my $body;
            {
                my $*LOOP := $loop;
                my $*CTX := $control_ctx;

                my $cond := $comp.as_js(@operands[0], :want($cond_type));
                $check_cond := $comp.coerce($cond, $T_BOOL);

                if needs_cond_passed(@operands[1]) {
                    my $block := try $*BLOCK;
                    my $loop := try $*LOOP;
                    my str $pass_cond;
                    if $repeat_variant {
                        $pass_cond := $*BLOCK.add_tmp;
                        $store_previous_cond := "$pass_cond = {$cond.expr};\n";
                        $setup_previous_cond := "$pass_cond = nqp.Null;\n";
                    }
                    else {
                        $pass_cond := $cond.expr;
                    }
                    $body := $comp.compile_block(@operands[1], $block, $loop, :want($T_VOID), :extra_args([$pass_cond]));
                }
                else {
                    $body := $comp.as_js(@operands[1], :want($T_VOID));
                }
            }


            my $post := '';

            my str $last_exception;

            if +@operands == 3 {
                my $ctx := $*CTX;

                if $*HLL eq 'nqp' {
                    $post := Chunk.void("{$comp.await} ({$comp.async}function() \{", $comp.as_js(@operands[2], :want($T_VOID)), '})()');
                } else {
                    my $*CTX := $comp.unique_var('ctx');

                    $last_exception := $*BLOCK.add_tmp;

                    $post := Chunk.void(
                        "{$comp.await} ({$comp.async}function() \{",
                        "let $*CTX = new nqp.CtxJustHandler($ctx, $ctx, $ctx.\$\$callThis);\n",
                        "$*CTX.\$\$LAST = function() \{\};",
                        "$last_exception = \{\};\n",
                        "$*CTX.\$\$unwind = $last_exception;\n",
                         $comp.as_js(@operands[2], :want($T_VOID)),
                         '})()');
                }
            }


            if $handler {

                my str $neg := ($op eq 'while' || $op eq 'repeat_while') ?? '!' !! '';

                # With perl6 we always emit all handlers
                my int $has_redo := $*HLL ne 'nqp' || $loop.has_redo || $repeat_variant;

                Chunk.void(
                    $repeat_variant ?? "{$loop.redo} = true;\n" !! '',
                    $setup_previous_cond,
                    $last_exception ?? "try \{\n" !! "",
                    "{$loop.js_label}: for (;;", ($post && $has_redo ?? "{$loop.redo} || " !! '') , $post, ") \{\n",
                    $comp.handle_control($loop, $control_ctx, Chunk.void(
                        ($has_redo
                            ?? "if ({$loop.redo}) \{;\n"
                                ~ "{$loop.redo} = false;\n"
                                ~  "\} else \{\n"
                            !! ''),
                        $check_cond,
                        $store_previous_cond,
                        "if ($neg {$check_cond.expr}) \{break;\}\n",
                        ($has_redo ?? "\}\n" !! ''),
                        $body,
                    )),
                    "\}",
                    $last_exception ?? "\} catch (e) \{\nif (e !== $last_exception) \{throw e;\}\n\}\n" !! "",
                );
            } elsif $repeat_variant {
                my str $neg := $op eq 'repeat_while' ?? '' !! '!';
                Chunk.void(
                    $setup_previous_cond,
                    "do \{\n",
                    $body,
                    $check_cond,
                    $store_previous_cond,
                    "\} while ($neg {$check_cond.expr});"
                );
            } else {
                my str $neg := $op eq 'while' ?? '!' !! '';
                Chunk.void(
                    "for (;;", $post, ") \{\n",
                        $check_cond,
                        "if ($neg {$check_cond.expr}) \{break;\}\n",
                        $body,
                    "\}"
                );
            }
        });
    }

    # Constant mapping.

    add_op('const', sub ($comp, $node, :$want) {
        if nqp::existskey(%const_map, $node.name) {
            $comp.as_js(QAST::IVal.new( :value(%const_map{$node.name})), :$want);
        }
        else {
            $comp.NYI("Constant "~$node.name);
        }
    });


    add_simple_op('findcclass', $T_INT, [$T_INT, $T_STR, $T_INT, $T_INT]);
    add_simple_op('findnotcclass', $T_INT, [$T_INT, $T_STR, $T_INT, $T_INT]);
    add_simple_op('iscclass', $T_INT, [$T_INT, $T_STR, $T_INT]);

    # We assume if handlepayload is present is contains the whole meat of the function
    add_op('handlepayload', :!inlinable, sub ($comp, $node, :$want) {
        if +$node.list != 3 {
            nqp::die("The 'handlepayload' op requires three children");
        }
        my str $type := $node[1];

        my int $is_return := $type eq 'RETURN'
        && nqp::istype($node[2], QAST::Op) && $node[2].op eq 'lastexpayload';

        my @toplevels := $*BLOCK.qast.list;
        my $is_last_toplevel;

        # TODO actually call p6typecheckrv rather than treat it as a noop

        if +@toplevels {
            my $last := @toplevels[+@toplevels - 1];
            $is_last_toplevel := nqp::eqaddr($last, $node)
                || ($last.op eq 'p6typecheckrv' && nqp::eqaddr($last[0], $node));
        }

        if $is_last_toplevel {

            my $*RETURN;
            $*RETURN := ReturnInfo.new(block => $*BLOCK) if $is_return;

            my $protected := $comp.as_js($node[0], :want($T_OBJ));

            # When compiling nqp assume that nqp::throwpayloadlexcaller is not used
            if $*HLL eq 'nqp' && $is_return && !$*RETURN.is_used {
                $protected;
            }
            else {
                my $unwind_marker := $*BLOCK.add_tmp;

                my $handle_result := $comp.as_js(:want($T_OBJ), $node[2]);
                my str $result := $*BLOCK.add_tmp;


                Chunk.new($T_OBJ, $result, [
                    "$unwind_marker = \{\};\n",
                    "$*CTX.\$\$unwind = $unwind_marker;\n",
                    "$*CTX.\$\${$type} = {$comp.async}function() \{\n",
                        $handle_result,
                        "$result = {$handle_result.expr};\n",
                    "\};\n",
                    "try \{",
                        $protected,
                        "$result = {$protected.expr};\n",
                    "\} catch (e) \{if (e === $unwind_marker) \{\} else \{throw e\}\}",
                ]);
            }
        }
        else {
            say("/*\n", $*BLOCK.qast.dump, "*/\n");
            $comp.NYI("handlepayload when it's not toplevel");
        }
    });

    my sub is_CONTROL_RETURN($category) {
        nqp::istype($category, QAST::IVal)
        && $category.value == nqp::const::CONTROL_RETURN
            || nqp::istype($category, QAST::Op)
            && $category.op   eq 'const'
            && $category.name eq 'CONTROL_RETURN';
    }

    add_simple_op('throwpayloadlexcaller', $T_VOID, [$T_INT, $T_OBJ], :side_effects, :!inlinable, :await,
       sub ($category, $payload) {"$*CTX.throwpayloadlexcaller($category, $payload)"});

    add_op('throwpayloadlex', :!inlinable, sub ($comp, $node, :$want) {
        my $payload := $comp.as_js(:want($T_OBJ), $node[1]);

        if $*RETURN && is_CONTROL_RETURN($node[0]) {
            if $*RETURN.as_return {
                return Chunk.void($payload, "return {$payload.expr};\n");
            }
            else {
                $*RETURN.mark_used;
            }
        }

        my $category := $comp.as_js(:want($T_INT), $node[0]);
        Chunk.void($category, $payload, "{$comp.await}$*CTX.throwpayloadlex({$category.expr}, {$payload.expr});\n");
    });

    add_simple_op('throwextype', $T_VOID, [$T_INT], :side_effects, :ctx, :await);

    add_simple_op('lastexpayload', $T_OBJ, [], :!inlinable);


    add_op('control', sub ($comp, $node, :$want) {
        $comp.throw_control_exception($node.name, $*LOOP, $node[0]);
    });

    add_simple_op('create', $T_OBJ, [$T_OBJ], :side_effects);

    add_simple_op('die', $T_VOID, [$T_STR], :side_effects, sub ($msg) {"{$*CTX}.die($msg)"}, :await);
    %ops<die_s> := %ops<die>;


    add_simple_op('how', $T_OBJ, [$T_OBJ], sub ($obj) {"$obj._STable.HOW"}, :decont(0));
    add_simple_op('how_nd', $T_OBJ, [$T_OBJ], sub ($obj) {"$obj._STable.HOW"});
    add_simple_op('who', $T_OBJ, [$T_OBJ], sub ($obj) {"$obj._STable.WHO"}, :decont(0));
    add_simple_op('setwho', $T_OBJ, [$T_OBJ, $T_OBJ], sub ($obj, $who) {"($obj._STable.WHO = $who, $obj)"}, :side_effects, :decont(0));

    # TODO decont second argument
    add_simple_op('rebless', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :decont(0, 1));
    add_simple_op('composetype', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects);

    add_simple_op('where', $T_INT, [$T_OBJ], :decont(0));
    add_simple_op('objectid', $T_INT, [$T_OBJ], :decont(0));

    # Set of sequential statements

    add_op('stmts', sub ($comp, $node, :$want) {
        $comp.as_js(:$want, QAST::Stmts.new( |@($node)));
    });

    # HACK
    # TODO think what we should return on 1.WHAT and "foo".WHAT
    add_simple_op('what', $T_OBJ, [$T_OBJ], sub ($obj) {"($obj._STable ? $obj._STable.WHAT : nqp.Null)"}, :decont(0));
    add_simple_op('what_nd', $T_OBJ, [$T_OBJ], sub ($obj) {"($obj._STable ? $obj._STable.WHAT : nqp.Null)"});

    add_simple_op('knowhowattr', $T_OBJ, [], sub () {"nqp.knowhowattr"});
    add_simple_op('knowhow', $T_OBJ, [], sub () {"nqp.knowhow"});


    add_simple_op('savecapture', :!inlinable, $T_OBJ, [], sub () {
        "nqp.op.savecapture(Array.prototype.slice.call(arguments))"
    } , :side_effects);
    %ops<usecapture> := %ops<savecapture>;

    add_simple_op('getlexdyn', $T_OBJ, [$T_STR], sub ($name) {"{$*CTX}.lookupDynamicFromCaller($name)"});
    add_simple_op('getlexreldyn', $T_OBJ, [$T_OBJ, $T_STR], sub ($ctx, $name) {"$ctx.lookupDynamic($name)"});
    add_simple_op('getlexcaller', $T_OBJ, [$T_STR], sub ($name) {"{$*CTX}.\$\$caller.lookupWithCallers($name)"});
    add_simple_op('getlexrelcaller', $T_OBJ, [$T_OBJ, $T_STR], sub ($ctx, $name) {"$ctx.lookupWithCallers($name)"});
    add_simple_op('getlexrel', $T_OBJ, [$T_OBJ, $T_STR]);

    add_op('getlex', sub ($comp, $node, :$want) {
        if nqp::elems(@($node)) != 1 || !nqp::istype($node[0], QAST::SVal) {
            nqp::die('getlex requires one string literal operand');
        }
        my str $name := $node[0].value;

        if $comp.is_dynamic_var($*BLOCK, QAST::Var.new(:name($name), :scope<lexical>)) {
            return Chunk.new($T_OBJ, "{$*BLOCK.ctx}.lookupOrNull({quote_string($name)})");
        }
        else {
            my $info := $*BLOCK;
            while $info {
                if $info.mangle_own_lexical($name) -> $mangled {
                    return Chunk.new($T_OBJ, $mangled);
                }
                $info := $info.outer;
            }
            return Chunk.new($T_OBJ, 'nqp.Null');
        }
    });

    add_simple_op('captureexistsnamed', $T_INT, [$T_OBJ, $T_STR]);
    add_simple_op('capturehasnameds', $T_INT, [$T_OBJ]);
    add_simple_op('captureposelems', $T_INT, [$T_OBJ]);
    add_simple_op('captureposarg', $T_OBJ, [$T_OBJ, $T_INT], :takes_hll);
    add_simple_op('captureposarg_s', $T_STR, [$T_OBJ, $T_INT]);
    add_simple_op('captureposarg_n', $T_NUM, [$T_OBJ, $T_INT]);
    add_simple_op('captureposarg_i', $T_INT, [$T_OBJ, $T_INT]);
    add_simple_op('capturenamedshash', $T_OBJ, [$T_OBJ], :takes_hll);

    add_simple_op('captureposprimspec', $T_INT, [$T_OBJ, $T_INT]);

    add_simple_op('captureinnerlex', $T_OBJ, [$T_OBJ], :!inlinable, :side_effects);

    # TODO - make the async optional

    add_op('invokewithcapture', sub ($comp, $node, :$want) {
        my $invokee := $comp.as_js($node[0], :want($T_OBJ));
        my $capture := $comp.as_js($node[1], :want($T_OBJ));
        my $chunk := Chunk.new($T_OBJ, "nqp.retval(HLL, {$comp.await} {$invokee.expr}.\$\$apply([{$*CTX}].concat({$capture.expr}.named, {$capture.expr}.pos)))", [$invokee, $capture]);
        $comp.stored_result($chunk, :$want);
    });

    add_simple_op('multicachefind', $T_OBJ, [$T_OBJ, $T_OBJ], :ctx, :await);
    add_simple_op('multicacheadd', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ], :ctx, :await);

    add_simple_op('settypecache', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :decont(0));
    add_simple_op('setmethcache', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :decont(0));
    add_simple_op('setmethcacheauth', $T_OBJ, [$T_OBJ, $T_INT], :side_effects, :decont(0));

    add_simple_op('settypecheckmode', $T_OBJ, [$T_OBJ, $T_INT], :side_effects, :decont(0));

    add_simple_op('getcodename', $T_STR, [$T_OBJ]);
    add_simple_op('setcodename', $T_OBJ, [$T_OBJ, $T_STR], :side_effects);

    add_simple_op('getcodeobj', $T_OBJ, [$T_OBJ]);
    add_simple_op('setcodeobj', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects);

    add_simple_op('getcodecuid', $T_STR, [$T_OBJ]);

    add_simple_op('box_i', $T_OBJ, [$T_INT, $T_OBJ]);
    add_simple_op('unbox_i', $T_INT, [$T_OBJ], :decont(0));

    add_simple_op('box_n', $T_OBJ, [$T_NUM, $T_OBJ]);
    add_simple_op('unbox_n', $T_NUM, [$T_OBJ], :decont(0));

    add_simple_op('box_s', $T_OBJ, [$T_STR, $T_OBJ]);
    add_simple_op('unbox_s', $T_STR, [$T_OBJ], :decont(0));

    add_simple_op('setdebugtypename', $T_OBJ, [$T_OBJ, $T_STR], :side_effects);

    add_simple_op('iseq_I', $T_INT, [$T_OBJ, $T_OBJ]);
    add_simple_op('isne_I', $T_INT, [$T_OBJ, $T_OBJ]);


    # bigint arithmetic operators operators

    add_simple_op('mul_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('add_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('sub_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('div_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('pow_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('mod_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('neg_I', $T_OBJ, [$T_OBJ, $T_OBJ]);

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

    add_simple_op('fromI_I', $T_OBJ, [$T_OBJ, $T_OBJ]);


    add_simple_op('div_In', $T_NUM, [$T_OBJ, $T_OBJ]);
    add_simple_op('isle_I', $T_INT, [$T_OBJ, $T_OBJ]);
    add_simple_op('islt_I', $T_INT, [$T_OBJ, $T_OBJ]);
    add_simple_op('isge_I', $T_INT, [$T_OBJ, $T_OBJ]);
    add_simple_op('isgt_I', $T_INT, [$T_OBJ, $T_OBJ]);
    add_simple_op('cmp_I', $T_INT, [$T_OBJ, $T_OBJ]);

    add_simple_op('gcd_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('lcm_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('isprime_I', $T_INT, [$T_OBJ, $T_INT]);
    add_simple_op('abs_I', $T_OBJ, [$T_OBJ, $T_OBJ]);

    add_simple_op('rand_I', $T_OBJ, [$T_OBJ, $T_OBJ]);
    add_simple_op('expmod_I', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ]);
    add_simple_op('bool_I', $T_INT, [$T_OBJ]);
    add_simple_op('isbig_I', $T_INT, [$T_OBJ]);

    add_simple_op('tonum_I', $T_NUM, [$T_OBJ]);
    add_simple_op('fromnum_I', $T_OBJ, [$T_NUM, $T_OBJ]);

    add_simple_op('radix_I', $T_OBJ, [$T_INT, $T_STR, $T_INT, $T_INT, $T_OBJ], :takes_hll);

    add_simple_op('curcode', :!inlinable, $T_OBJ, [], sub () {"$*CTX.codeRef()"});
    add_simple_op('callercode', :!inlinable, $T_OBJ, [], sub () {"caller_ctx.codeRef()"});

    # Native Call
    add_simple_op('buildnativecall',  $T_INT, [$T_OBJ, $T_STR, $T_STR, $T_STR, $T_OBJ, $T_OBJ], :side_effects, :ctx);
    add_simple_op('nativecall', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ], :side_effects);

    add_simple_op('nativecallsizeof', $T_INT, [$T_OBJ], :decont(0));

    add_simple_op('nativecallglobal', $T_OBJ, [$T_STR, $T_STR, $T_OBJ, $T_OBJ]);

    add_simple_op('nativecallcast', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ]);

    add_simple_op('nativecallrefresh', $T_OBJ, [$T_INT], :side_effects);

    add_simple_op('initnativecall', $T_INT, [], :side_effects);

    # Continuations

    add_simple_op('continuationreset', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :ctx, :takes_hll, :await);
    add_simple_op('continuationinvoke', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :ctx, :takes_hll, :await);

    add_simple_op('continuationcontrol', $T_OBJ, [$T_INT, $T_OBJ, $T_OBJ], :side_effects, :ctx, :takes_hll, :await);


    # Dealing with compiled compunits

    add_simple_op('iscompunit', $T_INT, [$T_OBJ]);
    add_simple_op('compunitcodes', $T_OBJ, [$T_OBJ]);
    add_simple_op('compunitmainline', $T_OBJ, [$T_OBJ]);

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

    add_op('takedispatcher', sub ($comp, $node, :$want) {
        if nqp::elems(@($node)) != 1 || !nqp::istype($node[0], QAST::SVal) {
            nqp::die('takedispatcher requires one string literal operand');
        }
        my str $var := $node[0].value;

        my $set_var := $comp.is_dynamic_var($*BLOCK, QAST::Var.new(:name($var), :scope<lexical>))
            ?? "{$*CTX}.bind({quote_string($var)}, nqp.currentDispatcher);\n"
            !! $*BLOCK.mangle_lexical($var) ~ " = nqp.currentDispatcher;\n";

        Chunk.void(
            "if (nqp.currentDispatcher !== undefined && (nqp.currentDispatcherFor === undefined || nqp.currentDispatcherFor === $*CTX.codeRef())) \{"
            ~ $set_var
            ~ "nqp.currentDispatcher = undefined;\n"
            ~ "\}\n"
        );
    });
    add_simple_op('cleardispatcher', $T_VOID, [], :ctx, :side_effects);
    add_simple_op('setdispatcher', $T_VOID, [$T_OBJ], sub ($value) {"nqp.currentDispatcher = $value"}, :side_effects);
    add_simple_op('setdispatcherfor', $T_VOID, [$T_OBJ, $T_OBJ], :side_effects);

    add_simple_op('ctxcaller', $T_OBJ, [$T_OBJ], :!inlinable);
    add_simple_op('ctx', $T_OBJ, [], :!inlinable, sub () {$*BLOCK.ctx});
    add_simple_op('ctxcode', $T_OBJ, [$T_OBJ], :!inlinable, sub ($ctx) {"$ctx.codeRef()"});

    add_simple_op('lock', $T_OBJ, [$T_OBJ], sub ($lock) {$lock});
    add_simple_op('unlock', $T_OBJ, [$T_OBJ], sub ($lock) {$lock});

    add_simple_op('sleep', $T_NUM, [$T_NUM], :side_effects);

    add_simple_op('strfromname', $T_STR, [$T_STR]);
    add_simple_op('codepointfromname', $T_INT, [$T_STR]);

    add_op('js', sub ($comp, $node, :$want) {
        my %want_char := nqp::hash($T_INT, 'I', $T_NUM, 'N', $T_STR, 'S', $T_VOID, 'v');
        my sub want($node, $type) {
            my @possibles := nqp::clone($node.list);
            my $best := @possibles.shift;
            return $best unless %want_char{$type};
            my str $char := %want_char{$type};
            for @possibles -> $sel, $ast {
                if nqp::index($sel, $char) >= 0 {
                    $best := $ast;
                }
            }
            $best
        }

        my $code := nqp::istype($node[0], QAST::Want) ?? want($node[0], $T_STR) !! $node[0];
        if nqp::elems(@($node)) != 1 || !nqp::istype($code, QAST::SVal) {
            nqp::die('js requires one string literal operand');
        }
        Chunk.void($code.value ~ ";\n");
    });

    add_simple_op('loadbytecode', $T_STR, [$T_STR], :ctx, :side_effects, :await);
    add_simple_op('loadbytecodefh', $T_VOID, [$T_OBJ, $T_STR], :ctx, :side_effects);

    add_simple_op('execname', $T_STR, []);

    add_simple_op('decoderconfigure', $T_OBJ, [$T_OBJ, $T_STR, $T_OBJ], :ctx, :side_effects, :method_call);
    add_simple_op('decodersetlineseps', $T_OBJ, [$T_OBJ, $T_OBJ], :ctx, :side_effects, :method_call, :await);
    add_simple_op('decoderaddbytes', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects, :method_call);
    add_simple_op('decodertakechars', $T_STR, [$T_OBJ, $T_INT], :side_effects, :method_call);
    add_simple_op('decodertakeallchars', $T_STR, [$T_OBJ], :side_effects, :method_call);
    add_simple_op('decodertakeavailablechars', $T_STR, [$T_OBJ], :side_effects, :method_call);
    add_simple_op('decodertakeline', $T_STR, [$T_OBJ, $T_INT, $T_INT], :side_effects, :method_call);
    add_simple_op('decoderbytesavailable', $T_INT, [$T_OBJ], :method_call);
    add_simple_op('decodertakebytes', $T_OBJ, [$T_OBJ, $T_OBJ, $T_INT], :side_effects, :method_call);
    add_simple_op('decoderempty', $T_INT, [$T_OBJ], :method_call);

    add_simple_op('normalizecodes', $T_OBJ, [$T_OBJ, $T_INT, $T_OBJ], :side_effects);

    add_simple_op('codes', $T_INT, [$T_STR]);

    add_simple_op('strfromcodes', $T_STR, [$T_OBJ]);
    add_simple_op('strtocodes', $T_OBJ, [$T_STR, $T_INT, $T_OBJ], :side_effects);

    add_simple_op('getlockcondvar', $T_OBJ, [$T_OBJ, $T_OBJ], :side_effects);
    add_simple_op('condwait', $T_OBJ, [$T_OBJ], :side_effects);
    add_simple_op('condsignalall', $T_OBJ, [$T_OBJ], :side_effects);
    add_simple_op('condsignalone', $T_OBJ, [$T_OBJ], :side_effects);

    add_simple_op('asyncconnect', $T_OBJ, [$T_OBJ, $T_OBJ, $T_STR, $T_INT, $T_OBJ], :side_effects);
    add_simple_op('asynclisten', $T_OBJ, [$T_OBJ, $T_OBJ, $T_STR, $T_INT, $T_INT, $T_OBJ], :side_effects);
    add_simple_op('asyncwritebytes', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ], :side_effects);
    add_simple_op('asyncreadbyte', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ, $T_OBJ], :side_effects);
    add_simple_op('spawnprocasync', $T_OBJ, [$T_OBJ, $T_OBJ, $T_STR, $T_OBJ, $T_OBJ], :ctx, :side_effects, :await);
    add_simple_op('killprocasync', $T_OBJ, [$T_OBJ, $T_INT], :side_effects);

    add_simple_op('permit', $T_OBJ, [$T_OBJ, $T_INT, $T_INT], :side_effects);

    add_simple_op('semacquire', $T_OBJ, [$T_OBJ], :side_effects);
    add_simple_op('semtryacquire', $T_INT, [$T_OBJ], :side_effects);
    add_simple_op('semrelease', $T_OBJ, [$T_OBJ], :side_effects);

    add_simple_op('unipropcode', $T_INT, [$T_STR]);
    add_simple_op('getuniprop_str', $T_STR, [$T_INT, $T_INT]);
    add_simple_op('getuniprop_bool', $T_INT, [$T_INT, $T_INT]);
    add_simple_op('getuniprop_int', $T_INT, [$T_INT, $T_INT]);
    add_simple_op('matchuniprop', $T_INT, [$T_INT, $T_INT, $T_INT]);
    add_simple_op('unipvalcode', $T_INT, [$T_INT, $T_STR]);
    add_simple_op('getuniname', $T_STR, [$T_INT]);

    add_simple_op('atomicinc_i', $T_INT, [$T_OBJ], :ctx, :side_effects);
    add_simple_op('atomicdec_i', $T_INT, [$T_OBJ], :ctx);
    add_simple_op('atomicload', $T_OBJ, [$T_OBJ], :ctx);
    add_simple_op('atomicload_i', $T_INT, [$T_OBJ], :ctx);
    add_simple_op('atomicstore', $T_OBJ, [$T_OBJ, $T_OBJ], :ctx, :side_effects);
    add_simple_op('atomicstore_i', $T_OBJ, [$T_OBJ, $T_INT], :ctx, :side_effects);
    add_simple_op('cas', $T_OBJ, [$T_OBJ, $T_OBJ, $T_OBJ], :ctx, :side_effects);
    add_simple_op('cas_i', $T_INT, [$T_OBJ, $T_INT, $T_INT], :ctx, :side_effects);

    add_simple_op('getrusage', $T_OBJ, [], :side_effects);

    add_simple_op('cpucores', $T_INT, []);

    add_simple_op('unicmp_s', $T_INT, [$T_STR, $T_STR, $T_INT, $T_INT, $T_INT]);

    # JS specific NFG variants

    add_simple_op('charsnfg', $T_INT, [$T_STR]);
    add_simple_op('substrnfg', $T_STR, [$T_STR, $T_INT, $T_INT], sub ($string, $start, $length?) {
        nqp::defined($length) ?? "nqp.op.substr3nfg($string,$start,$length)" !! "nqp.op.substr2nfg($string,$start)";
    });

    add_simple_op('iscclassnfg', $T_INT, [$T_INT, $T_STR, $T_INT]);

    add_simple_op('iseq_snfg', $T_INT, [$T_STR, $T_STR]);
    add_simple_op('isne_snfg', $T_INT, [$T_STR, $T_STR]);


    method add_hll_unbox($hll, $type, $method_name) {
        unless nqp::existskey(%hll_unbox, $hll) {
            %hll_unbox{$hll} := nqp::hash();
        }
        %hll_unbox{$hll}{$type} := $method_name;
    }

    method unbox($comp, $hll, $desired, $chunk) {
        if nqp::existskey(%hll_unbox, $hll) && nqp::existskey(%hll_unbox{$hll}, $desired) {
            return Chunk.new($desired, '(' ~ $chunk.expr ~ ").\$\${%hll_unbox{$hll}{$desired}}()", $chunk);
        }
        my %convert;
        %convert{$T_STR} := 'toStr';
        %convert{$T_NUM} := 'toNum';
        %convert{$T_INT} := 'toInt';
        my int $is_fancy_int := $comp.is_fancy_int($desired);
        nqp::die("Can't coerce OBJ to $desired") unless nqp::existskey(%convert, $desired) || $is_fancy_int;

        my str $rough_convert := $comp.await('nqp.' ~ %convert{$is_fancy_int ?? $T_INT !! $desired} ~ '(' ~ $chunk.expr ~ ", {$*CTX})");
        my str $convert := $is_fancy_int
            ?? $comp.int_to_fancy_int($desired, $rough_convert)
            !! $rough_convert;

        return Chunk.new($desired, $convert, $chunk);
    }
}
