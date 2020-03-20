my $ops := QAST::MASTCompiler.operations();
my int $MVM_reg_int32           := 3;
my int $MVM_reg_int64           := 4;
my int $MVM_reg_num64           := 6;
my int $MVM_reg_str             := 7;
my int $MVM_reg_obj             := 8;

$ops.add_hll_op('nqp', 'preinc', -> $qastcomp, $op {
    my $var := $op[0];
    unless nqp::istype($var, QAST::Var) {
        nqp::die("Pre-increment can only work on a variable");
    }
    $qastcomp.as_mast(QAST::Op.new(
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
    $qastcomp.as_mast(QAST::Op.new(
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
    $qastcomp.as_mast(QAST::Op.new(
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
    $qastcomp.as_mast(QAST::Op.new(
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

$ops.add_hll_op('nqp', 'intify', -> $qastcomp, $op {
    $qastcomp.as_mast($op[0], :want($MVM_reg_int64))
});

$ops.add_hll_op('nqp', 'numify', -> $qastcomp, $op {
    $qastcomp.as_mast($op[0], :want($MVM_reg_num64))
});

$ops.add_hll_op('nqp', 'stringify', -> $qastcomp, $op {
    $qastcomp.as_mast($op[0], :want($MVM_reg_str))
});

$ops.add_hll_op('nqp', 'falsey', -> $qastcomp, $op {
    unless nqp::elems($op.list) == 1 {
        nqp::die('falsey op requires one child');
    }
    my $val      := $qastcomp.as_mast($op[0]);
    my $regalloc := $*REGALLOC;
    if $val.result_kind == $MVM_reg_int64 {
        my $not_reg := $regalloc.fresh_register($MVM_reg_int64);
        MAST::Op.new(:op<not_i>, $not_reg, $val.result_reg);
        MAST::InstructionList.new($not_reg, $MVM_reg_int64)
    }
    elsif $val.result_kind == $MVM_reg_int32 {
        my $not_reg := $regalloc.fresh_register($MVM_reg_int64);
        MAST::Op.new(:op<extend_i32>, $not_reg, $val.result_reg);
        MAST::Op.new(:op<not_i>, $not_reg, $not_reg);
        MAST::InstructionList.new($not_reg, $MVM_reg_int64)
    }
    elsif $val.result_kind == $MVM_reg_obj {
        my $not_reg := $regalloc.fresh_register($MVM_reg_int64);
        my $dc := $regalloc.fresh_register($MVM_reg_obj);
        MAST::Op.new(:op<decont>, $dc, $val.result_reg);
        MAST::Op.new(:op<isfalse>, $not_reg, $dc);
        $regalloc.release_register($dc, $MVM_reg_obj);
        MAST::InstructionList.new($not_reg, $MVM_reg_int64)
    }
    elsif $val.result_kind == $MVM_reg_str {
        my $not_reg := $regalloc.fresh_register($MVM_reg_int64);
        MAST::Op.new(:op<isfalse_s>, $not_reg, $val.result_reg);
        MAST::InstructionList.new($not_reg, $MVM_reg_int64)
    }
    elsif $val.result_kind == $MVM_reg_num64 {
        my $tmp_reg := $regalloc.fresh_register($MVM_reg_num64);
        my $res_reg := $regalloc.fresh_register($MVM_reg_int64);
        MAST::Op.new(:op<const_n64>, $tmp_reg, 0.0);
        MAST::Op.new(:op<eq_n>, $res_reg, $val.result_reg, $tmp_reg);
        MAST::InstructionList.new($res_reg, $MVM_reg_int64)
    }
    else {
        nqp::die("This case of nqp falsey op NYI");
    }
});
