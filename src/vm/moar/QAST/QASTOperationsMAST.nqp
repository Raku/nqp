my int $MVM_operand_literal     := 0;
my int $MVM_operand_read_reg    := 1;
my int $MVM_operand_write_reg   := 2;
my int $MVM_operand_read_lex    := 3;
my int $MVM_operand_write_lex   := 4;
my int $MVM_operand_rw_mask     := 7;

my int $MVM_operand_int8        := (nqp::const::MVM_reg_int8 * 8);
my int $MVM_operand_int16       := (nqp::const::MVM_reg_int16 * 8);
my int $MVM_operand_int32       := (nqp::const::MVM_reg_int32 * 8);
my int $MVM_operand_int64       := (nqp::const::MVM_reg_int64 * 8);
my int $MVM_operand_num32       := (nqp::const::MVM_reg_num32 * 8);
my int $MVM_operand_num64       := (nqp::const::MVM_reg_num64 * 8);
my int $MVM_operand_str         := (nqp::const::MVM_reg_str * 8);
my int $MVM_operand_obj         := (nqp::const::MVM_reg_obj * 8);
my int $MVM_operand_ins         := (9 * 8);
my int $MVM_operand_type_var    := (10 * 8);
my int $MVM_operand_lex_outer   := (11 * 8);
my int $MVM_operand_coderef     := (12 * 8);
my int $MVM_operand_callsite    := (13 * 8);
my int $MVM_operand_type_mask   := (31 * 8);
my int $MVM_operand_uint8       := (nqp::const::MVM_reg_uint8 * 8);
my int $MVM_operand_uint16      := (nqp::const::MVM_reg_uint16 * 8);
my int $MVM_operand_uint32      := (nqp::const::MVM_reg_uint32 * 8);
my int $MVM_operand_uint64      := (nqp::const::MVM_reg_uint64 * 8);

my &op_decont := %core_op_generators<decont>;
my &op_goto   := %core_op_generators<goto>;
my &op_null   := %core_op_generators<null>;
my &op_set    := %core_op_generators<set>;

my uint $op_code_prepargs     := %MAST::Ops::codes<prepargs>;
my uint $op_code_argconst_s   := %MAST::Ops::codes<argconst_s>;
my uint $op_code_invoke_v     := %MAST::Ops::codes<invoke_v>;
my uint $op_code_invoke_i     := %MAST::Ops::codes<invoke_i>;
my uint $op_code_invoke_n     := %MAST::Ops::codes<invoke_n>;
my uint $op_code_invoke_s     := %MAST::Ops::codes<invoke_s>;
my uint $op_code_invoke_o     := %MAST::Ops::codes<invoke_o>;

# This is used as a return value from all of the various compilation routines.
# It groups together a set of instructions along with a result register and a
# result kind.  It also tracks the source filename and line number.
class MAST::InstructionList {
    has $!result_reg;
    has int $!result_kind;

    method new($result_reg, int $result_kind) {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, MAST::InstructionList, '$!result_reg', $result_reg);
        nqp::bindattr_i($obj, MAST::InstructionList, '$!result_kind', $result_kind);
        $obj
    }

    method result_reg()   { $!result_reg }
    method result_kind()  { $!result_kind }

    method append(MAST::InstructionList $other) {
        $!result_reg := $other.result_reg;
        $!result_kind := nqp::unbox_i($other.result_kind);
    }
}

# Marker object for void.
class MAST::VOID { }

class QAST::MASTOperations {

    # Maps operations to code that will handle them. Hash of code.
    my %core_ops;

    # Maps HLL-specific operations to code that will handle them.
    # Hash of hash of code.
    my %hll_ops;

    # Mapping of how to box/unbox by HLL.
    my %hll_box;
    my %hll_unbox;

    # What we know about inlinability.
    my %core_inlinability;
    my %hll_inlinability;

    # What we know about op native results types.
    my %core_result_type;
    my %hll_result_type;

    # Compiles an operation to MAST.
    method compile_op($qastcomp, $hll, $op) {
        my str $name := $op.op;
        my $mapper;
        if $hll {
            my %ops := %hll_ops{$hll};
            $mapper := %ops{$name} if nqp::isconcrete(%ops) && nqp::elems(%ops);
        }
        $mapper := %core_ops{$name} unless $mapper;
        $mapper
            ?? $mapper($qastcomp, $op)
            !! nqp::die("No registered operation handler for '$name'");
    }

    my @kind_names := ['VOID','int8','int16','int32','int','num32','num','str','obj'];
    my @kind_types := [0,1,1,1,1,2,2,3,4];

    my @core_operands_offsets := MAST::Ops.WHO<@offsets>;
    my @core_operands_counts  := MAST::Ops.WHO<@counts>;
    my @core_operands_values  := MAST::Ops.WHO<@values>;
    my %core_op_codes         := MAST::Ops.WHO<%codes>;
    method compile_mastop($qastcomp, str $op, @args, @deconts, :$returnarg = -1, :$want) {
        # Resolve as either core op or ext op.
        my int $num_operands;
        my int $operands_offset;
        my int $is_extop;
        my @operands_values;
        if nqp::existskey(%core_op_codes, $op) {
            my int $op_num   := %core_op_codes{$op};
            $num_operands    := nqp::atpos_i(@core_operands_counts, $op_num);
            $operands_offset := nqp::atpos_i(@core_operands_offsets, $op_num);
            @operands_values := @core_operands_values;
            $is_extop := 0;
        }
        elsif MAST::ExtOpRegistry.extop_known($op) {
            @operands_values := MAST::ExtOpRegistry.extop_signature($op);
            $num_operands    := nqp::elems(@operands_values);
            $operands_offset := 0;
            $is_extop := 1;
        }
        else {
            nqp::die("MoarVM op '$op' is unknown as a core or extension op");
        }

        my int $num_args := +@args;
        my int $operand_num := 0;
        my int $result_kind := nqp::const::MVM_reg_void;
        my $result_reg := MAST::VOID;
        my int $needs_write := 0;
        my int $type_var_kind := 0;
        my $regalloc := $qastcomp.regalloc;
        my $frame := $qastcomp.mast_frame;

        my @arg_regs;
        my @release_regs;
        my @release_kinds;

        # if the op has operands, and the first operand is a write register,
        # mark that we need to generate a result register at the end, and
        # advance to the second operand.
        if $num_operands && (nqp::atpos_i(@operands_values, $operands_offset) +& $MVM_operand_rw_mask) == $MVM_operand_write_reg {
            $needs_write := 1;
            $operand_num++;
        }

        if ($num_args != $num_operands - $operand_num) {
            nqp::die("Arg count $num_args doesn't equal required operand count "~($num_operands - $operand_num)~" for op '$op'");
        }

        if ($op eq 'return') {
            $*BLOCK.return_kind(nqp::const::MVM_reg_void);
        }

        my int $arg_num := 0;
        # Compile provided args.
        for @args {
            my int $operand := nqp::atpos_i(@operands_values, $operands_offset + $operand_num++);
            my int $operand_kind := ($operand +& $MVM_operand_type_mask);
            my int $constant_operand := !($operand +& $MVM_operand_rw_mask);
            my $want-decont := @deconts[$arg_num];
            my $arg := $operand_kind == $MVM_operand_type_var
                ?? $qastcomp.as_mast($_, :$want-decont)
                !! $qastcomp.as_mast($_, :want(nqp::bitshiftr_i($operand_kind, 3)), :$want-decont);
            my int $arg_kind := nqp::unbox_i($arg.result_kind);

            if $arg_num == 0 && nqp::eqat($op, 'return_', 0) {
                $*BLOCK.return_kind($arg_kind);
            }

            # args cannot be void
            if $arg_kind == nqp::const::MVM_reg_void {
                nqp::die("Cannot use a void register as an argument to op '$op'");
            }

            if ($operand_kind == $MVM_operand_type_var) {
                # handle ops that have type-variables as operands
                if ($type_var_kind) {
                    # if we've already seen a type-var
                    if ($arg_kind != $type_var_kind) {
                        # the arg types must match
                        nqp::die("variable-type op '$op' requires same-typed args");
                    }
                }
                else {
                    # set this variable-type op's typecode
                    $type_var_kind := $arg_kind;
                }
            } # allow nums and ints to be bigger than their destination width
            elsif (@kind_types[$arg_kind] != @kind_types[nqp::bitshiftr_i($operand_kind, 3)]) {
                $qastcomp.coerce($arg, nqp::bitshiftr_i($operand_kind, 3));
                $arg_kind := nqp::bitshiftr_i($operand_kind, 3);
                # the arg typecode left shifted 3 must match the operand typecode
            #    nqp::die("arg type {@kind_names[$arg_kind]} does not match operand type {@kind_names[nqp::bitshiftr_i($operand_kind, 3)]} to op '$op'");
            }

            my $arg_result_reg := $arg.result_reg;
            # if this is the write register, get the result reg and type from it
            if ($operand +& $MVM_operand_rw_mask) == $MVM_operand_write_reg
                || ($operand +& $MVM_operand_rw_mask) == $MVM_operand_write_lex
                || $returnarg != -1 && $returnarg == $arg_num {
                $result_reg := $arg_result_reg;
                $result_kind := $arg_kind;
            }
            # otherwise it's a read register, so it can be released if it's an
            # intermediate value
            else {
                # if it's not a write register, queue it to be released it to the allocator
                nqp::push(@release_regs, $arg_result_reg);
                nqp::push(@release_kinds, $arg_kind);
            }

            # put the arg expression's generation code in the instruction list
            if @deconts[$arg_num] &&
                    (!$_.has_compile_time_value || nqp::iscont($_.compile_time_value)) {
                my $dc_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
                MAST::Op.new( :$frame, :op('decont'), $dc_reg, $arg_result_reg );
                nqp::push(@arg_regs, $dc_reg);
                nqp::push(@release_regs, $dc_reg);
                nqp::push(@release_kinds, nqp::const::MVM_reg_obj);
            }
            else {
                nqp::push(@arg_regs, $constant_operand
                    ?? $qastcomp.as_mast_constant($_)
                    !! $arg_result_reg);
            }

            $arg_num++;
        }

        # release the registers to the allocator. See comment there.
        my int $release_i := 0;
        $regalloc.release_register($_, @release_kinds[$release_i++]) for @release_regs;

        # unshift in a generated write register arg if it needs one
        if ($needs_write) {
            # do this after the args to possibly reuse a register,
            # and so we know the type of result register for ops with type_var operands.

            $result_kind := (nqp::atpos_i(@operands_values, $operands_offset) +& $MVM_operand_type_mask) / 8;

            # fixup the variable typecode if there is one
            if ($type_var_kind && $result_kind == $MVM_operand_type_var / 8) {
                $result_kind := $type_var_kind;
            }

            $result_reg := $regalloc.fresh_register($result_kind);

            nqp::unshift(@arg_regs, $result_reg);
        }

        # Add operation node.
        if $is_extop {
            MAST::ExtOp.new_with_operand_array( :op($op), :cu($qastcomp.mast_compunit), @arg_regs )
        }
        else {
            %core_op_generators{$op}($frame, |@arg_regs);
        }

        # Build instruction list.
        nqp::defined($want)
            ?? $qastcomp.coerce(MAST::InstructionList.new($result_reg, $result_kind), $want)
            !! MAST::InstructionList.new($result_reg, $result_kind);
    }

    # Adds a core op handler.
    method add_core_op(str $op, $handler, :$inlinable = 1) {
        %core_ops{$op} := $handler;
        self.set_core_op_inlinability($op, $inlinable);
    }

    # Adds a HLL op handler.
    method add_hll_op(str $hll, str $op, $handler, :$inlinable = 1) {
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := $handler;
        self.set_hll_op_inlinability($hll, $op, $inlinable);
    }

    # Sets op inlinability at a core level.
    method set_core_op_inlinability(str $op, $inlinable) {
        %core_inlinability{$op} := $inlinable;
    }

    # Sets op inlinability at a HLL level. (Can override at HLL level whether
    # or not the HLL overrides the op itself.)
    method set_hll_op_inlinability(str $hll, str $op, $inlinable) {
        %hll_inlinability{$hll} := {} unless nqp::existskey(%hll_inlinability, $hll);
        %hll_inlinability{$hll}{$op} := $inlinable;
    }

    # Checks if an op is considered inlinable.
    method is_inlinable(str $hll, str $op) {
        if nqp::existskey(%hll_inlinability, $hll) {
            if nqp::existskey(%hll_inlinability{$hll}, $op) {
                return %hll_inlinability{$hll}{$op};
            }
        }
        return %core_inlinability{$op} // 0;
    }

    # Adds a core op that maps to a Moar op.
    method add_core_moarop_mapping(str $op, str $moarop, $ret = -1, :$decont, :$inlinable = 1) {
        %core_ops{$op} := self.moarop_mapper($moarop, $ret, $decont);
        self.set_core_op_inlinability($op, $inlinable);
        self.set_core_op_result_type($op, moarop_return_type($moarop));
    }

    # Adds a HLL op that maps to a Moar op.
    method add_hll_moarop_mapping(str $hll, str $op, str $moarop, $ret = -1, :$decont, :$inlinable = 1) {
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := self.moarop_mapper($moarop, $ret, $decont);
        self.set_hll_op_inlinability($hll, $op, $inlinable);
        self.set_hll_op_result_type($hll, $op, moarop_return_type($moarop));
    }

    method check_ret_val(str $moarop, int $ret) {
        my int $num_operands;
        my int $operands_offset;
        my @operands_values;
        if nqp::existskey(%core_op_codes, $moarop) {
            my int $op_num   := %core_op_codes{$moarop};
            $num_operands    := nqp::atpos_i(@core_operands_counts, $op_num);
            $operands_offset := nqp::atpos_i(@core_operands_offsets, $op_num);
            @operands_values := @core_operands_values;
        }
        elsif MAST::ExtOpRegistry.extop_known($moarop) {
            @operands_values := MAST::ExtOpRegistry.extop_signature($moarop);
            $num_operands    := nqp::elems(@operands_values);
            $operands_offset := 0;
        }
        else {
            nqp::die("MoarVM op '$moarop' is unknown as a core or extension op");
        }
        nqp::die("moarop $moarop return arg index $ret out of range -1.." ~ $num_operands - 1)
            if $ret < -1 || $ret >= $num_operands;
        nqp::die("moarop $moarop is not void")
            if $num_operands && (nqp::atpos_i(@operands_values, $operands_offset) +& $MVM_operand_rw_mask) ==
                $MVM_operand_write_reg;
    }

    # Returns a mapper closure for turning an operation into a Moar op.
    # $ret is the 0-based index of which arg to use as the result when
    # the moarop is void.
    method moarop_mapper(str $moarop, int $ret, $decont_in) {
        # do a little checking of input values

        my $self := self;

        if $ret != -1 {
            self.check_ret_val($moarop, $ret);
        }

        my @deconts;
        if nqp::islist($decont_in) {
            for $decont_in { @deconts[$_] := 1; }
        }
        elsif nqp::defined($decont_in) {
            @deconts[$decont_in] := 1;
        }

        -> $qastcomp, $op {
            $self.compile_mastop($qastcomp, $moarop, $op.list, @deconts, :returnarg($ret))
        }
    }

    # Gets the return type of a MoarVM op, if any.
    sub moarop_return_type(str $moarop) {
        if nqp::existskey(%core_op_codes, $moarop) {
            my int $op_num       := %core_op_codes{$moarop};
            my int $num_operands := nqp::atpos_i(@core_operands_counts, $op_num);
            if $num_operands {
                my int $operands_offset := nqp::atpos_i(@core_operands_offsets, $op_num);
                my int $ret_sig         := nqp::atpos_i(@core_operands_values, $operands_offset);
                if ($ret_sig +& $MVM_operand_rw_mask) == $MVM_operand_write_reg {
                    return nqp::bitshiftr_i($ret_sig, 3);
                }
            }
        }
        elsif MAST::ExtOpRegistry.extop_known($moarop) {
            my @operands_values := MAST::ExtOpRegistry.extop_signature($moarop);
            if @operands_values {
                my int $ret_sig := nqp::atpos_i(@operands_values, 0);
                if ($ret_sig +& $MVM_operand_rw_mask) == $MVM_operand_write_reg {
                    return nqp::bitshiftr_i($ret_sig, 3);
                }
            }
        }
        else {
            nqp::die("MoarVM op '$moarop' is unknown as a core or extension op");
        }
        0
    }

    # Sets op native result type at a core level.
    method set_core_op_result_type(str $op, int $type) {
        if $type == nqp::const::MVM_reg_int64 {
            %core_result_type{$op} := int;
        }
        elsif $type == nqp::const::MVM_reg_num64 {
            %core_result_type{$op} := num;
        }
        elsif $type == nqp::const::MVM_reg_str {
            %core_result_type{$op} := str;
        }
    }

    # Sets op inlinability at a HLL level. (Can override at HLL level whether
    # or not the HLL overrides the op itself.)
    method set_hll_op_result_type(str $hll, str $op, int $type) {
        %hll_result_type{$hll} := {} unless nqp::existskey(%hll_result_type, $hll);
        if $type == nqp::const::MVM_reg_int64 {
            %hll_result_type{$hll}{$op} := int;
        }
        elsif $type == nqp::const::MVM_reg_num64 {
            %hll_result_type{$hll}{$op} := num;
        }
        elsif $type == nqp::const::MVM_reg_str {
            %hll_result_type{$hll}{$op} := str;
        }
    }

    # Sets returns on an op node if we it has a native result type.
    method attach_result_type(str $hll, $node) {
        my $op := $node.op;
        if nqp::existskey(%hll_result_type, $hll) {
            if nqp::existskey(%hll_result_type{$hll}, $op) {
                $node.returns(%hll_result_type{$hll}{$op});
                return 1;
            }
        }
        if nqp::existskey(%core_result_type, $op) {
            $node.returns(%core_result_type{$op});
        }
    }

    # Adds a HLL box handler.
    method add_hll_box(str $hll, int $type, $handler) {
        unless $type == nqp::const::MVM_reg_int64
            || $type == nqp::const::MVM_reg_num64 
            || $type == nqp::const::MVM_reg_str
            || $type == nqp::const::MVM_reg_uint64
            || $type == nqp::const::MVM_reg_void {
            nqp::die("Unknown box type '$type'");
        }
        %hll_box{$hll} := {} unless nqp::existskey(%hll_box, $hll);
        %hll_box{$hll}{$type} := $handler;
    }

    # Adds a HLL unbox handler.
    method add_hll_unbox(str $hll, int $type, $handler) {
        unless $type == nqp::const::MVM_reg_int64 || $type == nqp::const::MVM_reg_num64 ||
                $type == nqp::const::MVM_reg_str || $type == nqp::const::MVM_reg_uint64 {
            nqp::die("Unknown unbox type '$type'");
        }
        %hll_unbox{$hll} := {} unless nqp::existskey(%hll_unbox, $hll);
        %hll_unbox{$hll}{$type} := $handler;
    }

    # Generates instructions to box the result in reg.
    method box($qastcomp, str $hll, $type, $reg) {
        (%hll_box{$hll}{$type} // %hll_box{''}{$type})($qastcomp, $reg)
    }

    # Generates instructions to unbox the result in reg.
    method unbox($qastcomp, str $hll, $type, $reg) {
        (%hll_unbox{$hll}{$type} // %hll_unbox{''}{$type})($qastcomp, $reg)
    }
}

# Set of sequential statements
QAST::MASTOperations.add_core_op('stmts', -> $qastcomp, $op {
    $qastcomp.as_mast(QAST::Stmts.new( |@($op) ))
});

my sub pre-size-array($qastcomp, $instructionlist, $array_reg, $size) {
    if $size != 1 {
        my $int_reg := $qastcomp.regalloc.fresh_i();
        my $frame := $qastcomp.mast_frame;
        my int $size_i := +$size;
        my &const_i64_op := %core_op_generators{'const_i64'};
        my &setelemspos_op := %core_op_generators{'setelemspos'};
        const_i64_op($frame, $int_reg, $size_i);
        setelemspos_op($frame, $array_reg, $int_reg);
        # reset the number of elements to 0 so that we don't push to the end
        # since our lists don't shrink by themselves (or by setting elems), we'll
        # end up with enough storage to hold all elements exactly
        const_i64_op($frame, $int_reg, 0);
        setelemspos_op($frame, $array_reg, $int_reg);
        $qastcomp.regalloc.release_register($int_reg, nqp::const::MVM_reg_int64);
    }
}

# Data structures
QAST::MASTOperations.add_core_op('list', -> $qastcomp, $op {
    # Just desugar to create the empty list.
    my $regalloc := $qastcomp.regalloc;
    my $arr := $qastcomp.as_mast(QAST::Op.new(
        :op('create'),
        QAST::Op.new( :op('hlllist') )
    ));
    if nqp::elems($op.list) {
        my $arr_reg := $arr.result_reg;
        pre-size-array($qastcomp, $arr, $arr_reg, nqp::elems($op.list));
        my $frame := $qastcomp.mast_frame;
        my &push_o_op := %core_op_generators{'push_o'};
        # Push things to the list.
        for $op.list {
            my $item := $qastcomp.as_mast($_, :want(nqp::const::MVM_reg_obj));
            my $item_reg := $item.result_reg;
            $arr.append($item);
            push_o_op($frame, $arr_reg, $item_reg);
            $regalloc.release_register($item_reg, nqp::const::MVM_reg_obj);
        }
        my $ensure_return_register := MAST::InstructionList.new($arr_reg, nqp::const::MVM_reg_obj);
        $arr.append($ensure_return_register);
    }
    $arr
});
QAST::MASTOperations.add_core_op('list_i', -> $qastcomp, $op {
    # Just desugar to create the empty list.
    my $regalloc := $qastcomp.regalloc;
    my $arr := $qastcomp.as_mast(QAST::Op.new(
        :op('create'),
        QAST::Op.new( :op('bootintarray') )
    ));
    if nqp::elems($op.list) {
        my $arr_reg := $arr.result_reg;
        pre-size-array($qastcomp, $arr, $arr_reg, nqp::elems($op.list));
        my $frame := $qastcomp.mast_frame;
        my &push_i_op := %core_op_generators{'push_i'};
        # Push things to the list.
        for $op.list {
            my $item := $qastcomp.as_mast($_, :want(nqp::const::MVM_reg_int64));
            my $item_reg := $item.result_reg;
            $arr.append($item);
            push_i_op($frame, $arr_reg, $item_reg);
            $regalloc.release_register($item_reg, nqp::const::MVM_reg_int64);
        }
        my $ensure_return_register := MAST::InstructionList.new($arr_reg, nqp::const::MVM_reg_obj);
        $arr.append($ensure_return_register);
    }
    $arr
});
QAST::MASTOperations.add_core_op('list_n', -> $qastcomp, $op {
    # Just desugar to create the empty list.
    my $regalloc := $qastcomp.regalloc;
    my $arr := $qastcomp.as_mast(QAST::Op.new(
        :op('create'),
        QAST::Op.new( :op('bootnumarray') )
    ));
    if nqp::elems($op.list) {
        my $arr_reg := $arr.result_reg;
        pre-size-array($qastcomp, $arr, $arr_reg, nqp::elems($op.list));
        my $frame := $qastcomp.mast_frame;
        my &push_n_op := %core_op_generators{'push_n'};
        # Push things to the list.
        for $op.list {
            my $item := $qastcomp.as_mast($_, :want(nqp::const::MVM_reg_num64));
            my $item_reg := $item.result_reg;
            $arr.append($item);
            push_n_op($frame, $arr_reg, $item_reg);
            $regalloc.release_register($item_reg, nqp::const::MVM_reg_num64);
        }
        my $ensure_return_register := MAST::InstructionList.new($arr_reg, nqp::const::MVM_reg_obj);
        $arr.append($ensure_return_register);
    }
    $arr
});
QAST::MASTOperations.add_core_op('list_s', -> $qastcomp, $op {
    # Just desugar to create the empty list.
    my $regalloc := $qastcomp.regalloc;
    my $arr := $qastcomp.as_mast(QAST::Op.new(
        :op('create'),
        QAST::Op.new( :op('bootstrarray') )
    ));
    if nqp::elems($op.list) {
        my $arr_reg := $arr.result_reg;
        pre-size-array($qastcomp, $arr, $arr_reg, nqp::elems($op.list));
        my $frame := $qastcomp.mast_frame;
        my &push_s_op := %core_op_generators{'push_s'};
        # Push things to the list.
        for $op.list {
            my $item := $qastcomp.as_mast($_, :want(nqp::const::MVM_reg_str));
            my $item_reg := $item.result_reg;
            $arr.append($item);
            push_s_op($frame, $arr_reg, $item_reg);
            $regalloc.release_register($item_reg, nqp::const::MVM_reg_str);
        }
        my $ensure_return_register := MAST::InstructionList.new($arr_reg, nqp::const::MVM_reg_obj);
        $arr.append($ensure_return_register);
    }
    $arr
});
QAST::MASTOperations.add_core_op('list_b', -> $qastcomp, $op {
    # Just desugar to create the empty list.
    my $regalloc := $qastcomp.regalloc;
    my $arr := $qastcomp.as_mast(QAST::Op.new(
        :op('create'),
        QAST::Op.new( :op('bootarray') )
    ));
    if nqp::elems($op.list) {
        my $arr_reg := $arr.result_reg;
        pre-size-array($qastcomp, $arr, $arr_reg, nqp::elems($op.list));
        my $mast_frame := $qastcomp.mast_frame;
        # Push things to the list.
        my $item_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
        my &getcode_op := %core_op_generators{'getcode'};
        my &push_o_op := %core_op_generators{'push_o'};
        for $op.list {
            nqp::die("The 'list_b' op needs a list of blocks, got " ~ $_.HOW.name($_))
                unless nqp::istype($_, QAST::Block);
            my $cuid  := $_.cuid();
            my $frame := $qastcomp.mast_frames{$cuid};
            getcode_op($mast_frame, $item_reg, $frame);
            push_o_op($mast_frame, $arr_reg, $item_reg);
        }
        $regalloc.release_register($item_reg, nqp::const::MVM_reg_obj);
        my $ensure_return_register := MAST::InstructionList.new($arr_reg, nqp::const::MVM_reg_obj);
        $arr.append($ensure_return_register);
    }
    $arr
});
QAST::MASTOperations.add_core_op('numify', -> $qastcomp, $op {
    $qastcomp.as_mast($op[0], :want(nqp::const::MVM_reg_num64))
});
QAST::MASTOperations.add_core_op('intify', -> $qastcomp, $op {
    $qastcomp.as_mast($op[0], :want(nqp::const::MVM_reg_int64))
});
QAST::MASTOperations.add_core_op('hash', -> $qastcomp, $op {
    # Just desugar to create the empty hash.
    my $regalloc := $qastcomp.regalloc;
    my $hash := $qastcomp.as_mast(QAST::Op.new(
        :op('create'),
        QAST::Op.new( :op('hllhash') )
    ));
    if nqp::elems($op.list) {
        my $hash_reg := $hash.result_reg;
        my $frame := $qastcomp.mast_frame;
        my &bindkey_o_op := %core_op_generators{'bindkey_o'};
        for $op.list -> $key, $val {
            my $key_mast := $qastcomp.as_mast($key, :want(nqp::const::MVM_reg_str));
            my $val_mast := $qastcomp.as_mast($val, :want(nqp::const::MVM_reg_obj));
            my $key_reg := $key_mast.result_reg;
            my $val_reg := $val_mast.result_reg;
            $hash.append($key_mast);
            $hash.append($val_mast);
            bindkey_o_op($frame, $hash_reg, $key_reg, $val_reg);
            $regalloc.release_register($key_reg, nqp::const::MVM_reg_str);
            $regalloc.release_register($val_reg, nqp::const::MVM_reg_obj);
        }
        my $ensure_return_register := MAST::InstructionList.new($hash_reg, nqp::const::MVM_reg_obj);
        $hash.append($ensure_return_register);
    }
    $hash
});

# Chaining.
# TODO: Provide static-optimizations where possible for invocations involving metaops
my $chain_gen := sub ($qastcomp, $op) {
    # First, we build up the list of nodes in the chain
    my @clist;
    my $cqast := $op;

    # Check if callee sub in name, if not first child is callee, not arg
    my $arg_idx;
    my &get_arg_idx := -> $cq { $cq.name ?? 0 !! 1 };

    while nqp::istype($cqast, QAST::Op)
    && ($cqast.op eq 'chain' || $cqast.op eq 'chainstatic') {
        nqp::push(@clist, $cqast);
        $arg_idx := get_arg_idx($cqast);
        $cqast := $cqast[$arg_idx];
    }

    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $res_reg  := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    my $endlabel := MAST::Label.new();

    $cqast := nqp::pop(@clist);
    $arg_idx := get_arg_idx($cqast);

    my $aqast := $cqast[$arg_idx];
    my $acomp := $qastcomp.as_mast($aqast, :want(nqp::const::MVM_reg_obj));

    my $more := 1;
    while $more {
        my $bqast := $cqast[$arg_idx + 1];
        my $bcomp := $qastcomp.as_mast($bqast, :want(nqp::const::MVM_reg_obj));

        my $callee_qast := !$cqast.name
            ?? $cqast[0]
            !! $cqast.op eq 'chainstatic'
                ?? QAST::VM.new:   :moarop<getlexstatic_o>,
                   QAST::SVal.new: :value($cqast.name)
                !! QAST::Var.new:  :name( $cqast.name), :scope<lexical>;
        my $callee := $qastcomp.as_mast: :want(nqp::const::MVM_reg_obj), $callee_qast;

        my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
            [$callee_qast, $aqast, $bqast], [$callee, $acomp, $bcomp]);
        op_dispatch_o($frame, $res_reg, 'lang-call', $callsite_id,
            [$callee.result_reg, $acomp.result_reg, $bcomp.result_reg]);

        $regalloc.release_register($callee.result_reg, nqp::const::MVM_reg_obj);
        $regalloc.release_register($acomp.result_reg, nqp::const::MVM_reg_obj);

        if @clist {
            my $boolification_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
            emit_object_boolify($qastcomp, $boolification_reg, $res_reg);
            %core_op_generators{'unless_i'}($frame, $boolification_reg, $endlabel);
            $regalloc.release_register($boolification_reg, nqp::const::MVM_reg_int64);
            $cqast := nqp::pop(@clist);
            $arg_idx := get_arg_idx($cqast);
            $acomp := $bcomp;
        }
        else {
            $more := 0;
        }
    }

    $frame.add-label($endlabel);
    MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_obj)
}
QAST::MASTOperations.add_core_op: 'chain',       $chain_gen;
QAST::MASTOperations.add_core_op: 'chainstatic', $chain_gen;

# Conditionals.
sub needs_cond_passed($n) {
    nqp::istype($n, QAST::Block)
    && ($n.arity > 0 || $n.ann: 'count') # slurpies would have .arity 0
    && ($n.blocktype eq 'immediate' || $n.blocktype eq 'immediate_static')
}
for <if unless with without> -> $op_name {
    QAST::MASTOperations.add_core_op($op_name, -> $qastcomp, $op {
        # Check operand count.
        my $operands := nqp::elems($op.list);
        nqp::die("The '$op_name' op needs 2 or 3 operands, got $operands")
            if $operands < 2 || $operands > 3;

        my $regalloc := $qastcomp.regalloc;
        my $frame := $qastcomp.mast_frame;

        # Compile each of the children, handling any that want the conditional
        # value to be passed.
        my $is_void := nqp::defined($*WANT) && $*WANT == nqp::const::MVM_reg_void;
        my $wanted  := $is_void ?? nqp::const::MVM_reg_void !! NQPMu;
        my @comp_ops;
        my $is_withy := $op_name eq 'with' || $op_name eq 'without';

        # Create labels.
        my $if_id    := $qastcomp.unique($op_name);
        my $end_lbl  := MAST::Label.new();
        my $else_lbl := MAST::Label.new();
        my $cond_temp_lbl := $is_withy || needs_cond_passed($op[1]) || needs_cond_passed($op[2])
            ?? $qastcomp.unique('__im_cond_')
            !! '';

        # Evaluate the condition first; store result if needed.
        if $cond_temp_lbl {
            if $is_withy {
                @comp_ops[0] := $qastcomp.as_mast(QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name($cond_temp_lbl), :scope('local'), :decl('var') ),
                    $op[0]), :want(nqp::const::MVM_reg_obj));
            } else {
                @comp_ops[0] := $qastcomp.as_mast(QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name($cond_temp_lbl), :scope('local'), :decl('var') ),
                    $op[0]));
            }
        }
        elsif nqp::istype($op[0], QAST::Var) && $op[0].scope eq 'lexicalref'
                && (!$*WANT || $operands == 3) {
            # lexical refs are expensive; try to coerce them to something cheap
            my $spec := nqp::objprimspec($op[0].returns);
            @comp_ops[0] := $qastcomp.as_mast(:want(
                $spec == nqp::const::BIND_VAL_INT
                  ?? nqp::const::MVM_reg_int64
                  !! $spec == nqp::const::BIND_VAL_UINT
                    ?? nqp::const::MVM_reg_uint64
                    !! $spec == nqp::const::BIND_VAL_NUM
                      ?? nqp::const::MVM_reg_num64
                      !! $spec == nqp::const::BIND_VAL_STR
                        ?? nqp::const::MVM_reg_str
                        !! nqp::const::MVM_reg_obj
            ), $op[0]);
        }
        else {
            @comp_ops[0] := $qastcomp.as_mast($op[0]);
        }

        $frame.start_subbuffer;

        if needs_cond_passed($op[1]) {
            my $orig_type := $op[1].blocktype;
            $op[1].blocktype('declaration');
            @comp_ops[1] := $qastcomp.as_mast(QAST::Op.new(
                :op('call'),
                $op[1],
                QAST::Var.new( :name($cond_temp_lbl), :scope('local') )),
                :want($wanted));
            $op[1].blocktype($orig_type);
        }
        else {
            @comp_ops[1] := $qastcomp.as_mast($op[1], :want($wanted), :want-decont($*WANT-DECONT));
        }

        if (nqp::unbox_i(@comp_ops[0].result_kind) == nqp::const::MVM_reg_void) {
            nqp::die("The '$op_name' op condition cannot be void, cannot use the results of '" ~ $op[0].op ~ "'");
        }

        my $then-subbuffer := $frame.end_subbuffer;
        my $else-subbuffer;

        if needs_cond_passed($op[2]) {
            my $orig_type := $op[2].blocktype;
            $op[2].blocktype('declaration');
            $frame.start_subbuffer;
            @comp_ops[2] := $qastcomp.as_mast(QAST::Op.new(
                :op('call'),
                $op[2],
                QAST::Var.new( :name($cond_temp_lbl), :scope('local') )),
                :want($wanted));
            $else-subbuffer := $frame.end_subbuffer;
            $op[2].blocktype($orig_type);
        }
        elsif $op[2] {
            $frame.start_subbuffer;
            @comp_ops[2] := $qastcomp.as_mast($op[2], :want($wanted), :want-decont($*WANT-DECONT));
            $else-subbuffer := $frame.end_subbuffer;
        }


        my int $res_kind;
        my $res_reg;
        if $is_void {
            $res_reg := MAST::VOID;
            $res_kind := nqp::const::MVM_reg_void;
        }
        else {
            $res_kind := $operands == 3
            ?? (
                @comp_ops[1].result_kind == @comp_ops[2].result_kind
                    && @comp_ops[1].result_kind != nqp::const::MVM_reg_void
                ?? nqp::unbox_i(@comp_ops[1].result_kind)
                !! nqp::const::MVM_reg_obj
            )
            !!
                (@comp_ops[0].result_kind == @comp_ops[1].result_kind
                    ?? nqp::unbox_i(@comp_ops[0].result_kind)
                    !! nqp::const::MVM_reg_obj);
            $res_reg := $regalloc.fresh_register($res_kind);
        }

        if $operands == 2 && !$is_void {
            my $il := MAST::InstructionList.new(@comp_ops[0].result_reg, nqp::unbox_i(@comp_ops[0].result_kind));
            $qastcomp.coerce($il, $res_kind);
            op_set($frame, $res_reg, $il.result_reg);
        }

        # Emit the jump.
        if nqp::unbox_i(@comp_ops[0].result_kind) == nqp::const::MVM_reg_obj {
            # First decontainerize the object.
            my $decont_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
            op_decont($frame, $decont_reg, @comp_ops[0].result_reg);

            # If it's a `with` or `without`, need to call defined.
            if $is_withy {
                my $method_name_reg := $regalloc.fresh_register(nqp::const::MVM_reg_str);
                MAST::Op.new(:frame($frame), :op('const_s'), $method_name_reg, 'defined');
                my $decont := MAST::InstructionList.new($decont_reg, nqp::const::MVM_reg_obj);
                my $method_name := MAST::InstructionList.new($method_name_reg, nqp::const::MVM_reg_str);
                my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
                    [$op[0], QAST::SVal.new( :value('defined') ), $op[0]],
                    [$decont, $method_name, $decont]);
                op_dispatch_o($frame, $decont_reg, 'lang-meth-call', $callsite_id,
                    [$decont_reg, $method_name_reg, $decont_reg]);
                $regalloc.release_register($method_name_reg, nqp::const::MVM_reg_str);
            }

            # Boolify the object
            my $boolification_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
            emit_object_boolify($qastcomp, $boolification_reg, $decont_reg);
            $regalloc.release_register($decont_reg, nqp::const::MVM_reg_obj);

            # Generate the branch instruction.
            %core_op_generators{
                # the conditional routines are reversed on purpose
                $op_name eq 'if' || $op_name eq 'with'
                  ?? 'unless_i' !! 'if_i'
            }(
                $frame,
                $boolification_reg,
                ($operands == 3 ?? $else_lbl !! $end_lbl)
            );
            $regalloc.release_register($boolification_reg, nqp::const::MVM_reg_int64);
        }
        elsif @Full-width-coerce-to[@comp_ops[0].result_kind] -> $coerce-kind {
            # workaround for coercion unconditionally releasing the source register while we still need it later on
            my $coerce-reg := $regalloc.fresh_register: @comp_ops[0].result_kind;
            op_set($frame, $coerce-reg, @comp_ops[0].result_reg);
            my $il := MAST::InstructionList.new($coerce-reg, nqp::unbox_i(@comp_ops[0].result_kind));
            $qastcomp.coerce($il, $coerce-kind);
            %core_op_generators{
                $op_name eq 'if'
                  ?? @Negated-condition-op-kinds[@comp_ops[0].result_kind]
                  !! @Condition-op-kinds[        @comp_ops[0].result_kind]
            }(
                $frame,
                $il.result_reg,
                ($operands == 3 ?? $else_lbl !! $end_lbl)
            );
            $regalloc.release_register: $il.result_reg, $coerce-kind;
        }
        else {
            %core_op_generators{
                $op_name eq 'if'
                  ?? @Negated-condition-op-kinds[@comp_ops[0].result_kind]
                  !! @Condition-op-kinds[        @comp_ops[0].result_kind]
            }(
                $frame,
                @comp_ops[0].result_reg,
                ($operands == 3 ?? $else_lbl !! $end_lbl)
            );
        }

        # Emit the then, stash the result
        $frame.insert_bytecode($then-subbuffer, my uint $elems := nqp::elems($*MAST_FRAME.bytecode));

        if (!$is_void && nqp::unbox_i(@comp_ops[1].result_kind) != $res_kind) {
            # coercion will automatically release @comp_ops[1].result_reg
            my $coercion := $qastcomp.coercion(@comp_ops[1], $res_kind);
            op_set($frame, $res_reg, $coercion.result_reg);
        }
        elsif !$is_void {
            op_set($frame, $res_reg, @comp_ops[1].result_reg);
            $regalloc.release_register(@comp_ops[1].result_reg, nqp::unbox_i(@comp_ops[1].result_kind));
        }

        # Handle else branch (coercion of condition result if 2-arg).
        if $operands == 3 {
            # Terminate the then branch first.
            op_goto($frame, $end_lbl);
            $frame.add-label($else_lbl);

            $frame.insert_bytecode($else-subbuffer, my uint $elems := nqp::elems($*MAST_FRAME.bytecode));

            if !$is_void {
                if nqp::unbox_i(@comp_ops[2].result_kind) != $res_kind {
                    # coercion will automatically release @comp_ops[2].result_reg
                    my $coercion := $qastcomp.coercion(@comp_ops[2], $res_kind);
                    op_set($frame, $res_reg, $coercion.result_reg);
                }
                else {
                    op_set($frame, $res_reg, @comp_ops[2].result_reg);
                    $regalloc.release_register(@comp_ops[2].result_reg, nqp::unbox_i(@comp_ops[2].result_kind));
                }
            }
        }

        unless $operands == 2 && !$is_void {
            # coercion will automatically release @comp_ops[0].result_reg
            $regalloc.release_register(@comp_ops[0].result_reg, nqp::unbox_i(@comp_ops[0].result_kind));
        }

        $frame.add-label($end_lbl);

        MAST::InstructionList.new($res_reg, $res_kind)
    });
}

QAST::MASTOperations.add_core_op('defor', -> $qastcomp, $op {
    if nqp::elems($op.list) != 2 {
        nqp::die("The 'defor' op needs 2 operands, got " ~ nqp::elems($op.list));
    }

    # Compile the expression.
    my $regalloc := $qastcomp.regalloc;
    my $frame := $qastcomp.mast_frame;
    my $res_reg := $regalloc.fresh_o();
    my $expr := $qastcomp.as_mast($op[0], :want(nqp::const::MVM_reg_obj));

    # Emit defined check.
    my $def_reg := $regalloc.fresh_i();
    my $lbl := MAST::Label.new();
    op_set($frame, $res_reg, $expr.result_reg);
    %core_op_generators{'isconcrete'}($frame, $def_reg, $res_reg);
    %core_op_generators{'if_i'}($frame, $def_reg, $lbl);
    $regalloc.release_register($def_reg, nqp::const::MVM_reg_int64);

    # Emit "then" part.
    my $then := $qastcomp.as_mast($op[1], :want(nqp::const::MVM_reg_obj));
    $regalloc.release_register($expr.result_reg, nqp::const::MVM_reg_obj);
    $expr.append($then);
    op_set($frame, $res_reg, $then.result_reg);
    $frame.add-label($lbl);
    $regalloc.release_register($then.result_reg, nqp::const::MVM_reg_obj);
    my $newer := MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_obj);
    $expr.append($newer);

    $expr
});

QAST::MASTOperations.add_core_op('xor', -> $qastcomp, $op {
    my int $res_kind   := nqp::const::MVM_reg_obj;
    my $frame      := $qastcomp.mast_frame;
    my $res_reg    := $qastcomp.regalloc.fresh_o();
    my $t          := $qastcomp.regalloc.fresh_i();
    my $u          := $qastcomp.regalloc.fresh_i();
    my $d          := $qastcomp.regalloc.fresh_o();
    my $falselabel := MAST::Label.new();
    my $endlabel   := MAST::Label.new();

    my @comp_ops;
    my $f;
    for $op.list {
        if $_.named eq 'false' {
            $f := $_;
        }
        else {
            nqp::push(@comp_ops, $_);
        }
    }

    my $apost := $qastcomp.as_mast(nqp::shift(@comp_ops), :want(nqp::const::MVM_reg_obj));
    op_set($frame, $res_reg, $apost.result_reg);
    op_decont($frame, $d, $apost.result_reg);
    emit_object_boolify($qastcomp, $t, $d);
    $qastcomp.regalloc.release_register($apost.result_reg, nqp::const::MVM_reg_obj);

    my $have_middle_child := 1;
    my $bpost;
    while $have_middle_child {
        $bpost := $qastcomp.as_mast(nqp::shift(@comp_ops), :want(nqp::const::MVM_reg_obj));
        op_decont($frame, $d, $bpost.result_reg);
        emit_object_boolify($qastcomp, $u, $d);

        my $jumplabel := MAST::Label.new();
        %core_op_generators{'unless_i'}($frame, $t, $jumplabel);
        %core_op_generators{'unless_i'}($frame, $u, $jumplabel);
        op_goto($frame, $falselabel);
        $frame.add-label($jumplabel);

        if @comp_ops {
            my $truelabel := MAST::Label.new();
            %core_op_generators{'if_i'}($frame, $t, $truelabel);
            op_set($frame, $res_reg, $bpost.result_reg);
            $qastcomp.regalloc.release_register($bpost.result_reg, nqp::const::MVM_reg_obj);
            op_set($frame, $t, $u);
            $frame.add-label($truelabel);
        }
        else {
            $have_middle_child := 0;
        }
    }
    $qastcomp.regalloc.release_register($u, nqp::const::MVM_reg_int64);

    %core_op_generators{'if_i'}($frame, $t, $endlabel);
    $qastcomp.regalloc.release_register($t, nqp::const::MVM_reg_int64);
    op_set($frame, $res_reg, $bpost.result_reg);
    $qastcomp.regalloc.release_register($bpost.result_reg, nqp::const::MVM_reg_obj);
    op_goto($frame, $endlabel);
    $frame.add-label($falselabel);

    if $f {
        my $f_ast := $qastcomp.as_mast($f, :want(nqp::const::MVM_reg_obj));
        op_set($frame, $res_reg, $f_ast.result_reg);
        $qastcomp.regalloc.release_register($f_ast.result_reg, nqp::const::MVM_reg_obj);
    }
    else {
        op_null($frame, $res_reg);
    }

    $frame.add-label($endlabel);

    $qastcomp.regalloc.release_register($d, nqp::const::MVM_reg_obj);

    MAST::InstructionList.new($res_reg, $res_kind)
});

QAST::MASTOperations.add_core_op('ifnull', -> $qastcomp, $op {
    if nqp::elems($op.list) != 2 {
        nqp::die("The 'ifnull' op needs 2 operands, got " ~ nqp::elems($op.list));
    }

    # Compile the expression.
    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $res_reg := $regalloc.fresh_o();
    my $expr := $qastcomp.as_mast($op[0], :want(nqp::const::MVM_reg_obj));

    # Emit null check.
    my $lbl := MAST::Label.new();
    op_set($frame, $res_reg, $expr.result_reg);
    %core_op_generators{'ifnonnull'}($frame, $expr.result_reg, $lbl);

    # Emit "then" part.
    my $then := $qastcomp.as_mast($op[1], :want(nqp::const::MVM_reg_obj));
    $regalloc.release_register($expr.result_reg, nqp::const::MVM_reg_obj);
    $expr.append($then);
    op_set($frame, $res_reg, $then.result_reg);
    $frame.add-label($lbl);
    $regalloc.release_register($then.result_reg, nqp::const::MVM_reg_obj);
    my $newer := MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_obj);
    $expr.append($newer);

    $expr
});

sub loop_body($res_reg, $repness, $cond_temp, $redo_lbl, $test_lbl, @children, $orig_type, $regalloc, $op_name, $done_lbl, $qastcomp, $next_lbl, $res_kind) {
    my $frame    := $qastcomp.mast_frame;
    # Generate a lousy return value for our while loop.
    unless $res_reg =:= MAST::VOID {
        op_null($frame, $res_reg);
    }

    if $repness {
        # It's a repeat_ variant, need to go straight into the
        # loop body unconditionally.
        if $cond_temp {
            op_null($frame, $*BLOCK.local($cond_temp));
        }
        op_goto($frame, $redo_lbl);
    }
    $frame.add-label($test_lbl);

    # Compile each of the children.
    my @comp_ops;
    my @comp_types;

    my $comp := $qastcomp.as_mast(@children[0]);
    @comp_ops.push($comp);
    @comp_types.push($comp.result_kind);

    # Check operand count.
    my $operands := +@children;
    nqp::die("The '$repness$op_name' op needs 2 or 3 operands, got $operands")
        if $operands != 2 && $operands != 3;

    if @comp_ops[0].result_kind == nqp::const::MVM_reg_obj {
        # Decontainerize it and perform boolean conversion, then test that.
        my $decont_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
        op_decont($frame, $decont_reg, @comp_ops[0].result_reg);
        my $boolification_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
        emit_object_boolify($qastcomp, $boolification_reg, $decont_reg);
        $regalloc.release_register($decont_reg, nqp::const::MVM_reg_obj);
        %core_op_generators{
            # the conditional routines are reversed on purpose
            $op_name eq 'while' ?? 'unless_i' !! 'if_i'
        }(
            $frame,
            $boolification_reg,
            $done_lbl
        );
        $regalloc.release_register($boolification_reg, nqp::const::MVM_reg_int64);
    }
    elsif @Full-width-coerce-to[@comp_ops[0].result_kind]
    -> $coerce-kind {
        # workaround for coercion unconditionally releasing the source register while we still need it later on
        my $coerce-reg := $regalloc.fresh_register: @comp_ops[0].result_kind;
        op_set($frame, $coerce-reg, @comp_ops[0].result_reg);
        my $il := MAST::InstructionList.new($coerce-reg, nqp::unbox_i(@comp_ops[0].result_kind));
        $qastcomp.coerce($il, $coerce-kind);
        %core_op_generators{
            $op_name eq 'while'
              ?? @Negated-condition-op-kinds[@comp_ops[0].result_kind]
              !! @Condition-op-kinds[        @comp_ops[0].result_kind]
        }(
            $frame,
            $il.result_reg,
            $done_lbl
        );
        $regalloc.release_register: $il.result_reg, $coerce-kind;
    }
    else {
        %core_op_generators{
            $op_name eq 'while'
              ?? @Negated-condition-op-kinds[@comp_ops[0].result_kind]
              !! @Condition-op-kinds[        @comp_ops[0].result_kind]
        }(
            $frame,
            @comp_ops[0].result_reg,
            $done_lbl
        );
    }

    $frame.add-label($redo_lbl);
    %core_op_generators{'osrpoint'}($frame);

    # Emit the loop body; stash the result.

    $comp := $qastcomp.as_mast(@children[1], :want(nqp::const::MVM_reg_void));
    @comp_ops.push($comp);
    @comp_types.push($comp.result_kind);

    if $orig_type {
        @children[1][0].blocktype($orig_type);
    }
    my $body := $qastcomp.coerce(@comp_ops[1], $res_kind);

    # If there's a third child, evaluate it as part of the
    # "next".
    if $operands == 3 {
        $frame.add-label($next_lbl);
        $comp := $qastcomp.as_mast(@children[2], :want(nqp::const::MVM_reg_void));
        @comp_ops.push($comp);
        @comp_types.push($comp.result_kind);
    }

    # Emit the iteration jump.
    op_goto($frame, $test_lbl);
}

# Loops.
for ('', 'repeat_') -> $repness {
    for <while until> -> $op_name {
        QAST::MASTOperations.add_core_op("$repness$op_name", -> $qastcomp, $op {
            # Create labels.
            my $while_id := $qastcomp.unique($op_name);
            my $test_lbl := MAST::Label.new();
            my $next_lbl := MAST::Label.new();
            my $redo_lbl := MAST::Label.new();
            my $done_lbl := MAST::Label.new();

            # Pick out applicable children; detect no handler case and munge
            # immediate arg case.
            my @children;
            my $handler := 1;
            my $orig_type;
            my $label_wval;
            my $cond_temp;
            my $regalloc := $qastcomp.regalloc;
            for $op.list {
                if $_.named eq 'nohandler' { $handler := 0; }
                elsif $_.named eq 'label' { $label_wval := $_; }
                else { nqp::push(@children, $_) }
            }
            if needs_cond_passed(@children[1]) {
                $cond_temp := $qastcomp.unique('__im_cond_');
                my $var := QAST::Var.new( :name($cond_temp), :scope('local') );
                $*BLOCK.register_local($var);
                @children[0] := QAST::Op.new(
                    :op('bind'),
                    $var,
                    @children[0]);
                $orig_type := @children[1].blocktype;
                @children[1].blocktype('declaration');
                @children[1] := QAST::Op.new(
                    :op('call'),
                    @children[1],
                    QAST::Var.new( :name($cond_temp), :scope('local') ));
            }

            # Allocate result register if needed.
            my $frame    := $qastcomp.mast_frame;
            my int $res_kind := nqp::const::MVM_reg_obj;
            my $res_reg;
            if nqp::defined($*WANT) && $*WANT == nqp::const::MVM_reg_void {
                $res_kind := nqp::const::MVM_reg_void;
                $res_reg := MAST::VOID;
            } else {
                $res_reg := $regalloc.fresh_register($res_kind);
            }

            # Test the condition and jump to the loop end if it's
            # not met.
            my $loop_start := nqp::elems($frame.bytecode);

            # Emit postlude, with exception handlers if needed. Note that we
            # don't actually need to emit a bunch of handlers; since a handler
            # scope will happily throw control to a label of our choosing, we
            # just have the goto label be the place the control exception
            # needs to send control to.
            if $handler {
                my $lablocal;
                my $redo_mask := $HandlerCategory::redo;
                my $next_mask := $HandlerCategory::next;
                my $last_mask := $HandlerCategory::last;
                if $label_wval {
                    $redo_mask  := $redo_mask + $HandlerCategory::labeled;
                    $next_mask  := $next_mask + $HandlerCategory::labeled;
                    $last_mask  := $last_mask + $HandlerCategory::labeled;
                    my $labmast := $qastcomp.as_mast($label_wval, :want(nqp::const::MVM_reg_obj)); #nqp::where($label.value);
                    my $labreg  := $labmast.result_reg;
                    $lablocal   := MAST::Local.new(:index($frame.add_local(NQPMu)));
                    op_set($frame, $lablocal, $labreg);
                    $regalloc.release_register($labreg, nqp::const::MVM_reg_obj);
                }
                loop_body($res_reg, $repness, $cond_temp, $redo_lbl, $test_lbl, @children, $orig_type, $regalloc, $op_name, $done_lbl, $qastcomp, $next_lbl, $res_kind);
                MAST::HandlerScope.new(
                    :start($loop_start),
                    :category_mask($redo_mask),
                    :action($HandlerAction::unwind_and_goto),
                    :goto($redo_lbl),
                    :label($lablocal)
                );
                my $operands := +@children;
                MAST::HandlerScope.new(
                    :start($loop_start),
                    :category_mask($next_mask),
                    :action($HandlerAction::unwind_and_goto),
                    :goto($operands == 3 ?? $next_lbl !! $test_lbl),
                    :label($lablocal)
                );
                MAST::HandlerScope.new(
                    :start($loop_start),
                    :category_mask($last_mask),
                    :action($HandlerAction::unwind_and_goto),
                    :goto($done_lbl),
                    :label($lablocal)
                );
                $frame.add-label($done_lbl);
                MAST::InstructionList.new($res_reg, $res_kind)
            }
            else {
                loop_body($res_reg, $repness, $cond_temp, $redo_lbl, $test_lbl, @children, $orig_type, $regalloc, $op_name, $done_lbl, $qastcomp, $next_lbl, $res_kind);
                $frame.add-label($done_lbl);
                MAST::InstructionList.new($res_reg, $res_kind)
            }
        });
    }
}

my $FAKE_POS_ARG := QAST::Op.new( :op('null') );
sub for_loop_body($lbl_next, $iter_tmp, $lbl_done, @operands, $regalloc, $lbl_redo,
        $block_res, @val_temps, $qastcomp) {
    my $frame := $qastcomp.mast_frame;
    # Emit loop test.
    $frame.add-label($lbl_next);
    my $boolification_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
    emit_object_boolify($qastcomp, $boolification_reg, $iter_tmp);
    %core_op_generators{'unless_i'}($frame, $boolification_reg, $lbl_done);
    $regalloc.release_register($boolification_reg, nqp::const::MVM_reg_int64);

    # Fetch values into temporaries (on the stack ain't enough in case
    # of redo).
    my @arg_regs := [$block_res.result_reg];
    my @arg_qasts := [$FAKE_POS_ARG];
    my @arg_masts := [$block_res];
    my $arity := @operands[1].arity || 1;
    while $arity > 0 {
        my $tmp := $regalloc.fresh_o();
        %core_op_generators{'shift_o'}($frame, $tmp, $iter_tmp);
        nqp::push(@arg_regs, $tmp);
        nqp::push(@arg_qasts, $FAKE_POS_ARG);
        nqp::push(@arg_masts, MAST::InstructionList.new($tmp, nqp::const::MVM_reg_obj));
        $arity := $arity - 1;
    }

    $frame.add-label($lbl_redo);
    %core_op_generators{'osrpoint'}($frame, );

    # Now do block invocation.
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
        @arg_qasts, @arg_masts);
    op_dispatch_v($frame, 'boot-code', $callsite_id, @arg_regs);

    # Emit next.
    op_goto($frame, $lbl_next );
}

QAST::MASTOperations.add_core_op('for', -> $qastcomp, $op {
    my $handler := 1;
    my @operands;
    my $label_wval;
    for $op.list {
        if $_.named eq 'nohandler' { $handler := 0; }
        elsif $_.named eq 'label' { $label_wval := $_; }
        else { @operands.push($_) }
    }

    if nqp::elems(@operands) != 2 {
        nqp::die("The 'for' op needs 2 operands, got " ~ nqp::elems(@operands));
    }
    unless nqp::istype(@operands[1], QAST::Block) {
        nqp::die("The 'for' op expects a block as its second operand, got " ~ @operands[1].HOW.name(@operands[1]));
    }

    my $orig_blocktype := @operands[1].blocktype;

    if @operands[1].blocktype eq 'immediate' {
        @operands[1].blocktype('declaration');
    }
    elsif @operands[1].blocktype eq 'immediate_static' {
        @operands[1].blocktype('declaration_static');
    }

    # Evaluate the thing we'll iterate over, get the iterator and
    # store it in a temporary.
    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $list_il := $qastcomp.as_mast(@operands[0], :want(nqp::const::MVM_reg_obj));
    my $iter_tmp := $regalloc.fresh_o();
    %core_op_generators{'iter'}($frame, $iter_tmp, $list_il.result_reg);

    # Do similar for the block.
    my $block_res := $qastcomp.as_mast(@operands[1], :want(nqp::const::MVM_reg_obj));

    # Some labels we'll need.
    my $for_id := $qastcomp.unique('for');
    my $lbl_next := MAST::Label.new();
    my $lbl_redo := MAST::Label.new();
    my $lbl_done := MAST::Label.new();

    my @val_temps;

    # Emit postlude, wrapping in handlers if needed.
    if $handler {
        my $lablocal;
        my $redo_mask := $HandlerCategory::redo;
        my $next_mask := $HandlerCategory::next;
        my $last_mask := $HandlerCategory::last;
        if $label_wval {
            $redo_mask  := $redo_mask + $HandlerCategory::labeled;
            $next_mask  := $next_mask + $HandlerCategory::labeled;
            $last_mask  := $last_mask + $HandlerCategory::labeled;
            my $labmast := $qastcomp.as_mast($label_wval, :want(nqp::const::MVM_reg_obj));
            my $labreg  := $labmast.result_reg;
            $lablocal   := MAST::Local.new(:index($frame.add_local(NQPMu)));
            op_set($frame, $lablocal, $labreg);
            $regalloc.release_register($labreg, nqp::const::MVM_reg_obj);
        }
        my $loop_start := nqp::elems($frame.bytecode);
        for_loop_body($lbl_next, $iter_tmp, $lbl_done, @operands, $regalloc, $lbl_redo,
            $block_res, @val_temps, $qastcomp);
        MAST::HandlerScope.new(
            :start($loop_start),
            :category_mask($redo_mask),
            :action($HandlerAction::unwind_and_goto),
            :goto($lbl_redo),
            :label($lablocal)
        );
        MAST::HandlerScope.new(
            :start($loop_start),
            :category_mask($next_mask),
            :action($HandlerAction::unwind_and_goto),
            :goto($lbl_next),
            :label($lablocal)
        );
        MAST::HandlerScope.new(
            :start($loop_start),
            :category_mask($last_mask),
            :action($HandlerAction::unwind_and_goto),
            :goto($lbl_done),
            :label($lablocal)
        );
    }
    else {
        for_loop_body($lbl_next, $iter_tmp, $lbl_done, @operands, $regalloc, $lbl_redo,
            $block_res, @val_temps, $qastcomp);
    }
    $frame.add-label($lbl_done);

    @operands[1].blocktype($orig_blocktype);

    # Result; probably void, though evaluate to the input list if we must
    # give a value.
    $regalloc.release_register($block_res.result_reg, $block_res.result_kind);
    for @val_temps { $regalloc.release_register($_, nqp::const::MVM_reg_obj) }
    if $*WANT == nqp::const::MVM_reg_void {
        $regalloc.release_register($list_il.result_reg, $list_il.result_kind);
        MAST::InstructionList.new(MAST::VOID, nqp::const::MVM_reg_void)
    }
    else {
        MAST::InstructionList.new($list_il.result_reg, $list_il.result_kind)
    }
});

# Calling
my @kind_to_args := [0,
    $Arg::int,  # $MVM_reg_int8            := 1;
    $Arg::int,  # $MVM_reg_int16           := 2;
    $Arg::int,  # $MVM_reg_int32           := 3;
    $Arg::int,  # $MVM_reg_int64           := 4;
    $Arg::num,  # $MVM_reg_num32           := 5;
    $Arg::num,  # $MVM_reg_num64           := 6;
    $Arg::str,  # $MVM_reg_str             := 7;
    $Arg::obj   # $MVM_reg_obj             := 8;
];

sub handle_arg($arg, $qastcomp, @arg_regs, @arg_flags, @arg_kinds) {
    # generate the code for the arg expression
    my $arg_mast := $qastcomp.as_mast($arg);
    my int $arg_mast_kind := $arg_mast.result_kind;
    if $arg_mast_kind == nqp::const::MVM_reg_num32 {
        $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_num64);
    }
    elsif $arg_mast_kind == nqp::const::MVM_reg_int32 || $arg_mast_kind == nqp::const::MVM_reg_int16 ||
            $arg_mast_kind == nqp::const::MVM_reg_int8 || $arg_mast_kind == nqp::const::MVM_reg_uint64 ||
            $arg_mast_kind == nqp::const::MVM_reg_uint32 || $arg_mast_kind == nqp::const::MVM_reg_uint16 ||
            $arg_mast_kind == nqp::const::MVM_reg_uint8 {
        $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_int64);
    }

    nqp::die("Arg expression cannot be void, cannot use the return of " ~ $arg.op)
        if $arg_mast.result_kind == nqp::const::MVM_reg_void;

    nqp::die("Arg code did not result in a MAST::Local")
        unless $arg_mast.result_reg && $arg_mast.result_reg ~~ MAST::Local;

    nqp::push(@arg_kinds, $arg_mast.result_kind);


    # build up the typeflag
    my $result_typeflag := @kind_to_args[$arg_mast.result_kind];
    if nqp::can($arg, 'flat') && $arg.flat {
        $result_typeflag := $result_typeflag +| $Arg::flat;
        if $arg.named {
            $result_typeflag := $result_typeflag +| $Arg::named;
        }
    }
    elsif nqp::can($arg, 'named') && $arg.named -> $name {
        # add in the extra arg for the name
        nqp::push(@arg_regs, $name);

        $result_typeflag := $result_typeflag +| $Arg::named;
    }

    # stash the result register and result typeflag
    nqp::push(@arg_regs, $arg_mast.result_reg);
    nqp::push(@arg_flags, $result_typeflag);
}

sub arrange_args(@in) {
    my @named := ();
    my @posit := ();
    for @in {
        nqp::push((nqp::can($_, 'named') && $_.named ?? @named !! @posit), $_);
    }
    for @named { nqp::push(@posit, $_) }
    @posit
}

my $dispatch_call_gen := -> $qastcomp, $op {
    # Work out what callee is.
    my @args := $op.list;
    my $callee_qast;
    my $callee_qast_for_flags; # To expose callstatic as a literal
    if $op.name {
        $callee_qast_for_flags := $op.op eq 'callstatic'
            ?? QAST::VM.new( :moarop('getlexstatic_o'), QAST::SVal.new( :value($op.name) ) )
            !! QAST::Var.new( :name($op.name), :scope('lexical') );
        $callee_qast := QAST::Op.new( :op('decont'), $callee_qast_for_flags );
    }
    elsif nqp::elems(@args) {
        @args := nqp::clone(@args);
        my $callee_arg := @args.shift;
        my $no_decont := nqp::istype($callee_arg, QAST::WVal) && !nqp::iscont($callee_arg.value);
        $callee_qast_for_flags := $callee_qast := $no_decont
            ?? $callee_arg
            !! QAST::Op.new( :op('decont'), $callee_arg );
    }
    else {
        nqp::die("No name for call and empty children list");
    }

    # Start to assemble the dispatch arguments and things we need to build a
    # callsite. A call dispatch starts with the (decontainerized) callee, and
    # the args will follow it.
    my $callee := $qastcomp.as_mast($callee_qast, :want(nqp::const::MVM_reg_obj));
    my @dispatch_qast := [$callee_qast_for_flags];
    my @dispatch_mast := [$callee];
    my @dispatch_arg_idxs := [$callee.result_reg];

    # Compile each of the arguments and add those onto the list also.
    @args := arrange_args(@args);
    my @arg_mast;
    for @args -> $arg {
        nqp::push(@dispatch_qast, $arg);
        my $arg_mast := $qastcomp.as_mast($arg);
        my int $arg_mast_kind := nqp::unbox_i($arg_mast.result_kind);
        if $arg_mast_kind == nqp::const::MVM_reg_num32 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_num64);
        }
        elsif $arg_mast_kind == nqp::const::MVM_reg_int32 || $arg_mast_kind == nqp::const::MVM_reg_int16 ||
                $arg_mast_kind == nqp::const::MVM_reg_int8 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_int64);
        }
        elsif $arg_mast_kind == nqp::const::MVM_reg_uint32 || $arg_mast_kind == nqp::const::MVM_reg_uint16 ||
                $arg_mast_kind == nqp::const::MVM_reg_uint8 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_uint64);
        }
        nqp::push(@dispatch_mast, $arg_mast);
        nqp::push(@dispatch_arg_idxs, $arg_mast.result_reg);
    }

    # Release the registers used
    my $regalloc := $qastcomp.regalloc;
    for @dispatch_mast {
        $regalloc.release_register($_.result_reg, $_.result_kind);
    }

    # Build callsite and produce dispatch instruction.
    my $frame := $qastcomp.mast_frame;
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(@dispatch_qast,
        @dispatch_mast);
    emit_dispatch_instruction($qastcomp, 'lang-call', $callsite_id,
        @dispatch_arg_idxs, $op.returns)
}
my @kind_to_opcode := nqp::list_i;
nqp::bindpos_i(@kind_to_opcode, nqp::const::MVM_reg_obj, %MAST::Ops::codes<arg_o>);
nqp::bindpos_i(@kind_to_opcode, nqp::const::MVM_reg_str, %MAST::Ops::codes<arg_s>);
nqp::bindpos_i(@kind_to_opcode, nqp::const::MVM_reg_int64, %MAST::Ops::codes<arg_i>);
nqp::bindpos_i(@kind_to_opcode, nqp::const::MVM_reg_num64, %MAST::Ops::codes<arg_n>);
my $call_gen := sub ($qastcomp, $op) {
    # Work out what callee is.
    my $callee;
    my $return_type;
    my @args := $op.list;
    if $op.name {
        $callee := $qastcomp.as_mast(QAST::Op.new(
            :op('decont'),
            $op.op eq 'callstatic'
                ?? QAST::VM.new( :moarop('getlexstatic_o'), QAST::SVal.new( :value($op.name) ) )
                !! QAST::Var.new( :name($op.name), :scope('lexical') )));
    }
    elsif nqp::elems(@args) {
        @args := nqp::clone(@args);
        my $callee_qast := @args.shift;
        my $no_decont := nqp::istype($callee_qast, QAST::WVal) && !nqp::iscont($callee_qast.value);
        $callee := $qastcomp.as_mast(
            $no_decont ?? $callee_qast !! QAST::Op.new( :op('decont'), $callee_qast ),
            :want(nqp::const::MVM_reg_obj));
        if $op.op eq 'nativeinvoke' {
            $return_type := $qastcomp.as_mast(@args.shift(), :want(nqp::const::MVM_reg_obj));
        }
    }
    else {
        nqp::die("No name for call and empty children list");
    }
    @args := arrange_args(@args);

    nqp::die("Callee code did not result in a MAST::Local")
        unless $callee.result_reg && $callee.result_reg ~~ MAST::Local;

    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $bytecode := $frame.bytecode;

    # The arg's results
    my @arg_mast := nqp::list();

    # Process arguments.
    for @args -> $arg {
        my $arg_mast := $qastcomp.as_mast($arg);
        my int $arg_mast_kind := nqp::unbox_i($arg_mast.result_kind);
        if $arg_mast_kind == nqp::const::MVM_reg_num32 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_num64);
        }
        elsif $arg_mast_kind == nqp::const::MVM_reg_int32 || $arg_mast_kind == nqp::const::MVM_reg_int16 ||
                $arg_mast_kind == nqp::const::MVM_reg_int8 || $arg_mast_kind == nqp::const::MVM_reg_uint64 ||
                $arg_mast_kind == nqp::const::MVM_reg_uint32 || $arg_mast_kind == nqp::const::MVM_reg_uint16 ||
                $arg_mast_kind == nqp::const::MVM_reg_uint8 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_int64);
        }
        nqp::push(@arg_mast, $arg_mast);
    }

    my uint $callsite-id := $frame.callsites.get_callsite_id_from_args(@args, @arg_mast);
    my uint64 $bytecode_pos := nqp::elems($bytecode);

    nqp::writeuint($bytecode, $bytecode_pos, $op_code_prepargs, 5);
    nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 2), $callsite-id, 5);
    $bytecode_pos := $bytecode_pos + 4;

    my $i := 0;
    my uint64 $arg_out_pos := 0;
    for @args -> $arg {
        if nqp::can($arg, 'named') && !$arg.flat && $arg.named -> $name {
            nqp::writeuint($bytecode, $bytecode_pos, $op_code_argconst_s, 5);
            nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 2), $arg_out_pos++, 5);
            my uint $name_idx := $frame.add-string($name);
            nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 4), $name_idx, 9);
            $bytecode_pos := $bytecode_pos + 8;
        }

        my $arg_mast := @arg_mast[$i++];
        my int $kind := nqp::unbox_i($arg_mast.result_kind);
        my uint64 $arg_opcode := nqp::atpos_i(@kind_to_opcode, $kind);
        nqp::die("Unhandled arg type $kind") unless $arg_opcode;
        nqp::writeuint($bytecode, $bytecode_pos, $arg_opcode, 5);
        nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 2), $arg_out_pos++, 5);
        my uint64 $res_index := nqp::unbox_u($arg_mast.result_reg);
        nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 4), $res_index, 5);
        $bytecode_pos := $bytecode_pos + 6;

        $regalloc.release_register($arg_mast.result_reg, $kind);
    }

    # Release the callee's result register.
    $regalloc.release_register($callee.result_reg, nqp::const::MVM_reg_obj);

    # Figure out result register type
    my %result;
    my $res_reg;
    my int $res_kind;
    my int $is_nativecall := $op.op eq 'nativeinvoke';
    if !$is_nativecall && nqp::defined($*WANT) && $*WANT == nqp::const::MVM_reg_void {
        $res_reg := MAST::VOID;
        $res_kind := nqp::const::MVM_reg_void;
    }
    else {
        $res_kind := $qastcomp.type_to_register_kind($op.returns);
        $res_reg := $regalloc.fresh_register($res_kind);
        %result<result> := $res_reg;
    }

    # Generate call.
    if $res_reg.isa(MAST::Local) { # We got a return value
        my @local_types := $frame.local_types;
        my uint $index := nqp::unbox_u($res_reg);
        if $index >= nqp::elems(@local_types) {
            nqp::die("MAST::Local index out of range");
        }
        my $op_name := $is_nativecall ?? 'nativeinvoke_' !! 'invoke_';
        my int $primspec := nqp::objprimspec(@local_types[$index]);
        if $primspec == nqp::const::BIND_VAL_INT {
            $op_name := $op_name ~ 'i';
        }
        elsif $primspec == nqp::const::BIND_VAL_UINT {
            $op_name := $op_name ~ 'u';
        }
        elsif $primspec == nqp::const::BIND_VAL_NUM {
            $op_name := $op_name ~ 'n';
        }
        elsif $primspec == nqp::const::BIND_VAL_STR {
            $op_name := $op_name ~ 's';
        }
        elsif $primspec == nqp::const::BIND_VAL_OBJ { # object
            $op_name := $op_name ~ 'o';
        }
        else {
            nqp::die('Invalid MAST::Local type ' ~ @local_types[$index] ~ ' for return value ' ~ $index);
        }
        my uint $op_code := %MAST::Ops::codes{$op_name};
        nqp::writeuint($bytecode, $bytecode_pos, $op_code, 5);
        my uint $res_index := nqp::unbox_u($res_reg);
        nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 2), $res_index, 5);
        my uint $callee_res_index := nqp::unbox_u($callee.result_reg);
        nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 4), $callee_res_index, 5);
    }
    else {
        nqp::writeuint($bytecode, $bytecode_pos, $op_code_invoke_v, 5);
        my uint $callee_res_index := nqp::unbox_u($callee.result_reg);
        nqp::writeuint($bytecode, nqp::add_i($bytecode_pos, 2), $callee_res_index, 5);
    }

    if $is_nativecall {
        $bytecode.write_uint16($return_type.result_reg);
    }

    MAST::InstructionList.new($res_reg, $res_kind)
};
QAST::MASTOperations.add_core_op('call', $dispatch_call_gen, :!inlinable);
QAST::MASTOperations.add_core_op('callstatic', $dispatch_call_gen, :!inlinable);
QAST::MASTOperations.add_core_op('nativeinvoke', $call_gen, :!inlinable);

QAST::MASTOperations.add_core_op('callmethod', -> $qastcomp, $op {
    # Copy args to avoid mutating original QAST during compilation.
    my @args := nqp::clone($op.list);
    if nqp::elems(@args) == 0 {
        nqp::die('Method call node requires at least one child');
    }

    # Compile the invocant expression
    my $invocant_qast := @args.shift();
    my $invocant := $qastcomp.as_mast($invocant_qast, :want(nqp::const::MVM_reg_obj));
    nqp::die("Invocant expression must be an object, got " ~ $invocant.result_kind)
        unless nqp::unbox_i($invocant.result_kind) == nqp::const::MVM_reg_obj;
    nqp::die("Invocant code did not result in a MAST::Local")
        unless $invocant.result_reg && $invocant.result_reg ~~ MAST::Local;

    # Also decontainerize the invocant.
    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $decont_inv_reg := $regalloc.fresh_o();
    op_decont($frame, $decont_inv_reg, $invocant.result_reg);

    # If there is a non-literal method name, compile that also.
    my $method_name_expr;
    if $op.name {
        $method_name_expr := QAST::SVal.new( :value($op.name) );
    }
    elsif nqp::elems(@args) >= 1 {
        $method_name_expr := @args.shift();
    }
    else {
        nqp::die("Method call must either supply a name or have a child node that evaluates to the name");
    }
    my $method_name_ilist := $qastcomp.as_mast($method_name_expr, :want(nqp::const::MVM_reg_str));
    my $method_name := $method_name_ilist.result_reg;

    # Start to assemble the dispatch arguments and things we need to build a
    # callsite. A method call dispatch starts with the decontainerized
    # invocant, the method name, and the original invocant.
    my @dispatch_qast := [$invocant_qast, $method_name_expr, $invocant_qast];
    my @dispatch_mast := [MAST::InstructionList.new($decont_inv_reg, nqp::const::MVM_reg_obj),
                          $method_name_ilist, $invocant];
    my @dispatch_arg_idxs := [$decont_inv_reg, $method_name, $invocant.result_reg];

    # Compile each of the arguments and add those onto the list also.
    @args := arrange_args(@args);
    my $bytecode := $frame.bytecode;
    my @arg_mast := [$invocant];
    for @args -> $arg {
        nqp::push(@dispatch_qast, $arg);
        my $arg_mast := $qastcomp.as_mast($arg);
        my int $arg_mast_kind := nqp::unbox_i($arg_mast.result_kind);
        if $arg_mast_kind == nqp::const::MVM_reg_num32 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_num64);
        }
        elsif $arg_mast_kind == nqp::const::MVM_reg_int32 || $arg_mast_kind == nqp::const::MVM_reg_int16 ||
                $arg_mast_kind == nqp::const::MVM_reg_int8 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_int64);
        }
        elsif $arg_mast_kind == nqp::const::MVM_reg_uint32 || $arg_mast_kind == nqp::const::MVM_reg_uint16 ||
                $arg_mast_kind == nqp::const::MVM_reg_uint8 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_uint64);
        }
        nqp::push(@dispatch_mast, $arg_mast);
        nqp::push(@dispatch_arg_idxs, $arg_mast.result_reg);
    }

    # Release the registers used
    for @dispatch_mast {
        $regalloc.release_register($_.result_reg, $_.result_kind);
    }

    # Build callsite and produce dispatch instruction.
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(@dispatch_qast,
        @dispatch_mast);
    emit_dispatch_instruction($qastcomp, 'lang-meth-call', $callsite_id,
        @dispatch_arg_idxs, $op.returns)
});

# Dispatching
QAST::MASTOperations.add_core_op('dispatch', :!inlinable, -> $qastcomp, $op {
    add-dispatcher-op($qastcomp, $op);
});
QAST::MASTOperations.add_core_op('syscall', :!inlinable, -> $qastcomp, $op {
    add-dispatcher-op($qastcomp, $op, :prefix<boot-syscall>);
});
QAST::MASTOperations.add_core_op('register', :!inlinable, -> $qastcomp, $op {
    add-dispatcher-op($qastcomp, $op, :prefix<dispatcher-register>);
});
QAST::MASTOperations.add_core_op('delegate', :!inlinable, -> $qastcomp, $op {
    add-dispatcher-op($qastcomp, $op, :prefix<dispatcher-delegate>);
});
QAST::MASTOperations.add_core_op('track', :!inlinable, -> $qastcomp, $op {
    add-dispatcher-op($qastcomp, $op, :prefix<dispatcher-track->);
});
QAST::MASTOperations.add_core_op('guard', :!inlinable, -> $qastcomp, $op {
    add-dispatcher-op($qastcomp, $op, :prefix<dispatcher-guard->);
});

my sub add-dispatcher-op($qastcomp, $op, :$prefix) {
    # Ensure named/positional constraint is upheld.
    my @args := arrange_args($op.list);
    if $prefix {
        if $prefix eq 'boot-syscall' {
            nqp::unshift(@args, QAST::SVal.new(:value($prefix)));
        }
        elsif $prefix eq 'dispatcher-register'
           || $prefix eq 'dispatcher-delegate' {
            nqp::unshift(@args, QAST::SVal.new(:value($prefix)));
            nqp::unshift(@args, QAST::SVal.new(:value<boot-syscall>));
        }
        elsif $prefix eq 'dispatcher-track-'
           || $prefix eq 'dispatcher-guard-' {
            my str $value := $prefix ~ nqp::shift(@args).value;
            nqp::unshift(@args, QAST::SVal.new(:$value));
            nqp::unshift(@args, QAST::SVal.new(:value<boot-syscall>));
        }
    }

    # Obtain name of the dispatcher to use.
    my $name_qast := nqp::shift(@args);
    unless nqp::istype($name_qast, QAST::SVal) {
        nqp::die('First node of dispatch op must be a constant string naming the dispatcher');
    }
    my str $dispatcher_name := $name_qast.value;

    # Compile arguments and form callsite.
    my @arg_mast;
    my @arg_idxs;
    my @arg_kinds := nqp::list_i;
    my $regalloc := $qastcomp.regalloc;
    my $frame := $qastcomp.mast_frame;
    for @args -> $arg {
        my $arg_mast := $qastcomp.as_mast($arg);
        my int $arg_mast_kind := nqp::unbox_i($arg_mast.result_kind);
        if $arg_mast_kind == nqp::const::MVM_reg_num32 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_num64);
        }
        elsif $arg_mast_kind == nqp::const::MVM_reg_int32 || $arg_mast_kind == nqp::const::MVM_reg_int16 ||
                $arg_mast_kind == nqp::const::MVM_reg_int8 || $arg_mast_kind == nqp::const::MVM_reg_uint64 ||
                $arg_mast_kind == nqp::const::MVM_reg_uint32 || $arg_mast_kind == nqp::const::MVM_reg_uint16 ||
                $arg_mast_kind == nqp::const::MVM_reg_uint8 {
            $arg_mast := $qastcomp.coerce($arg_mast, nqp::const::MVM_reg_int64);
        }
        nqp::push(@arg_mast, $arg_mast);
        nqp::push(@arg_idxs, $arg_mast.result_reg);
        nqp::push_i(@arg_kinds, $arg_mast_kind);
    }
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(@args, @arg_mast);

    # Emit dispatch, then free argument registers.
    my $res := emit_dispatch_instruction($qastcomp, $dispatcher_name, $callsite_id,
            @arg_idxs, $op.returns);
    my int $i := 0;
    my int $args := nqp::elems(@arg_mast);
    while $i < $args {
        $regalloc.release_register(@arg_idxs[$i], nqp::atpos_i(@arg_kinds, $i));
        $i++;
    }
    $res
}

# Binding
QAST::MASTOperations.add_core_op('bind', -> $qastcomp, $op {
    # Sanity checks.
    my @children := $op.list;
    if nqp::elems(@children) != 2 {
        nqp::die("The 'bind' op needs 2 children, got " ~ +@children);
    }
    unless nqp::istype(@children[0], QAST::Var) {
        nqp::die("First child of a 'bind' op must be a QAST::Var, got " ~ @children[0].HOW.name(@children[0]));
    }

    # Set the QAST of the think we're to bind, then delegate to
    # the compilation of the QAST::Var to handle the rest.
    my $*BINDVAL := @children[1];
    $qastcomp.as_mast(@children[0])
});

# Exception handling/munging.
my constant HANDLER_NAMES := nqp::hash(
    'CATCH',   $HandlerCategory::catch,
    'CONTROL', $HandlerCategory::control,
    'NEXT',    $HandlerCategory::next,
    'LAST',    $HandlerCategory::last,
    'REDO',    $HandlerCategory::redo,
    'TAKE',    $HandlerCategory::take,
    'WARN',    $HandlerCategory::warn,
    'PROCEED', $HandlerCategory::proceed,
    'SUCCEED', $HandlerCategory::succeed,
    'AWAIT',   $HandlerCategory::await,
    'EMIT',    $HandlerCategory::emit,
    'DONE',    $HandlerCategory::done,
    'RETURN',  $HandlerCategory::return,
);
QAST::MASTOperations.add_core_op('handle', :!inlinable, sub ($qastcomp, $op) {
    my @children := nqp::clone($op.list());
    if nqp::elems(@children) == 0 {
        nqp::die("The 'handle' op requires at least one child");
    }

    # If there's exactly one child, then there's nothing protecting
    # it; just compile it and we're done.
    my $protected := @children.shift();
    unless @children {
        return $qastcomp.as_mast($protected);
    }

    # Otherwise, we need to generate and install a handler block, which will
    # decide that to do by category.
    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $mask := 0;
    my $hblock := QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('__category__'), :scope('local'), :decl('var') ),
            QAST::Op.new(
                :op('getextype'),
                QAST::Op.new( :op('exception') )
            )));
    my $push_target := $hblock;
    my $lablocal;
    for @children -> $type, $handler {
        if $type eq 'LABELED' {
            $mask       := $HandlerCategory::labeled;
            my $labmast := $qastcomp.as_mast($handler, :want(nqp::const::MVM_reg_obj));
            my $labreg  := $labmast.result_reg;
            $lablocal   := MAST::Local.new(:index($frame.add_local(NQPMu)));
            op_set($frame, $lablocal, $labreg);
            $regalloc.release_register($labreg, nqp::const::MVM_reg_obj);
        }
        else {
            # Get the category mask.
            unless nqp::existskey(HANDLER_NAMES, $type) {
                nqp::die("Invalid handler type '$type'");
            }
            my $cat_mask := $type eq 'CONTROL' ?? 0xEFFE !! HANDLER_NAMES{$type};

            # Chain in this handler.
            my $check := QAST::Op.new(
                    :op('if'),
                    QAST::Op.new(
                        :op('bitand_i'),
                        QAST::Var.new( :name('__category__'), :scope('local') ),
                        QAST::IVal.new( :value($cat_mask) )
                    ),
                    $handler
                );
            # Push this check as the 3rd arg to op 'if' in case this is not the first iteration.
            $push_target.push($check);
            $push_target := $check;

            # Add to mask.
            $mask := nqp::bitor_i($mask, $cat_mask);
        }
    }

    # Add a local and store the handler block into it.
    my $hblocal := MAST::Local.new(:index($frame.add_local(NQPMu)));
    my $hbmast  := $qastcomp.as_mast($hblock, :want(nqp::const::MVM_reg_obj));
    op_set($frame, $hblocal, $hbmast.result_reg);
    $regalloc.release_register($hbmast.result_reg, nqp::const::MVM_reg_obj);

    # Wrap instructions to try up in a handler and evaluate to the result
    # of the protected code of the exception handler.
    my $protected_result  := $regalloc.fresh_o();
    my $prot_start := nqp::elems($frame.bytecode);
    my $protil := $qastcomp.as_mast($protected, :want(nqp::const::MVM_reg_obj));
    my $uwlbl  := MAST::Label.new();
    my $endlbl := MAST::Label.new();
    op_set($frame, $protected_result, $protil.result_reg);
    op_goto($frame, $endlbl);
    MAST::HandlerScope.new(
        :start($prot_start), :goto($uwlbl), :block($hblocal),
        :category_mask($mask), :action($HandlerAction::invoke_and_we'll_see),
        :label($lablocal));
    $frame.add-label($uwlbl);
    %core_op_generators{'takehandlerresult'}($frame, $protected_result);
    $frame.add-label($endlbl);

    $regalloc.release_register($protil.result_reg, nqp::const::MVM_reg_obj);

    MAST::InstructionList.new($protected_result, nqp::const::MVM_reg_obj)
});

# Simple payload handler.
QAST::MASTOperations.add_core_op('handlepayload', :!inlinable, sub ($qastcomp, $op) {
    my @children := $op.list;
    if nqp::elems(@children) != 3 {
        nqp::die("The 'handlepayload' op needs 3 children, got " ~ +@children);
    }
    my str $type := @children[1];
    unless nqp::existskey(HANDLER_NAMES, $type) {
        nqp::die("Invalid handler type '$type'");
    }
    my int $mask := HANDLER_NAMES{$type};
    my $frame    := $qastcomp.mast_frame;

    my $prot_start := nqp::elems($frame.bytecode);
    my $protected := $qastcomp.as_mast(@children[0], :want(nqp::const::MVM_reg_obj));
    my $endlbl     := MAST::Label.new();
    my $handlelbl  := MAST::Label.new();
    op_goto($frame, $endlbl);
    MAST::HandlerScope.new(
        :start($prot_start), :goto($handlelbl),
        :category_mask($mask), :action($HandlerAction::unwind_and_goto_with_payload));
    $frame.add-label($handlelbl);
    my $handler   := $qastcomp.as_mast(@children[2], :want(nqp::const::MVM_reg_obj));
    op_set($frame, $protected.result_reg, $handler.result_reg);
    $frame.add-label($endlbl);
    $qastcomp.regalloc.release_register($handler.result_reg, nqp::const::MVM_reg_obj);

    MAST::InstructionList.new($protected.result_reg, nqp::const::MVM_reg_obj)
});

# Control exception throwing.
my constant CONTROL_MAP := nqp::hash(
    'next', $HandlerCategory::next,
    'last', $HandlerCategory::last,
    'redo', $HandlerCategory::redo
);
QAST::MASTOperations.add_core_op('control', -> $qastcomp, $op {
    my $regalloc := $qastcomp.regalloc;
    my $name := $op.name;
    my $label;
    for $op.list {
        $label := $_ if $_.named eq 'label';
    }

    if nqp::existskey(CONTROL_MAP, $name) {
        my $frame := $qastcomp.mast_frame;
        if $label {
            # Create an exception object, and attach the label to its payload.
            my $res := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
            my $ex  := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
            my $lbl := $qastcomp.as_mast($label, :want(nqp::const::MVM_reg_obj));
            my $cat := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
            my $il  := MAST::InstructionList.new($res, nqp::const::MVM_reg_obj);
            $il.append($lbl);
            %core_op_generators{'newexception'}($frame, $ex);
            %core_op_generators{'bindexpayload'}($frame, $ex,  $lbl.result_reg );
            %core_op_generators{'const_i64'}($frame, $cat, nqp::add_i(CONTROL_MAP{$name}, $HandlerCategory::labeled));
            %core_op_generators{'bindexcategory'}($frame, $ex,  $cat );
            %core_op_generators{'throwdyn'}($frame, $res, $ex);
            $il
        }
        else {
            my $res := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
            %core_op_generators{'throwcatdyn'}($frame, $res, CONTROL_MAP{$name});
            MAST::InstructionList.new($res, nqp::const::MVM_reg_obj)
        }
    }
    else {
        nqp::die("Unknown control exception type '$name'");
    }
});

# Default ways to box/unbox (used for NQP).
QAST::MASTOperations.add_hll_unbox('', nqp::const::MVM_reg_int64, -> $qastcomp, $reg {
    my $regalloc := $qastcomp.regalloc;
    my $frame := $qastcomp.mast_frame;
    my $res_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
    $regalloc.release_register($reg, nqp::const::MVM_reg_obj);
    my $dc := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_decont($frame, $dc, $reg);
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
        $FAKE_OBJECT_ARG, [MAST::InstructionList.new($dc, nqp::const::MVM_reg_obj)]);
    op_dispatch_i($frame, $res_reg, 'nqp-intify', $callsite_id, [$dc]);
    $regalloc.release_register($dc, nqp::const::MVM_reg_obj);
    MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_int64)
});
QAST::MASTOperations.add_hll_unbox('', nqp::const::MVM_reg_num64, -> $qastcomp, $reg {
    my $regalloc := $qastcomp.regalloc;
    my $frame := $qastcomp.mast_frame;
    my $res_reg := $regalloc.fresh_register(nqp::const::MVM_reg_num64);
    $regalloc.release_register($reg, nqp::const::MVM_reg_obj);
    my $dc := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_decont($frame, $dc, $reg);
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
        $FAKE_OBJECT_ARG, [MAST::InstructionList.new($dc, nqp::const::MVM_reg_obj)]);
    op_dispatch_n($frame, $res_reg, 'nqp-numify', $callsite_id, [$dc]);
    $regalloc.release_register($dc, nqp::const::MVM_reg_obj);
    MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_num64)
});
QAST::MASTOperations.add_hll_unbox('', nqp::const::MVM_reg_str, -> $qastcomp, $reg {
    my $regalloc := $qastcomp.regalloc;
    my $frame := $qastcomp.mast_frame;
    my $res_reg := $regalloc.fresh_register(nqp::const::MVM_reg_str);
    $regalloc.release_register($reg, nqp::const::MVM_reg_obj);
    my $dc := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_decont($frame, $dc, $reg);
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
        $FAKE_OBJECT_ARG, [MAST::InstructionList.new($dc, nqp::const::MVM_reg_obj)]);
    op_dispatch_s($frame, $res_reg, 'nqp-stringify', $callsite_id, [$dc]);
    $regalloc.release_register($dc, nqp::const::MVM_reg_obj);
    MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_str)
});
QAST::MASTOperations.add_hll_unbox('', nqp::const::MVM_reg_uint64, -> $qastcomp, $reg {
    my $regalloc := $qastcomp.regalloc;
    my $frame := $qastcomp.mast_frame;
    my $res_reg := $regalloc.fresh_register(nqp::const::MVM_reg_uint64);
    $regalloc.release_register($reg, nqp::const::MVM_reg_obj);
    my $dc := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_decont($frame, $dc, $reg);
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
        $FAKE_OBJECT_ARG, [MAST::InstructionList.new($dc, nqp::const::MVM_reg_obj)]);
    op_dispatch_u($frame, $res_reg, 'nqp-uintify', $callsite_id, [$dc]);
    $regalloc.release_register($dc, nqp::const::MVM_reg_obj);
    MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_uint64)
});
sub boxer($kind, $type_op, $op) {
    $type_op := %core_op_generators{$type_op};
    $op := %core_op_generators{$op};
    -> $qastcomp, $reg {
        my $regalloc := $qastcomp.regalloc;
        my $frame := $qastcomp.mast_frame;
        my $res_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
        $type_op($frame, $res_reg);
        $op($frame, $res_reg, $reg, $res_reg);
        $regalloc.release_register($reg, $kind);
        MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_obj)
    }
}
QAST::MASTOperations.add_hll_box('', nqp::const::MVM_reg_int64, boxer(nqp::const::MVM_reg_int64, 'hllboxtype_i', 'box_i'));
QAST::MASTOperations.add_hll_box('', nqp::const::MVM_reg_num64, boxer(nqp::const::MVM_reg_num64, 'hllboxtype_n', 'box_n'));
QAST::MASTOperations.add_hll_box('', nqp::const::MVM_reg_str, boxer(nqp::const::MVM_reg_str, 'hllboxtype_s', 'box_s'));
QAST::MASTOperations.add_hll_box('', nqp::const::MVM_reg_uint64, boxer(nqp::const::MVM_reg_uint64, 'hllboxtype_i', 'box_u'));
QAST::MASTOperations.add_hll_box('', nqp::const::MVM_reg_void, -> $qastcomp, $reg {
    my $res_reg := $qastcomp.regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_null($qastcomp.mast_frame, $res_reg);
    MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_obj)
});

# Constant mapping.
my constant CONST_MAP := nqp::hash(
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

    'CONTROL_ANY',          2,
    'CONTROL_NEXT',         4,
    'CONTROL_REDO',         8,
    'CONTROL_LAST',         16,
    'CONTROL_RETURN',       32,
    'CONTROL_TAKE',         128,
    'CONTROL_WARN',         256,
    'CONTROL_SUCCEED',      512,
    'CONTROL_PROCEED',      1024,
    'CONTROL_LABELED',      4096,
    'CONTROL_AWAIT',        8192,
    'CONTROL_EMIT',         16384,
    'CONTROL_DONE',         32768,

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

    'OPEN_MODE_RO',             1,
    'OPEN_MODE_WO',             2,
    'OPEN_MODE_RW',             3,

    'PIPE_INHERIT_IN',          1,
    'PIPE_IGNORE_IN',           2,
    'PIPE_CAPTURE_IN',          4,
    'PIPE_INHERIT_OUT',         8,
    'PIPE_IGNORE_OUT',          16,
    'PIPE_CAPTURE_OUT',         32,
    'PIPE_INHERIT_ERR',         64,
    'PIPE_IGNORE_ERR',          128,
    'PIPE_CAPTURE_ERR',         256,
    'PIPE_MERGED_OUT_ERR',      512,

    'TYPE_CHECK_CACHE_DEFINITIVE',  0,
    'TYPE_CHECK_CACHE_THEN_METHOD', 1,
    'TYPE_CHECK_NEEDS_ACCEPTS',     2,

    'C_TYPE_CHAR',              -1,
    'C_TYPE_SHORT',             -2,
    'C_TYPE_INT',               -3,
    'C_TYPE_LONG',              -4,
    'C_TYPE_LONGLONG',          -5,
    'C_TYPE_SIZE_T',            -6,
    'C_TYPE_BOOL',              -7,
    'C_TYPE_ATOMIC_INT',        -8,
    'C_TYPE_FLOAT',             -1,
    'C_TYPE_DOUBLE',            -2,
    'C_TYPE_LONGDOUBLE',        -3,

    'NORMALIZE_NONE',            0,
    'NORMALIZE_NFC',             1,
    'NORMALIZE_NFD',             2,
    'NORMALIZE_NFKC',            3,
    'NORMALIZE_NFKD',            4,

    'RUSAGE_UTIME_SEC',          0,
    'RUSAGE_UTIME_MSEC',         1,
    'RUSAGE_STIME_SEC',          2,
    'RUSAGE_STIME_MSEC',         3,
    'RUSAGE_MAXRSS',             4,
    'RUSAGE_IXRSS',              5,
    'RUSAGE_IDRSS',              6,
    'RUSAGE_ISRSS',              7,
    'RUSAGE_MINFLT',             8,
    'RUSAGE_MAJFLT',             9,
    'RUSAGE_NSWAP',              10,
    'RUSAGE_INBLOCK',            11,
    'RUSAGE_OUBLOCK',            12,
    'RUSAGE_MSGSND',             13,
    'RUSAGE_MSGRCV',             14,
    'RUSAGE_NSIGNALS',           15,
    'RUSAGE_NVCSW',              16,
    'RUSAGE_NIVCSW',             17,

    'UNAME_SYSNAME',              0,
    'UNAME_RELEASE',              1,
    'UNAME_VERSION',              2,
    'UNAME_MACHINE',              3,

    'MVM_OPERAND_LITERAL',        0,
    'MVM_OPERAND_READ_REG',       1,
    'MVM_OPERAND_WRITE_REG',      2,
    'MVM_OPERAND_READ_LEX',       3,
    'MVM_OPERAND_WRITE_LEX',      4,
    'MVM_OPERAND_RW_MASK',        7,

    'MVM_OPERAND_INT8',           8,
    'MVM_OPERAND_INT16',         16,
    'MVM_OPERAND_INT32',         24,
    'MVM_OPERAND_INT64',         32,
    'MVM_OPERAND_NUM32',         40,
    'MVM_OPERAND_NUM64',         48,
    'MVM_OPERAND_STR',           56,
    'MVM_OPERAND_OBJ',           64,
    'MVM_OPERAND_INS',           72,
    'MVM_OPERAND_TYPE_VAR',      80,
    'MVM_OPERAND_LEX_OUTER',     88,
    'MVM_OPERAND_CODEREF',       96,
    'MVM_OPERAND_CALLSITE',     104,
    'MVM_OPERAND_TYPE_MASK',    248,
    'MVM_OPERAND_UINT8',        136,
    'MVM_OPERAND_UINT16',       144,
    'MVM_OPERAND_UINT32',       152,
    'MVM_OPERAND_UINT64',       160,

    'BINARY_ENDIAN_NATIVE',       0,
    'BINARY_ENDIAN_LITTLE',       1,
    'BINARY_ENDIAN_BIG',          2,

    'BINARY_SIZE_8_BIT',          0,
    'BINARY_SIZE_16_BIT',         4,
    'BINARY_SIZE_32_BIT',         8,
    'BINARY_SIZE_64_BIT',        12,

    'SOCKET_FAMILY_UNSPEC',       0,
    'SOCKET_FAMILY_INET',         1,
    'SOCKET_FAMILY_INET6',        2,
    'SOCKET_FAMILY_UNIX',         3,

    'DISP_NONE',                  0,
    'DISP_CALLSAME',              1,
    'DISP_CALLWITH',              2,
    'DISP_LASTCALL',              3,
    'DISP_NEXTCALLEE',            4,
    'DISP_ONLYSTAR',              5,
    'DISP_DECONT',                6,
    'DISP_BIND_SUCCESS',          7,
    'DISP_BIND_FAILURE',          8,
    'DISP_PROPAGATE_CALLWITH',    9,

    'SIG_ELEM_BIND_CAPTURE',        1,
    'SIG_ELEM_BIND_PRIVATE_ATTR',   2,
    'SIG_ELEM_BIND_PUBLIC_ATTR',    4,
    # BIND_PRIVATE_ATTR + BIND_PUBLIC_ATTR
    'SIG_ELEM_BIND_ATTRIBUTIVE',    6,
    'SIG_ELEM_SLURPY_POS',          8,
    'SIG_ELEM_SLURPY_NAMED',        16,
    'SIG_ELEM_SLURPY_LOL',          32,
    'SIG_ELEM_INVOCANT',            64,
    'SIG_ELEM_MULTI_INVOCANT',      128,
    'SIG_ELEM_IS_RW',               256,
    'SIG_ELEM_IS_COPY',             512,
    'SIG_ELEM_IS_RAW',              1024,
    # IS_RW + IS_COPY + IS_RAW
    'SIG_ELEM_IS_NOT_READONLY',     1792,
    'SIG_ELEM_IS_OPTIONAL',         2048,
    'SIG_ELEM_ARRAY_SIGIL',         4096,
    'SIG_ELEM_HASH_SIGIL',          8192,
    'SIG_ELEM_DEFAULT_FROM_OUTER',  16384,
    'SIG_ELEM_IS_CAPTURE',          32768,
    # SLURPY_NAMED + IS_CAPTURE
    'SIG_ELEM_ALL_NAMES_OK',        32784,
    'SIG_ELEM_UNDEFINED_ONLY',      65536,
    'SIG_ELEM_DEFINED_ONLY',        131072,
    # UNDEFINED_ONLY + DEFINED_ONLY
    'SIG_ELEM_DEFINEDNES_CHECK',    196608,
    'SIG_ELEM_TYPE_GENERIC',        524288,
    'SIG_ELEM_DEFAULT_IS_LITERAL',  1048576,
    'SIG_ELEM_NATIVE_INT_VALUE',    2097152,
    'SIG_ELEM_NATIVE_UINT_VALUE',   134217728,
    'SIG_ELEM_NATIVE_NUM_VALUE',    4194304,
    'SIG_ELEM_NATIVE_STR_VALUE',    8388608,
    # NATIVE_UINT_VALUE + NATIVE_INT_VALUE + NATIVE_NUM_VALUE + NATIVE_STR_VALUE
    'SIG_ELEM_NATIVE_VALUE',        148897792,
    'SIG_ELEM_SLURPY_ONEARG',       16777216,
    # SLURPY_POS + SLURPY_NAMED + SLURPY_LOL + SLURPY_ONEARG
    'SIG_ELEM_IS_SLURPY',           16777272,
    # SLURPY_POS + SLURPY_LOL + SLURPY_ONEARG + IS_CAPTURE
    'SIG_ELEM_SLURPY_ARITY',        16810024,
    # SLURPY_POS + SLURPY_NAMED + SLURPY_LOL + SLURPY_ONEARG + IS_CAPTURE
    'SIG_ELEM_IS_NOT_POSITIONAL',   16810040,
    'SIG_ELEM_CODE_SIGIL',          33554432,
    'SIG_ELEM_IS_COERCIVE',         67108864,
    'SIG_ELEM_IS_ITEM',             268435456,
    'SIG_ELEM_IS_EXACT_TYPE',       536870912,

    'EDGE_FATE',               0,
    'EDGE_EPSILON',            1,
    'EDGE_CODEPOINT',          2,
    'EDGE_CODEPOINT_NEG',      3,
    'EDGE_CHARCLASS',          4,
    'EDGE_CHARCLASS_NEG',      5,
    'EDGE_CHARLIST',           6,
    'EDGE_CHARLIST_NEG',       7,
    'EDGE_SUBRULE',            8,
    'EDGE_CODEPOINT_I',        9,
    'EDGE_CODEPOINT_I_NEG',   10,
    'EDGE_GENERIC_VAR',       11,
    'EDGE_CHARRANGE',         12,
    'EDGE_CHARRANGE_NEG',     13,
    'EDGE_CODEPOINT_LL',      14,
    'EDGE_CODEPOINT_I_LL',    15,
    'EDGE_CODEPOINT_M',       16,
    'EDGE_CODEPOINT_M_NEG',   17,
    'EDGE_CODEPOINT_M_LL',    18,
    'EDGE_CODEPOINT_IM',      19,
    'EDGE_CODEPOINT_IM_NEG',  20,
    'EDGE_CODEPOINT_IM_LL',   21,
    'EDGE_CHARRANGE_M',       22,
    'EDGE_CHARRANGE_M_NEG',   23,

    'MVM_reg_void',     0, # not really a register; just a result/return marker
    'MVM_reg_int8',     1,
    'MVM_reg_int16',    2,
    'MVM_reg_int32',    3,
    'MVM_reg_int64',    4,
    'MVM_reg_num32',    5,
    'MVM_reg_num64',    6,
    'MVM_reg_str',      7,
    'MVM_reg_obj',      8,
    'MVM_reg_uint8',   17,
    'MVM_reg_uint16',  18,
    'MVM_reg_uint32',  19,
    'MVM_reg_uint64',  20,

    'DEFCON_DEFINED',   1,
    'DEFCON_UNDEFINED', 2,
    # DEFINED + UNDEFINED
    'DEFCON_MASK',      3,

    'TYPE_NATIVE_INT',   4,
    'TYPE_NATIVE_NUM',   8,
    'TYPE_NATIVE_STR',  16,
    'TYPE_NATIVE_UINT', 32,
    # INT + NUM + STR + UINT
    'TYPE_NATIVE_MASK', 60,

    'BIND_RESULT_OK',       0,
    'BIND_RESULT_FAIL',     1,
    'BIND_RESULT_JUNCTION', 2,

    'BIND_VAL_OBJ',   0,
    'BIND_VAL_INT',   1,
    'BIND_VAL_NUM',   2,
    'BIND_VAL_STR',   3,
    'BIND_VAL_UINT', 10,

    'TYPE_CHECK_CACHE_DEFINITIVE',  0,
    'TYPE_CHECK_CACHE_THEN_METHOD', 1,
    'TYPE_CHECK_NEEDS_ACCEPTS',     2,
);
QAST::MASTOperations.add_core_op('const', -> $qastcomp, $op {
    my str $name := $op.name;
    if nqp::existskey(CONST_MAP, $name) {
        $qastcomp.as_mast(QAST::IVal.new( :value(CONST_MAP{$name}) ))
    }
    else {
        nqp::die("Unknown constant '$name'");
    }
});

# I/O opcodes
QAST::MASTOperations.add_core_op('fileislink', -> $qastcomp, $op {
    $qastcomp.as_mast( QAST::Op.new( :op('stat'), $op[0], QAST::IVal.new( :value(12) )) )
});
QAST::MASTOperations.add_core_op('sprintf', -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_mast(
        QAST::Op.new(
            :op('call'),
            :returns(str),
            QAST::Op.new(
                :op('gethllsym'),
                QAST::SVal.new( :value('nqp') ),
                QAST::SVal.new( :value('sprintf') )
            ),
            |@operands )
    );
});
QAST::MASTOperations.add_core_op('sprintfdirectives', -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_mast(
        QAST::Op.new(
            :op('call'),
            :returns(int),
            QAST::Op.new(
                :op('gethllsym'),
                QAST::SVal.new( :value('nqp') ),
                QAST::SVal.new( :value('sprintfdirectives') )
            ),
            |@operands )
    );
});
QAST::MASTOperations.add_core_op('sprintfaddargumenthandler', -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_mast(
        QAST::Op.new(
            :op('call'),
            :returns(str),
            QAST::Op.new(
                :op('gethllsym'),
                QAST::SVal.new( :value('nqp') ),
                QAST::SVal.new( :value('sprintfaddargumenthandler') )
            ),
            |@operands )
    );
});

QAST::MASTOperations.add_core_op('tclc', -> $qastcomp, $op {
    my @operands := $op.list;
    unless nqp::elems(@operands) == 1 {
        nqp::die("The 'tclc' op needs 1 argument, got " ~ nqp::elems(@operands));
    }
    $qastcomp.as_mast(
            QAST::Op.new( :op('concat'),
                QAST::Op.new( :op('tc'),
                    QAST::Op.new( :op('substr'),
                        @operands[0], QAST::IVal.new( :value(0) ), QAST::IVal.new( :value(1) ))),
                QAST::Op.new( :op('lc'),
                    QAST::Op.new( :op('substr'),
                        @operands[0], QAST::IVal.new( :value(1) ))),
        ));
});

QAST::MASTOperations.add_core_op('substr', -> $qastcomp, $op {
    my @operands := $op.list;
    if nqp::elems(@operands) == 2 { nqp::push(@operands, QAST::IVal.new( :value(-1) )) }
    $qastcomp.as_mast(QAST::Op.new( :op('substr_s'), |@operands ));
});

QAST::MASTOperations.add_core_op('ord',  -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_mast(nqp::elems(@operands) == 1
        ?? QAST::Op.new( :op('ordfirst'), |@operands )
        !! QAST::Op.new( :op('ordat'), |@operands ));
});

QAST::MASTOperations.add_core_op('index',  -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_mast(nqp::elems(@operands) == 2
        ?? QAST::Op.new( :op('indexfrom'), |@operands, QAST::IVal.new( :value(0)) )
        !! QAST::Op.new( :op('indexfrom'), |@operands ));
});

QAST::MASTOperations.add_core_op('rindex',  -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_mast(nqp::elems(@operands) == 2
        ?? QAST::Op.new( :op('rindexfrom'), |@operands, QAST::IVal.new( :value(-1) ) )
        !! QAST::Op.new( :op('rindexfrom'), |@operands ));
});

# object opcodes
QAST::MASTOperations.add_core_op('null', -> $qastcomp, $op {
    my $want := $*WANT;
    if nqp::isconcrete($want) && $want == nqp::const::MVM_reg_void {
        MAST::InstructionList.new(MAST::VOID, nqp::const::MVM_reg_void);
    }
    else {
        my $res_reg := $qastcomp.regalloc.fresh_register(nqp::const::MVM_reg_obj);
        op_null($qastcomp.mast_frame, $res_reg);
        MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_obj)
    }
});
my $findmethodish := -> $qastcomp, $op {
    # Compile and decont the object.
    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $obj_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj), $op[0] );
    $regalloc.release_register($obj_mast.result_reg, nqp::const::MVM_reg_obj);
    my $decont_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_decont($frame, $decont_reg, $obj_mast.result_reg);

    # Load name and exceptional flag into registers.
    my int $exceptional := $op.op eq 'findmethod';
    my $name_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_str), $op[1] );
    my $ex_flag_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
    %core_op_generators{'const_i64'}($frame, $ex_flag_reg, $exceptional);

    # Do this dispatch.
    my $result_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
        [$op[0], $op[1], QAST::IVal.new( :value($exceptional) )],
        [MAST::InstructionList.new($result_reg, nqp::const::MVM_reg_obj),
        $name_mast,
        MAST::InstructionList.new($ex_flag_reg, nqp::const::MVM_reg_int64)]);
    op_dispatch_o($frame, $result_reg, 'lang-find-meth', $callsite_id,
        [$decont_reg, $name_mast.result_reg, $ex_flag_reg]);

    # Clean up and produce value.
    $regalloc.release_register($decont_reg, nqp::const::MVM_reg_obj);
    $regalloc.release_register($name_mast.result_reg, nqp::const::MVM_reg_str);
    if $op.op eq 'can' {
        # Want a boolean for if the result was non-null; reuse the int
        # register we already allocated.
        %core_op_generators{'isnull'}($frame, $ex_flag_reg, $result_reg);
        %core_op_generators{'not_i'}($frame, $ex_flag_reg, $ex_flag_reg);
        $regalloc.release_register($result_reg, nqp::const::MVM_reg_obj);
        MAST::InstructionList.new($ex_flag_reg, nqp::const::MVM_reg_int64)
    }
    else {
        # Want the method result.
        $regalloc.release_register($ex_flag_reg, nqp::const::MVM_reg_int64);
        MAST::InstructionList.new($result_reg, nqp::const::MVM_reg_obj)
    }
}
QAST::MASTOperations.add_core_op('findmethod', $findmethodish);
QAST::MASTOperations.add_core_op('tryfindmethod', $findmethodish);
QAST::MASTOperations.add_core_op('can', $findmethodish);
QAST::MASTOperations.add_core_op('decont', -> $qastcomp, $op {
    if nqp::elems($op.list) != 1 {
        nqp::die("The 'decont' op needs 1 operand, got " ~ nqp::elems($op.list));
    }
    my $regalloc := $qastcomp.regalloc;
    my $res_reg := $regalloc.fresh_o();
    my $expr := $qastcomp.as_mast($op[0], :want(nqp::const::MVM_reg_obj), :want-decont);
    op_decont($qastcomp.mast_frame, $res_reg, $expr.result_reg);
    $regalloc.release_register($expr.result_reg, nqp::const::MVM_reg_obj);
    MAST::InstructionList.new($res_reg, nqp::const::MVM_reg_obj)
});
QAST::MASTOperations.add_core_op('wantdecont', -> $qastcomp, $op {
    $qastcomp.as_mast($op[0], :want-decont)
});
QAST::MASTOperations.add_core_op('istrue', -> $qastcomp, $op {
    my $regalloc := $qastcomp.regalloc;
    my $obj_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj), $op[0] );
    my $decont_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_decont($qastcomp.mast_frame, $decont_reg, $obj_mast.result_reg);
    $regalloc.release_register($obj_mast.result_reg, nqp::const::MVM_reg_obj);
    my $result_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
    emit_object_boolify($qastcomp, $result_reg, $decont_reg);
    $regalloc.release_register($decont_reg, nqp::const::MVM_reg_obj);
    MAST::InstructionList.new($result_reg, nqp::const::MVM_reg_int64)
});
QAST::MASTOperations.add_core_op('isfalse', -> $qastcomp, $op {
    my $regalloc := $qastcomp.regalloc;
    my $frame    := $qastcomp.mast_frame;
    my $obj_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj), $op[0] );
    my $decont_reg := $regalloc.fresh_register(nqp::const::MVM_reg_obj);
    op_decont($frame, $decont_reg, $obj_mast.result_reg);
    $regalloc.release_register($obj_mast.result_reg, nqp::const::MVM_reg_obj);
    my $result_reg := $regalloc.fresh_register(nqp::const::MVM_reg_int64);
    emit_object_boolify($qastcomp, $result_reg, $decont_reg);
    $regalloc.release_register($decont_reg, nqp::const::MVM_reg_obj);
    %core_op_generators<not_i>($frame, $result_reg, $result_reg);
    MAST::InstructionList.new($result_reg, nqp::const::MVM_reg_int64)
});

sub add_bindattr_op($nqpop, $hintedop, $namedop, $want) {
    $hintedop := %core_op_generators{$hintedop};
    $namedop := %core_op_generators{$namedop};
    QAST::MASTOperations.add_core_op($nqpop, -> $qastcomp, $op {
        my $regalloc := $qastcomp.regalloc;
        my $frame    := $qastcomp.mast_frame;
        my $val_mast := $qastcomp.as_mast( :$want, $op[3] );
        my $obj_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj), $op[0] );
        my $type_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj),
            nqp::istype($op[1], QAST::WVal) && !nqp::isconcrete($op[1].value)
                ?? $op[1]
                !! QAST::Op.new( :op('decont'), $op[1] ));
        my int $hint := -1;
        my $name := $op[2];
        $name := $name[2] if nqp::istype($name, QAST::Want) && $name[1] eq 'Ss';
        if nqp::istype($name, QAST::SVal) {
            if nqp::istype($op[1], QAST::WVal) {
                $hint := nqp::hintfor($op[1].value, $name.value);
            }
            $hintedop($frame, $obj_mast.result_reg, $type_mast.result_reg,
                $name.value, $val_mast.result_reg, $hint);
        } else {
            my $name_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_str), $op[2] );
            $namedop($frame, $obj_mast.result_reg, $type_mast.result_reg,
                $name_mast.result_reg, $val_mast.result_reg);
            $regalloc.release_register($name_mast.result_reg, nqp::const::MVM_reg_str);
        }
        $regalloc.release_register($obj_mast.result_reg, nqp::const::MVM_reg_obj);
        $regalloc.release_register($type_mast.result_reg, nqp::const::MVM_reg_obj);
        MAST::InstructionList.new($val_mast.result_reg, $want)
    })
}

add_bindattr_op('bindattr',   'bindattr_o', 'bindattrs_o', nqp::const::MVM_reg_obj);
add_bindattr_op('bindattr_i', 'bindattr_i', 'bindattrs_i', nqp::const::MVM_reg_int64);
add_bindattr_op('bindattr_u', 'bindattr_u', 'bindattrs_u', nqp::const::MVM_reg_uint64);
add_bindattr_op('bindattr_n', 'bindattr_n', 'bindattrs_n', nqp::const::MVM_reg_num64);
add_bindattr_op('bindattr_s', 'bindattr_s', 'bindattrs_s', nqp::const::MVM_reg_str);

sub add_getattr_op($nqpop, $hintedop, $namedop, $want) {
    $hintedop := %core_op_generators{$hintedop};
    $namedop := %core_op_generators{$namedop};
    QAST::MASTOperations.add_core_op($nqpop, -> $qastcomp, $op {
        my $regalloc := $qastcomp.regalloc;
        my $frame    := $qastcomp.mast_frame;
        my $obj_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj), $op[0] );
        my $type_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj),
            nqp::istype($op[1], QAST::WVal) && !nqp::isconcrete($op[1].value)
                ?? $op[1]
                !! QAST::Op.new( :op('decont'), $op[1] ));
        my int $hint := -1;
        my $res_reg := $regalloc.fresh_register($want);
        my $name := $op[2];
        $name := $name[2] if nqp::istype($name, QAST::Want) && $name[1] eq 'Ss';
        if nqp::istype($name, QAST::SVal) {
            if nqp::istype($op[1], QAST::WVal) {
                $hint := nqp::hintfor($op[1].value, $name.value);
            }
            $hintedop($frame, $res_reg, $obj_mast.result_reg, $type_mast.result_reg,
                $name.value, $hint);
        } else {
            my $name_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_str), $op[2] );
            $namedop($frame, $res_reg, $obj_mast.result_reg, $type_mast.result_reg,
                $name_mast.result_reg);
            $regalloc.release_register($name_mast.result_reg, nqp::const::MVM_reg_str);
        }
        $regalloc.release_register($obj_mast.result_reg, nqp::const::MVM_reg_obj);
        $regalloc.release_register($type_mast.result_reg, nqp::const::MVM_reg_obj);
        MAST::InstructionList.new($res_reg, $want)
    })
}

add_getattr_op('getattr',   'getattr_o', 'getattrs_o', nqp::const::MVM_reg_obj);
add_getattr_op('getattr_i', 'getattr_i', 'getattrs_i', nqp::const::MVM_reg_int64);
add_getattr_op('getattr_u', 'getattr_u', 'getattrs_u', nqp::const::MVM_reg_uint64);
add_getattr_op('getattr_n', 'getattr_n', 'getattrs_n', nqp::const::MVM_reg_num64);
add_getattr_op('getattr_s', 'getattr_s', 'getattrs_s', nqp::const::MVM_reg_str);

add_getattr_op('getattrref_i', 'getattrref_i', 'getattrsref_i', nqp::const::MVM_reg_obj);
add_getattr_op('getattrref_u', 'getattrref_u', 'getattrsref_i', nqp::const::MVM_reg_obj);
add_getattr_op('getattrref_n', 'getattrref_n', 'getattrsref_n', nqp::const::MVM_reg_obj);
add_getattr_op('getattrref_s', 'getattrref_s', 'getattrsref_s', nqp::const::MVM_reg_obj);

QAST::MASTOperations.add_core_op('isinvokable', -> $qastcomp, $op {
    $qastcomp.as_mast(QAST::Op.new(
        :op('dispatch'),
        QAST::SVal.new( :value('lang-isinvokable') ),
        $op[0]
    ))
});

sub try_get_bind_scope($var) {
    if nqp::istype($var, QAST::Var) {
        my str $scope := $var.scope;
        if $scope eq 'attributeref' {
            return 'attribute';
        }
        elsif $scope eq 'lexicalref' {
            # Make sure we've got the lexical itself in scope to bind to.
            my $lex;
            my $lexref;
            my $outer := 0;
            my $block := $*BLOCK;
            my $name  := $var.name;
            while nqp::istype($block, BlockInfo) {
                last if $block.qast.ann('DYN_COMP_WRAPPER');
                $lex := $block.lexical($name);
                last if $lex;
                last if $block.lexicalref($name);
                $block := $block.outer;
                $outer++;
            }
            if $lex {
                return 'lexical';
            }
        }
    }
    ''
}
sub add_native_assign_op($op_name, $kind) {
    my $op_gen := %core_op_generators{$op_name};
    QAST::MASTOperations.add_core_op($op_name, -> $qastcomp, $op {
        my @operands := $op.list;
        unless nqp::elems(@operands) == 2 {
            nqp::die("The '$op' op needs 2 arguments, got " ~ nqp::elems(@operands));
        }
        my $target := @operands[0];
        if try_get_bind_scope($target) -> $bind_scope {
            # Can lower it to a bind instead.
            $op.op('bind');
            $target.scope($bind_scope);
            $qastcomp.as_mast($op)
        }
        else {
            # Really need to emit an assign.
            my $regalloc := $qastcomp.regalloc;
            my $target_mast := $qastcomp.as_mast( :want(nqp::const::MVM_reg_obj), $op[0] );
            my $value_mast  := $qastcomp.as_mast( :want($kind), $op[1] );
            $op_gen($qastcomp.mast_frame, $target_mast.result_reg, $value_mast.result_reg);
            $regalloc.release_register($value_mast.result_reg, $kind);
            MAST::InstructionList.new($target_mast.result_reg, nqp::const::MVM_reg_obj)
        }
    })
}
add_native_assign_op('assign_i', nqp::const::MVM_reg_int64);
add_native_assign_op('assign_u', nqp::const::MVM_reg_uint64);
add_native_assign_op('assign_n', nqp::const::MVM_reg_num64);
add_native_assign_op('assign_s', nqp::const::MVM_reg_str);

QAST::MASTOperations.add_core_op('locallifetime', -> $qastcomp, $op {
    # TODO: take advantage of this info for code-gen, if possible.
    $qastcomp.as_mast($op[0], :want($*WANT))
});

# code object related opcodes
# XXX explicit takeclosure will go away under new model; for now, no-op it.
QAST::MASTOperations.add_core_op('takeclosure', -> $qastcomp, $op {
    unless nqp::elems($op) == 1 {
        nqp::die("The 'takeclosure' op needs 1 argument, got "
            ~ nqp::elems($op));
    }
    $qastcomp.as_mast($op[0])
});

# language/compiler ops
QAST::MASTOperations.add_core_op('hllize', -> $qastcomp, $op {
    # desugar into nqp::dispatch('lang-hllize', $op[0]);
    $qastcomp.as_mast(
        QAST::Op.new( :op('dispatch'), QAST::SVal.new(:value('lang-hllize')), $op[0] )
    )
});
QAST::MASTOperations.add_core_op('hllizefor', -> $qastcomp, $op {
    # desugar into nqp::dispatch('lang-hllize', $op[0], $op[1]);
    $qastcomp.as_mast(
        QAST::Op.new( :op('dispatch'), QAST::SVal.new(:value('lang-hllize')), $op[0], $op[1] )
    )
});

# native call ops
QAST::MASTOperations.add_core_op('nativecall', -> $qastcomp, $op {
    proto decont_all(@args) {
        my int $i := 0;
        my int $n := nqp::elems(@args);
        my $obj;
        while $i < $n {
            $obj := nqp::atpos(@args, $i);
            unless nqp::iscont_i($obj) || nqp::iscont_n($obj) || nqp::iscont_s($obj) {
                nqp::bindpos(@args, $i, nqp::can($obj, 'cstr')
                    ?? nqp::decont($obj.cstr())
                    !! nqp::decont($obj));
            }
            $i++;
        }
        @args
    }
    $qastcomp.as_mast(QAST::VM.new(
        :moarop('nativecallinvoke'),
        $op[0], $op[1],
        QAST::Op.new(
            :op('call'),
            QAST::WVal.new( :value(&decont_all) ),
            $op[2]
        )));
});

sub push_op($frame, str $op, *@args) {
    MAST::Op.new_with_operand_array(:$frame, :$op, @args );
}

QAST::MASTOperations.add_core_op('js', -> $qastcomp, $op {
    $qastcomp.as_mast(QAST::Op.new( :op('die'), QAST::SVal.new( :value('Running JS NYI on MoarVM') )))
});

# Basic op mappings; to avoid having a load of different callsites to build at
# startup, we initialize these from constants in a loop, except for a handful
# that have unusual setup (combinations of result and decont).

my constant SIMPLE_OP_MAPPINGS := nqp::list_s(
    'die', 'die',
    'die_s', 'die',
    'exception', 'exception',
    'getextype', 'getexcategory',
    'getpayload', 'getexpayload',
    'getmessage', 'getexmessage',
    'newexception', 'newexception',
    'backtracestrings', 'backtracestrings',
    'backtrace', 'backtrace',
    'throw', 'throwdyn',
    'rethrow', 'rethrow',
    'resume', 'resume',
    'lastexpayload', 'lastexpayload',
    'throwextype', 'throwcatdyn',
    'lexprimspec', 'lexprimspec',
    'captureposelems', 'captureposelems',
    'captureposarg', 'captureposarg',
    'captureposarg_i', 'captureposarg_i',
    'captureposarg_u', 'captureposarg_u',
    'captureposarg_n', 'captureposarg_n',
    'captureposarg_s', 'captureposarg_s',
    'captureposprimspec', 'captureposprimspec',
    'captureexistsnamed', 'captureexistsnamed',
    'capturehasnameds', 'capturehasnameds',
    'capturenamedshash', 'capturenamedshash',
    'objprimspec', 'objprimspec',
    'objprimbits', 'objprimbits',
    'objprimunsigned', 'objprimunsigned',
    'assertparamcheck', 'assertparamcheck',
    'bindcomplete', 'bindcomplete',
    'positional_get', 'atpos_o',
    'associative_get', 'atkey_o',
    'stat', 'stat',
    'stat_time', 'stat_time',
    'lstat', 'lstat',
    'lstat_time', 'lstat_time',
    'open', 'open_fh',
    'filereadable', 'filereadable',
    'filewritable', 'filewritable',
    'fileexecutable', 'fileexecutable',
    'flushfh', 'sync_fh',
    'getstdin', 'getstdin',
    'getstdout', 'getstdout',
    'getstderr', 'getstderr',
    'tellfh', 'tell_fh',
    'seekfh', 'seek_fh',
    'lockfh', 'lock_fh',
    'unlockfh', 'unlock_fh',
    'eoffh', 'eof_fh',
    'isttyfh', 'istty_fh',
    'filenofh', 'fileno_fh',
    'socket', 'socket',
    'accept', 'accept_sk',
    'getport', 'getport_sk',
    'cwd', 'cwd',
    'symlink', 'symlink',
    'readlink', 'readlink',
    'link', 'link',
    'opendir', 'open_dir',
    'nextfiledir', 'read_dir',
    'closedir', 'close_dir',
    'time', 'time',
    'add_i', 'add_i',
    'add_I', 'add_I',
    'add_n', 'add_n',
    'sub_i', 'sub_i',
    'sub_I', 'sub_I',
    'sub_n', 'sub_n',
    'mul_i', 'mul_i',
    'mul_I', 'mul_I',
    'mul_n', 'mul_n',
    'div_i', 'div_i',
    'div_I', 'div_I',
    'div_In', 'div_In',
    'div_n', 'div_n',
    'mod_i', 'mod_i',
    'mod_I', 'mod_I',
    'expmod_I', 'expmod_I',
    'mod_n', 'mod_n',
    'neg_i', 'neg_i',
    'neg_I', 'neg_I',
    'neg_n', 'neg_n',
    'pow_i', 'pow_i',
    'pow_I', 'pow_I',
    'pow_n', 'pow_n',
    'abs_i', 'abs_i',
    'abs_I', 'abs_I',
    'abs_n', 'abs_n',
    'ceil_n', 'ceil_n',
    'floor_n', 'floor_n',
    'sqrt_n', 'sqrt_n',
    'base_I', 'base_I',
    'isbig_I', 'isbig_I',
    'radix', 'radix',
    'radix_I', 'radix_I',
    'log_n', 'log_n',
    'exp_n', 'exp_n',
    'isnanorinf', 'isnanorinf',
    'inf', 'inf',
    'neginf', 'neginf',
    'nan', 'nan',
    'isprime_I', 'isprime_I',
    'rand_I', 'rand_I',
    'tostr_I', 'coerce_Is',
    'fromstr_I', 'coerce_sI',
    'tonum_I', 'coerce_In',
    'fromnum_I', 'coerce_nI',
    'fromI_I', 'coerce_II',
    'coerce_in', 'coerce_in',
    'coerce_ni', 'coerce_ni',
    'coerce_ns', 'coerce_ns',
    'coerce_ui', 'coerce_ui',
    'coerce_iu', 'coerce_iu',
    'coerce_is', 'coerce_is',
    'coerce_us', 'coerce_us',
    'coerce_si', 'coerce_si',
    'sin_n', 'sin_n',
    'asin_n', 'asin_n',
    'cos_n', 'cos_n',
    'acos_n', 'acos_n',
    'tan_n', 'tan_n',
    'atan_n', 'atan_n',
    'atan2_n', 'atan2_n',
    'asin_n', 'asin_n',
    'sinh_n', 'sinh_n',
    'cosh_n', 'cosh_n',
    'tanh_n', 'tanh_n',
    'gcd_i', 'gcd_i',
    'gcd_I', 'gcd_I',
    'lcm_i', 'lcm_i',
    'lcm_I', 'lcm_I',
    'chars', 'chars',
    'codes', 'codes_s',
    'uc', 'uc',
    'lc', 'lc',
    'tc', 'tc',
    'fc', 'fc',
    'x', 'repeat_s',
    'iscclass', 'iscclass',
    'findcclass', 'findcclass',
    'findnotcclass', 'findnotcclass',
    'escape', 'escape',
    'replace', 'replace',
    'flip', 'flip',
    'concat', 'concat_s',
    'join', 'join',
    'split', 'split',
    'chr', 'chr',
    'ordfirst', 'ordfirst',
    'ordat', 'ordat',
    'ordbaseat', 'ordbaseat',
    'indexfrom', 'index_s',
    'indexic', 'indexic_s',
    'indexim', 'indexim_s',
    'indexicim', 'indexicim_s',
    'rindexfrom', 'rindexfrom',
    'substr_s', 'substr_s',
    'codepointfromname', 'getcpbyname',
    'getcp_s', 'getcp_s',
    'encode', 'encode',
    'encodeconf', 'encodeconf',
    'encoderep', 'encoderep',
    'encoderepconf', 'encoderepconf',
    'decode', 'decode',
    'decodeconf', 'decodeconf',
    'decoderepconf', 'decoderepconf',
    'strfromcodes', 'strfromcodes',
    'decodertakechars', 'decodertakechars',
    'decodertakecharseof', 'decodertakecharseof',
    'decodertakeallchars', 'decodertakeallchars',
    'decodertakeavailablechars', 'decodertakeavailablechars',
    'decodertakeline', 'decodertakeline',
    'decoderbytesavailable', 'decoderbytesavailable',
    'decodertakebytes', 'decodertakebytes',
    'decoderempty', 'decoderempty',
    'indexingoptimized', 'indexingoptimized',
    'eqat', 'eqat_s',
    'eqatic', 'eqatic_s',
    'eqatim', 'eqatim_s',
    'eqaticim', 'eqaticim_s',
    'unipropcode', 'unipropcode',
    'unipvalcode', 'unipvalcode',
    'hasuniprop', 'hasuniprop',
    'getuniname', 'getuniname',
    'getuniprop_str', 'getuniprop_str',
    'getuniprop_bool', 'getuniprop_bool',
    'getuniprop_int', 'getuniprop_int',
    'matchuniprop', 'matchuniprop',
    'sha1', 'sha1',
    'createsc', 'createsc',
    'scgetobj', 'scgetobj',
    'scgethandle', 'scgethandle',
    'scgetdesc', 'scgetdesc',
    'scgetobjidx', 'scgetobjidx',
    'getobjsc', 'getobjsc',
    'scobjcount', 'scobjcount',
    'serialize', 'serialize',
    'scwbdisable', 'scwbdisable',
    'scwbenable', 'scwbenable',
    'popcompsc', 'popcompsc',
    'bitor_i', 'bor_i',
    'bitxor_i', 'bxor_i',
    'bitand_i', 'band_i',
    'bitshiftl_i', 'blshift_i',
    'bitshiftr_i', 'brshift_i',
    'bitneg_i', 'bnot_i',
    'bitneg_u', 'bnot_u',
    'bitor_I', 'bor_I',
    'bitxor_I', 'bxor_I',
    'bitand_I', 'band_I',
    'bitneg_I', 'bnot_I',
    'bitshiftl_I', 'blshift_I',
    'bitshiftr_I', 'brshift_I',
    'bitor_s', 'bitor_s',
    'bitxor_s', 'bitxor_s',
    'bitand_s', 'bitand_s',
    'cmp_i', 'cmp_i',
    'iseq_i', 'eq_i',
    'isne_i', 'ne_i',
    'islt_i', 'lt_i',
    'isle_i', 'le_i',
    'isgt_i', 'gt_i',
    'isge_i', 'ge_i',
    'cmp_u', 'cmp_u',
    'iseq_u', 'eq_u',
    'isne_u', 'ne_u',
    'islt_u', 'lt_u',
    'isle_u', 'le_u',
    'isgt_u', 'gt_u',
    'isge_u', 'ge_u',
    'cmp_n', 'cmp_n',
    'not_i', 'not_i',
    'iseq_n', 'eq_n',
    'isne_n', 'ne_n',
    'islt_n', 'lt_n',
    'isle_n', 'le_n',
    'isgt_n', 'gt_n',
    'isge_n', 'ge_n',
    'cmp_s', 'cmp_s',
    'unicmp_s', 'unicmp_s',
    'strfromname', 'strfromname',
    'iseq_s', 'eq_s',
    'isne_s', 'ne_s',
    'islt_s', 'lt_s',
    'isle_s', 'le_s',
    'isgt_s', 'gt_s',
    'isge_s', 'ge_s',
    'bool_I', 'bool_I',
    'cmp_I', 'cmp_I',
    'iseq_I', 'eq_I',
    'isne_I', 'ne_I',
    'islt_I', 'lt_I',
    'isle_I', 'le_I',
    'isgt_I', 'gt_I',
    'isge_I', 'ge_I',
    'atpos', 'atpos_o',
    'atpos_i', 'atpos_i',
    'atpos_u', 'atpos_u',
    'atpos_n', 'atpos_n',
    'atpos_s', 'atpos_s',
    'atposref_i', 'atposref_i',
    'atposref_u', 'atposref_u',
    'atposref_n', 'atposref_n',
    'atposref_s', 'atposref_s',
    'atpos2d', 'atpos2d_o',
    'atpos2d_i', 'atpos2d_i',
    'atpos2d_u', 'atpos2d_u',
    'atpos2d_n', 'atpos2d_n',
    'atpos2d_s', 'atpos2d_s',
    'atpos3d', 'atpos3d_o',
    'atpos3d_i', 'atpos3d_i',
    'atpos3d_u', 'atpos3d_u',
    'atpos3d_n', 'atpos3d_n',
    'atpos3d_s', 'atpos3d_s',
    'atposnd', 'atposnd_o',
    'atposnd_i', 'atposnd_i',
    'atposnd_u', 'atposnd_u',
    'atposnd_n', 'atposnd_n',
    'atposnd_s', 'atposnd_s',
    'multidimref_i', 'multidimref_i',
    'multidimref_u', 'multidimref_u',
    'multidimref_n', 'multidimref_n',
    'multidimref_s', 'multidimref_s',
    'atkey', 'atkey_o',
    'atkey_i', 'atkey_i',
    'atkey_u', 'atkey_u',
    'atkey_n', 'atkey_n',
    'atkey_s', 'atkey_s',
    'writeint', 'writeint',
    'writeuint', 'writeuint',
    'writenum', 'writenum',
    'readint', 'readint',
    'readuint', 'readuint',
    'readnum', 'readnum',
    'existskey', 'existskey',
    'deletekey', 'deletekey',
    'elems', 'elems',
    'dimensions', 'dimensions',
    'numdimensions', 'numdimensions',
    'existspos', 'existspos',
    'pop', 'pop_o',
    'pop_i', 'pop_i',
    'pop_n', 'pop_n',
    'pop_s', 'pop_s',
    'shift', 'shift_o',
    'shift_i', 'shift_i',
    'shift_n', 'shift_n',
    'shift_s', 'shift_s',
    'slice', 'slice',
    'iterator', 'iter',
    'iterkey_s', 'iterkey_s',
    'iterval', 'iterval',
    'null_s', 'null_s',
    'knowhow', 'knowhow',
    'knowhowattr', 'knowhowattr',
    'bootint', 'bootint',
    'bootnum', 'bootnum',
    'bootstr', 'bootstr',
    'bootarray', 'bootarray',
    'bootintarray', 'bootintarray',
    'bootnumarray', 'bootnumarray',
    'bootstrarray', 'bootstrarray',
    'boothash', 'boothash',
    'hlllist', 'hlllist',
    'hllhash', 'hllhash',
    'create', 'create',
    'iscont', 'iscont',
    'iscont_i', 'iscont_i',
    'iscont_u', 'iscont_u',
    'iscont_n', 'iscont_n',
    'iscont_s', 'iscont_s',
    'isrwcont', 'isrwcont',
    'decont', 'decont',
    'decont_i', 'decont_i',
    'decont_n', 'decont_n',
    'decont_s', 'decont_s',
    'decont_u', 'decont_u',
    'isnull', 'isnull',
    'isnull_s', 'isnull_s',
    'eqaddr', 'eqaddr',
    'hintfor', 'hintfor',
    'box_i', 'box_i',
    'box_n', 'box_n',
    'box_s', 'box_s',
    'box_u', 'box_u',
    'hllboxtype_i', 'hllboxtype_i',
    'hllboxtype_n', 'hllboxtype_n',
    'hllboxtype_s', 'hllboxtype_s',
    'composetype', 'composetype',
    'what_nd', 'getwhat',
    'isconcrete_nd', 'isconcrete',
    'clone_nd', 'clone',
    'how_nd', 'gethow',
    'istype_nd', 'istype',
    'getlex', 'getlex_no',
    'getlex_i', 'getlex_ni',
    'getlex_n', 'getlex_nn',
    'getlex_s', 'getlex_ns',
    'getlexref_i', 'getlexref_ni',
    'getlexref_n', 'getlexref_nn',
    'getlexref_s', 'getlexref_ns',
    'getlexdyn', 'getdynlex',
    'bindlexdyn', 'binddynlex',
    'getlexouter', 'getlexouter',
    'getlexrel', 'getlexrel',
    'getlexreldyn', 'getlexreldyn',
    'getlexrelcaller', 'getlexrelcaller',
    'getlexcaller', 'getlexcaller',
    'getcodeobj', 'getcodeobj',
    'getcodename', 'getcodename',
    'freshcoderef', 'freshcoderef',
    'iscoderef', 'iscoderef',
    'markcodestatic', 'markcodestatic',
    'markcodestub', 'markcodestub',
    'getstaticcode', 'getstaticcode',
    'getcodecuid', 'getcodecuid',
    'getcomp', 'getcomp',
    'bindcomp', 'bindcomp',
    'gethllsym', 'gethllsym',
    'getcurhllsym', 'getcurhllsym',
    'bindcurhllsym', 'bindcurhllsym',
    'sethllconfig', 'sethllconfig',
    'loadbytecode', 'loadbytecode',
    'loadbytecodebuffer', 'loadbytecodebuffer',
    'buffertocu', 'buffertocu',
    'loadbytecodefh', 'loadbytecodefh',
    'gettypehllrole', 'gettypehllrole',
    'usecompileehllconfig', 'usecompileehllconfig',
    'usecompilerhllconfig', 'usecompilerhllconfig',
    'nfafromstatelist', 'nfafromstatelist',
    'nfarunproto', 'nfarunproto',
    'initnativecall', 'no_op',
    'buildnativecall', 'nativecallbuild',
    'nativecallinvoke', 'nativecallinvoke',
    'nativecallcast', 'nativecallcast',
    'nativecallglobal', 'nativecallglobal',
    'uname', 'uname',
    'getsignals', 'getsignals',
    'getenvhash', 'getenvhash',
    'getpid', 'getpid',
    'getppid', 'getppid',
    'gethostname', 'gethostname',
    'rand_i', 'rand_i',
    'rand_n', 'randscale_n',
    'execname', 'execname',
    'getrusage', 'getrusage',
    'newthread', 'newthread',
    'threadid', 'threadid',
    'threadyield', 'threadyield',
    'currentthread', 'currentthread',
    'semacquire', 'semacquire',
    'semtryacquire', 'semtryacquire',
    'semrelease', 'semrelease',
    'queuepoll', 'queuepoll',
    'cpucores', 'cpucores',
    'freemem', 'freemem',
    'totalmem', 'totalmem',
    'threadlockcount', 'threadlockcount',
    'getlockcondvar', 'getlockcondvar',
    'setthreadname', 'setthreadname',
    'timer', 'timer',
    'signal', 'signal',
    'watchfile', 'watchfile',
    'asyncconnect', 'asyncconnect',
    'asynclisten', 'asynclisten',
    'asyncudp', 'asyncudp',
    'asyncwritebytes', 'asyncwritebytes',
    'asyncwritebytesto', 'asyncwritebytesto',
    'asyncreadbytes', 'asyncreadbytes',
    'spawnprocasync', 'spawnprocasync',
    'cas_i', 'cas_i',
    'atomicinc_i', 'atomicinc_i',
    'atomicdec_i', 'atomicdec_i',
    'atomicadd_i', 'atomicadd_i',
    'atomicload', 'atomicload_o',
    'atomicload_i', 'atomicload_i',
    'barrierfull', 'barrierfull',
    'casattr', 'casattr_o',
    'iscompunit', 'iscompunit',
    'compunitmainline', 'compunitmainline',
    'compunitcodes', 'compunitcodes',
    'backendconfig', 'backendconfig',
    'continuationreset', 'continuationreset',
    'continuationcontrol', 'continuationcontrol',
    'continuationinvoke', 'continuationinvoke',
    'mvmendprofile', 'endprofile',
    'force_gc', 'force_gc',
    'coveragecontrol', 'coveragecontrol',
    'installconfprog', 'installconfprog',
    'vmeventsubscribe', 'vmeventsubscribe',
    'hllbool', 'hllbool',
    'hllboolfor', 'hllboolfor',
    'serializetobuf', 'serializetobuf',
    'decodelocaltime', 'decodelocaltime',
    'fork', 'fork',
);
my int $i := 0;
my int $n := nqp::elems(SIMPLE_OP_MAPPINGS);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS, $i + 1));
    $i := $i + 2;
}

my constant SIMPLE_OP_MAPPINGS_RESULT_ZERO := nqp::list_s(
    'say', 'say',
    'print', 'print',
    'closefh', 'close_fh',
    'connect', 'connect_sk',
    'bindsock', 'bind_sk',
    'setbuffersizefh', 'setbuffersize_fh',
    'chmod', 'chmod_f',
    'chown', 'chown_f',
    'unlink', 'delete_f',
    'rmdir', 'rmdir',
    'chdir', 'chdir',
    'mkdir', 'mkdir',
    'rename', 'rename_f',
    'copy', 'copy_f',
    'decoderconfigure', 'decoderconfigure',
    'decodersetlineseps', 'decodersetlineseps',
    'setobjsc', 'setobjsc',
    'deserialize', 'deserialize',
    'pushcompsc', 'pushcompsc',
    'neverrepossess', 'neverrepossess',
    'scdisclaim', 'scdisclaim',
    'setelems', 'setelemspos',
    'setdimensions', 'setdimensions',
    'splice', 'splice',
    'setdebugtypename', 'setdebugtypename',
    'setcodeobj', 'setcodeobj',
    'setcodename', 'setcodename',
    'forceouterctx', 'forceouterctx',
    'captureinnerlex', 'captureinnerlex',
    'settypehll', 'settypehll',
    'settypehllrole', 'settypehllrole',
    'nfarunalt', 'nfarunalt',
    'exit', 'exit',
    'sleep', 'sleep',
    'srand', 'srand',
    'threadrun', 'threadrun',
    'threadjoin', 'threadjoin',
    'lock', 'lock',
    'unlock', 'unlock',
    'condwait', 'condwait',
    'condsignalone', 'condsignalone',
    'condsignalall', 'condsignalall',
    'permit', 'permit',
    'cancel', 'cancel',
    'cancelnotify', 'cancelnotify',
    'mvmstartprofile', 'startprofile',
);
$i := 0;
$n := nqp::elems(SIMPLE_OP_MAPPINGS_RESULT_ZERO);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_ZERO, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_ZERO, $i + 1),
        0);
    $i := $i + 2;
}

my constant SIMPLE_OP_MAPPINGS_RESULT_ONE := nqp::list_s(
    'setextype', 'bindexcategory',
    'setpayload', 'bindexpayload',
    'setmessage', 'bindexmessage',
    'readfh', 'read_fhb',
    'writefh', 'write_fhb',
    'decoderaddbytes', 'decoderaddbytes',
    'scsetdesc', 'scsetdesc',
    'push', 'push_o',
    'push_i', 'push_i',
    'push_n', 'push_n',
    'push_s', 'push_s',
    'unshift', 'unshift_o',
    'unshift_i', 'unshift_i',
    'unshift_n', 'unshift_n',
    'unshift_s', 'unshift_s',
    'bindlex', 'bindlex_no',
    'bindlex_i', 'bindlex_ni',
    'bindlex_n', 'bindlex_nn',
    'bindlex_s', 'bindlex_ns',
    'killprocasync', 'killprocasync',
    'atomicstore_i', 'atomicstore_i',
);
$i := 0;
$n := nqp::elems(SIMPLE_OP_MAPPINGS_RESULT_ONE);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_ONE, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_ONE, $i + 1),
        1);
    $i := $i + 2;
}

my constant SIMPLE_OP_MAPPINGS_RESULT_TWO := nqp::list_s(
    'positional_bind', 'bindpos_o',
    'associative_bind', 'bindkey_o',
    'encodefromcodes', 'encodefromcodes',
    'normalizecodes', 'normalizecodes',
    'strtocodes', 'strtocodes',
    'scsetobj', 'scsetobj',
    'scsetcode', 'scsetcode',
    'bindpos', 'bindpos_o',
    'bindpos_i', 'bindpos_i',
    'bindpos_u', 'bindpos_u',
    'bindpos_n', 'bindpos_n',
    'bindpos_s', 'bindpos_s',
    'bindposnd', 'bindposnd_o',
    'bindposnd_i', 'bindposnd_i',
    'bindposnd_u', 'bindposnd_u',
    'bindposnd_n', 'bindposnd_n',
    'bindposnd_s', 'bindposnd_s',
    'bindkey', 'bindkey_o',
    'bindkey_i', 'bindkey_i',
    'bindkey_n', 'bindkey_n',
    'bindkey_s', 'bindkey_s',
    'bindhllsym', 'bindhllsym',
);
$i := 0;
$n := nqp::elems(SIMPLE_OP_MAPPINGS_RESULT_TWO);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_TWO, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_TWO, $i + 1),
        2);
    $i := $i + 2;
}

my constant SIMPLE_OP_MAPPINGS_RESULT_THREE := nqp::list_s(
    'decodetocodes', 'decodetocodes',
    'encodenorm', 'encodenorm',
    'bindpos2d', 'bindpos2d_o',
    'bindpos2d_i', 'bindpos2d_i',
    'bindpos2d_u', 'bindpos2d_u',
    'bindpos2d_n', 'bindpos2d_n',
    'bindpos2d_s', 'bindpos2d_s',
    'atomicbindattr', 'atomicbindattr_o',
);
$i := 0;
$n := nqp::elems(SIMPLE_OP_MAPPINGS_RESULT_THREE);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_THREE, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_THREE, $i + 1),
        3);
    $i := $i + 2;
}

my constant SIMPLE_OP_MAPPINGS_RESULT_FOUR := nqp::list_s(
    'bindpos3d', 'bindpos3d_o',
    'bindpos3d_i', 'bindpos3d_i',
    'bindpos3d_u', 'bindpos3d_u',
    'bindpos3d_n', 'bindpos3d_n',
    'bindpos3d_s', 'bindpos3d_s',
);
$i := 0;
$n := nqp::elems(SIMPLE_OP_MAPPINGS_RESULT_FOUR);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_FOUR, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_RESULT_FOUR, $i + 1),
        4);
    $i := $i + 2;
}

my constant SIMPLE_OP_MAPPINGS_NO_INLINE := nqp::list_s(
    'throwpayloadlex', 'throwpayloadlex',
    'throwpayloadlexcaller', 'throwpayloadlexcaller',
    'ctx', 'ctx',
    'ctxnt', 'ctxnt',
    'curlexpad', 'ctxnt',
    'ctxouter', 'ctxouter',
    'ctxcaller', 'ctxcaller',
    'ctxcode', 'ctxcode',
    'ctxouterskipthunks', 'ctxouterskipthunks',
    'ctxcallerskipthunks', 'ctxcallerskipthunks',
    'curcode', 'curcode',
    'callercode', 'callercode',
    'ctxlexpad', 'ctxlexpad',
    'usecapture', 'usecapture',
    'savecapture', 'savecapture',
);
$i := 0;
$n := nqp::elems(SIMPLE_OP_MAPPINGS_NO_INLINE);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_NO_INLINE, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_NO_INLINE, $i + 1),
        :!inlinable);
    $i := $i + 2;
}

my constant SIMPLE_OP_MAPPINGS_DECONT_ZERO := nqp::list_s(
    'isint', 'isint',
    'isnum', 'isnum',
    'isstr', 'isstr',
    'islist', 'islist',
    'ishash', 'ishash',
    'what', 'getwhat',
    'how', 'gethow',
    'who', 'getwho',
    'where', 'getwhere',
    'objectid', 'objectid',
    'setwho', 'setwho',
    'clone', 'clone',
    'isconcrete', 'isconcrete',
    'unbox_i', 'unbox_i',
    'unbox_n', 'unbox_n',
    'unbox_s', 'unbox_s',
    'unbox_u', 'unbox_u',
    'reprname', 'reprname',
    'newtype', 'newtype',
    'newmixintype', 'newmixintype',
    'typeparameterized', 'typeparameterized',
    'typeparameters', 'typeparameters',
    'typeparameterat', 'typeparameterat',
    'defined', 'isconcrete',
    'nativecallsizeof', 'nativecallsizeof',
    'getcodelocation', 'getcodelocation',
);
$i := 0;
$n := nqp::elems(SIMPLE_OP_MAPPINGS_DECONT_ZERO);
while $i < $n {
    QAST::MASTOperations.add_core_moarop_mapping(
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_DECONT_ZERO, $i),
        nqp::atpos_s(SIMPLE_OP_MAPPINGS_DECONT_ZERO, $i + 1),
        :decont(0));
    $i := $i + 2;
}

QAST::MASTOperations.add_core_moarop_mapping('rebless', 'rebless', :decont(0, 1));
QAST::MASTOperations.add_core_moarop_mapping('istype', 'istype', :decont(0, 1));
QAST::MASTOperations.add_core_moarop_mapping('attrinited', 'attrinited', :decont(1));
QAST::MASTOperations.add_core_moarop_mapping('setboolspec', 'setboolspec', 0, :decont(0));
QAST::MASTOperations.add_core_moarop_mapping('settypecache', 'settypecache', 0, :decont(0));
QAST::MASTOperations.add_core_moarop_mapping('settypecheckmode', 'settypecheckmode', 0, :decont(0));
QAST::MASTOperations.add_core_moarop_mapping('settypefinalize', 'settypefinalize', 0, :decont(0));
QAST::MASTOperations.add_core_moarop_mapping('setcontspec', 'setcontspec', 0, :decont(0));
QAST::MASTOperations.add_core_moarop_mapping('assign', 'assign', 0, :decont(1));
QAST::MASTOperations.add_core_moarop_mapping('assignunchecked', 'assignunchecked', 0, :decont(1));
QAST::MASTOperations.add_core_moarop_mapping('setparameterizer', 'setparameterizer', 0, :decont(0, 1));
QAST::MASTOperations.add_core_moarop_mapping('parameterizetype', 'parameterizetype', :decont(0, 1));
QAST::MASTOperations.add_core_moarop_mapping('nativecallrefresh', 'nativecallrefresh', 0, :decont(0));
QAST::MASTOperations.add_core_moarop_mapping('cas', 'cas_o', :decont(1,2));
QAST::MASTOperations.add_core_moarop_mapping('atomicstore', 'atomicstore_o', 1, :decont(1));

# vim: ft=perl6 expandtab sw=4
