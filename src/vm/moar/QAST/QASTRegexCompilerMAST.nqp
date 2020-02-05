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
    'if_o',                 # $MVM_reg_obj
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
    'unless_o',             # $MVM_reg_obj,
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

        op('const_i64', $negone, ival(-1));
        op('const_i64', $zero, ival(0));
        op('const_i64', $one, ival(1));
        op('const_i64', $two, ival(2));
        op('const_i64', $three, ival(3));
        op('const_i64', $four, ival(4));
        op('findmeth', $method, $self, sval('!cursor_start'));
        call($method, [ $Arg::obj ], :result($cur), $self );

        my $sharedclass;
        my int $has_cursor_type := $node.has_cursor_type();
        if $has_cursor_type {
            $!cursor_type := $node.cursor_type();
            my $wval := $!qastcomp.as_mast(QAST::WVal.new( :value($!cursor_type) ));
            op('set', $curclass, $wval.result_reg);
            op('getattr_o', $shared, $self, $curclass, sval('$!shared'),
                ival(nqp::hintfor($!cursor_type, '$!shared')));
            $!regalloc.release_register($wval.result_reg, $MVM_reg_obj);

            my $shared_wval := $!qastcomp.as_mast(
                QAST::WVal.new( :value($!cursor_type.'!shared_type'()) ));
            $sharedclass := $shared_wval.result_reg;
        }
        else {
            $sharedclass := $!regalloc.fresh_o();
            op('findmeth', $shared, $self, sval('!shared'));
            call($shared, [ $Arg::obj ], :result($shared), $self );
            op('getwhat', $sharedclass, $shared);
            op('getattr_o', $curclass, $shared, $sharedclass, sval('$!CUR_CLASS'), ival(-1));
        }

        op('getattr_s', $tgt, $shared, $sharedclass, sval('$!target'),
            ival(nqp::hintfor(ParseShared, '$!target')));
        op('getattr_i', $pos, $cur, $curclass, sval('$!from'),
            ival(nqp::hintfor($!cursor_type, '$!from')));
        op('getattr_o', $bstack, $cur, $curclass, sval('$!bstack'),
            ival(nqp::hintfor($!cursor_type, '$!bstack')));
        op('getattr_o', $tmp, $self, $curclass, sval('$!restart'),
            ival(nqp::hintfor($!cursor_type, '$!restart')));
        op('isconcrete', $itmp, $tmp);
        op('bindlex', $*BLOCK.resolve_lexical('$¢'), $cur);
        op('chars', $eos, $tgt);
        op('eq_i', $i0, $one, $itmp);
        op('if_i', $i0, $restartlabel);
        op('gt_i', $i0, $pos, $eos);
        op('if_i', $i0, $faillabel);
        $!regalloc.release_register($i0, $MVM_reg_int64);
        $!regalloc.release_register($itmp, $MVM_reg_int64);

        self.regex_mast($node);

        $i0 := $!regalloc.fresh_i();
        $itmp := $!regalloc.fresh_i();
        my $i18 := $!regalloc.fresh_i();
        $*MAST_FRAME.add-label($restartlabel);
        if $!cstack_used {
            op('getattr_o', $cstack, $cur, $curclass, sval('$!cstack'),
                ival(nqp::hintfor($!cursor_type, '$!cstack')));
        }
        $*MAST_FRAME.add-label($faillabel);
        op('isnull', $i0, $bstack);
        op('if_i', $i0, $donelabel);
        op('elems', $i0, $bstack);
        op('gt_i', $i0, $i0, $zero);
        op('unless_i', $i0, $donelabel);
        op('pop_i', $itmp, $bstack);
        if $!cstack_used {
            my $cstacklabel := label();
            op('islist', $i0, $cstack);
            op('unless_i', $i0, $cstacklabel);
            op('elems', $i0, $cstack);
            op('gt_i', $i0, $i0, $zero);
            op('unless_i', $i0, $cstacklabel);
            op('dec_i', $itmp);
            op('atpos_o', $back_cur, $cstack, $itmp);
            $*MAST_FRAME.add-label($cstacklabel);
        }
        op('pop_i', $rep, $bstack);
        op('pop_i', $pos, $bstack);
        op('pop_i', $itmp, $bstack);
        op('lt_i', $i0, $pos, $negone);
        op('if_i', $i0, $donelabel);
        op('lt_i', $i0, $pos, $zero);
        op('if_i', $i0, $faillabel);
        op('eq_i', $i0, $itmp, $zero);
        op('if_i', $i0, $faillabel);
        if $!cstack_used {
            # backtrack the cursor stack
            my $cutlabel := label();
            op('isnull', $i0, $cstack);
            op('if_i', $i0, $jumplabel);
            op('unless_o', $cstack, $jumplabel);
            op('elems', $i18, $bstack);
            op('le_i', $i0, $i18, $zero);
            op('if_i', $i0, $cutlabel);
            op('dec_i', $i18);
            op('atpos_i', $i18, $bstack, $i18);
            $*MAST_FRAME.add-label($cutlabel);
            op('setelemspos', $cstack, $i18);
        }
        $*MAST_FRAME.add-label($jumplabel);
        op('jumplist', ival(+@!rxjumps), $itmp);
        op('goto', $_) for @!rxjumps;
        $*MAST_FRAME.add-label($donelabel);
        op('findmeth', $method, $cur, sval('!cursor_fail'));
        call($method, [ $Arg::obj ], $cur); # don't pass a :result so it's void

        MAST::InstructionList.new($cur, $MVM_reg_obj)
    }

    method alt($node) {
        unless $node.name {
            return self.altseq($node);
        }

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
            op(
                $obj_idx < 32768 ?? 'wval' !! 'wval_wide',
                %!reg<back_cur>,
                $sc_idx,
                $obj_idx
            );
            $have_sc := 1;
        }
        else {
            op('bootintarray', %!reg<back_cur>);
            op('create', %!reg<back_cur>, %!reg<back_cur>);
        }

        # Calculate all the branches to try, which populates the bstack
        # with the options. Then immediately fail to start iterating it.
        my $endlabel_index := self.rxjump();
        my $endlabel := @!rxjumps[$endlabel_index];

        # Emit all the possible alternatives
        my $iter     := nqp::iterator($node.list);
        my $itmp     := $!regalloc.fresh_i();
        while $iter {
            nqp::shift($iter);
            my $altlabel_index := self.rxjump();
            my $altlabel := @!rxjumps[$altlabel_index];
            nqp::push_i(@label_arr, $altlabel_index);

            if !$have_sc {
                op('const_i64', $itmp, ival($altlabel_index));
                op('push_i', %!reg<back_cur>, $itmp);
            }
        }

        self.regex_mark($endlabel_index, %!reg<negone>, %!reg<zero>);
        op('findmeth', %!reg<method>, %!reg<cur>, sval('!alt'));
        my $name := $!regalloc.fresh_s();
        op('const_s', $name, sval($node.name));
        call(%!reg<method>, [ $Arg::obj, $Arg::int, $Arg::str, $Arg::obj ],
            %!reg<cur>, %!reg<pos>, $name, %!reg<back_cur>);
        $!regalloc.release_register($name, $MVM_reg_str);
        op('goto', %!reg<fail>);

        my $altcount := 0;
        $iter := nqp::iterator($node.list);
        while $iter {
            my $altlabel_index := nqp::atpos_i(@label_arr, $altcount);
            my $altlabel := @!rxjumps[$altlabel_index];
            $*MAST_FRAME.add-label($altlabel);
            self.regex_mast(nqp::shift($iter));
            op('goto', $endlabel);

            $altcount++;
        }

        $!regalloc.release_register($itmp, $MVM_reg_int64);
        $*MAST_FRAME.add-label($endlabel);
        self.regex_commit($endlabel_index) if $node.backtrack eq 'r';
    }

    method altseq($node) {
        my $iter := nqp::iterator($node.list);
        my $endlabel_index := self.rxjump();
        my $endlabel := @!rxjumps[$endlabel_index];
        self.regex_mark($endlabel_index, %!reg<negone>, %!reg<zero>);
        my $altlabel_index := self.rxjump();
        my $altlabel := @!rxjumps[$altlabel_index];
        while $iter {
            $*MAST_FRAME.add-label($altlabel);
            my $matcher := nqp::shift($iter);
            if $iter {
                $altlabel_index := self.rxjump();
                $altlabel := @!rxjumps[$altlabel_index];
                self.regex_mark($altlabel_index, %!reg<pos>, %!reg<zero>);
            }
            self.regex_mast($matcher);
            if $iter {
                self.regex_commit($endlabel_index) if $node.backtrack eq 'r';
                op('goto', $endlabel);
            }
        }
        $*MAST_FRAME.add-label($endlabel);
    }

    method anchor($node) {
        my $subtype := $node.subtype;
        my $donelabel := label();
        my $itmp := $!regalloc.fresh_i();
        my $pos := %!reg<pos>;
        my $fail := %!reg<fail>;
        if $subtype eq 'bos' {
            op('ne_i', $itmp, $pos, %!reg<zero>);
            op('if_i', $itmp, $fail);
        }
        elsif $subtype eq 'eos' {
            op('lt_i', $itmp, $pos, %!reg<eos>);
            op('if_i', $itmp, $fail);
        }
        elsif $subtype eq 'lwb' {
            my $cclass_word := $!regalloc.fresh_i();
            op('ge_i', $itmp, $pos, %!reg<eos>);
            op('if_i', $itmp, $fail);
            op('const_i64', $cclass_word, ival(nqp::const::CCLASS_WORD));
            op('iscclass', $itmp, $cclass_word, %!reg<tgt>, $pos);
            op('unless_i', $itmp, %!reg<fail>);
            op('sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op('iscclass', $itmp, $cclass_word, %!reg<tgt>, $itmp);
            op('if_i', $itmp, $fail);
            $!regalloc.release_register($cclass_word, $MVM_reg_int64);
        }
        elsif $subtype eq 'rwb' {
            my $cclass_word := $!regalloc.fresh_i();
            op('le_i', $itmp, $pos, %!reg<zero>);
            op('if_i', $itmp, $fail);
            op('const_i64', $cclass_word, ival(nqp::const::CCLASS_WORD));
            op('iscclass', $itmp, $cclass_word, %!reg<tgt>, $pos);
            op('if_i', $itmp, %!reg<fail>);
            op('sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op('iscclass', $itmp, $cclass_word, %!reg<tgt>, $itmp);
            op('unless_i', $itmp, $fail);
            $!regalloc.release_register($cclass_word, $MVM_reg_int64);
        }
        elsif $subtype eq 'bol' {
            my $cclass_newline := $!regalloc.fresh_i();
            op('eq_i', $itmp, %!reg<pos>, %!reg<zero>);
            op('if_i', $itmp, $donelabel);
            op('ge_i', $itmp, $pos, %!reg<eos>);
            op('if_i', $itmp, $fail);
            op('sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op('const_i64', $cclass_newline, ival(nqp::const::CCLASS_NEWLINE));
            op('iscclass', $itmp, $cclass_newline, %!reg<tgt>, $itmp);
            op('unless_i', $itmp, $fail);
            $*MAST_FRAME.add-label($donelabel);
            $!regalloc.release_register($cclass_newline, $MVM_reg_int64);
        }
        elsif $subtype eq 'eol' {
            my $cclass_newline := $!regalloc.fresh_i();
            op('const_i64', $cclass_newline, ival(nqp::const::CCLASS_NEWLINE));
            op('iscclass', $itmp, $cclass_newline, %!reg<tgt>, %!reg<pos>);
            op('if_i', $itmp, $donelabel);
            op('ne_i', $itmp, %!reg<pos>, %!reg<eos>);
            op('if_i', $itmp, $fail);
            op('eq_i', $itmp, %!reg<pos>, %!reg<zero>);
            op('if_i', $itmp, $donelabel);
            op('sub_i', $itmp, %!reg<pos>, %!reg<one>);
            op('iscclass', $itmp, $cclass_newline, %!reg<tgt>, $itmp);
            op('if_i', $itmp, $fail);
            $*MAST_FRAME.add-label($donelabel);
            $!regalloc.release_register($cclass_newline, $MVM_reg_int64);
        }
        elsif $subtype eq 'fail' {
            op('goto', $fail);
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
        my $subtype := $node.name;
        my $cclass := %cclass_code{ $subtype };
        nqp::die("Unrecognized subtype '$subtype' in QAST::Regex cclass")
            unless $cclass;

        my $itmp := $!regalloc.fresh_i();
        op('ge_i', $itmp, %!reg<pos>, %!reg<eos>);
        op('if_i', $itmp, %!reg<fail>);

        if $cclass != nqp::const::CCLASS_ANY {
            my $testop := $node.negate ?? 'if_i' !! 'unless_i';
            op('const_i64', $itmp, ival($cclass));
            op('iscclass', $itmp, $itmp, %!reg<tgt>, %!reg<pos>);
            op($testop, $itmp, %!reg<fail>);
        }

        op('inc_i', %!reg<pos>) unless $node.subtype eq 'zerowidth';
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
        my $conjlabel_index := self.rxjump();
        my $conjlabel := @!rxjumps[$conjlabel_index];
        my $firstlabel := label();
        my $iter := nqp::iterator($node.list);
        op('goto', $firstlabel);
        $*MAST_FRAME.add-label($conjlabel);
        op('goto', %!reg<fail>);
        # call the first child
        $*MAST_FRAME.add-label($firstlabel);
        # make a mark that holds our starting position in the pos slot
        self.regex_mark($conjlabel_index, %!reg<pos>, %!reg<zero>);
        self.regex_mast(nqp::shift($iter));
        # use previous mark to make one with pos=start, rep=end
        my $itmp := $!regalloc.fresh_i();
        my $i12 := $!regalloc.fresh_i();
        self.regex_peek($conjlabel_index, $itmp);
        self.regex_mark($conjlabel_index, $itmp, %!reg<pos>);

        while $iter {
            op('set', %!reg<pos>, $itmp);
            self.regex_mast(nqp::shift($iter));
            self.regex_peek($conjlabel_index, $itmp, $i12);
            op('ne_i', $i12, %!reg<pos>, $i12);
            op('if_i', $i12, %!reg<fail>);
        }
        op('set', %!reg<pos>, $itmp) if $node.subtype eq 'zerowidth';
        $!regalloc.release_register($itmp, $MVM_reg_int64);
        $!regalloc.release_register($i12, $MVM_reg_int64);
    }

    method enumcharlist($node) {
        my $op := $node.negate ?? 'indexnat' !! 'indexat';
        my $i0 := $!regalloc.fresh_i();
        my $donelabel := label();
        # The indexat and indexnat opcodes assume <+[]>/<-[]> semantics, and don't return true at EOS,
        # so we compensate here by checking for EOS explicitly in the negative case, and succeeding.
        # (If instead we fix indexnat, we'd have to put the EOS check on the non-zerowidth branches,
        # but that makes the compiler loop for some reason, hence this approach.)
        if $node.subtype eq 'zerowidth' && $node.negate {
            op('ge_i', $i0, %!reg<pos>, %!reg<eos>);
            op('if_i', $i0, $donelabel);
        }
        if $node.subtype eq 'ignoremark' || $node.subtype eq 'ignorecase+ignoremark' {
            my $s0 := $!regalloc.fresh_s();
            my $i1 := $!regalloc.fresh_i();
            op('ordbaseat', $i0, %!reg<tgt>, %!reg<pos>);
            op('lt_i', $i1, $i0, %!reg<zero>);
            op('if_i', $i1, %!reg<fail>);
            op('chr', $s0, $i0);
            op($op, $s0, %!reg<zero>, sval($node[0]), %!reg<fail>);
            $!regalloc.release_register($i1, $MVM_reg_int64);
        }
        else {
            op($op, %!reg<tgt>, %!reg<pos>, sval($node[0]), %!reg<fail>);
        }
        op('inc_i', %!reg<pos>)
	        unless $node.subtype eq 'zerowidth';
        $*MAST_FRAME.add-label($donelabel) if $donelabel;
    }

    method charrange($node) {
        my $i0    := $!regalloc.fresh_i();
        my $i1    := $!regalloc.fresh_i();
        my $lower := $!regalloc.fresh_i();
        my $upper := $!regalloc.fresh_i();
        op('ge_i', $i0, %!reg<pos>, %!reg<eos>);
        op('if_i', $i0, %!reg<fail>);
        op('const_i64', $lower, ival($node[1].value));
        op('const_i64', $upper, ival($node[2].value));
        if $node[0] eq 'ignorecase+ignoremark' {
            my $succeed := label();
            my $s0      := $!regalloc.fresh_s();
            my $s1      := $!regalloc.fresh_s();
            my $i2      := $!regalloc.fresh_i();
            my $goal    := $node.negate ?? %!reg<fail> !! $succeed;
            op('substr_s', $s0, %!reg<tgt>, %!reg<pos>, %!reg<one>);
            op('lc', $s1, $s0);
            op('ordbaseat', $i0, $s1, %!reg<zero>);
            op('ge_i', $i1, $i0, $lower);
            op('le_i', $i2, $i0, $upper);
            op('band_i', $i1, $i1, $i2);
            op('if_i', $i1, $goal);
            op('uc', $s1, $s0);
            op('ordbaseat', $i0, $s1, %!reg<zero>);
            op('ge_i', $i1, $i0, $lower);
            op('le_i', $i2, $i0, $upper);
            op('band_i', $i1, $i1, $i2);
            op('if_i', $i1, $goal);
            $!regalloc.release_register($s0, $MVM_reg_str);
            $!regalloc.release_register($s1, $MVM_reg_str);
            $!regalloc.release_register($i2, $MVM_reg_int64);
            unless $node.negate {
                op('goto', %!reg<fail>);
                $*MAST_FRAME.add-label($succeed);
            }
        }
        elsif $node[0] eq 'ignorecase' {
            my $succeed := label();
            my $s0      := $!regalloc.fresh_s();
            my $s1      := $!regalloc.fresh_s();
            my $i2      := $!regalloc.fresh_i();
            my $goal    := $node.negate ?? %!reg<fail> !! $succeed;
            op('substr_s', $s0, %!reg<tgt>, %!reg<pos>, %!reg<one>);
            op('lc', $s1, $s0);
            op('getcp_s', $i0, $s1, %!reg<zero>);  # safe for synthetics
            op('ge_i', $i1, $i0, $lower);
            op('le_i', $i2, $i0, $upper);
            op('band_i', $i1, $i1, $i2);
            op('if_i', $i1, $goal);
            op('uc', $s1, $s0);
            op('getcp_s', $i0, $s1, %!reg<zero>);  # safe for synthetics
            op('ge_i', $i1, $i0, $lower);
            op('le_i', $i2, $i0, $upper);
            op('band_i', $i1, $i1, $i2);
            op('if_i', $i1, $goal);
            $!regalloc.release_register($s0, $MVM_reg_str);
            $!regalloc.release_register($s1, $MVM_reg_str);
            $!regalloc.release_register($i2, $MVM_reg_int64);
            unless $node.negate {
                op('goto', %!reg<fail>);
                $*MAST_FRAME.add-label($succeed);
            }
        }
        elsif $node[0] eq 'ignoremark' {
            my $succeed := label();
            my $goal := $node.negate ?? $succeed !! %!reg<fail>;
            op('ordbaseat', $i0, %!reg<tgt>, %!reg<pos>);
            op('gt_i', $i1, $i0, $upper);
            op('if_i', $i1, $goal);
            op('lt_i', $i1, $i0, $lower);
            op('if_i', $i1, $goal);
            if $node.negate {
                op('goto', %!reg<fail>);
                $*MAST_FRAME.add-label($succeed);
            }
        }
        else {
            my $succeed := label();
            my $goal    := $node.negate ?? $succeed !! %!reg<fail>;
            op('getcp_s', $i0, %!reg<tgt>, %!reg<pos>);  # safe for synthetics
            op('gt_i', $i1, $i0, $upper);
            op('if_i', $i1, $goal);
            op('lt_i', $i1, $i0, $lower);
            op('if_i', $i1, $goal);
            if $node.negate {
                op('goto', %!reg<fail>);
                $*MAST_FRAME.add-label($succeed);
            }
        }
        op('inc_i', %!reg<pos>) unless $node.subtype eq 'zerowidth';
        $!regalloc.release_register($i0,    $MVM_reg_int64);
        $!regalloc.release_register($i1,    $MVM_reg_int64);
        $!regalloc.release_register($lower, $MVM_reg_int64);
        $!regalloc.release_register($upper, $MVM_reg_int64);
    }

    method literal($node) {
        my $litconst := $node[0];
        my $s0 := $!regalloc.fresh_s();
        my $i0 := $!regalloc.fresh_i();
        if $node.negate {
            # Need explicit check we're not going beyond the string end in the
            # negated case, to avoid false positive.
            op('const_i64', $i0, ival(nqp::chars($litconst)));
            op('add_i', $i0, %!reg<pos>, $i0);
            op('gt_i', $i0, $i0, %!reg<eos>);
            op('if_i', $i0, %!reg<fail>);
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
        op('const_s', $s0, sval($litconst));
        op($eq_op, $i0, %!reg<tgt>, $s0, %!reg<pos>);
        op($cmpop, $i0, %!reg<fail>);
        unless $node.subtype eq 'zerowidth' {
            op('const_i64', $i0, ival(nqp::chars($litconst)));
            op('add_i', %!reg<pos>, %!reg<pos>, $i0);
        }
        $!regalloc.release_register($s0, $MVM_reg_str);
        $!regalloc.release_register($i0, $MVM_reg_int64);
    }

    method pass($node) {
        my @args := [%!reg<cur>, %!reg<pos>];
        my @flags := [$Arg::obj, $Arg::int];
        my $op;
        my $meth := $!regalloc.fresh_o();
        op('findmeth', $meth, %!reg<cur>, sval('!cursor_pass'));
        if $node.name {
            my $sname := $!regalloc.fresh_s();
            op('const_s', $sname, sval($node.name));
            nqp::push(@args, $sname);
            nqp::push(@flags, $Arg::str);
        }
        elsif nqp::elems(@($node)) == 1 {
            my $name := $!qastcomp.as_mast($node[0], :want($MVM_reg_str));
            nqp::push(@args, $name.result_reg);
            nqp::push(@flags, $Arg::str);
        }
        if $node.backtrack ne 'r' {
            nqp::push(@args, sval('backtrack'));
            nqp::push(@args, %!reg<one>);
            nqp::push(@flags, $Arg::named +| $Arg::int);
        }
        call($meth, @flags, :result($meth), |@args);
        $!regalloc.release_register($meth, $MVM_reg_obj);
        op('return_o', %!reg<cur>);
    }

    method qastnode($node) {
        op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'), %!reg<pos>, ival(-1));
        op('bindlex', $*BLOCK.resolve_lexical('$¢'), %!reg<cur>);
        my $cmast := $!qastcomp.as_mast($node[0]);
        $!regalloc.release_register($cmast.result_reg, $cmast.result_kind);
        my $cndop := $node.negate # the negation meaning is reversed for the op
          ?? @Condition-op-kinds[        $cmast.result_kind]
          !! @Negated-condition-op-kinds[$cmast.result_kind];
        if $node.subtype eq 'zerowidth' && ! nqp::isnull($cndop) {
            op('decont', $cmast.result_reg, $cmast.result_reg)
                if $cmast.result_kind == $MVM_reg_obj;
            op($cndop, $cmast.result_reg, %!reg<fail>);
        }
    }

    method dynquant($node) {
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
        op('atpos_i', $min_reg, $res_reg, %!reg<zero>);
        op('atpos_i', $max_reg, $res_reg, %!reg<one>);

        # return if $min == 0 && $max == 0;
        op('if_i', $min_reg, $skip8label);
        op('unless_i', $max_reg, $skip7label);
        $*MAST_FRAME.add-label($skip8label);

        # $needrep := $min > 1 || $max > 1;
        op('gt_i', $needrep, $min_reg, %!reg<one>);
        op('if_i', $needrep, $skip0label);
        op('gt_i', $needrep, $max_reg, %!reg<one>);
        $*MAST_FRAME.add-label($skip0label);

        # $needmark := $needrep || $backtrack eq 'r';
        if $backtrack eq 'r' {
            op('set', $needmark, %!reg<one>);
        }
        else {
            op('set', $needmark, $needrep);
        }

        if $backtrack eq 'f' {
            my $seplabel := label();
            op('set', $rep, %!reg<zero>);

            op('ge_i', $ireg, $min_reg, %!reg<one>); # if $min < 1 {
            op('if_i', $ireg, $skip1label);
            self.regex_mark($looplabel_index, $pos, $rep);
            op('goto', $donelabel);
            $*MAST_FRAME.add-label($skip1label);                      # }

            op('goto', $seplabel) if $sep;
            $*MAST_FRAME.add-label($looplabel);
            op('set', $ireg, $rep);
            if $sep {
                self.regex_mast($sep);
                $*MAST_FRAME.add-label($seplabel);
            }
            self.regex_mast($node[0]);
            op('set', $rep, $ireg);
            op('inc_i', $rep);

            op('le_i', $ireg, $min_reg, %!reg<one>); # if $min > 1 {
            op('if_i', $ireg, $skip2label);
            op('lt_i', $ireg, $rep, $min_reg);
            op('if_i', $ireg, $looplabel);
            $*MAST_FRAME.add-label($skip2label);         # }

            op('le_i', $ireg, $max_reg, %!reg<one>), # if $max > 1 {
            op('if_i', $ireg, $skip3label);
            op('ge_i', $ireg, $rep, $max_reg);
            op('if_i', $ireg, $donelabel);
            $*MAST_FRAME.add-label($skip3label);         # }

            op('eq_i', $ireg, $max_reg, %!reg<one>); # unless $max == 1 {
            op('if_i', $ireg, $skip4label);
            self.regex_mark($looplabel_index, $pos, $rep);
            $*MAST_FRAME.add-label($skip4label);         # }

            $*MAST_FRAME.add-label($donelabel);
        }
        else {
            op('if_i', $min_reg, $skip1label);     # if $min == 0 {
            self.regex_mark($donelabel_index, $pos, %!reg<zero>);
            $*MAST_FRAME.add-label($skip1label);

            op('unless_i', $min_reg, $skip2label); # elsif $needmark {
            op('unless_i', $needmark, $skip2label);
            self.regex_mark($donelabel_index, %!reg<negone>, %!reg<zero>);
            $*MAST_FRAME.add-label($skip2label);                    # }

            $*MAST_FRAME.add-label($looplabel);
            self.regex_mast($node[0]);

            op('unless_i', $needmark, $skip3label); # if $needmark {
            self.regex_peek($donelabel_index, MAST::Local.new(:index(-1)), $rep);
            self.regex_commit($donelabel_index) if $backtrack eq 'r';
            op('inc_i', $rep);

            op('le_i', $ireg, $max_reg, %!reg<one>); # if $max > 1 {
            op('if_i', $ireg, $skip4label);
            op('ge_i', $ireg, $rep, $max_reg);
            op('if_i', $ireg, $donelabel);
            $*MAST_FRAME.add-label($skip4label);                    # }
            $*MAST_FRAME.add-label($skip3label);                        # }

            op('eq_i', $ireg, $max_reg, %!reg<one>); # unless $max == 1 {
            op('if_i', $ireg, $skip5label);
            self.regex_mark($donelabel_index, $pos, $rep);
            self.regex_mast($sep) if $sep;
            op('goto', $looplabel);
            $*MAST_FRAME.add-label($skip5label);         # }
            $*MAST_FRAME.add-label($donelabel);

            op('le_i', $ireg, $min_reg, %!reg<one>); # if $min > 1 {
            op('if_i', $ireg, $skip6label);
            op('lt_i', $ireg, $rep, $min_reg);
            op('if_i', $ireg, %!reg<fail>);
            $*MAST_FRAME.add-label($skip6label);         # }
        }
        $*MAST_FRAME.add-label($skip7label);
    }

    method quant($node) {
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
            op('set', $rep, %!reg<zero>);
            if $min < 1 {
                self.regex_mark($looplabel_index, $pos, $rep);
                op('goto', $donelabel);
            }
            op('goto', $seplabel) if $sep;
            $*MAST_FRAME.add-label($looplabel);
            op('set', $ireg, $rep);
            if $sep {
                self.regex_mast($sep);
                $*MAST_FRAME.add-label($seplabel);
            }
            self.regex_mast($node[0]);
            op('set', $rep, $ireg);
            op('inc_i', $rep);
            if $min > 1 {
                my $minreg := $!regalloc.fresh_i();
                op('const_i64', $minreg, ival($min));
                op('lt_i', $ireg, $rep, $minreg);
                op('if_i', $ireg, $looplabel);
                $!regalloc.release_register($minreg, $MVM_reg_int64);
            }
            if $max > 1 {
                my $maxreg := $!regalloc.fresh_i();
                op('const_i64', $maxreg, ival($max));
                op('ge_i', $ireg, $rep, $maxreg);
                op('if_i', $ireg, $donelabel);
                $!regalloc.release_register($maxreg, $MVM_reg_int64);
            }
            self.regex_mark($looplabel_index, $pos, $rep) if $max != 1;
            $*MAST_FRAME.add-label($donelabel);
        }
        else {
            if $min == 0 { self.regex_mark($donelabel_index, $pos, %!reg<zero>); }
            elsif $needmark { self.regex_mark($donelabel_index, %!reg<negone>, %!reg<zero>); }
            $*MAST_FRAME.add-label($looplabel);
            self.regex_mast($node[0]);
            if $needmark {
                self.regex_peek($donelabel_index, MAST::Local.new(:index(-1)), $rep);
                self.regex_commit($donelabel_index) if $backtrack eq 'r';
                op('inc_i', $rep);
                if $max > 1 {
                    my $maxreg := $!regalloc.fresh_i();
                    op('const_i64', $maxreg, ival($max));
                    op('ge_i', $ireg, $rep, $maxreg);
                    op('if_i', $ireg, $donelabel);
                    $!regalloc.release_register($maxreg, $MVM_reg_int64);
                }
            }
            unless $max == 1 {
                self.regex_mark($donelabel_index, $pos, $rep);
                self.regex_mast($sep) if $sep;
                op('goto', $looplabel);
            }
            $*MAST_FRAME.add-label($donelabel);
            if $min > 1 {
                my $minreg := $!regalloc.fresh_i();
                op('const_i64', $minreg, ival($min));
                op('lt_i', $ireg, $rep, $minreg);
                op('if_i', $ireg, %!reg<fail>);
                $!regalloc.release_register($minreg, $MVM_reg_int64);
            }
        }
    }

    method scan($node) {
        my $looplabel_index := self.rxjump();
        my $looplabel := @!rxjumps[$looplabel_index];
        my $scanlabel := label();
        my $donelabel := label();
        my $ireg0 := $!regalloc.fresh_i();
        op('getattr_i', $ireg0, %!reg<self>, %!reg<curclass>, sval('$!from'),
            ival(nqp::hintfor($!cursor_type, '$!from')));
        op('ne_i', $ireg0, $ireg0, %!reg<negone>);
        op('if_i', $ireg0, $donelabel);
        op('goto', $scanlabel);
        $*MAST_FRAME.add-label($looplabel);
        op('inc_i', %!reg<pos>);
        if $node.list && $node.subtype ne 'ignorecase' && $node.subtype ne 'ignoremark' && $node.subtype ne 'ignorecase+ignoremark' {
            my $lit := $!regalloc.fresh_s();
            op('const_s', $lit, sval($node[0]));
            op('index_s', %!reg<pos>, %!reg<tgt>, $lit, %!reg<pos>);
            op('eq_i', $ireg0, %!reg<pos>, %!reg<negone>);
            $!regalloc.release_register($lit, $MVM_reg_str);
        }
        elsif $node.list && ($node.subtype eq 'ignorecase' || $node.subtype eq 'ignorecase+ignoremark' || $node.subtype eq 'ignoremark') {
            my $lit := $!regalloc.fresh_s();
            my $op  := $node.subtype eq 'ignorecase' ?? 'indexic_s' !!
                       $node.subtype eq 'ignoremark' ?? 'indexim_s' !! 'indexicim_s';
            op('const_s', $lit, sval($node[0]));
            op($op, %!reg<pos>, %!reg<tgt>, $lit, %!reg<pos>);
            op('eq_i', $ireg0, %!reg<pos>, %!reg<negone>);
            $!regalloc.release_register($lit, $MVM_reg_str);
        }
        else {
            op('gt_i', $ireg0, %!reg<pos>, %!reg<eos>);
        }
        op('if_i', $ireg0, %!reg<fail>);
        op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!from'), %!reg<pos>, ival(-1));
        $*MAST_FRAME.add-label($scanlabel);
        self.regex_mark($looplabel_index, %!reg<pos>, %!reg<zero>);
        $*MAST_FRAME.add-label($donelabel);
    }

    method subcapture($node) {
        my $donelabel := label();
        my $faillabel_index := self.rxjump();
        my $faillabel := @!rxjumps[$faillabel_index];
        my $itmp := $!regalloc.fresh_i();
        my $p11 := $!regalloc.fresh_o();
        my $s11 := $!regalloc.fresh_s();
        self.regex_mark($faillabel_index, %!reg<pos>, %!reg<zero>);
        self.regex_mast($node[0]);
        self.regex_peek($faillabel_index, $itmp);
        op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'),
            %!reg<pos>, ival(-1));
        op('findmeth', %!reg<method>, %!reg<cur>, sval('!cursor_start_subcapture'));
        call(%!reg<method>, [$Arg::obj, $Arg::int], %!reg<cur>, $itmp, :result($p11));
        op('findmeth', %!reg<method>, $p11, sval('!cursor_pass'));
        call(%!reg<method>, [$Arg::obj, $Arg::int], $p11, %!reg<pos>);
        op('findmeth', %!reg<method>, %!reg<cur>, sval('!cursor_capture'));
        op('const_s', $s11, sval($node.name));
        call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str],
            %!reg<cur>, $p11, $s11, :result(self.'!get_cstack'()));
        op('goto', $donelabel);
        $*MAST_FRAME.add-label($faillabel);
        op('goto', %!reg<fail>);
        $*MAST_FRAME.add-label($donelabel);
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

     method children($node) {
        my @masts := nqp::list();
        my @results := nqp::list();
        my @result_kinds := nqp::list();
        my @flags := nqp::list();
        for @($node) {
            my $mast := $!qastcomp.as_mast($_);
            my $kind := $mast.result_kind;
            my $flag := @kind_to_args[$kind];
            if $_.flat {
                $flag := $flag +| ($_.named ?? $Arg::flatnamed !! $Arg::flat);
            }
            elsif $_.named {
                nqp::push(@results, $_.named);
                nqp::push(@result_kinds, NQPMu);
                $flag := $flag +| $Arg::named;
            }
            nqp::push(@results, $mast.result_reg);
            nqp::push(@result_kinds, $kind);
            nqp::push(@flags, $flag);
        }
        [@masts, @results, @result_kinds, @flags]
    }

    method subrule($node) {
        my $subtype  := $node.subtype;
        my $testop   := $node.negate ?? 'ge_i' !! 'lt_i';
        my $captured := 0;

        my @arg_info := self.children($node[0]);
        my @args := @arg_info[1];
        my @kinds := @arg_info[2];
        my @flags := @arg_info[3];

        my $submast := nqp::shift(@args);
        my $submast_kind := nqp::shift(@kinds);
        $!regalloc.release_register($submast, $submast_kind);

        my $i := 0;
        for @kinds {
            $!regalloc.release_register(@args[$i], $_)
                if nqp::isconcrete($_);
            $i++;
        }

        @flags[0] := $Arg::obj;

        my $p11 := %!reg<back_cur>;
        my $itmp := $!regalloc.fresh_i();

        op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'),
            %!reg<pos>, ival(-1));
        if nqp::istype($node[0][0], QAST::SVal) {
            # Method call.
            op('findmeth', %!reg<method>, %!reg<cur>, sval($node[0][0].value));
            call(%!reg<method>, @flags, %!reg<cur>, |@args, :result($p11));
        }
        else {
            # Normal invocation (probably positional capture).
            call($submast, @flags, %!reg<cur>, |@args, :result($p11));
        }
        op('getattr_i', $itmp, $p11, %!reg<curclass>, sval('$!pos'),
            ival(nqp::hintfor($!cursor_type, '$!pos')));
        op($testop, $itmp, $itmp, %!reg<zero>);
        op('if_i', $itmp, %!reg<fail>);

        if $subtype ne 'zerowidth' {
            my $passlabel_index := self.rxjump();
            my $passlabel := @!rxjumps[$passlabel_index];
            if $node.backtrack eq 'r' {
                unless $subtype eq 'method' {
                    self.regex_mark($passlabel_index, %!reg<negone>, %!reg<zero>);
                }
                $*MAST_FRAME.add-label($passlabel);
            }
            else {
                my $backlabel_index := self.rxjump();
                my $backlabel := @!rxjumps[$backlabel_index];
                op('goto', $passlabel);
                $*MAST_FRAME.add-label($backlabel);
                # %!reg<back_cur> is magically set just before the jump at the backtracker
                op('findmeth', %!reg<method>, $p11, sval('!cursor_next'));
                call(%!reg<method>, [$Arg::obj], $p11, :result($p11));
                op('getattr_i', $itmp, $p11, %!reg<curclass>, sval('$!pos'),
                    ival(nqp::hintfor($!cursor_type, '$!pos')));
                op($testop, $itmp, $itmp, %!reg<zero>);
                op('if_i', $itmp, %!reg<fail>);
                $*MAST_FRAME.add-label($passlabel);

                if $subtype eq 'capture' {
                    my $sname := $!regalloc.fresh_s();
                    op('findmeth', %!reg<method>, %!reg<cur>,
                        sval('!cursor_capture'));
                    op('const_s', $sname, sval($node.name));
                    call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str],
                        %!reg<cur>, $p11, $sname, :result(self.'!get_cstack'()));
                    $!regalloc.release_register($sname, $MVM_reg_str);
                    $captured := 1;

                    # Record a mark on the bstack saying how many captures we
                    # had before pushing this one, so we can remove it upon
                    # backtracking (otherwise we end up keeping backtracked
                    # over subrule captures around).
                    my $bstack := %!reg<bstack>;
                    op('const_i64', $itmp, ival($backlabel_index));
                    op('push_i', $bstack, $itmp);
                    op('push_i', $bstack, %!reg<negone>);
                    op('push_i', $bstack, %!reg<negone>);
                    op('elems', $itmp, self.'!get_cstack'());
                    op('dec_i', $itmp);
                    op('push_i', $bstack, $itmp);
                }
                else {
                    op('findmeth', %!reg<method>, %!reg<cur>,
                        sval('!cursor_push_cstack'));
                    call(%!reg<method>, [$Arg::obj, $Arg::obj],
                        %!reg<cur>, $p11, :result(self.'!get_cstack'()));
                }

                my $bstack := %!reg<bstack>;
                op('const_i64', $itmp, ival($backlabel_index));
                op('push_i', $bstack, $itmp);
                op('push_i', $bstack, %!reg<zero>);
                op('push_i', $bstack, %!reg<pos>);
                op('elems', $itmp, self.'!get_cstack'());
                op('push_i', $bstack, $itmp);
            }
        }

        if !$captured && $subtype eq 'capture' {
            my $sname := $!regalloc.fresh_s();
            op('findmeth', %!reg<method>, %!reg<cur>,
                sval('!cursor_capture'));
            op('const_s', $sname, sval($node.name));
            call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str],
                %!reg<cur>, $p11, $sname, :result(self.'!get_cstack'()));
            $!regalloc.release_register($sname, $MVM_reg_str);
        }

        op('getattr_i', %!reg<pos>, $p11, %!reg<curclass>,
            sval('$!pos'), ival(nqp::hintfor($!cursor_type, '$!pos')))
                unless $subtype eq 'zerowidth';

        $!regalloc.release_register($itmp, $MVM_reg_int64);
    }

    method regex_mark($label_index, $pos, $rep) {
        my $bstack := %!reg<bstack>;
        my $mark := $!regalloc.fresh_i();
        my $elems := $!regalloc.fresh_i();
        my $caps := $!regalloc.fresh_i();
        my $haselemslabel := label();
        my $haselemsendlabel := label();
        op('const_i64', $mark, ival($label_index));
        op('elems', $elems, $bstack);
        op('gt_i', $caps, $elems, %!reg<zero>);
        op('if_i', $caps, $haselemslabel);
        op('set', $caps, %!reg<zero>);
        op('goto', $haselemsendlabel);
        $*MAST_FRAME.add-label($haselemslabel);
        op('dec_i', $elems);
        op('atpos_i', $caps, $bstack, $elems);
        $*MAST_FRAME.add-label($haselemsendlabel);
        op('push_i', $bstack, $mark);
        op('push_i', $bstack, $pos);
        op('push_i', $bstack, $rep);
        op('push_i', $bstack, $caps);
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($elems, $MVM_reg_int64);
        $!regalloc.release_register($caps, $MVM_reg_int64);
    }

    method regex_peek($label_index, *@regs) {
        my $bstack := %!reg<bstack>;
        my $mark := $!regalloc.fresh_i();
        my $ptr := $!regalloc.fresh_i();
        my $i0 := $!regalloc.fresh_i();
        my $haselemsendlabel := label();
        my $backupendlabel := label();
        op('const_i64', $mark, ival($label_index));
        op('elems', $ptr, $bstack);
        $*MAST_FRAME.add-label($haselemsendlabel);
        op('lt_i', $i0, $ptr, %!reg<zero>);
        op('if_i', $i0, $backupendlabel);
        op('atpos_i', $i0, $bstack, $ptr);
        op('eq_i', $i0, $i0, $mark);
        op('if_i', $i0, $backupendlabel);
        op('sub_i', $ptr, $ptr, %!reg<four>);
        op('goto', $haselemsendlabel);
        $*MAST_FRAME.add-label($backupendlabel);
        for @regs {
            op('inc_i', $ptr);
            op('atpos_i', $_, $bstack, $ptr) if $_.index != -1;
        }
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($ptr, $MVM_reg_int64);
        $!regalloc.release_register($i0, $MVM_reg_int64);
    }

    method regex_commit($label_index) {
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
        op('const_i64', $mark, ival($label_index));
        op('elems', $ptr, $bstack);
        op('gt_i', $caps, $ptr, %!reg<zero>);
        op('if_i', $caps, $haselemslabel);
        op('set', $caps, %!reg<zero>);
        op('goto', $haselemsendlabel);
        $*MAST_FRAME.add-label($haselemslabel);
        op('dec_i', $ptr);
        op('atpos_i', $caps, $bstack, $ptr);
        op('inc_i', $ptr);
        $*MAST_FRAME.add-label($haselemsendlabel);
        op('lt_i', $i0, $ptr, %!reg<zero>);
        op('if_i', $i0, $backupendlabel);
        op('atpos_i', $i0, $bstack, $ptr);
        op('eq_i', $i0, $i0, $mark);
        op('if_i', $i0, $backupendlabel);
        op('sub_i', $ptr, $ptr, %!reg<four>);
        op('goto', $haselemsendlabel);
        $*MAST_FRAME.add-label($backupendlabel);
        op('setelemspos', $bstack, $ptr);
        op('lt_i', $i0, $caps, %!reg<one>);
        op('if_i', $i0, $nocapslabel);
        op('lt_i', $i0, $ptr, %!reg<one>);
        op('if_i', $i0, $makemarklabel);
        op('sub_i', $ptr, $ptr, %!reg<three>);
        op('atpos_i', $i0, $bstack, $ptr);
        op('ge_i', $i0, $i0, %!reg<zero>);
        op('if_i', $i0, $makemarklabel);
        op('add_i', $ptr, $ptr, %!reg<two>);
        op('bindpos_i', $bstack, $ptr, $caps);
        op('inc_i', $ptr);
        op('goto', $nocapslabel);
        $*MAST_FRAME.add-label($makemarklabel);
        op('push_i', $bstack, %!reg<zero>);
        op('push_i', $bstack, %!reg<negone>);
        op('push_i', $bstack, %!reg<zero>);
        op('push_i', $bstack, $caps);
        $*MAST_FRAME.add-label($nocapslabel);
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
        my $pname   := $!regalloc.fresh_s();
        my $pcode   := $!regalloc.fresh_i();
        my $pvcode  := $!regalloc.fresh_i();
        my $pprop   := $!regalloc.fresh_s();
        my $i0      := $!regalloc.fresh_i();
        my $testop  := $node.negate ?? 'if_i' !! 'unless_i';
        my $succeed := label();
        my $prop    := ~$node[0];
        op('ge_i', $i0, %!reg<pos>, %!reg<eos>);
        op('if_i', $i0, %!reg<fail>);
        if nqp::elems(@($node)) == 1 {
            my $hasvalcode := label();
            my $endblock   := label();
            if $prop eq 'name' || $prop eq 'Name' {
                my $s0 := $!regalloc.fresh_s();
                op('ordat', $i0, %!reg<tgt>, %!reg<pos>);
                op('getuniname', $s0, $i0);
                op('const_i64', $i0, %!reg<zero>);
                op('unless_s', $s0, $endblock);
                op('ordfirst', $i0, $s0);
                op('const_i64', $pcode, ival(60)); # not a property code but the ord of '<'
                op('ne_i', $i0, $i0, $pcode);
                $*MAST_FRAME.add-label($endblock);
                op('if_i', $i0, $succeed);
            }
            elsif $prop ~~ /^ [ In<[A..Z]> | in<[a..z]> ]/ { # "InArabic" is a lookup of Block Arabic
                op('const_s', $pname, sval(nqp::substr($prop,2)));
                op('uniisblock', $i0, %!reg<tgt>, %!reg<pos>, $pname);
                op('if_i', $i0, $succeed);
                op('const_s', $pprop, sval('Block'));
                op('unipropcode', $pcode, $pprop);
                op('unless_i', $pcode, $endblock);
                op('unipvalcode', $pvcode, $pcode, $pname);
                op('if_i', $pvcode, $hasvalcode);
                $*MAST_FRAME.add-label($endblock);
            }
            op('const_s', $pname, sval($node[0]));
            op('unipropcode', $pcode, $pname);
            op('unipvalcode', $pvcode, $pcode, $pname);
            #~ op($testop, $pvcode, %!reg<fail>); # XXX I am sure we should fail here
            $*MAST_FRAME.add-label($hasvalcode);
            op('hasuniprop', $i0, %!reg<tgt>, %!reg<pos>, $pcode, $pvcode);
            $*MAST_FRAME.add-label($succeed);
            op($testop, $i0, %!reg<fail>);
        }
        elsif $prop eq 'name' || $prop eq 'Name' {
            my $smrtmtch_mast := $!qastcomp.as_mast($node[1], :want($MVM_reg_obj));
            my $s0            := $!regalloc.fresh_s();
            op('ordat', $i0, %!reg<tgt>, %!reg<pos>);
            op('getuniname', $s0, $i0);
            op('findmeth', %!reg<method>, %!reg<cur>, sval('!DELEGATE_ACCEPTS'));
            call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str], :result($i0),
                %!reg<cur>, $smrtmtch_mast.result_reg, $s0);
            op($testop, $i0, %!reg<fail>);
        }
        else {
            my $smrtmtch_mast := $!qastcomp.as_mast($node[1], :want($MVM_reg_obj));
            my $s0            := $!regalloc.fresh_s();
            my $tryintprop    := label();
            my $tryboolprop   := label();
            op('const_s', $pname, sval($prop));
            op('unipropcode', $pcode, $pname);
            op('unipvalcode', $pvcode, $pcode, $pname);
            op('ordat', $i0, %!reg<tgt>, %!reg<pos>);

            op('getuniprop_str', $s0, $i0, $pcode);
            op('unless_s', $s0, $tryintprop);
            op('findmeth', %!reg<method>, %!reg<cur>, sval('!DELEGATE_ACCEPTS'));
            call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str], :result($i0),
                %!reg<cur>, $smrtmtch_mast.result_reg, $s0);
            op('goto', $succeed);

            $*MAST_FRAME.add-label($tryintprop);
            op('getuniprop_int', $i0, $i0, $pcode);
            op('findmeth', %!reg<method>, %!reg<cur>, sval('!DELEGATE_ACCEPTS'));
            call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::int], :result($i0),
                %!reg<cur>, $smrtmtch_mast.result_reg, $i0);

            $*MAST_FRAME.add-label($succeed);
            op($testop, $i0, %!reg<fail>);
        }
        op('inc_i', %!reg<pos>) unless $node.subtype eq 'zerowidth';
    }

    method ws($node) { self.subrule($node) }

    method dba($node) {
        my @flags := [$Arg::obj, $Arg::int, $Arg::str];
        my $sname := $!regalloc.fresh_s();
        op('const_s', $sname, sval($node.name));
        op('findmeth', %!reg<method>, %!reg<cur>, sval('!dba'));
        call(%!reg<method>, @flags, %!reg<cur>, %!reg<pos>, $sname);
        $!regalloc.release_register($sname, $MVM_reg_str);
    }

    method rxjump() {
        my $index := +@!rxjumps;
        @!rxjumps[$index] := MAST::Label.new();
        $index
    }

    sub op(str $op, *@args) {
        MAST::Op.new_with_operand_array( :$op, @args );
    }

    sub call($target, @flags, :$result?, *@args) {
        nqp::defined($result) ??
        MAST::Call.new(
            :target($target), :result($result), :flags(@flags), |@args
        ) !!
        MAST::Call.new(
            :target($target), :flags(@flags), |@args
        )
    }

    sub label()    { MAST::Label.new() }
    sub ival($val) { my int $i := $val; $i }
    sub nval($val) { $val }
    sub sval($val) { ~$val }
}
