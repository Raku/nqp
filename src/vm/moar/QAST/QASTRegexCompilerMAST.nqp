use QASTNode;
use NQPHLL;
use MASTNodes;
use MASTOps;
use QRegex;

my int $MVM_reg_void            := 0; # not really a register; just a result/return kind marker
my int $MVM_reg_int8            := 1;
my int $MVM_reg_int16           := 2;
my int $MVM_reg_int32           := 3;
my int $MVM_reg_int64           := 4;
my int $MVM_reg_num32           := 5;
my int $MVM_reg_num64           := 6;
my int $MVM_reg_str             := 7;
my int $MVM_reg_obj             := 8;
my int $MVM_reg_uint8           := 17;
my int $MVM_reg_uint16          := 18;
my int $MVM_reg_uint32          := 19;
my int $MVM_reg_uint64          := 20;

my @Condition-op-kinds := nqp::list(
    nqp::null,  'if_i',     # $MVM_reg_void,   $MVM_reg_int8
    'if_i',     'if_i',     # $MVM_reg_int16,  $MVM_reg_int32
    'if_i',     'if_n',     # $MVM_reg_int64,  $MVM_reg_num32
    'if_n',     'if_s',     # $MVM_reg_num64,  $MVM_reg_str
    nqp::null,              # $MVM_reg_obj requires special generation
    nqp::null, nqp::null, nqp::null, nqp::null,
    nqp::null, nqp::null, nqp::null, nqp::null,
    'if_i',                 # $MVM_reg_uint8
    'if_i',     'if_i',     # $MVM_reg_uint16, $MVM_reg_uint32
    'if_i',                 # $MVM_reg_uint64
);
my @Negated-condition-op-kinds := nqp::list(
    nqp::null,  'unless_i', # $MVM_reg_void,   $MVM_reg_int8
    'unless_i', 'unless_i', # $MVM_reg_int16,  $MVM_reg_int32
    'unless_i', 'unless_n', # $MVM_reg_int64,  $MVM_reg_num32
    'unless_n', 'unless_s', # $MVM_reg_num64,  $MVM_reg_str
    nqp::null,              # $MVM_reg_obj requires special generation
    nqp::null, nqp::null, nqp::null, nqp::null,
    nqp::null, nqp::null, nqp::null, nqp::null,
    'unless_i', 'unless_i', # $MVM_reg_uint8,  $MVM_reg_uint16
    'unless_i', 'unless_i', # $MVM_reg_uint32, $MVM_reg_uint64
);
my @Full-width-coerce-to := nqp::list( # 0 means we don't need any coersion
    0,              $MVM_reg_int64, # $MVM_reg_void,   $MVM_reg_int8
    $MVM_reg_int64, $MVM_reg_int64, # $MVM_reg_int16,  $MVM_reg_int32
    0,              $MVM_reg_num64, # $MVM_reg_int64,  $MVM_reg_num32
    0,              0,              # $MVM_reg_num64,  $MVM_reg_str
    0,                              # $MVM_reg_obj
    0, 0, 0, 0,   0, 0, 0, 0,
    $MVM_reg_int64, $MVM_reg_int64, # $MVM_reg_uint8,  $MVM_reg_uint16
    $MVM_reg_int64, $MVM_reg_int64, # $MVM_reg_uint32, $MVM_reg_uint64
);

my %core_op_generators := MAST::Ops.WHO<%generators>;

my &op_dispatch_v := %core_op_generators<dispatch_v>;
my &op_dispatch_i := %core_op_generators<dispatch_i>;
my &op_dispatch_u := %core_op_generators<dispatch_u>;
my &op_dispatch_n := %core_op_generators<dispatch_n>;
my &op_dispatch_s := %core_op_generators<dispatch_s>;
my &op_dispatch_o := %core_op_generators<dispatch_o>;
sub emit_dispatch_instruction($qastcomp, str $dispatcher_name, uint $callsite_id,
        @arg_idxs, $returns) {
    # Emit the correct dispatch instruction, allocating a result register if
    # not in void context.
    my $res_reg;
    my int $res_kind;
    my $frame := $qastcomp.mast_frame;
    if nqp::defined($*WANT) && $*WANT == $MVM_reg_void {
        $res_reg := MAST::VOID;
        $res_kind := $MVM_reg_void;
        op_dispatch_v($frame, $dispatcher_name, $callsite_id, @arg_idxs);
    }
    else {
        $res_kind := $qastcomp.type_to_register_kind($returns);
        my int $primspec := nqp::objprimspec($returns);
        if $primspec == 0 {
            $res_reg := $qastcomp.regalloc.fresh_register($res_kind);
            op_dispatch_o($frame, $res_reg, $dispatcher_name, $callsite_id, @arg_idxs);
        }
        elsif $primspec == 1 {
            if $res_kind == $MVM_reg_int64 {
                $res_reg := $qastcomp.regalloc.fresh_register($res_kind);
                op_dispatch_i($frame, $res_reg, $dispatcher_name, $callsite_id, @arg_idxs);
            }
            else {
                my $temp_reg := $qastcomp.regalloc.fresh_register($MVM_reg_int64);
                op_dispatch_i($frame, $temp_reg, $dispatcher_name, $callsite_id, @arg_idxs);
                $res_reg := $qastcomp.coerce(
                    MAST::InstructionList.new($temp_reg, $MVM_reg_int64), $res_kind).result_reg;
            }
        }
        elsif $primspec == 10 {
            if $res_kind == $MVM_reg_uint64 {
                $res_reg := $qastcomp.regalloc.fresh_register($res_kind);
                op_dispatch_u($frame, $res_reg, $dispatcher_name, $callsite_id, @arg_idxs);
            }
            else {
                my $temp_reg := $qastcomp.regalloc.fresh_register($MVM_reg_uint64);
                op_dispatch_u($frame, $temp_reg, $dispatcher_name, $callsite_id, @arg_idxs);
                $res_reg := $qastcomp.coerce(
                    MAST::InstructionList.new($temp_reg, $MVM_reg_uint64), $res_kind).result_reg;
            }
        }
        elsif $primspec == 2 {
            if $res_kind == $MVM_reg_num64 {
                $res_reg := $qastcomp.regalloc.fresh_register($res_kind);
                op_dispatch_n($frame, $res_reg, $dispatcher_name, $callsite_id, @arg_idxs);
            }
            else {
                my $temp_reg := $qastcomp.regalloc.fresh_register($MVM_reg_num64);
                op_dispatch_n($frame, $temp_reg, $dispatcher_name, $callsite_id, @arg_idxs);
                $res_reg := $qastcomp.coerce(
                    MAST::InstructionList.new($temp_reg, $MVM_reg_num64), $res_kind).result_reg;
            }
        }
        elsif $primspec == 3 {
            $res_reg := $qastcomp.regalloc.fresh_register($res_kind);
            op_dispatch_s($frame, $res_reg, $dispatcher_name, $callsite_id, @arg_idxs);
        }
        else {
            nqp::die("Unsupported register return kind for dispatch op: $res_kind");
        }
    }
    MAST::InstructionList.new($res_reg, $res_kind)
}

# Emits an instruction to boolify an object. The result register should
# be an int64, the object should have already been decontainerized.
my $FAKE_OBJECT_ARG := [QAST::Op.new( :op<null> )];
sub emit_object_boolify($qastcomp, $result_reg, $object_reg) {
    my $frame := $qastcomp.mast_frame;
    my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
        $FAKE_OBJECT_ARG, [MAST::InstructionList.new($result_reg, $MVM_reg_obj)]);
    op_dispatch_i($frame, $result_reg, 'boot-boolify', $callsite_id, [$object_reg]);
}

class QAST::MASTRegexCompiler {
    # The compiler we're working against.
    has $!qastcomp;

    # The current register allocator.
    has $!regalloc;

    # Cursor type, if any.
    has $!cursor_type;

    # Registers used.
    has %!reg;

    # Jump table.
    has @!rxjumps;

    # Do we use the cursor stack?
    has int $!cstack_used;

    method new(:$qastcomp!, :$regalloc!) {
        my $obj := nqp::create(self);
        $obj.BUILD($qastcomp, $regalloc);
        $obj
    }

    method BUILD($qastcomp, $regalloc) {
        $!qastcomp    := $qastcomp;
        $!regalloc    := $regalloc;
        $!cursor_type := NQPMu;
    }

    method unique($str?) {
        $!qastcomp.unique($str)
    }

    method !get_cstack() {
        $!cstack_used := 1;
        %!reg<cstack>
    }

    my $FAKE-POS-NODE := QAST::Op.new( :op('null') );
    method call-meth(str $name, $invocant-reg, :@arg-regs, :@arg-types, :@arg-qasts,
            :$result-reg, :$int-result) {
        # Form pieces to generate callsite and dispatch op.
        my $name-reg := $!regalloc.fresh_s();
        my $frame := $!qastcomp.mast_frame;
        op($frame, 'const_s', $name-reg, sval($name));
        my @all-arg-regs := [$invocant-reg, $name-reg, $invocant-reg];
        my @all-arg-masts := [
            MAST::InstructionList.new($invocant-reg, $MVM_reg_obj),
            MAST::InstructionList.new($name-reg, $MVM_reg_str),
            MAST::InstructionList.new($invocant-reg, $MVM_reg_obj)
        ];
        my @all-arg-qasts := [$FAKE-POS-NODE, $FAKE-POS-NODE, $FAKE-POS-NODE];
        if @arg-regs {
            my int $i;
            my int $n := nqp::elems(@arg-regs);
            while $i < $n {
                nqp::push(@all-arg-regs, @arg-regs[$i]);
                nqp::push(@all-arg-masts, MAST::InstructionList.new(@arg-regs[$i],
                    @arg-types ?? @arg-types[$i] !! $MVM_reg_obj));
                nqp::push(@all-arg-qasts, @arg-qasts ?? @arg-qasts[$i] !! $FAKE-POS-NODE);
                $i++;
            }
        }

        # Generate callsite and emit dispatch.
        my uint $callsite-id := $frame.callsites.get_callsite_id_from_args(
            @all-arg-qasts, @all-arg-masts);
        if $result-reg {
            if $int-result {
                op_dispatch_i($frame, $result-reg, 'lang-meth-call', $callsite-id, @all-arg-regs);
            }
            else {
                op_dispatch_o($frame, $result-reg, 'lang-meth-call', $callsite-id, @all-arg-regs);
            }
        }
        else {
            op_dispatch_v($frame, 'lang-meth-call', $callsite-id, @all-arg-regs);
        }
    }

    method as_mast($node, :$want) {
        # Build the list of (unique) registers we need
        my $tgt      := $!regalloc.fresh_s();
        my $pos      := $!regalloc.fresh_i();
        my $off      := $!regalloc.fresh_i();
        my $eos      := $!regalloc.fresh_i();
        my $rep      := $!regalloc.fresh_i();
        my $cur      := $!regalloc.fresh_o();
        my $curclass := $!regalloc.fresh_o();
        my $bstack   := $!regalloc.fresh_o();
        my $cstack   := $!regalloc.fresh_o();
        my $negone   := $!regalloc.fresh_i();
        my $zero     := $!regalloc.fresh_i();
        my $one      := $!regalloc.fresh_i();
        my $two      := $!regalloc.fresh_i();
        my $three    := $!regalloc.fresh_i();
        my $four     := $!regalloc.fresh_i();
        my $back_cur := $!regalloc.fresh_o();
        my $method   := $!regalloc.fresh_o();
        my $tmp      := $!regalloc.fresh_o();

        # create our labels
        my $startlabel   := label();
        my $donelabel    := label();
        my $restartlabel := label();
        my $faillabel    := label();
        my $jumplabel    := label();

        my $self := $*BLOCK.local('self');

        my %!reg := nqp::hash(
            'tgt',      $tgt,
            'pos',      $pos,
            'off',      $off,
            'eos',      $eos,
            'rep',      $rep,
            'cur',      $cur,
            'curclass', $curclass,
            'bstack',   $bstack,
            'cstack',   $cstack,
            'negone',   $negone,
            'zero',     $zero,
            'one',      $one,
            'two',      $two,
            'three',    $three,
            'four',     $four,
            'back_cur', $back_cur,
            'fail',     $faillabel,
            'jump',     $jumplabel,
            'method',   $method,
            'self',     $self,
        );

        @!rxjumps := nqp::list($donelabel);

        my $shared := $!regalloc.fresh_o();
        my $itmp := $!regalloc.fresh_i();
        my $i0 := $!regalloc.fresh_i();
        my $frame := $!qastcomp.mast_frame;

        op($frame, 'const_i64', $negone, ival(-1));
        op($frame, 'const_i64', $zero, ival(0));
        op($frame, 'const_i64', $one, ival(1));
        op($frame, 'const_i64', $two, ival(2));
        op($frame, 'const_i64', $three, ival(3));
        op($frame, 'const_i64', $four, ival(4));
        self.call-meth('!cursor_start', $self, :result-reg($cur));

        my $sharedclass;
        my int $has_cursor_type := $node.has_cursor_type();
        if $has_cursor_type {
            $!cursor_type := $node.cursor_type();
            my $wval := $!qastcomp.as_mast(QAST::WVal.new( :value($!cursor_type) ));
            op($frame, 'set', $curclass, $wval.result_reg);
            op($frame, 'getattr_o', $shared, $self, $curclass, sval('$!shared'),
                ival(nqp::hintfor($!cursor_type, '$!shared')));
            $!regalloc.release_register($wval.result_reg, $MVM_reg_obj);

            my $shared_wval := $!qastcomp.as_mast(
                QAST::WVal.new( :value($!cursor_type.'!shared_type'()) ));
            $sharedclass := $shared_wval.result_reg;
        }
        else {
            $sharedclass := $!regalloc.fresh_o();
            self.call-meth('!shared', $self, :result-reg($shared));
            op($frame, 'getwhat', $sharedclass, $shared);
            op($frame, 'getattr_o', $curclass, $shared, $sharedclass, sval('$!CUR_CLASS'), ival(-1));
        }

        op($frame, 'getattr_s', $tgt, $shared, $sharedclass, sval('$!target'),
            ival(nqp::hintfor(ParseShared, '$!target')));
        op($frame, 'getattr_i', $pos, $cur, $curclass, sval('$!from'),
            ival(nqp::hintfor($!cursor_type, '$!from')));
        op($frame, 'getattr_o', $bstack, $cur, $curclass, sval('$!bstack'),
            ival(nqp::hintfor($!cursor_type, '$!bstack')));
        op($frame, 'getattr_o', $tmp, $self, $curclass, sval('$!restart'),
            ival(nqp::hintfor($!cursor_type, '$!restart')));
        op($frame, 'isconcrete', $itmp, $tmp);
        op($frame, 'bindlex', $*BLOCK.resolve_lexical('$¢'), $cur);
        op($frame, 'chars', $eos, $tgt);
        op($frame, 'eq_i', $i0, $one, $itmp);
        op($frame, 'if_i', $i0, $restartlabel);
        op($frame, 'gt_i', $i0, $pos, $eos);
        op($frame, 'if_i', $i0, $faillabel);
        $!regalloc.release_register($i0, $MVM_reg_int64);
        $!regalloc.release_register($itmp, $MVM_reg_int64);

        self.regex_mast($node);

        $i0 := $!regalloc.fresh_i();
        $itmp := $!regalloc.fresh_i();
        my $i18 := $!regalloc.fresh_i();
        $frame.add-label($restartlabel);
        if $!cstack_used {
            op($frame, 'getattr_o', $cstack, $cur, $curclass, sval('$!cstack'),
                ival(nqp::hintfor($!cursor_type, '$!cstack')));
        }
        $frame.add-label($faillabel);
        op($frame, 'isnull', $i0, $bstack);
        op($frame, 'if_i', $i0, $donelabel);
        op($frame, 'elems', $i0, $bstack);
        op($frame, 'gt_i', $i0, $i0, $zero);
        op($frame, 'unless_i', $i0, $donelabel);
        op($frame, 'pop_i', $itmp, $bstack);
        if $!cstack_used {
            my $cstacklabel := label();
            op($frame, 'islist', $i0, $cstack);
            op($frame, 'unless_i', $i0, $cstacklabel);
            op($frame, 'elems', $i0, $cstack);
            op($frame, 'gt_i', $i0, $i0, $zero);
            op($frame, 'unless_i', $i0, $cstacklabel);
            op($frame, 'dec_i', $itmp);
            op($frame, 'atpos_o', $back_cur, $cstack, $itmp);
            $frame.add-label($cstacklabel);
        }
        op($frame, 'pop_i', $rep, $bstack);
        op($frame, 'pop_i', $pos, $bstack);
        op($frame, 'pop_i', $itmp, $bstack);
        op($frame, 'lt_i', $i0, $pos, $negone);
        op($frame, 'if_i', $i0, $donelabel);
        op($frame, 'lt_i', $i0, $pos, $zero);
        op($frame, 'if_i', $i0, $faillabel);
        op($frame, 'eq_i', $i0, $itmp, $zero);
        op($frame, 'if_i', $i0, $faillabel);
        if $!cstack_used {
            # backtrack the cursor stack
            my $cutlabel := label();
            op($frame, 'isnull', $i0, $cstack);
            op($frame, 'if_i', $i0, $jumplabel);
            emit_object_boolify($!qastcomp, $i0, $cstack);
            op($frame, 'unless_i', $i0, $jumplabel);
            op($frame, 'elems', $i18, $bstack);
            op($frame, 'le_i', $i0, $i18, $zero);
            op($frame, 'if_i', $i0, $cutlabel);
            op($frame, 'dec_i', $i18);
            op($frame, 'atpos_i', $i18, $bstack, $i18);
            $frame.add-label($cutlabel);
            op($frame, 'setelemspos', $cstack, $i18);
        }
        $frame.add-label($jumplabel);
        op($frame, 'jumplist', ival(+@!rxjumps), $itmp);
        op($frame, 'goto', $_) for @!rxjumps;
        $frame.add-label($donelabel);
        self.call-meth('!cursor_fail', $cur);

        MAST::InstructionList.new($cur, $MVM_reg_obj)
    }

    method alt($node) {
        unless $node.name {
            return self.altseq($node);
        }

        my $frame := $!qastcomp.mast_frame;

        # See if we can stash the labels array in an SC or if we'll have
        # to actually emit code for it.
        my @label_arr   := nqp::list_i();
        my int $have_sc := 0;
        if $!qastcomp.sc -> $sc {
            # Add labels array to SC.
            my $obj_idx := nqp::scobjcount($sc);
            nqp::setobjsc(@label_arr, $sc);
            nqp::scsetobj($sc, $obj_idx, @label_arr);

            # Emit wval instruction to look it up.
            my $sc_idx := $!qastcomp.mast_compunit.sc_idx($sc);
            op($frame,
                $obj_idx < 32768 ?? 'wval' !! 'wval_wide',
                %!reg<back_cur>,
                $sc_idx,
                $obj_idx
            );
            $have_sc := 1;
        }
        else {
            op($frame, 'bootintarray', %!reg<back_cur>);
            op($frame, 'create', %!reg<back_cur>, %!reg<back_cur>);
        }

        # Calculate all the branches to try, which populates the bstack
        # with the options. Then immediately fail to start iterating it.
        my $endlabel_index := self.rxjump();
        my $endlabel := @!rxjumps[$endlabel_index];

        # Emit all the possible alternatives
        my $itmp      := $!regalloc.fresh_i();
        my int $elems := nqp::elems($node.list) + 1;
        while --$elems {
            my $altlabel_index := self.rxjump();
            my $altlabel := @!rxjumps[$altlabel_index];
            nqp::push_i(@label_arr, $altlabel_index);

            if !$have_sc {
                op($frame, 'const_i64', $itmp, ival($altlabel_index));
                op($frame, 'push_i', %!reg<back_cur>, $itmp);
            }
        }

        self.regex_mark($endlabel_index, %!reg<negone>, %!reg<zero>);
        my $name := $!regalloc.fresh_s();
        op($frame, 'const_s', $name, sval($node.name));
        self.call-meth('!alt', %!reg<cur>,
            :arg-regs([%!reg<pos>, $name, %!reg<back_cur>]),
            :arg-types([$MVM_reg_int64, $MVM_reg_str, $MVM_reg_obj]));
        $!regalloc.release_register($name, $MVM_reg_str);
        op($frame, 'goto', %!reg<fail>);

        my $altcount := 0;
        my $iter := nqp::iterator($node.list);
        while $iter {
            my $altlabel_index := nqp::atpos_i(@label_arr, $altcount);
            my $altlabel := @!rxjumps[$altlabel_index];
            $frame.add-label($altlabel);
            self.regex_mast(nqp::shift($iter));
            op($frame, 'goto', $endlabel);

            $altcount++;
        }

        $!regalloc.release_register($itmp, $MVM_reg_int64);
        $frame.add-label($endlabel);
        self.regex_commit($endlabel_index) if $node.backtrack eq 'r';
    }

    method altseq($node) {
        my $iter := nqp::iterator($node.list);
        my $endlabel_index := self.rxjump();
        my $endlabel := @!rxjumps[$endlabel_index];
        self.regex_mark($endlabel_index, %!reg<negone>, %!reg<zero>);
        my $altlabel_index := self.rxjump();
        my $altlabel := @!rxjumps[$altlabel_index];
        my $frame := $!qastcomp.mast_frame;
        while $iter {
            $frame.add-label($altlabel);
            my $matcher := nqp::shift($iter);
            if $iter {
                $altlabel_index := self.rxjump();
                $altlabel := @!rxjumps[$altlabel_index];
                self.regex_mark($altlabel_index, %!reg<pos>, %!reg<zero>);
            }
            self.regex_mast($matcher);
            if $iter {
                self.regex_commit($endlabel_index) if $node.backtrack eq 'r';
                op($frame, 'goto', $endlabel);
            }
        }
        $frame.add-label($endlabel);
    }

    method anchor($node) {
        my $frame := $!qastcomp.mast_frame;
        my $subtype := $node.subtype;
        my $donelabel := label();
        my $itmp := $!regalloc.fresh_i();
        my $pos := %!reg<pos>;
        my $fail := %!reg<fail>;
        if $subtype eq 'bos' {
            op($frame, 'ne_i', $itmp, $pos, %!reg<zero>);
            op($frame, 'if_i', $itmp, $fail);
        }
        elsif $subtype eq 'eos' {
            op($frame, 'lt_i', $itmp, $pos, %!reg<eos>);
            op($frame, 'if_i', $itmp, $fail);
        }
        elsif $subtype eq 'lwb' {
            my $cclass_word := $!regalloc.fresh_i();
            op($frame, 'ge_i', $itmp, $pos, %!reg<eos>);
            op($frame, 'if_i', $itmp, $fail);
            op($frame, 'const_i64', $cclass_word, ival(nqp::const::CCLASS_WORD));
            op($frame, 'iscclass', $itmp, $cclass_word, %!reg<tgt>, $pos);
            op($frame, 'unless_i', $itmp, %!reg<fail>);
            op($frame, 'sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op($frame, 'iscclass', $itmp, $cclass_word, %!reg<tgt>, $itmp);
            op($frame, 'if_i', $itmp, $fail);
            $!regalloc.release_register($cclass_word, $MVM_reg_int64);
        }
        elsif $subtype eq 'rwb' {
            my $cclass_word := $!regalloc.fresh_i();
            op($frame, 'le_i', $itmp, $pos, %!reg<zero>);
            op($frame, 'if_i', $itmp, $fail);
            op($frame, 'const_i64', $cclass_word, ival(nqp::const::CCLASS_WORD));
            op($frame, 'iscclass', $itmp, $cclass_word, %!reg<tgt>, $pos);
            op($frame, 'if_i', $itmp, %!reg<fail>);
            op($frame, 'sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op($frame, 'iscclass', $itmp, $cclass_word, %!reg<tgt>, $itmp);
            op($frame, 'unless_i', $itmp, $fail);
            $!regalloc.release_register($cclass_word, $MVM_reg_int64);
        }
        elsif $subtype eq 'bol' {
            my $cclass_newline := $!regalloc.fresh_i();
            op($frame, 'eq_i', $itmp, %!reg<pos>, %!reg<zero>);
            op($frame, 'if_i', $itmp, $donelabel);
            op($frame, 'ge_i', $itmp, $pos, %!reg<eos>);
            op($frame, 'if_i', $itmp, $fail);
            op($frame, 'sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op($frame, 'const_i64', $cclass_newline, ival(nqp::const::CCLASS_NEWLINE));
            op($frame, 'iscclass', $itmp, $cclass_newline, %!reg<tgt>, $itmp);
            op($frame, 'unless_i', $itmp, $fail);
            $frame.add-label($donelabel);
            $!regalloc.release_register($cclass_newline, $MVM_reg_int64);
        }
        elsif $subtype eq 'eol' {
            my $cclass_newline := $!regalloc.fresh_i();
            op($frame, 'const_i64', $cclass_newline, ival(nqp::const::CCLASS_NEWLINE));
            op($frame, 'iscclass', $itmp, $cclass_newline, %!reg<tgt>, %!reg<pos>);
            op($frame, 'if_i', $itmp, $donelabel);
            op($frame, 'ne_i', $itmp, %!reg<pos>, %!reg<eos>);
            op($frame, 'if_i', $itmp, $fail);
            op($frame, 'eq_i', $itmp, %!reg<pos>, %!reg<zero>);
            op($frame, 'if_i', $itmp, $donelabel);
            op($frame, 'sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op($frame, 'iscclass', $itmp, $cclass_newline, %!reg<tgt>, $itmp);
            op($frame, 'if_i', $itmp, $fail);
            $frame.add-label($donelabel);
            $!regalloc.release_register($cclass_newline, $MVM_reg_int64);
        }
        elsif $subtype eq 'fail' {
            op($frame, 'goto', $fail);
        }
        elsif $subtype eq 'pass' || $subtype eq '' {
            # Nothing to do.
        } elsif $subtype eq 'zerowidth' {
            # Nothing to do either. This gets generated for <???>, for example
        }
        else {
            nqp::die("Unknown anchor subtype $subtype");
        }
        $!regalloc.release_register($itmp, $MVM_reg_int64);
    }

    my %cclass_code;
    INIT {
        %cclass_code<.>  := nqp::const::CCLASS_ANY;
        %cclass_code<d>  := nqp::const::CCLASS_NUMERIC;
        %cclass_code<s>  := nqp::const::CCLASS_WHITESPACE;
        %cclass_code<w>  := nqp::const::CCLASS_WORD;
        %cclass_code<n>  := nqp::const::CCLASS_NEWLINE;
    }

    method cclass($node) {
        my $frame := $!qastcomp.mast_frame;
        my $subtype := $node.name;
        my $cclass := %cclass_code{ $subtype };
        nqp::die("Unrecognized subtype '$subtype' in QAST::Regex cclass")
            unless $cclass;

        my $itmp := $!regalloc.fresh_i();
        op($frame, 'ge_i', $itmp, %!reg<pos>, %!reg<eos>);
        op($frame, 'if_i', $itmp, %!reg<fail>);

        if $cclass != nqp::const::CCLASS_ANY {
            my $testop := $node.negate ?? 'if_i' !! 'unless_i';
            op($frame, 'const_i64', $itmp, ival($cclass));
            op($frame, 'iscclass', $itmp, $itmp, %!reg<tgt>, %!reg<pos>);
            op($frame, $testop, $itmp, %!reg<fail>);
        }

        op($frame, 'inc_i', %!reg<pos>) unless $node.subtype eq 'zerowidth';
        $!regalloc.release_register($itmp, $MVM_reg_int64);
    }

    method concat($node) {
        self.regex_mast($_) for $node.list;
        nqp::list
    }

    method goal($node) {
        self.regex_mast(QAST::Regex.new(
            :rxtype<concat>,
            $node[1],
            QAST::Regex.new( :rxtype<altseq>, $node[0], $node[2] )
        ))
    }

    method conj($node) { self.conjseq($node) }

    method conjseq($node) {
        my $frame := $!qastcomp.mast_frame;
        my $conjlabel_index := self.rxjump();
        my $conjlabel := @!rxjumps[$conjlabel_index];
        my $firstlabel := label();
        my $iter := nqp::iterator($node.list);
        op($frame, 'goto', $firstlabel);
        $frame.add-label($conjlabel);
        op($frame, 'goto', %!reg<fail>);
        # call the first child
        $frame.add-label($firstlabel);
        # make a mark that holds our starting position in the pos slot
        self.regex_mark($conjlabel_index, %!reg<pos>, %!reg<zero>);
        self.regex_mast(nqp::shift($iter));
        # use previous mark to make one with pos=start, rep=end
        my $itmp := $!regalloc.fresh_i();
        my $i12 := $!regalloc.fresh_i();
        self.regex_peek($conjlabel_index, $itmp);
        self.regex_mark($conjlabel_index, $itmp, %!reg<pos>);

        while $iter {
            op($frame, 'set', %!reg<pos>, $itmp);
            self.regex_mast(nqp::shift($iter));
            self.regex_peek($conjlabel_index, $itmp, $i12);
            op($frame, 'ne_i', $i12, %!reg<pos>, $i12);
            op($frame, 'if_i', $i12, %!reg<fail>);
        }
        op($frame, 'set', %!reg<pos>, $itmp) if $node.subtype eq 'zerowidth';
        $!regalloc.release_register($itmp, $MVM_reg_int64);
        $!regalloc.release_register($i12, $MVM_reg_int64);
    }

    method enumcharlist($node) {
        my $frame := $!qastcomp.mast_frame;
        my $op := $node.negate ?? 'indexnat' !! 'indexat';
        my $i0 := $!regalloc.fresh_i();
        my $donelabel := label();
        # The indexat and indexnat opcodes assume <+[]>/<-[]> semantics, and don't return true at EOS,
        # so we compensate here by checking for EOS explicitly in the negative case, and succeeding.
        # (If instead we fix indexnat, we'd have to put the EOS check on the non-zerowidth branches,
        # but that makes the compiler loop for some reason, hence this approach.)
        if $node.subtype eq 'zerowidth' && $node.negate {
            op($frame, 'ge_i', $i0, %!reg<pos>, %!reg<eos>);
            op($frame, 'if_i', $i0, $donelabel);
        }
        if $node.subtype eq 'ignoremark' || $node.subtype eq 'ignorecase+ignoremark' {
            my $s0 := $!regalloc.fresh_s();
            my $i1 := $!regalloc.fresh_i();
            op($frame, 'ordbaseat', $i0, %!reg<tgt>, %!reg<pos>);
            op($frame, 'lt_i', $i1, $i0, %!reg<zero>);
            op($frame, 'if_i', $i1, %!reg<fail>);
            op($frame, 'chr', $s0, $i0);
            op($frame, $op, $s0, %!reg<zero>, sval($node[0]), %!reg<fail>);
            $!regalloc.release_register($i1, $MVM_reg_int64);
        }
        else {
            op($frame, $op, %!reg<tgt>, %!reg<pos>, sval($node[0]), %!reg<fail>);
        }
        op($frame, 'inc_i', %!reg<pos>)
	        unless $node.subtype eq 'zerowidth';
        $frame.add-label($donelabel) if $donelabel;
    }

    method charrange($node) {
        my $frame := $!qastcomp.mast_frame;
        my $i0    := $!regalloc.fresh_i();
        my $i1    := $!regalloc.fresh_i();
        my $lower := $!regalloc.fresh_i();
        my $upper := $!regalloc.fresh_i();
        op($frame, 'ge_i', $i0, %!reg<pos>, %!reg<eos>);
        op($frame, 'if_i', $i0, %!reg<fail>);
        op($frame, 'const_i64', $lower, ival($node[1].value));
        op($frame, 'const_i64', $upper, ival($node[2].value));
        if $node[0] eq 'ignorecase+ignoremark' {
            my $succeed := label();
            my $s0      := $!regalloc.fresh_s();
            my $s1      := $!regalloc.fresh_s();
            my $i2      := $!regalloc.fresh_i();
            my $goal    := $node.negate ?? %!reg<fail> !! $succeed;
            op($frame, 'substr_s', $s0, %!reg<tgt>, %!reg<pos>, %!reg<one>);
            op($frame, 'lc', $s1, $s0);
            op($frame, 'ordbaseat', $i0, $s1, %!reg<zero>);
            op($frame, 'ge_i', $i1, $i0, $lower);
            op($frame, 'le_i', $i2, $i0, $upper);
            op($frame, 'band_i', $i1, $i1, $i2);
            op($frame, 'if_i', $i1, $goal);
            op($frame, 'uc', $s1, $s0);
            op($frame, 'ordbaseat', $i0, $s1, %!reg<zero>);
            op($frame, 'ge_i', $i1, $i0, $lower);
            op($frame, 'le_i', $i2, $i0, $upper);
            op($frame, 'band_i', $i1, $i1, $i2);
            op($frame, 'if_i', $i1, $goal);
            $!regalloc.release_register($s0, $MVM_reg_str);
            $!regalloc.release_register($s1, $MVM_reg_str);
            $!regalloc.release_register($i2, $MVM_reg_int64);
            unless $node.negate {
                op($frame, 'goto', %!reg<fail>);
                $frame.add-label($succeed);
            }
        }
        elsif $node[0] eq 'ignorecase' {
            my $succeed := label();
            my $s0      := $!regalloc.fresh_s();
            my $s1      := $!regalloc.fresh_s();
            my $i2      := $!regalloc.fresh_i();
            my $goal    := $node.negate ?? %!reg<fail> !! $succeed;
            op($frame, 'substr_s', $s0, %!reg<tgt>, %!reg<pos>, %!reg<one>);
            op($frame, 'lc', $s1, $s0);
            op($frame, 'getcp_s', $i0, $s1, %!reg<zero>);  # safe for synthetics
            op($frame, 'ge_i', $i1, $i0, $lower);
            op($frame, 'le_i', $i2, $i0, $upper);
            op($frame, 'band_i', $i1, $i1, $i2);
            op($frame, 'if_i', $i1, $goal);
            op($frame, 'uc', $s1, $s0);
            op($frame, 'getcp_s', $i0, $s1, %!reg<zero>);  # safe for synthetics
            op($frame, 'ge_i', $i1, $i0, $lower);
            op($frame, 'le_i', $i2, $i0, $upper);
            op($frame, 'band_i', $i1, $i1, $i2);
            op($frame, 'if_i', $i1, $goal);
            $!regalloc.release_register($s0, $MVM_reg_str);
            $!regalloc.release_register($s1, $MVM_reg_str);
            $!regalloc.release_register($i2, $MVM_reg_int64);
            unless $node.negate {
                op($frame, 'goto', %!reg<fail>);
                $frame.add-label($succeed);
            }
        }
        elsif $node[0] eq 'ignoremark' {
            my $succeed := label();
            my $goal := $node.negate ?? $succeed !! %!reg<fail>;
            op($frame, 'ordbaseat', $i0, %!reg<tgt>, %!reg<pos>);
            op($frame, 'gt_i', $i1, $i0, $upper);
            op($frame, 'if_i', $i1, $goal);
            op($frame, 'lt_i', $i1, $i0, $lower);
            op($frame, 'if_i', $i1, $goal);
            if $node.negate {
                op($frame, 'goto', %!reg<fail>);
                $frame.add-label($succeed);
            }
        }
        else {
            my $succeed := label();
            my $goal    := $node.negate ?? $succeed !! %!reg<fail>;
            op($frame, 'getcp_s', $i0, %!reg<tgt>, %!reg<pos>);  # safe for synthetics
            op($frame, 'gt_i', $i1, $i0, $upper);
            op($frame, 'if_i', $i1, $goal);
            op($frame, 'lt_i', $i1, $i0, $lower);
            op($frame, 'if_i', $i1, $goal);
            if $node.negate {
                op($frame, 'goto', %!reg<fail>);
                $frame.add-label($succeed);
            }
        }
        op($frame, 'inc_i', %!reg<pos>) unless $node.subtype eq 'zerowidth';
        $!regalloc.release_register($i0,    $MVM_reg_int64);
        $!regalloc.release_register($i1,    $MVM_reg_int64);
        $!regalloc.release_register($lower, $MVM_reg_int64);
        $!regalloc.release_register($upper, $MVM_reg_int64);
    }

    method literal($node) {
        my $frame := $!qastcomp.mast_frame;
        my $litconst := $node[0];
        my $s0 := $!regalloc.fresh_s();
        my $i0 := $!regalloc.fresh_i();
        if $node.negate {
            # Need explicit check we're not going beyond the string end in the
            # negated case, to avoid false positive.
            op($frame, 'const_i64', $i0, ival(nqp::chars($litconst)));
            op($frame, 'add_i', $i0, %!reg<pos>, $i0);
            op($frame, 'gt_i', $i0, $i0, %!reg<eos>);
            op($frame, 'if_i', $i0, %!reg<fail>);
        }
        # XXX create some regex prologue system so these const assignments
        # can happen only once at the beginning of a regex. hash of string constants
        # to the registers to which they are assigned.
        # XXX or make a specialized eqat_sc op that takes a constant string.
        # also, consider making the op branch directly from the comparison
        # instead of storing an integer to a temporary register
        my $eq_op := $node.subtype eq 'ignorecase' ?? 'eqatic_s' !!
                     $node.subtype eq 'ignoremark' ?? 'eqatim_s' !!
                     $node.subtype eq 'ignorecase+ignoremark' ?? 'eqaticim_s' !! 'eqat_s';

        my $cmpop := $node.negate ?? 'if_i' !! 'unless_i';
        op($frame, 'const_s', $s0, sval($litconst));
        op($frame, $eq_op, $i0, %!reg<tgt>, $s0, %!reg<pos>);
        op($frame, $cmpop, $i0, %!reg<fail>);
        unless $node.subtype eq 'zerowidth' {
            op($frame, 'const_i64', $i0, ival(nqp::chars($litconst)));
            op($frame, 'add_i', %!reg<pos>, %!reg<pos>, $i0);
        }
        $!regalloc.release_register($s0, $MVM_reg_str);
        $!regalloc.release_register($i0, $MVM_reg_int64);
    }

    method pass($node) {
        my $frame := $!qastcomp.mast_frame;
        my @arg-regs := [%!reg<pos>];
        my @arg-types := [$MVM_reg_int64];
        my @arg-qasts := [$FAKE-POS-NODE];
        my $op;
        if $node.backtrack ne 'r' {
            nqp::push(@arg-regs, %!reg<one>);
            nqp::push(@arg-types, $MVM_reg_int64);
            nqp::push(@arg-qasts, QAST::IVal.new( :value(1), :named<backtrack> ));
        }
        self.call-meth('!cursor_pass_no_reduce', %!reg<cur>,
            :@arg-regs, :@arg-types, :@arg-qasts);
        if $node.name {
            my $sname := $!regalloc.fresh_s();
            op($frame, 'const_s', $sname, sval($node.name));
            self.reduce($sname, :literal);
        }
        elsif nqp::elems(@($node)) == 1 {
            my $name := $!qastcomp.as_mast($node[0], :want($MVM_reg_str));
            self.reduce($name.result_reg);
        }
        op($frame, 'return_o', %!reg<cur>);
    }

    method reduce($name_reg, :$literal) {
        my $frame := $!qastcomp.mast_frame;
        # Emit call to obtain actions, and ensure they aren't null.
        my $actions_reg := $!regalloc.fresh_o();
        self.call-meth('actions', %!reg<cur>, :result-reg($actions_reg));
        my $actions_done_label := label();
        my $itmp := $!regalloc.fresh_i();
        op($frame, 'isnull', $itmp, $actions_reg);
        op($frame, 'if_i', $itmp, $actions_done_label);

        # Try to find a method on it.
        my uint $callsite_id := $frame.callsites.get_callsite_id_from_args(
            [
                $FAKE-POS-NODE,
                $literal ?? QAST::SVal.new( :value('') ) !! $FAKE-POS-NODE,
                QAST::IVal.new( :value(0) )
            ],
            [
                MAST::InstructionList.new($actions_reg, $MVM_reg_obj),
                MAST::InstructionList.new($name_reg, $MVM_reg_str),
                MAST::InstructionList.new(%!reg<zero>, $MVM_reg_int64)
            ]);
        op_dispatch_o($frame, %!reg<method>, 'lang-find-meth', $callsite_id,
            [$actions_reg, $name_reg, %!reg<zero>]);

        # If we find one, call it with the match object.
        op($frame, 'isnull', $itmp, %!reg<method>);
        op($frame, 'if_i', $itmp, $actions_done_label);
        my $match_reg := $!regalloc.fresh_o();
        self.call-meth('MATCH', %!reg<cur>, :result-reg($match_reg));
        $callsite_id := $frame.callsites.get_callsite_id_from_args(
            [ $FAKE-POS-NODE, $FAKE-POS-NODE, $FAKE-POS-NODE ],
            [
                MAST::InstructionList.new(%!reg<method>, $MVM_reg_obj),
                MAST::InstructionList.new($actions_reg, $MVM_reg_obj),
                MAST::InstructionList.new($match_reg, $MVM_reg_obj)
            ]);
        op_dispatch_v($frame, 'lang-call', $callsite_id,
            [%!reg<method>, $actions_reg, $match_reg]);
        $frame.add-label($actions_done_label);

        $!regalloc.release_register($actions_reg, $MVM_reg_obj);
        $!regalloc.release_register($match_reg, $MVM_reg_obj);
        $!regalloc.release_register($itmp, $MVM_reg_int64);
    }

    method qastnode($node) {
        my $frame := $!qastcomp.mast_frame;
        op($frame, 'bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'), %!reg<pos>, ival(-1));
        op($frame, 'bindlex', $*BLOCK.resolve_lexical('$¢'), %!reg<cur>);
        my $cmast := $!qastcomp.as_mast($node[0]);
        if $node.subtype eq 'zerowidth' {
            my int $result_kind := $cmast.result_kind;
            if $result_kind == $MVM_reg_obj {
                op($frame, 'decont', $cmast.result_reg, $cmast.result_reg);
                my $boolification_reg := $!regalloc.fresh_register($MVM_reg_int64);
                emit_object_boolify($!qastcomp, $boolification_reg, $cmast.result_reg);
                op($frame, $node.negate ?? 'if_i' !! 'unless_i', $boolification_reg, %!reg<fail>);
                $!regalloc.release_register($boolification_reg, $MVM_reg_int64);
            }
            else {
                my $cndop := $node.negate # the negation meaning is reversed for the op
                    ?? @Condition-op-kinds[        $result_kind]
                    !! @Negated-condition-op-kinds[$result_kind];
                unless nqp::isnull($cndop) {
                    op($frame, $cndop, $cmast.result_reg, %!reg<fail>);
                }
            }
        }
        $!regalloc.release_register($cmast.result_reg, $cmast.result_kind);
    }

    method dynquant($node) {
        my $frame      := $!qastcomp.mast_frame;
        my $backtrack  := $node.backtrack || 'g';
        my $sep        := $node[2];
        my $looplabel_index := self.rxjump();
        my $looplabel  := @!rxjumps[$looplabel_index];
        my $donelabel_index := self.rxjump();
        my $donelabel  := @!rxjumps[$donelabel_index];
        my $skip0label := label();
        my $skip1label := label();
        my $skip2label := label();
        my $skip3label := label();
        my $skip4label := label();
        my $skip5label := label();
        my $skip6label := label();
        my $skip7label := label();
        my $skip8label := label();
        my $needrep    := $!regalloc.fresh_i();
        my $needmark   := $!regalloc.fresh_i();
        my $rep        := %!reg<rep>;
        my $pos        := %!reg<pos>;
        my $ireg       := $!regalloc.fresh_i();

        my $minmax     := $node[1];
        my $min_reg    := $!regalloc.fresh_i();
        my $max_reg    := $!regalloc.fresh_i();

        my $minmax_mast := $!qastcomp.as_mast($minmax, :want($MVM_reg_obj));
        my $res_reg     := $minmax_mast.result_reg;
        op($frame, 'atpos_i', $min_reg, $res_reg, %!reg<zero>);
        op($frame, 'atpos_i', $max_reg, $res_reg, %!reg<one>);

        # return if $min == 0 && $max == 0;
        op($frame, 'if_i', $min_reg, $skip8label);
        op($frame, 'unless_i', $max_reg, $skip7label);
        $frame.add-label($skip8label);

        # $needrep := $min > 1 || $max > 1;
        op($frame, 'gt_i', $needrep, $min_reg, %!reg<one>);
        op($frame, 'if_i', $needrep, $skip0label);
        op($frame, 'gt_i', $needrep, $max_reg, %!reg<one>);
        $frame.add-label($skip0label);

        # $needmark := $needrep || $backtrack eq 'r';
        if $backtrack eq 'r' {
            op($frame, 'set', $needmark, %!reg<one>);
        }
        else {
            op($frame, 'set', $needmark, $needrep);
        }

        if $backtrack eq 'f' {
            my $seplabel := label();
            op($frame, 'set', $rep, %!reg<zero>);

            op($frame, 'ge_i', $ireg, $min_reg, %!reg<one>); # if $min < 1 {
            op($frame, 'if_i', $ireg, $skip1label);
            self.regex_mark($looplabel_index, $pos, $rep);
            op($frame, 'goto', $donelabel);
            $frame.add-label($skip1label);                      # }

            op($frame, 'goto', $seplabel) if $sep;
            $frame.add-label($looplabel);
            op($frame, 'set', $ireg, $rep);
            if $sep {
                self.regex_mast($sep);
                $frame.add-label($seplabel);
            }
            self.regex_mast($node[0]);
            op($frame, 'set', $rep, $ireg);
            op($frame, 'inc_i', $rep);

            op($frame, 'le_i', $ireg, $min_reg, %!reg<one>); # if $min > 1 {
            op($frame, 'if_i', $ireg, $skip2label);
            op($frame, 'lt_i', $ireg, $rep, $min_reg);
            op($frame, 'if_i', $ireg, $looplabel);
            $frame.add-label($skip2label);         # }

            op($frame, 'le_i', $ireg, $max_reg, %!reg<one>), # if $max > 1 {
            op($frame, 'if_i', $ireg, $skip3label);
            op($frame, 'ge_i', $ireg, $rep, $max_reg);
            op($frame, 'if_i', $ireg, $donelabel);
            $frame.add-label($skip3label);         # }

            op($frame, 'eq_i', $ireg, $max_reg, %!reg<one>); # unless $max == 1 {
            op($frame, 'if_i', $ireg, $skip4label);
            self.regex_mark($looplabel_index, $pos, $rep);
            $frame.add-label($skip4label);         # }

            $frame.add-label($donelabel);
        }
        else {
            op($frame, 'if_i', $min_reg, $skip1label);     # if $min == 0 {
            self.regex_mark($donelabel_index, $pos, %!reg<zero>);
            $frame.add-label($skip1label);

            op($frame, 'unless_i', $min_reg, $skip2label); # elsif $needmark {
            op($frame, 'unless_i', $needmark, $skip2label);
            self.regex_mark($donelabel_index, %!reg<negone>, %!reg<zero>);
            $frame.add-label($skip2label);                    # }

            $frame.add-label($looplabel);
            self.regex_mast($node[0]);

            op($frame, 'unless_i', $needmark, $skip3label); # if $needmark {
            self.regex_peek($donelabel_index, MAST::Local.new(:index(-1)), $rep);
            self.regex_commit($donelabel_index) if $backtrack eq 'r';
            op($frame, 'inc_i', $rep);

            op($frame, 'le_i', $ireg, $max_reg, %!reg<one>); # if $max > 1 {
            op($frame, 'if_i', $ireg, $skip4label);
            op($frame, 'ge_i', $ireg, $rep, $max_reg);
            op($frame, 'if_i', $ireg, $donelabel);
            $frame.add-label($skip4label);                    # }
            $frame.add-label($skip3label);                        # }

            op($frame, 'eq_i', $ireg, $max_reg, %!reg<one>); # unless $max == 1 {
            op($frame, 'if_i', $ireg, $skip5label);
            self.regex_mark($donelabel_index, $pos, $rep);
            self.regex_mast($sep) if $sep;
            op($frame, 'goto', $looplabel);
            $frame.add-label($skip5label);         # }
            $frame.add-label($donelabel);

            op($frame, 'le_i', $ireg, $min_reg, %!reg<one>); # if $min > 1 {
            op($frame, 'if_i', $ireg, $skip6label);
            op($frame, 'lt_i', $ireg, $rep, $min_reg);
            op($frame, 'if_i', $ireg, %!reg<fail>);
            $frame.add-label($skip6label);         # }
        }
        $frame.add-label($skip7label);
    }

    method quant($node) {
        my $frame := $!qastcomp.mast_frame;
        my $min := $node.min;
        my $max := $node.max;

        if $min == 0 && $max == 0 {
            # Nothing to do, and nothing to backtrack into.
            return;
        }

        my $backtrack := $node.backtrack || 'g';
        my $sep       := $node[1];
        my $looplabel_index := self.rxjump();
        my $looplabel := @!rxjumps[$looplabel_index];
        my $donelabel_index := self.rxjump();
        my $donelabel := @!rxjumps[$donelabel_index];
        my $needrep   := $min > 1 || $max > 1;
        my $needmark  := $needrep || $backtrack eq 'r';
        my $rep       := %!reg<rep>;
        my $pos       := %!reg<pos>;
        my $ireg      := $!regalloc.fresh_register($MVM_reg_int64, 1); # Must be regex-unique

        if $backtrack eq 'f' {
            my $seplabel := label();
            op($frame, 'set', $rep, %!reg<zero>);
            if $min < 1 {
                self.regex_mark($looplabel_index, $pos, $rep);
                op($frame, 'goto', $donelabel);
            }
            op($frame, 'goto', $seplabel) if $sep;
            $frame.add-label($looplabel);
            op($frame, 'set', $ireg, $rep);
            if $sep {
                self.regex_mast($sep);
                $frame.add-label($seplabel);
            }
            self.regex_mast($node[0]);
            op($frame, 'set', $rep, $ireg);
            op($frame, 'inc_i', $rep);
            if $min > 1 {
                my $minreg := $!regalloc.fresh_i();
                op($frame, 'const_i64', $minreg, ival($min));
                op($frame, 'lt_i', $ireg, $rep, $minreg);
                op($frame, 'if_i', $ireg, $looplabel);
                $!regalloc.release_register($minreg, $MVM_reg_int64);
            }
            if $max > 1 {
                my $maxreg := $!regalloc.fresh_i();
                op($frame, 'const_i64', $maxreg, ival($max));
                op($frame, 'ge_i', $ireg, $rep, $maxreg);
                op($frame, 'if_i', $ireg, $donelabel);
                $!regalloc.release_register($maxreg, $MVM_reg_int64);
            }
            self.regex_mark($looplabel_index, $pos, $rep) if $max != 1;
            $frame.add-label($donelabel);
        }
        else {
            if $min == 0 { self.regex_mark($donelabel_index, $pos, %!reg<zero>); }
            elsif $needmark { self.regex_mark($donelabel_index, %!reg<negone>, %!reg<zero>); }
            $frame.add-label($looplabel);
            self.regex_mast($node[0]);
            if $needmark {
                self.regex_peek($donelabel_index, MAST::Local.new(:index(-1)), $rep);
                self.regex_commit($donelabel_index) if $backtrack eq 'r';
                op($frame, 'inc_i', $rep);
                if $max > 1 {
                    my $maxreg := $!regalloc.fresh_i();
                    op($frame, 'const_i64', $maxreg, ival($max));
                    op($frame, 'ge_i', $ireg, $rep, $maxreg);
                    op($frame, 'if_i', $ireg, $donelabel);
                    $!regalloc.release_register($maxreg, $MVM_reg_int64);
                }
            }
            unless $max == 1 {
                self.regex_mark($donelabel_index, $pos, $rep);
                self.regex_mast($sep) if $sep;
                op($frame, 'goto', $looplabel);
            }
            $frame.add-label($donelabel);
            if $min > 1 {
                my $minreg := $!regalloc.fresh_i();
                op($frame, 'const_i64', $minreg, ival($min));
                op($frame, 'lt_i', $ireg, $rep, $minreg);
                op($frame, 'if_i', $ireg, %!reg<fail>);
                $!regalloc.release_register($minreg, $MVM_reg_int64);
            }
        }
    }

    method scan($node) {
        my $frame := $!qastcomp.mast_frame;
        my $looplabel_index := self.rxjump();
        my $looplabel := @!rxjumps[$looplabel_index];
        my $scanlabel := label();
        my $donelabel := label();
        my $ireg0 := $!regalloc.fresh_i();
        op($frame, 'getattr_i', $ireg0, %!reg<self>, %!reg<curclass>, sval('$!from'),
            ival(nqp::hintfor($!cursor_type, '$!from')));
        op($frame, 'ne_i', $ireg0, $ireg0, %!reg<negone>);
        op($frame, 'if_i', $ireg0, $donelabel);
        op($frame, 'goto', $scanlabel);
        $frame.add-label($looplabel);
        op($frame, 'inc_i', %!reg<pos>);
        if $node.list && $node.subtype ne 'ignorecase' && $node.subtype ne 'ignoremark' && $node.subtype ne 'ignorecase+ignoremark' {
            my $lit := $!regalloc.fresh_s();
            op($frame, 'const_s', $lit, sval($node[0]));
            op($frame, 'index_s', %!reg<pos>, %!reg<tgt>, $lit, %!reg<pos>);
            op($frame, 'eq_i', $ireg0, %!reg<pos>, %!reg<negone>);
            $!regalloc.release_register($lit, $MVM_reg_str);
        }
        elsif $node.list && ($node.subtype eq 'ignorecase' || $node.subtype eq 'ignorecase+ignoremark' || $node.subtype eq 'ignoremark') {
            my $lit := $!regalloc.fresh_s();
            my $op  := $node.subtype eq 'ignorecase' ?? 'indexic_s' !!
                       $node.subtype eq 'ignoremark' ?? 'indexim_s' !! 'indexicim_s';
            op($frame, 'const_s', $lit, sval($node[0]));
            op($frame, $op, %!reg<pos>, %!reg<tgt>, $lit, %!reg<pos>);
            op($frame, 'eq_i', $ireg0, %!reg<pos>, %!reg<negone>);
            $!regalloc.release_register($lit, $MVM_reg_str);
        }
        else {
            op($frame, 'gt_i', $ireg0, %!reg<pos>, %!reg<eos>);
        }
        op($frame, 'if_i', $ireg0, %!reg<fail>);
        op($frame, 'bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!from'), %!reg<pos>, ival(-1));
        $frame.add-label($scanlabel);
        self.regex_mark($looplabel_index, %!reg<pos>, %!reg<zero>);
        $frame.add-label($donelabel);
    }

    method subcapture($node) {
        my $frame := $!qastcomp.mast_frame;
        my $donelabel := label();
        my $faillabel_index := self.rxjump();
        my $faillabel := @!rxjumps[$faillabel_index];
        my $itmp := $!regalloc.fresh_i();
        my $p11 := $!regalloc.fresh_o();
        my $s11 := $!regalloc.fresh_s();
        self.regex_mark($faillabel_index, %!reg<pos>, %!reg<zero>);
        self.regex_mast($node[0]);
        self.regex_peek($faillabel_index, $itmp);
        op($frame, 'bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'),
            %!reg<pos>, ival(-1));
        self.call-meth('!cursor_start_subcapture', %!reg<cur>, :result-reg($p11),
            :arg-regs([$itmp]), :arg-types([$MVM_reg_int64]));
        self.call-meth('!cursor_pass_no_reduce', $p11,
            :arg-regs([%!reg<pos>]), :arg-types([$MVM_reg_int64]));
        op($frame, 'const_s', $s11, sval($node.name));
        self.call-meth('!cursor_capture', %!reg<cur>, :result-reg(self.'!get_cstack'()),
            :arg-regs([$p11, $s11]), :arg-types([$MVM_reg_obj, $MVM_reg_str]));
        op($frame, 'goto', $donelabel);
        $frame.add-label($faillabel);
        op($frame, 'goto', %!reg<fail>);
        $frame.add-label($donelabel);
        $!regalloc.release_register($itmp, $MVM_reg_int64);
        $!regalloc.release_register($p11, $MVM_reg_obj);
        $!regalloc.release_register($s11, $MVM_reg_str);
    }

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

    method subrule($node) {
        my $frame := $!qastcomp.mast_frame;
        my $subtype  := $node.subtype;
        my $testop   := $node.negate ?? 'ge_i' !! 'lt_i';
        my $captured := 0;

        # Compile all the children.
        my @arg-regs;
        my @arg-masts;
        my @arg-types;
        my @arg-qasts;
        for @($node[0]) {
            my $mast := $!qastcomp.as_mast($_);
            nqp::push(@arg-regs, $mast.result_reg);
            nqp::push(@arg-masts, $mast);
            nqp::push(@arg-types, $mast.result_kind);
            nqp::push(@arg-qasts, $_);
        }

        # Emit the call.
        my $p11 := %!reg<back_cur>;
        my $itmp := $!regalloc.fresh_i();
        op($frame, 'bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'),
            %!reg<pos>, ival(-1));
        if nqp::istype($node[0][0], QAST::SVal) {
            # Method call. Shift the method name from the compiled bits
            # before doing the call.
            nqp::shift(@arg-regs);
            nqp::shift(@arg-types);
            nqp::shift(@arg-qasts);
            self.call-meth($node[0][0].value, %!reg<cur>, :result-reg($p11),
                :@arg-regs, :@arg-types, :@arg-qasts);
            for @arg-masts {
                $!regalloc.release_register($_.result_reg, $_.result_kind);
            }
        }
        else {
            # Normal invocation (probably positional capture). Insert the
            # cursor register after the callee.
            for @arg-masts {
                $!regalloc.release_register($_.result_reg, $_.result_kind);
            }
            nqp::splice(@arg-regs, [%!reg<cur>], 1, 0);
            nqp::splice(@arg-masts, [MAST::InstructionList.new(%!reg<cur>, $MVM_reg_obj)], 1, 0);
            nqp::splice(@arg-qasts, [$FAKE-POS-NODE], 1, 0);
            my uint $callsite-id := $frame.callsites.get_callsite_id_from_args(
                @arg-qasts, @arg-masts);
            op_dispatch_o($frame, $p11, 'lang-call', $callsite-id, @arg-regs);
        }

        op($frame, 'getattr_i', $itmp, $p11, %!reg<curclass>, sval('$!pos'),
            ival(nqp::hintfor($!cursor_type, '$!pos')));
        op($frame, $testop, $itmp, $itmp, %!reg<zero>);
        op($frame, 'if_i', $itmp, %!reg<fail>);

        if $subtype ne 'zerowidth' {
            my $passlabel_index := self.rxjump();
            my $passlabel := @!rxjumps[$passlabel_index];
            if $node.backtrack eq 'r' {
                unless $subtype eq 'method' {
                    self.regex_mark($passlabel_index, %!reg<negone>, %!reg<zero>);
                }
                $frame.add-label($passlabel);
            }
            else {
                my $backlabel_index := self.rxjump();
                my $backlabel := @!rxjumps[$backlabel_index];
                op($frame, 'goto', $passlabel);
                $frame.add-label($backlabel);
                # %!reg<back_cur> is magically set just before the jump at the backtracker
                self.call-meth('!cursor_next', $p11, :result-reg($p11));
                op($frame, 'getattr_i', $itmp, $p11, %!reg<curclass>, sval('$!pos'),
                    ival(nqp::hintfor($!cursor_type, '$!pos')));
                op($frame, $testop, $itmp, $itmp, %!reg<zero>);
                op($frame, 'if_i', $itmp, %!reg<fail>);
                $frame.add-label($passlabel);

                if $subtype eq 'capture' {
                    my $sname := $!regalloc.fresh_s();
                    op($frame, 'const_s', $sname, sval($node.name));
                    self.call-meth('!cursor_capture', %!reg<cur>,
                        :result-reg(self.'!get_cstack'()),
                        :arg-regs([$p11, $sname]),
                        :arg-types([$MVM_reg_obj, $MVM_reg_str]));
                    $!regalloc.release_register($sname, $MVM_reg_str);
                    $captured := 1;

                    # Record a mark on the bstack saying how many captures we
                    # had before pushing this one, so we can remove it upon
                    # backtracking (otherwise we end up keeping backtracked
                    # over subrule captures around).
                    my $bstack := %!reg<bstack>;
                    op($frame, 'const_i64', $itmp, ival($backlabel_index));
                    op($frame, 'push_i', $bstack, $itmp);
                    op($frame, 'push_i', $bstack, %!reg<negone>);
                    op($frame, 'push_i', $bstack, %!reg<negone>);
                    op($frame, 'elems', $itmp, self.'!get_cstack'());
                    op($frame, 'dec_i', $itmp);
                    op($frame, 'push_i', $bstack, $itmp);
                }
                else {
                    self.call-meth('!cursor_push_cstack', %!reg<cur>,
                        :result-reg(self.'!get_cstack'()),
                        :arg-regs([$p11]), :arg-types([$MVM_reg_obj]));
                }

                my $bstack := %!reg<bstack>;
                op($frame, 'const_i64', $itmp, ival($backlabel_index));
                op($frame, 'push_i', $bstack, $itmp);
                op($frame, 'push_i', $bstack, %!reg<zero>);
                op($frame, 'push_i', $bstack, %!reg<pos>);
                op($frame, 'elems', $itmp, self.'!get_cstack'());
                op($frame, 'push_i', $bstack, $itmp);
            }
        }

        if !$captured && $subtype eq 'capture' {
            my $sname := $!regalloc.fresh_s();
            op($frame, 'const_s', $sname, sval($node.name));
            self.call-meth('!cursor_capture', %!reg<cur>,
                :result-reg(self.'!get_cstack'()),
                :arg-regs([$p11, $sname]),
                :arg-types([$MVM_reg_obj, $MVM_reg_str]));
            $!regalloc.release_register($sname, $MVM_reg_str);
        }

        op($frame, 'getattr_i', %!reg<pos>, $p11, %!reg<curclass>,
            sval('$!pos'), ival(nqp::hintfor($!cursor_type, '$!pos')))
                unless $subtype eq 'zerowidth';

        $!regalloc.release_register($itmp, $MVM_reg_int64);
    }

    method regex_mark($label_index, $pos, $rep) {
        my $frame := $!qastcomp.mast_frame;
        my $bstack := %!reg<bstack>;
        my $mark := $!regalloc.fresh_i();
        my $elems := $!regalloc.fresh_i();
        my $caps := $!regalloc.fresh_i();
        my $haselemslabel := label();
        my $haselemsendlabel := label();
        op($frame, 'const_i64', $mark, ival($label_index));
        op($frame, 'elems', $elems, $bstack);
        op($frame, 'gt_i', $caps, $elems, %!reg<zero>);
        op($frame, 'if_i', $caps, $haselemslabel);
        op($frame, 'set', $caps, %!reg<zero>);
        op($frame, 'goto', $haselemsendlabel);
        $frame.add-label($haselemslabel);
        op($frame, 'dec_i', $elems);
        op($frame, 'atpos_i', $caps, $bstack, $elems);
        $frame.add-label($haselemsendlabel);
        op($frame, 'push_i', $bstack, $mark);
        op($frame, 'push_i', $bstack, $pos);
        op($frame, 'push_i', $bstack, $rep);
        op($frame, 'push_i', $bstack, $caps);
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($elems, $MVM_reg_int64);
        $!regalloc.release_register($caps, $MVM_reg_int64);
    }

    method regex_peek($label_index, *@regs) {
        my $frame := $!qastcomp.mast_frame;
        my $bstack := %!reg<bstack>;
        my $mark := $!regalloc.fresh_i();
        my $ptr := $!regalloc.fresh_i();
        my $i0 := $!regalloc.fresh_i();
        my $haselemsendlabel := label();
        my $backupendlabel := label();
        op($frame, 'const_i64', $mark, ival($label_index));
        op($frame, 'elems', $ptr, $bstack);
        $frame.add-label($haselemsendlabel);
        op($frame, 'lt_i', $i0, $ptr, %!reg<zero>);
        op($frame, 'if_i', $i0, $backupendlabel);
        op($frame, 'atpos_i', $i0, $bstack, $ptr);
        op($frame, 'eq_i', $i0, $i0, $mark);
        op($frame, 'if_i', $i0, $backupendlabel);
        op($frame, 'sub_i', $ptr, $ptr, %!reg<four>);
        op($frame, 'goto', $haselemsendlabel);
        $frame.add-label($backupendlabel);
        for @regs {
            op($frame, 'inc_i', $ptr);
            op($frame, 'atpos_i', $_, $bstack, $ptr) if $_.index != -1;
        }
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($ptr, $MVM_reg_int64);
        $!regalloc.release_register($i0, $MVM_reg_int64);
    }

    method regex_commit($label_index) {
        my $frame := $!qastcomp.mast_frame;
        my $bstack := %!reg<bstack>;
        my $mark := $!regalloc.fresh_i();
        my $ptr := $!regalloc.fresh_i();
        my $caps := $!regalloc.fresh_i();
        my $i0 := $!regalloc.fresh_i();
        my $haselemslabel := label();
        my $haselemsendlabel := label();
        my $backupendlabel := label();
        my $nocapslabel := label();
        my $makemarklabel := label();
        op($frame, 'const_i64', $mark, ival($label_index));
        op($frame, 'elems', $ptr, $bstack);
        op($frame, 'gt_i', $caps, $ptr, %!reg<zero>);
        op($frame, 'if_i', $caps, $haselemslabel);
        op($frame, 'set', $caps, %!reg<zero>);
        op($frame, 'goto', $haselemsendlabel);
        $frame.add-label($haselemslabel);
        op($frame, 'dec_i', $ptr);
        op($frame, 'atpos_i', $caps, $bstack, $ptr);
        op($frame, 'inc_i', $ptr);
        $frame.add-label($haselemsendlabel);
        op($frame, 'lt_i', $i0, $ptr, %!reg<zero>);
        op($frame, 'if_i', $i0, $backupendlabel);
        op($frame, 'atpos_i', $i0, $bstack, $ptr);
        op($frame, 'eq_i', $i0, $i0, $mark);
        op($frame, 'if_i', $i0, $backupendlabel);
        op($frame, 'sub_i', $ptr, $ptr, %!reg<four>);
        op($frame, 'goto', $haselemsendlabel);
        $frame.add-label($backupendlabel);
        op($frame, 'setelemspos', $bstack, $ptr);
        op($frame, 'lt_i', $i0, $caps, %!reg<one>);
        op($frame, 'if_i', $i0, $nocapslabel);
        op($frame, 'lt_i', $i0, $ptr, %!reg<one>);
        op($frame, 'if_i', $i0, $makemarklabel);
        op($frame, 'sub_i', $ptr, $ptr, %!reg<three>);
        op($frame, 'atpos_i', $i0, $bstack, $ptr);
        op($frame, 'ge_i', $i0, $i0, %!reg<zero>);
        op($frame, 'if_i', $i0, $makemarklabel);
        op($frame, 'add_i', $ptr, $ptr, %!reg<two>);
        op($frame, 'bindpos_i', $bstack, $ptr, $caps);
        op($frame, 'inc_i', $ptr);
        op($frame, 'goto', $nocapslabel);
        $frame.add-label($makemarklabel);
        op($frame, 'push_i', $bstack, %!reg<zero>);
        op($frame, 'push_i', $bstack, %!reg<negone>);
        op($frame, 'push_i', $bstack, %!reg<zero>);
        op($frame, 'push_i', $bstack, $caps);
        $frame.add-label($nocapslabel);
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($ptr, $MVM_reg_int64);
        $!regalloc.release_register($caps, $MVM_reg_int64);
        $!regalloc.release_register($i0, $MVM_reg_int64);
    }

    method regex_mast($node) {
        unless nqp::istype($node, QAST::Regex) {
            my $mast := $!qastcomp.as_mast($node);
            $!regalloc.release_register($mast.result_reg, $mast.result_kind);
            return $mast.instructions;
        }
        my $rxtype := $node.rxtype() || 'concat';
        self."$rxtype"($node) # expects to return an nqp::list of instructions
    }

    method uniprop($node) {
        my $frame := $!qastcomp.mast_frame;
        my $pname   := $!regalloc.fresh_s();
        my $pcode   := $!regalloc.fresh_i();
        my $pvcode  := $!regalloc.fresh_i();
        my $pprop   := $!regalloc.fresh_s();
        my $i0      := $!regalloc.fresh_i();
        my $testop  := $node.negate ?? 'if_i' !! 'unless_i';
        my $succeed := label();
        my $prop    := ~$node[0];
        op($frame, 'ge_i', $i0, %!reg<pos>, %!reg<eos>);
        op($frame, 'if_i', $i0, %!reg<fail>);
        if nqp::elems(@($node)) == 1 {
            my $hasvalcode := label();
            my $endblock   := label();
            if $prop eq 'name' || $prop eq 'Name' {
                my $s0 := $!regalloc.fresh_s();
                op($frame, 'ordat', $i0, %!reg<tgt>, %!reg<pos>);
                op($frame, 'getuniname', $s0, $i0);
                op($frame, 'const_i64', $i0, %!reg<zero>);
                op($frame, 'unless_s', $s0, $endblock);
                op($frame, 'ordfirst', $i0, $s0);
                op($frame, 'const_i64', $pcode, ival(60)); # not a property code but the ord of '<'
                op($frame, 'ne_i', $i0, $i0, $pcode);
                $frame.add-label($endblock);
                op($frame, 'if_i', $i0, $succeed);
            }
            elsif $prop ~~ /^ [ In<[A..Z]> | in<[a..z]> ]/ { # "InArabic" is a lookup of Block Arabic
                op($frame, 'const_s', $pname, sval(nqp::substr($prop,2)));
                op($frame, 'uniisblock', $i0, %!reg<tgt>, %!reg<pos>, $pname);
                op($frame, 'if_i', $i0, $succeed);
                op($frame, 'const_s', $pprop, sval('Block'));
                op($frame, 'unipropcode', $pcode, $pprop);
                op($frame, 'unless_i', $pcode, $endblock);
                op($frame, 'unipvalcode', $pvcode, $pcode, $pname);
                op($frame, 'if_i', $pvcode, $hasvalcode);
                $frame.add-label($endblock);
            }
            op($frame, 'const_s', $pname, sval($node[0]));
            op($frame, 'unipropcode', $pcode, $pname);
            op($frame, 'unipvalcode', $pvcode, $pcode, $pname);
            #~ op($frame, $testop, $pvcode, %!reg<fail>); # XXX I am sure we should fail here
            $frame.add-label($hasvalcode);
            op($frame, 'hasuniprop', $i0, %!reg<tgt>, %!reg<pos>, $pcode, $pvcode);
            $frame.add-label($succeed);
            op($frame, $testop, $i0, %!reg<fail>);
        }
        elsif $prop eq 'name' || $prop eq 'Name' {
            my $smrtmtch_mast := $!qastcomp.as_mast($node[1], :want($MVM_reg_obj));
            my $s0            := $!regalloc.fresh_s();
            op($frame, 'ordat', $i0, %!reg<tgt>, %!reg<pos>);
            op($frame, 'getuniname', $s0, $i0);
            self.call-meth('!DELEGATE_ACCEPTS', %!reg<cur>,
                :result-reg($i0), :int-result,
                :arg-regs([$smrtmtch_mast.result_reg, $s0]),
                :arg-types([$MVM_reg_obj, $MVM_reg_str]));
            op($frame, $testop, $i0, %!reg<fail>);
        }
        else {
            my $smrtmtch_mast := $!qastcomp.as_mast($node[1], :want($MVM_reg_obj));
            my $s0            := $!regalloc.fresh_s();
            my $tryintprop    := label();
            my $tryboolprop   := label();
            op($frame, 'const_s', $pname, sval($prop));
            op($frame, 'unipropcode', $pcode, $pname);
            op($frame, 'unipvalcode', $pvcode, $pcode, $pname);
            op($frame, 'ordat', $i0, %!reg<tgt>, %!reg<pos>);

            op($frame, 'getuniprop_str', $s0, $i0, $pcode);
            op($frame, 'unless_s', $s0, $tryintprop);
            self.call-meth('!DELEGATE_ACCEPTS', %!reg<cur>,
                :result-reg($i0), :int-result,
                :arg-regs([$smrtmtch_mast.result_reg, $s0]),
                :arg-types([$MVM_reg_obj, $MVM_reg_str]));
            op($frame, 'goto', $succeed);

            $frame.add-label($tryintprop);
            op($frame, 'getuniprop_int', $i0, $i0, $pcode);
            self.call-meth('!DELEGATE_ACCEPTS', %!reg<cur>,
                :result-reg($i0), :int-result,
                :arg-regs([$smrtmtch_mast.result_reg, $i0]),
                :arg-types([$MVM_reg_obj, $MVM_reg_int64]));

            $frame.add-label($succeed);
            op($frame, $testop, $i0, %!reg<fail>);
        }
        op($frame, 'inc_i', %!reg<pos>) unless $node.subtype eq 'zerowidth';
    }

    method ws($node) { self.subrule($node) }

    method dba($node) {
        my $sname := $!regalloc.fresh_s();
        op($!qastcomp.mast_frame, 'const_s', $sname, sval($node.name));
        self.call-meth('!dba', %!reg<cur>,
            :arg-regs([%!reg<pos>, $sname]),
            :arg-types([$MVM_reg_int64, $MVM_reg_str]));
        $!regalloc.release_register($sname, $MVM_reg_str);
    }

    method rxjump() {
        my $index := +@!rxjumps;
        @!rxjumps[$index] := MAST::Label.new();
        $index
    }

    sub op($frame, str $op, *@args) {
        MAST::Op.new_with_operand_array(:$frame, :$op, @args );
    }

    sub label()    { MAST::Label.new() }
    sub ival($val) { my int $i := $val; $i }
    sub nval($val) { $val }
    sub sval($val) { ~$val }
}
