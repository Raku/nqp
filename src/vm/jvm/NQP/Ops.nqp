# Set up various NQP-specific ops.
my $ops := QAST::CompilerJAST.operations();
my $RT_OBJ    := 0;
my $RT_INT    := 1;
my $RT_NUM    := 2;
my $RT_STR    := 3;
my $TYPE_TC   := 'Lorg/perl6/nqp/runtime/ThreadContext;';
my $TYPE_OPS  := 'Lorg/perl6/nqp/runtime/Ops;';
my $TYPE_SMO  := 'Lorg/perl6/nqp/sixmodel/SixModelObject;';
my $TYPE_STR  := 'Ljava/lang/String;';

$ops.add_hll_op('nqp', 'preinc', -> $qastcomp, $op {
    my $var := $op[0];
    unless nqp::istype($var, QAST::Var) {
        nqp::die("Pre-increment can only work on a variable");
    }
    $qastcomp.as_jast(QAST::Op.new(
        :op('bind'),
        $var,
        QAST::Op.new(
            :op('add_i'),
            $var,
            QAST::IVal.new( :value(1) )
        )));
});

$ops.add_hll_op('nqp', 'predec', -> $qastcomp, $op {
    my $var := $op[0];
    unless nqp::istype($var, QAST::Var) {
        nqp::die("Pre-decrement can only work on a variable");
    }
    $qastcomp.as_jast(QAST::Op.new(
        :op('bind'),
        $var,
        QAST::Op.new(
            :op('sub_i'),
            $var,
            QAST::IVal.new( :value(1) )
        )));
});

$ops.add_hll_op('nqp', 'postinc', -> $qastcomp, $op {
    my $var := $op[0];
    my $tmp := QAST::Op.unique('tmp');
    unless nqp::istype($var, QAST::Var) {
        nqp::die("Post-increment can only work on a variable");
    }
    $qastcomp.as_jast(QAST::Op.new(
        :op('locallifetime'),
        QAST::Stmt.new(
            :resultchild(0),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name($tmp), :scope('local'), :decl('var'), :returns($var.returns) ),
                $var
            ),
            QAST::Op.new(
                :op('bind'),
                $var,
                QAST::Op.new(
                    :op('add_i'),
                    QAST::Var.new( :name($tmp), :scope('local'), :returns($var.returns)  ),
                    QAST::IVal.new( :value(1) )
                )
            )),
        $tmp));
});

$ops.add_hll_op('nqp', 'postdec', -> $qastcomp, $op {
    my $var := $op[0];
    my $tmp := QAST::Op.unique('tmp');
    unless nqp::istype($var, QAST::Var) {
        nqp::die("Post-decrement can only work on a variable");
    }
    $qastcomp.as_jast(QAST::Op.new(
        :op('locallifetime'),
        QAST::Stmt.new(
            :resultchild(0),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name($tmp), :scope('local'), :decl('var') ),
                $var
            ),
            QAST::Op.new(
                :op('bind'),
                $var,
                QAST::Op.new(
                    :op('sub_i'),
                    QAST::Var.new( :name($tmp), :scope('local') ),
                    QAST::IVal.new( :value(1) )
                )
            )),
        $tmp));
});

$ops.add_hll_op('nqp', 'numify', -> $qastcomp, $op {
    $qastcomp.as_jast($op[0], :want($RT_NUM))
});

$ops.add_hll_op('nqp', 'stringify', -> $qastcomp, $op {
    $qastcomp.as_jast($op[0], :want($RT_STR))
});

$ops.add_hll_op('nqp', 'falsey', -> $qastcomp, $op {
    # Compile expression to falsify.
    my $il := JAST::InstructionList.new();
    my $res := $qastcomp.as_jast($op[0]);
    $il.append($res.jast);
    $*STACK.obtain($il, $res);
    
    # Now go by type.
    if $res.type == $RT_OBJ {
        $il.append(JAST::Instruction.new( :op('aload_1') ));
        $il.append(JAST::Instruction.new( :op('invokestatic'),
            $TYPE_OPS, 'isfalse', 'Long', $TYPE_SMO, $TYPE_TC ));
    }
    elsif $res.type == $RT_STR {
        $il.append(JAST::Instruction.new( :op('invokestatic'),
            $TYPE_OPS, 'isfalse_s', 'Long', $TYPE_STR ));
    }
    elsif $res.type == $RT_INT || $res.type == $RT_NUM {
        my $false := JAST::Label.new( :name($op.unique('not_false')) );
        my $done  := JAST::Label.new( :name($op.unique('not_done')) );
        $il.append(
            $res.type == $RT_INT
            ?? JAST::PushIVal.new( :value(0) )
            !! JAST::PushNVal.new( :value(0.0) )
        );
        $il.append(JAST::Instruction.new( :op($res.type == $RT_INT ?? 'lcmp' !! 'dcmpl') ));
        $il.append(JAST::Instruction.new( :op('ifne'), $false ));
        $il.append(JAST::PushIVal.new( :value(1) ));
        $il.append(JAST::Instruction.new( :op('goto'), $done ));
        $il.append($false);
        $il.append(JAST::PushIVal.new( :value(0) ));
        $il.append($done);
    }
    else {
        nqp::die("This case of nqp falsey op NYI");
    }

    $qastcomp.result($il, $RT_INT)
});

# NQP object unbox, which also must somewhat handle coercion.
QAST::OperationsJAST.add_hll_unbox('nqp', $RT_INT, -> $qastcomp {
    my $il := JAST::InstructionList.new();
    $il.append(JAST::Instruction.new( :op('aload_1') ));
    $il.append(JAST::Instruction.new( :op('invokestatic'), $TYPE_OPS,
        'smart_numify', 'Double', $TYPE_SMO, $TYPE_TC ));
    $il.append(JAST::Instruction.new( :op('d2l') ));
    $il
});
QAST::OperationsJAST.add_hll_unbox('nqp', $RT_NUM, -> $qastcomp {
    my $il := JAST::InstructionList.new();
    $il.append(JAST::Instruction.new( :op('aload_1') ));
    $il.append(JAST::Instruction.new( :op('invokestatic'), $TYPE_OPS,
        'smart_numify', 'Double', $TYPE_SMO, $TYPE_TC ));
    $il
});
QAST::OperationsJAST.add_hll_unbox('nqp', $RT_STR, -> $qastcomp {
    my $il := JAST::InstructionList.new();
    $il.append(JAST::Instruction.new( :op('aload_1') ));
    $il.append(JAST::Instruction.new( :op('invokestatic'), $TYPE_OPS,
        'smart_stringify', $TYPE_STR, $TYPE_SMO, $TYPE_TC ));
    $il
});
