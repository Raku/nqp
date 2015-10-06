use QASTNode;
use NQPHLL;
use MASTNodes;
use MASTOps;
use QRegex;

my $MVM_reg_void            := 0; # not really a register; just a result/return kind marker
my $MVM_reg_int8            := 1;
my $MVM_reg_int16           := 2;
my $MVM_reg_int32           := 3;
my $MVM_reg_int64           := 4;
my $MVM_reg_num32           := 5;
my $MVM_reg_num64           := 6;
my $MVM_reg_str             := 7;
my $MVM_reg_obj             := 8;

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
        my $P11      := $!regalloc.fresh_o();
        my $method   := $!regalloc.fresh_o();
        my $tmp      := $!regalloc.fresh_o();

        # cclass_const
        my $cclass_word     := $!regalloc.fresh_i();
        my $cclass_newline  := $!regalloc.fresh_i();

        # create our labels
        my $startlabel   := label();
        my $donelabel    := label();
        my $restartlabel := label();
        my $faillabel    := label();
        my $jumplabel    := label();
        my $cutlabel     := label();
        my $cstacklabel  := label();

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
            'P11',      $P11,
            'fail',     $faillabel,
            'jump',     $jumplabel,
            'method',   $method,
            'self',     $self,
            'cclass_word'   , $cclass_word,
            'cclass_newline', $cclass_newline
            );

        @!rxjumps := nqp::list($donelabel);

        my $shared := $!regalloc.fresh_o();
        my $sharedclass := $!regalloc.fresh_o();
        my $i19 := $!regalloc.fresh_i(); # yes, I know, inheriting the name from ancestor method
        my $i0 := $!regalloc.fresh_i();

        my @ins := [
            op('const_i64', $negone, ival(-1)),
            op('const_i64', $zero, ival(0)),
            op('const_i64', $one, ival(1)),
            op('const_i64', $two, ival(2)),
            op('const_i64', $three, ival(3)),
            op('const_i64', $four, ival(4)),
            op('const_i64', $cclass_word, ival(nqp::const::CCLASS_WORD)),
            op('const_i64', $cclass_newline, ival(nqp::const::CCLASS_NEWLINE)),
            op('findmeth', $method, $self, sval('!cursor_start')),
            call($method, [ $Arg::obj ], :result($cur), $self )
        ];

        my int $has_cursor_type := $node.has_cursor_type();
        if $has_cursor_type {
            $!cursor_type := $node.cursor_type();
            my $wval := $!qastcomp.as_mast(QAST::WVal.new( :value($!cursor_type) ));
            merge_ins(@ins, $wval.instructions);
            merge_ins(@ins, [
                op('set', $curclass, $wval.result_reg),
                op('getattr_o', $shared, $self, $curclass, sval('$!shared'),
                    ival(nqp::hintfor($!cursor_type, '$!shared')))
            ]);
            $!regalloc.release_register($wval.result_reg, $MVM_reg_obj);
        }
        else {
            merge_ins(@ins, [
                op('findmeth', $shared, $self, sval('!shared')),
                call($shared, [ $Arg::obj ], :result($shared), $self ),
                op('getwhat', $sharedclass, $shared),
                op('getattr_o', $curclass, $shared, $sharedclass, sval('$!CUR_CLASS'), ival(-1))
            ]);
        }
        
        merge_ins(@ins, [
            op('getattr_s', $tgt, $shared, $sharedclass, sval('$!target'),
                ival(nqp::hintfor(ParseShared, '$!target'))),
            op('flattenropes', $tgt),
            op('getattr_i', $pos, $cur, $curclass, sval('$!from'),
                ival(nqp::hintfor($!cursor_type, '$!from'))),
            op('getattr_o', $bstack, $cur, $curclass, sval('$!bstack'),
                ival(nqp::hintfor($!cursor_type, '$!bstack'))),
            op('getattr_o', $tmp, $self, $curclass, sval('$!restart'),
                ival(nqp::hintfor($!cursor_type, '$!restart'))),
            op('isconcrete', $i19, $tmp),
            op('bindlex', $*BLOCK.resolve_lexical('$¢'), $cur),
            op('graphs_s', $eos, $tgt),
            op('eq_i', $i0, $one, $i19),
            op('if_i', $i0, $restartlabel),
            op('gt_i', $i0, $pos, $eos),
            op('if_i', $i0, $faillabel)
        ]);
        $!regalloc.release_register($i0, $MVM_reg_int64);
        $!regalloc.release_register($i19, $MVM_reg_int64);

        merge_ins(@ins, self.regex_mast($node));

        $i0 := $!regalloc.fresh_i();
        $i19 := $!regalloc.fresh_i();
        my $i18 := $!regalloc.fresh_i();
        merge_ins(@ins, [
            $restartlabel,
            op('getattr_o', $cstack, $cur, $curclass, sval('$!cstack'),
                ival(nqp::hintfor($!cursor_type, '$!cstack'))),
            $faillabel,
            op('isnull', $i0, $bstack),
            op('if_i', $i0, $donelabel),
            op('elems', $i0, $bstack),
            op('gt_i', $i0, $i0, $zero),
            op('unless_i', $i0, $donelabel),
            op('pop_i', $i19, $bstack),
            op('islist', $i0, $cstack),
            op('unless_i', $i0, $cstacklabel),
            op('elems', $i0, $cstack),
            op('gt_i', $i0, $i0, $zero),
            op('unless_i', $i0, $cstacklabel),
            op('dec_i', $i19),
            op('atpos_o', $P11, $cstack, $i19),
            $cstacklabel,
            op('pop_i', $rep, $bstack),
            op('pop_i', $pos, $bstack),
            op('pop_i', $i19, $bstack),
            op('lt_i', $i0, $pos, $negone),
            op('if_i', $i0, $donelabel),
            op('lt_i', $i0, $pos, $zero),
            op('if_i', $i0, $faillabel),
            op('eq_i', $i0, $i19, $zero),
            op('if_i', $i0, $faillabel),
            # backtrack the cursor stack
            op('isnull', $i0, $cstack),
            op('if_i', $i0, $jumplabel),
            op('unless_o', $cstack, $jumplabel),
            op('elems', $i18, $bstack),
            op('le_i', $i0, $i18, $zero),
            op('if_i', $i0, $cutlabel),
            op('dec_i', $i18),
            op('atpos_i', $i18, $bstack, $i18),
            $cutlabel,
            op('setelemspos', $cstack, $i18),
            $jumplabel,
            op('jumplist', ival(+@!rxjumps), $i19)
        ]);
        nqp::push(@ins, op('goto', $_)) for @!rxjumps;
        merge_ins(@ins, [
            $donelabel,
            op('findmeth', $method, $cur, sval('!cursor_fail')),
            call($method, [ $Arg::obj ], $cur), # don't pass a :result so it's void
        ]);

        MAST::InstructionList.new(@ins, $cur, $MVM_reg_obj)
    }

    method alt($node) {
        unless $node.name {
            return self.altseq($node);
        }

        # See if we can stash the labels array in an SC or if we'll have
        # to actually emit code for it.
        my @label_ins   := nqp::list();
        my @label_arr   := nqp::list_i();
        my int $have_sc := 0;
        if $!qastcomp.sc -> $sc {
            # Add labels array to SC.
            my $obj_idx := nqp::scobjcount($sc);
            nqp::setobjsc(@label_arr, $sc);
            nqp::scsetobj($sc, $obj_idx, @label_arr);

            # Emit wval instruction to look it up.
            my $sc_idx := $!qastcomp.mast_compunit.sc_idx($sc);
            nqp::push(@label_ins, op(
                $obj_idx < 32768 ?? 'wval' !! 'wval_wide',
                %!reg<P11>,
                MAST::IVal.new( :value($sc_idx) ),
                MAST::IVal.new( :value($obj_idx) )
            ));
            $have_sc := 1;
        }
        else {
            nqp::push(@label_ins, op('bootintarray', %!reg<P11>));
            nqp::push(@label_ins, op('create', %!reg<P11>, %!reg<P11>));
        }

        # Calculate all the branches to try, which populates the bstack
        # with the options. Then immediately fail to start iterating it.
        my $endlabel_index := self.rxjump();
        my $endlabel := @!rxjumps[$endlabel_index];
        my @ins := nqp::list();
        self.regex_mark(@ins, $endlabel_index, %!reg<negone>, %!reg<zero>);
        nqp::push(@ins, op('findmeth', %!reg<method>, %!reg<cur>, sval('!alt')));
        my $name := $!regalloc.fresh_s();
        nqp::push(@ins, op('const_s', $name, sval($node.name)));
        nqp::push(@ins, call(%!reg<method>, [ $Arg::obj, $Arg::int, $Arg::str, $Arg::obj ],
            %!reg<cur>, %!reg<pos>, $name, %!reg<P11>));
        $!regalloc.release_register($name, $MVM_reg_str);
        nqp::push(@ins, op('goto', %!reg<fail>));

        # Emit all the possible alternatives
        my $altcount := 0;
        my $iter     := nqp::iterator($node.list);
        my $itmp     := $!regalloc.fresh_i();
        while $iter {
            my $altlabel_index := self.rxjump();
            my $altlabel := @!rxjumps[$altlabel_index];
            my @amast    := self.regex_mast(nqp::shift($iter));
            nqp::push(@ins, $altlabel);
            merge_ins(@ins, @amast);
            nqp::push(@ins, op('goto', $endlabel));
            if $have_sc {
                nqp::push_i(@label_arr, $altlabel_index);
            }
            else {
                nqp::push(@label_ins, op('const_i64', $itmp, ival($altlabel_index)));
                nqp::push(@label_ins, op('push_i', %!reg<P11>, $itmp));
            }
            $altcount++;
        }
        $!regalloc.release_register($itmp, $MVM_reg_int64);
        nqp::push(@ins, $endlabel);
        self.regex_commit(@ins, $endlabel_index) if $node.backtrack eq 'r';
        merge_ins(@label_ins, @ins);
        @label_ins # so the label array creation or lookup happens first
    }

    method altseq($node) {
        my @ins := nqp::list();
        my $altcount := 0;
        my $iter := nqp::iterator($node.list);
        my $endlabel_index := self.rxjump();
        my $endlabel := @!rxjumps[$endlabel_index];
        my $altlabel_index := self.rxjump();
        my $altlabel := @!rxjumps[$altlabel_index];
        my @amast    := self.regex_mast(nqp::shift($iter));
        while $iter {
            nqp::push(@ins, $altlabel);
            $altcount++;
            $altlabel_index := self.rxjump();
            $altlabel := @!rxjumps[$altlabel_index];
            self.regex_mark(@ins, $altlabel_index, %!reg<pos>, %!reg<zero>);
            merge_ins(@ins, @amast);
            nqp::push(@ins, op('goto', $endlabel));
            @amast := self.regex_mast(nqp::shift($iter));
        }
        nqp::push(@ins, $altlabel);
        merge_ins(@ins, @amast);
        nqp::push(@ins, $endlabel);
        @ins
    }

    method anchor($node) {
        my @ins := nqp::list();
        my $subtype := $node.subtype;
        my $donelabel := label();
        my $i11 := $!regalloc.fresh_i();
        my $pos := %!reg<pos>;
        my $fail := %!reg<fail>;
        if $subtype eq 'bos' {
            nqp::push(@ins, op('ne_i', $i11, $pos, %!reg<zero>));
            nqp::push(@ins, op('if_i', $i11, $fail));
        }
        elsif $subtype eq 'eos' {
            nqp::push(@ins, op('lt_i', $i11, $pos, %!reg<eos>));
            nqp::push(@ins, op('if_i', $i11, $fail));
        }
        elsif $subtype eq 'lwb' {
            merge_ins(@ins, [
                op('ge_i', $i11, $pos, %!reg<eos>),
                op('if_i', $i11, $fail),
                op('iscclass', $i11, %!reg<cclass_word>, %!reg<tgt>, $pos),
                op('unless_i', $i11, %!reg<fail>),
                op('sub_i', $i11, %!reg<pos>, %!reg<one>),
                op('iscclass', $i11, %!reg<cclass_word>, %!reg<tgt>, $i11),
                op('if_i', $i11, $fail)
            ]);
        }
        elsif $subtype eq 'rwb' {
            merge_ins(@ins, [
                op('le_i', $i11, $pos, %!reg<zero>),
                op('if_i', $i11, $fail),
                op('iscclass', $i11, %!reg<cclass_word>, %!reg<tgt>, $pos),
                op('if_i', $i11, %!reg<fail>),
                op('sub_i', $i11, %!reg<pos>, %!reg<one>),
                op('iscclass', $i11, %!reg<cclass_word>, %!reg<tgt>, $i11),
                op('unless_i', $i11, $fail)
            ]);
        }
        elsif $subtype eq 'bol' {
            merge_ins(@ins, [
                op('eq_i', $i11, %!reg<pos>, %!reg<zero>),
                op('if_i', $i11, $donelabel),
                op('ge_i', $i11, $pos, %!reg<eos>),
                op('if_i', $i11, $fail),
                op('sub_i', $i11, %!reg<pos>, %!reg<one>),
                op('iscclass', $i11, %!reg<cclass_newline>, %!reg<tgt>, $i11),
                op('unless_i', $i11, $fail),
                $donelabel
            ]);
        }
        elsif $subtype eq 'eol' {
            merge_ins(@ins, [
                op('iscclass', $i11, %!reg<cclass_newline>, %!reg<tgt>, %!reg<pos>),
                op('if_i', $i11, $donelabel),
                op('ne_i', $i11, %!reg<pos>, %!reg<eos>),
                op('if_i', $i11, $fail),
                op('eq_i', $i11, %!reg<pos>, %!reg<zero>),
                op('if_i', $i11, $donelabel),
                op('sub_i', $i11, %!reg<pos>, %!reg<one>),
                op('iscclass', $i11, %!reg<cclass_newline>, %!reg<tgt>, $i11),
                op('if_i', $i11, $fail),
                $donelabel
            ]);
        }
        elsif $subtype eq 'fail' {
            nqp::push(@ins, op('goto', $fail));
        }
        elsif $subtype eq 'pass' || $subtype eq '' {
            # Nothing to do.
        } elsif $subtype eq 'zerowidth' {
            # Nothing to do either. This gets generated for <???>, for example
        }
        else {
            nqp::die("Unknown anchor subtype $subtype");
        }
        $!regalloc.release_register($i11, $MVM_reg_int64);
        @ins
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
        self.panic("Unrecognized subtype '$subtype' in QAST::Regex cclass")
            unless $cclass;

        my @ins := nqp::list();
        my $i0 := $!regalloc.fresh_i();
        nqp::push(@ins, op('ge_i', $i0, %!reg<pos>, %!reg<eos>));
        nqp::push(@ins, op('if_i', $i0, %!reg<fail>));

        if $cclass != nqp::const::CCLASS_ANY {
            my $testop := $node.negate ?? 'if_i' !! 'unless_i';
            nqp::push(@ins, op('const_i64', $i0, ival($cclass)));
            nqp::push(@ins, op('iscclass', $i0, $i0, %!reg<tgt>, %!reg<pos>));
            nqp::push(@ins, op($testop, $i0, %!reg<fail>));

            if $cclass == nqp::const::CCLASS_NEWLINE && $node.subtype ne 'zerowidth' {
                my $s0 := $!regalloc.fresh_s();
                nqp::push(@ins, op('const_s', $s0, sval("\r\n")));
                nqp::push(@ins, op('eqat_s', $i0, %!reg<tgt>, $s0, %!reg<pos>));
                nqp::push(@ins, op('add_i', %!reg<pos>, %!reg<pos>, $i0));
                $!regalloc.release_register($s0, $MVM_reg_str);
            }
        }

        nqp::push(@ins, op('inc_i', %!reg<pos>)) unless $node.subtype eq 'zerowidth';
        $!regalloc.release_register($i0, $MVM_reg_int64);
        @ins
    }

    method concat($node) {
        my @ins := nqp::list();
        merge_ins(@ins, self.regex_mast($_)) for $node.list;
        @ins
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
        my @ins := [
            op('goto', $firstlabel),
            $conjlabel,
            op('goto', %!reg<fail>),
            # call the first child
            $firstlabel
        ];
        # make a mark that holds our starting position in the pos slot
        self.regex_mark(@ins, $conjlabel_index, %!reg<pos>, %!reg<zero>);
        merge_ins(@ins, self.regex_mast(nqp::shift($iter)));
        # use previous mark to make one with pos=start, rep=end
        my $i11 := $!regalloc.fresh_i();
        my $i12 := $!regalloc.fresh_i();
        self.regex_peek(@ins, $conjlabel_index, $i11);
        self.regex_mark(@ins, $conjlabel_index, $i11, %!reg<pos>);

        while $iter {
            nqp::push(@ins, op('set', %!reg<pos>, $i11));
            merge_ins(@ins, self.regex_mast(nqp::shift($iter)));
            self.regex_peek(@ins, $conjlabel_index, $i11, $i12);
            nqp::push(@ins, op('ne_i', $i12, %!reg<pos>, $i12));
            nqp::push(@ins, op('if_i', $i12, %!reg<fail>));
        }
        nqp::push(@ins, op('set', %!reg<pos>, $i11)) if $node.subtype eq 'zerowidth';
        $!regalloc.release_register($i11, $MVM_reg_int64);
        $!regalloc.release_register($i12, $MVM_reg_int64);
        @ins
    }

    method enumcharlist($node) {
        my @ins;
        my $op := $node.negate ?? 'indexnat' !! 'indexat';
        if $node.subtype eq 'ignoremark' || $node.subtype eq 'ignorecase+ignoremark' {
            my $i0 := $!regalloc.fresh_i();
            my $s0 := $!regalloc.fresh_s();
            merge_ins(@ins, [
                op('ge_i', $i0, %!reg<pos>, %!reg<eos>),
                op('if_i', $i0, %!reg<fail>),
                op('ordbaseat', $i0, %!reg<tgt>, %!reg<pos>),
                op('chr', $s0, $i0),
                op($op, $s0, %!reg<zero>, sval($node[0]), %!reg<fail>),
            ]);
        }
        else {
            nqp::push(@ins, op($op, %!reg<tgt>, %!reg<pos>, sval($node[0]), %!reg<fail>));
        }
        nqp::push(@ins, op('inc_i', %!reg<pos>))
            unless $node.subtype eq 'zerowidth';
        @ins
    }

    method charrange($node) {
        my @ins;
        my $i0    := $!regalloc.fresh_i();
        my $i1    := $!regalloc.fresh_i();
        my $lower := $!regalloc.fresh_i();
        my $upper := $!regalloc.fresh_i();
        merge_ins(@ins, [
            op('ge_i', $i0, %!reg<pos>, %!reg<eos>),
            op('if_i', $i0, %!reg<fail>),
            op('const_i64', $lower, ival($node[1].value)),
            op('const_i64', $upper, ival($node[2].value)),
        ]);
        if $node[0] eq 'ignorecase+ignoremark' {
            my $succeed := label();
            my $s0      := $!regalloc.fresh_s();
            my $s1      := $!regalloc.fresh_s();
            my $i2      := $!regalloc.fresh_i();
            my $goal    := $node.negate ?? %!reg<fail> !! $succeed;
            merge_ins(@ins, [
                op('substr_s', $s0, %!reg<tgt>, %!reg<pos>, %!reg<one>),
                op('lc', $s1, $s0),
                op('ordbaseat', $i0, $s1, %!reg<zero>),
                op('ge_i', $i1, $i0, $lower),
                op('le_i', $i2, $i0, $upper),
                op('band_i', $i1, $i1, $i2),
                op('if_i', $i1, $goal),
                op('uc', $s1, $s0),
                op('ordbaseat', $i0, $s1, %!reg<zero>),
                op('ge_i', $i1, $i0, $lower),
                op('le_i', $i2, $i0, $upper),
                op('band_i', $i1, $i1, $i2),
                op('if_i', $i1, $goal),
            ]);
            $!regalloc.release_register($s0, $MVM_reg_str);
            $!regalloc.release_register($s1, $MVM_reg_str);
            $!regalloc.release_register($i2, $MVM_reg_int64);
            unless $node.negate {
                nqp::push(@ins, op('goto', %!reg<fail>));
                nqp::push(@ins, $succeed);
            }
        }
        elsif $node[0] eq 'ignorecase' {
            my $succeed := label();
            my $s0      := $!regalloc.fresh_s();
            my $s1      := $!regalloc.fresh_s();
            my $i2      := $!regalloc.fresh_i();
            my $goal    := $node.negate ?? %!reg<fail> !! $succeed;
            merge_ins(@ins, [
                op('substr_s', $s0, %!reg<tgt>, %!reg<pos>, %!reg<one>),
                op('lc', $s1, $s0),
                op('ordfirst', $i0, $s1),
                op('ge_i', $i1, $i0, $lower),
                op('le_i', $i2, $i0, $upper),
                op('band_i', $i1, $i1, $i2),
                op('if_i', $i1, $goal),
                op('uc', $s1, $s0),
                op('ordfirst', $i0, $s1),
                op('ge_i', $i1, $i0, $lower),
                op('le_i', $i2, $i0, $upper),
                op('band_i', $i1, $i1, $i2),
                op('if_i', $i1, $goal),
            ]);
            $!regalloc.release_register($s0, $MVM_reg_str);
            $!regalloc.release_register($s1, $MVM_reg_str);
            $!regalloc.release_register($i2, $MVM_reg_int64);
            unless $node.negate {
                nqp::push(@ins, op('goto', %!reg<fail>));
                nqp::push(@ins, $succeed);
            }
        }
        elsif $node[0] eq 'ignoremark' {
            my $succeed := label();
            my $goal := $node.negate ?? $succeed !! %!reg<fail>;
            merge_ins(@ins, [
                op('ordbaseat', $i0, %!reg<tgt>, %!reg<pos>),
                op('gt_i', $i1, $i0, $upper),
                op('if_i', $i1, $goal),
                op('lt_i', $i1, $i0, $lower),
                op('if_i', $i1, $goal),
            ]);
            if $node.negate {
                nqp::push(@ins, op('goto', %!reg<fail>));
                nqp::push(@ins, $succeed);
            }
        }
        else {
            my $succeed := label();
            my $goal    := $node.negate ?? $succeed !! %!reg<fail>;
            merge_ins(@ins, [
                op('ordat', $i0, %!reg<tgt>, %!reg<pos>),
                op('gt_i', $i1, $i0, $upper),
                op('if_i', $i1, $goal),
                op('lt_i', $i1, $i0, $lower),
                op('if_i', $i1, $goal),
            ]);
            if $node.negate {
                nqp::push(@ins, op('goto', %!reg<fail>));
                nqp::push(@ins, $succeed);
            }
        }
        nqp::push(@ins, op('inc_i', %!reg<pos>)) unless $node.subtype eq 'zerowidth';
        $!regalloc.release_register($i0,    $MVM_reg_int64);
        $!regalloc.release_register($i1,    $MVM_reg_int64);
        $!regalloc.release_register($lower, $MVM_reg_int64);
        $!regalloc.release_register($upper, $MVM_reg_int64);
        @ins
    }

    method literal($node) {
        my $litconst := $node[0];
        my $s0 := $!regalloc.fresh_s();
        my $i0 := $!regalloc.fresh_i();
        my @ins;
        if $node.negate {
            # Need explicit check we're not going beyond the string end in the
            # negated case, to avoid false positive.
            nqp::push(@ins, op('const_i64', $i0, ival(nqp::chars($litconst))));
            nqp::push(@ins, op('add_i', $i0, %!reg<pos>, $i0));
            nqp::push(@ins, op('gt_i', $i0, $i0, %!reg<eos>));
            nqp::push(@ins, op('if_i', $i0, %!reg<fail>));
        }
        # XXX create some regex prologue system so these const assignments
        # can happen only once at the beginning of a regex. hash of string constants
        # to the registers to which they are assigned.
        # XXX or make a specialized eqat_sc op that takes a constant string.
        # also, consider making the op branch directly from the comparison
        # instead of storing an integer to a temporary register
        if $node.subtype eq 'ignorecase+ignoremark' {
            my $op := $node.negate ?? 'indexnat' !! 'indexat';
            my $c  := nqp::chr(nqp::ordbaseat($litconst, 0));
            merge_ins(@ins, [
                op('ge_i', $i0, %!reg<pos>, %!reg<eos>),
                op('if_i', $i0, %!reg<fail>),
                op('ordbaseat', $i0, %!reg<tgt>, %!reg<pos>),
                op('chr', $s0, $i0),
                op($op, $s0, %!reg<zero>, sval(nqp::lc($c) ~ nqp::uc($c)), %!reg<fail>),
            ]);
        }
        else {
            my $eq_op := $node.subtype eq 'ignorecase' ?? 'eqatic_s' !!
                         $node.subtype eq 'ignoremark' ?? 'eqatim_s' !! 'eqat_s';
            my $cmpop := $node.negate ?? 'if_i' !! 'unless_i';
            nqp::push(@ins, op('const_s', $s0, sval($litconst)));
            nqp::push(@ins, op($eq_op, $i0, %!reg<tgt>, $s0, %!reg<pos>));
            nqp::push(@ins, op($cmpop, $i0, %!reg<fail>));
        }
        unless $node.subtype eq 'zerowidth' {
            nqp::push(@ins, op('const_i64', $i0, ival(nqp::chars($litconst))));
            nqp::push(@ins, op('add_i', %!reg<pos>, %!reg<pos>, $i0));
        }
        $!regalloc.release_register($s0, $MVM_reg_str);
        $!regalloc.release_register($i0, $MVM_reg_int64);
        @ins
    }

    method pass($node) {
        my @ins := nqp::list();
        my @args := [%!reg<cur>, %!reg<pos>];
        my @flags := [$Arg::obj, $Arg::int];
        my $op;
        my $meth := $!regalloc.fresh_o();
        nqp::push(@ins, op('findmeth', $meth, %!reg<cur>, sval('!cursor_pass')));
        if $node.name {
            my $sname := $!regalloc.fresh_s();
            nqp::push(@ins, op('const_s', $sname, sval($node.name)));
            nqp::push(@args, $sname);
            nqp::push(@flags, $Arg::str);
        }
        elsif +@($node) == 1 {
            my $name := $!qastcomp.as_mast($node[0], :want($MVM_reg_str));
            merge_ins(@ins, $name.instructions);
            nqp::push(@args, $name.result_reg);
            nqp::push(@flags, $Arg::str);
        }
        if $node.backtrack ne 'r' {
            nqp::push(@args, sval('backtrack'));
            nqp::push(@args, %!reg<one>);
            nqp::push(@flags, $Arg::named +| $Arg::int);
        }
        nqp::push(@ins, call($meth, @flags, :result($meth), |@args));
        $!regalloc.release_register($meth, $MVM_reg_obj);
        nqp::push(@ins, op('return_o', %!reg<cur>));
        @ins
    }

    sub resolve_condition_op($kind, $negated) {
        return $negated ??
            $kind == $MVM_reg_int64 ?? 'unless_i' !!
            $kind == $MVM_reg_num64 ?? 'unless_n' !!
            $kind == $MVM_reg_str   ?? 'unless_s' !!
            $kind == $MVM_reg_obj   ?? 'unless_o' !!
            ''
         !! $kind == $MVM_reg_int64 ?? 'if_i' !!
            $kind == $MVM_reg_num64 ?? 'if_n' !!
            $kind == $MVM_reg_str   ?? 'if_s' !!
            $kind == $MVM_reg_obj   ?? 'if_o' !!
            ''
    }

    method qastnode($node) {
        my @ins := [
            op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'), %!reg<pos>, ival(-1)),
            op('bindlex', $*BLOCK.resolve_lexical('$¢'), %!reg<cur>)
        ];
        my $cmast := $!qastcomp.as_mast($node[0]);
        merge_ins(@ins, $cmast.instructions);
        $!regalloc.release_register($cmast.result_reg, $cmast.result_kind);
        my $cndop := resolve_condition_op($cmast.result_kind, !$node.negate);
        if $node.subtype eq 'zerowidth' && $cndop ne '' {
            nqp::push(@ins, op('decont', $cmast.result_reg, $cmast.result_reg))
                if $cmast.result_kind == $MVM_reg_obj;
            nqp::push(@ins, op($cndop, $cmast.result_reg, %!reg<fail>));
        }
        @ins
    }

    method dynquant($node) {
        my @ins := nqp::list();

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
        merge_ins(@ins, $minmax_mast.instructions);
        merge_ins(@ins, [
            op('atpos_i', $min_reg, $res_reg, %!reg<zero>),
            op('atpos_i', $max_reg, $res_reg, %!reg<one>),
        ]);

        # return if $min == 0 && $max == 0;
        merge_ins(@ins, [
            op('if_i', $min_reg, $skip8label),
            op('unless_i', $max_reg, $skip7label),
            $skip8label
        ]);

        # $needrep := $min > 1 || $max > 1;
        merge_ins(@ins, [
            op('gt_i', $needrep, $min_reg, %!reg<one>),
            op('if_i', $needrep, $skip0label),
            op('gt_i', $needrep, $max_reg, %!reg<one>),
            $skip0label
        ]);

        # $needmark := $needrep || $backtrack eq 'r';
        if $backtrack eq 'r' {
            nqp::push(@ins, op('set', $needmark, %!reg<one>));
        }
        else {
            nqp::push(@ins, op('set', $needmark, $needrep));
        }

        if $backtrack eq 'f' {
            my $seplabel := label();
            nqp::push(@ins, op('set', $rep, %!reg<zero>));

            nqp::push(@ins, op('ge_i', $ireg, $min_reg, %!reg<one>)); # if $min < 1 {
            nqp::push(@ins, op('if_i', $ireg, $skip1label));
            self.regex_mark(@ins, $looplabel_index, $pos, $rep);
            nqp::push(@ins, op('goto', $donelabel));
            nqp::push(@ins, $skip1label);                             # }

            nqp::push(@ins, op('goto', $seplabel)) if $sep;
            nqp::push(@ins, $looplabel);
            nqp::push(@ins, op('set', $ireg, $rep));
            if $sep {
                merge_ins(@ins, self.regex_mast($sep));
                nqp::push(@ins, $seplabel);
            }
            merge_ins(@ins, self.regex_mast($node[0]));
            merge_ins(@ins, [
                op('set', $rep, $ireg),
                op('inc_i', $rep),

                op('le_i', $ireg, $min_reg, %!reg<one>), # if $min > 1 {
                op('if_i', $ireg, $skip2label),
                op('lt_i', $ireg, $rep, $min_reg),
                op('if_i', $ireg, $looplabel),
                $skip2label,                             # }

                op('le_i', $ireg, $max_reg, %!reg<one>), # if $max > 1 {
                op('if_i', $ireg, $skip3label),
                op('ge_i', $ireg, $rep, $max_reg),
                op('if_i', $ireg, $donelabel),
                $skip3label,                             # }

                op('eq_i', $ireg, $max_reg, %!reg<one>), # unless $max == 1 {
                op('if_i', $ireg, $skip4label),
            ]);
            self.regex_mark(@ins, $looplabel_index, $pos, $rep);
            nqp::push(@ins, $skip4label);                # }

            nqp::push(@ins, $donelabel);
        }
        else {
            nqp::push(@ins, op('if_i', $min_reg, $skip1label));     # if $min == 0 {
            self.regex_mark(@ins, $donelabel_index, $pos, %!reg<zero>);
            nqp::push(@ins, $skip1label);                           # }

            nqp::push(@ins, op('unless_i', $min_reg, $skip2label)); # elsif $needmark {
            nqp::push(@ins, op('unless_i', $needmark, $skip2label));
            self.regex_mark(@ins, $donelabel_index, %!reg<negone>, %!reg<zero>);
            nqp::push(@ins, $skip2label);                           # }

            nqp::push(@ins, $looplabel);
            merge_ins(@ins, self.regex_mast($node[0]));

            nqp::push(@ins, op('unless_i', $needmark, $skip3label)); # if $needmark {
            self.regex_peek(@ins, $donelabel_index, MAST::Local.new(:index(-1)), $rep);
            self.regex_commit(@ins, $donelabel_index) if $backtrack eq 'r';
            merge_ins(@ins, [
                op('inc_i', $rep),

                op('le_i', $ireg, $max_reg, %!reg<one>), # if $max > 1 {
                op('if_i', $ireg, $skip4label),
                op('ge_i', $ireg, $rep, $max_reg),
                op('if_i', $ireg, $donelabel),
                $skip4label,                             # }
                $skip3label,                                        # }

                op('eq_i', $ireg, $max_reg, %!reg<one>), # unless $max == 1 {
                op('if_i', $ireg, $skip5label),
            ]);
            self.regex_mark(@ins, $donelabel_index, $pos, $rep);
            merge_ins(@ins, self.regex_mast($sep)) if $sep;
            merge_ins(@ins, [
                op('goto', $looplabel),
                $skip5label,                             # }
                $donelabel,

                op('le_i', $ireg, $min_reg, %!reg<one>), # if $min > 1 {
                op('if_i', $ireg, $skip6label),
                op('lt_i', $ireg, $rep, $min_reg),
                op('if_i', $ireg, %!reg<fail>),
                $skip6label,                             # }
            ]);
        }
        nqp::push(@ins, $skip7label);
        @ins
    }

    method quant($node) {
        my @ins := nqp::list();
        my $min := $node.min;
        my $max := $node.max;

        if $min == 0 && $max == 0 {
            # Nothing to do, and nothing to backtrack into.
            return @ins;
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
            nqp::push(@ins, op('set', $rep, %!reg<zero>));
            if $min < 1 {
                self.regex_mark(@ins, $looplabel_index, $pos, $rep);
                nqp::push(@ins, op('goto', $donelabel));
            }
            nqp::push(@ins, op('goto', $seplabel)) if $sep;
            nqp::push(@ins, $looplabel);
            nqp::push(@ins, op('set', $ireg, $rep));
            if $sep {
                merge_ins(@ins, self.regex_mast($sep));
                nqp::push(@ins, $seplabel);
            }
            merge_ins(@ins, self.regex_mast($node[0]));
            nqp::push(@ins, op('set', $rep, $ireg));
            nqp::push(@ins, op('inc_i', $rep));
            if $min > 1 {
                my $minreg := $!regalloc.fresh_i();
                nqp::push(@ins, op('const_i64', $minreg, ival($min)));
                nqp::push(@ins, op('lt_i', $ireg, $rep, $minreg));
                nqp::push(@ins, op('if_i', $ireg, $looplabel));
                $!regalloc.release_register($minreg, $MVM_reg_int64);
            }
            if $max > 1 {
                my $maxreg := $!regalloc.fresh_i();
                nqp::push(@ins, op('const_i64', $maxreg, ival($max)));
                nqp::push(@ins, op('ge_i', $ireg, $rep, $maxreg));
                nqp::push(@ins, op('if_i', $ireg, $donelabel));
                $!regalloc.release_register($maxreg, $MVM_reg_int64);
            }
            self.regex_mark(@ins, $looplabel_index, $pos, $rep) if $max != 1;
            nqp::push(@ins, $donelabel);
        }
        else {
            if $min == 0 { self.regex_mark(@ins, $donelabel_index, $pos, %!reg<zero>); }
            elsif $needmark { self.regex_mark(@ins, $donelabel_index, %!reg<negone>, %!reg<zero>); }
            nqp::push(@ins, $looplabel);
            merge_ins(@ins, self.regex_mast($node[0]));
            if $needmark {
                self.regex_peek(@ins, $donelabel_index, MAST::Local.new(:index(-1)), $rep);
                self.regex_commit(@ins, $donelabel_index) if $backtrack eq 'r';
                nqp::push(@ins, op('inc_i', $rep));
                if $max > 1 {
                    my $maxreg := $!regalloc.fresh_i();
                    nqp::push(@ins, op('const_i64', $maxreg, ival($max)));
                    nqp::push(@ins, op('ge_i', $ireg, $rep, $maxreg));
                    nqp::push(@ins, op('if_i', $ireg, $donelabel));
                    $!regalloc.release_register($maxreg, $MVM_reg_int64);
                }
            }
            unless $max == 1 {
                self.regex_mark(@ins, $donelabel_index, $pos, $rep);
                merge_ins(@ins, self.regex_mast($sep)) if $sep;
                nqp::push(@ins, op('goto', $looplabel));
            }
            nqp::push(@ins, $donelabel);
            if $min > 1 {
                my $minreg := $!regalloc.fresh_i();
                nqp::push(@ins, op('const_i64', $minreg, ival($min)));
                nqp::push(@ins, op('lt_i', $ireg, $rep, $minreg));
                nqp::push(@ins, op('if_i', $ireg, %!reg<fail>));
                $!regalloc.release_register($minreg, $MVM_reg_int64);
            }
        }
        @ins
    }

    method scan($node) {
        my $looplabel_index := self.rxjump();
        my $looplabel := @!rxjumps[$looplabel_index];
        my $scanlabel := label();
        my $donelabel := label();
        my $ireg0 := $!regalloc.fresh_i();
        my @ins := [
            op('getattr_i', $ireg0, %!reg<self>, %!reg<curclass>, sval('$!from'),
                ival(nqp::hintfor($!cursor_type, '$!from'))),
            op('ne_i', $ireg0, $ireg0, %!reg<negone>),
            op('if_i', $ireg0, $donelabel),
            op('goto', $scanlabel),
            $looplabel,
            op('inc_i', %!reg<pos>),
        ];
        if $node.list && $node.subtype ne 'ignorecase' && $node.subtype ne 'ignoremark' && $node.subtype ne 'ignorecase+ignoremark' {
            my $lit := $!regalloc.fresh_s();
            nqp::push(@ins, op('const_s', $lit, sval($node[0])));
            nqp::push(@ins, op('index_s', %!reg<pos>, %!reg<tgt>, $lit, %!reg<pos>));
            nqp::push(@ins, op('eq_i', $ireg0, %!reg<pos>, %!reg<negone>));
            $!regalloc.release_register($lit, $MVM_reg_str);
        }
        else {
            nqp::push(@ins, op('gt_i', $ireg0, %!reg<pos>, %!reg<eos>));
        }
        nqp::push(@ins, op('if_i', $ireg0, %!reg<fail>));
        nqp::push(@ins, op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!from'), %!reg<pos>, ival(-1)));
        nqp::push(@ins, $scanlabel);
        self.regex_mark(@ins, $looplabel_index, %!reg<pos>, %!reg<zero>);
        nqp::push(@ins, $donelabel);
        @ins
    }

    method subcapture($node) {
        my @ins := nqp::list();
        my $donelabel := label();
        my $faillabel_index := self.rxjump();
        my $faillabel := @!rxjumps[$faillabel_index];
        my $i11 := $!regalloc.fresh_i();
        my $p11 := $!regalloc.fresh_o();
        my $s11 := $!regalloc.fresh_s();
        self.regex_mark(@ins, $faillabel_index, %!reg<pos>, %!reg<zero>);
        merge_ins(@ins, self.regex_mast($node[0]));
        self.regex_peek(@ins, $faillabel_index, $i11);
        merge_ins(@ins, [
            op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'),
                %!reg<pos>, ival(-1)),
            op('findmeth', %!reg<method>, %!reg<cur>, sval('!cursor_start_subcapture')),
            call(%!reg<method>, [$Arg::obj, $Arg::int], %!reg<cur>, $i11, :result($p11)),
            op('findmeth', %!reg<method>, $p11, sval('!cursor_pass')),
            call(%!reg<method>, [$Arg::obj, $Arg::int], $p11, %!reg<pos>),
            op('findmeth', %!reg<method>, %!reg<cur>, sval('!cursor_capture')),
            op('const_s', $s11, sval($node.name)),
            call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str],
                %!reg<cur>, $p11, $s11, :result(%!reg<cstack>)),
            op('goto', $donelabel),
            $faillabel,
            op('goto', %!reg<fail>),
            $donelabel
        ]);
        $!regalloc.release_register($i11, $MVM_reg_int64);
        $!regalloc.release_register($p11, $MVM_reg_obj);
        $!regalloc.release_register($s11, $MVM_reg_str);
        @ins
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
            merge_ins(@masts, $mast.instructions);
            nqp::push(@results, $mast.result_reg);
            my $kind := $mast.result_kind;
            nqp::push(@result_kinds, $kind);
            my $flag := @kind_to_args[$kind];
            if $_.flat {
                $flag := $flag +| ($_.named ?? $Arg::flatnamed !! $Arg::flat);
            }
            elsif $_.named {
                nqp::die('Named args in regex subrule calls NYI');
            }
            nqp::push(@flags, $flag);
        }
        [@masts, @results, @result_kinds, @flags]
    }

    method subrule($node) {
        my @ins      := nqp::list();
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
            $!regalloc.release_register(@args[$i++], $_);
        }

        @flags[0] := $Arg::obj;

        my $p11 := %!reg<P11>;
        my $i11 := $!regalloc.fresh_i();

        merge_ins(@ins, @arg_info[0]);
        merge_ins(@ins, [
            op('bindattr_i', %!reg<cur>, %!reg<curclass>, sval('$!pos'),
                %!reg<pos>, ival(-1))
        ]);
        if nqp::istype($node[0][0], QAST::SVal) {
            # Method call.
            merge_ins(@ins, [
                op('findmeth', %!reg<method>, %!reg<cur>, sval($node[0][0].value)),
                call(%!reg<method>, @flags, %!reg<cur>, |@args, :result($p11))
            ]);
        }
        else {
            # Normal invocation (probably positional capture).
            merge_ins(@ins, [
                call($submast, @flags, %!reg<cur>, |@args, :result($p11))
            ]);
        }
        merge_ins(@ins, [
            op('getattr_i', $i11, $p11, %!reg<curclass>, sval('$!pos'),
                ival(nqp::hintfor($!cursor_type, '$!pos'))),
            op($testop, $i11, $i11, %!reg<zero>),
            op('if_i', $i11, %!reg<fail>)
        ]);

        if $subtype ne 'zerowidth' {
            my $passlabel_index := self.rxjump();
            my $passlabel := @!rxjumps[$passlabel_index];
            if $node.backtrack eq 'r' {
                unless $subtype eq 'method' {
                    self.regex_mark(@ins, $passlabel_index, %!reg<negone>, %!reg<zero>);
                }
                nqp::push(@ins, $passlabel);
            }
            else {
                my $backlabel_index := self.rxjump();
                my $backlabel := @!rxjumps[$backlabel_index];
                merge_ins(@ins, [
                    op('goto', $passlabel),
                    $backlabel,
                    # %!reg<P11> ($p11 here) is magically set just before the jump at the backtracker
                    op('findmeth', %!reg<method>, $p11, sval('!cursor_next')),
                    call(%!reg<method>, [$Arg::obj], $p11, :result($p11)),
                    op('getattr_i', $i11, $p11, %!reg<curclass>, sval('$!pos'),
                        ival(nqp::hintfor($!cursor_type, '$!pos'))),
                    op($testop, $i11, $i11, %!reg<zero>),
                    op('if_i', $i11, %!reg<fail>),
                    $passlabel
                ]);

                if $subtype eq 'capture' {
                    my $sname := $!regalloc.fresh_s();
                    nqp::push(@ins, op('findmeth', %!reg<method>, %!reg<cur>,
                        sval('!cursor_capture')));
                    nqp::push(@ins, op('const_s', $sname, sval($node.name)));
                    nqp::push(@ins, call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str],
                        %!reg<cur>, $p11, $sname, :result(%!reg<cstack>)));
                    $!regalloc.release_register($sname, $MVM_reg_str);
                    $captured := 1;
                }
                else {
                    nqp::push(@ins, op('findmeth', %!reg<method>, %!reg<cur>,
                        sval('!cursor_push_cstack')));
                    nqp::push(@ins, call(%!reg<method>, [$Arg::obj, $Arg::obj],
                        %!reg<cur>, $p11, :result(%!reg<cstack>)));
                }

                my $bstack := %!reg<bstack>;
                merge_ins(@ins, [
                    op('const_i64', $i11, ival($backlabel_index)),
                    op('push_i', $bstack, $i11),
                    op('push_i', $bstack, %!reg<zero>),
                    op('push_i', $bstack, %!reg<pos>),
                    op('elems', $i11, %!reg<cstack>),
                    op('push_i', $bstack, $i11)
                ]);
            }
        }

        if !$captured && $subtype eq 'capture' {
            my $sname := $!regalloc.fresh_s();
            nqp::push(@ins, op('findmeth', %!reg<method>, %!reg<cur>,
                sval('!cursor_capture')));
            nqp::push(@ins, op('const_s', $sname, sval($node.name)));
            nqp::push(@ins, call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str],
                %!reg<cur>, $p11, $sname, :result(%!reg<cstack>)));
            $!regalloc.release_register($sname, $MVM_reg_str);
        }

        nqp::push(@ins, op('getattr_i', %!reg<pos>, $p11, %!reg<curclass>,
            sval('$!pos'), ival(nqp::hintfor($!cursor_type, '$!pos'))))
                unless $subtype eq 'zerowidth';

        $!regalloc.release_register($i11, $MVM_reg_int64);

        @ins
    }

    method regex_mark(@ins, $label_index, $pos, $rep) {
        my $bstack := %!reg<bstack>;
        my $mark := $!regalloc.fresh_i();
        my $elems := $!regalloc.fresh_i();
        my $caps := $!regalloc.fresh_i();
        my $haselemslabel := label();
        my $haselemsendlabel := label();
        merge_ins(@ins, [
            op('const_i64', $mark, ival($label_index)),
            op('elems', $elems, $bstack),
            op('gt_i', $caps, $elems, %!reg<zero>),
            op('if_i', $caps, $haselemslabel),
            op('set', $caps, %!reg<zero>),
            op('goto', $haselemsendlabel),
            $haselemslabel,
            op('dec_i', $elems),
            op('atpos_i', $caps, $bstack, $elems),
            $haselemsendlabel,
            op('push_i', $bstack, $mark),
            op('push_i', $bstack, $pos),
            op('push_i', $bstack, $rep),
            op('push_i', $bstack, $caps)
        ]);
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($elems, $MVM_reg_int64);
        $!regalloc.release_register($caps, $MVM_reg_int64);
    }

    method regex_peek(@ins, $label_index, *@regs) {
        my $bstack := %!reg<bstack>;
        my $mark := $!regalloc.fresh_i();
        my $ptr := $!regalloc.fresh_i();
        my $i0 := $!regalloc.fresh_i();
        my $haselemsendlabel := label();
        my $backupendlabel := label();
        merge_ins(@ins, [
            op('const_i64', $mark, ival($label_index)),
            op('elems', $ptr, $bstack),
            $haselemsendlabel,
            op('lt_i', $i0, $ptr, %!reg<zero>),
            op('if_i', $i0, $backupendlabel),
            op('atpos_i', $i0, $bstack, $ptr),
            op('eq_i', $i0, $i0, $mark),
            op('if_i', $i0, $backupendlabel),
            op('sub_i', $ptr, $ptr, %!reg<four>),
            op('goto', $haselemsendlabel),
            $backupendlabel
        ]);
        for @regs {
            nqp::push(@ins, op('inc_i', $ptr));
            nqp::push(@ins, op('atpos_i', $_, $bstack, $ptr)) if $_.index != -1;
        }
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($ptr, $MVM_reg_int64);
        $!regalloc.release_register($i0, $MVM_reg_int64);
    }

    method regex_commit(@ins, $label_index) {
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
        merge_ins(@ins, [
            op('const_i64', $mark, ival($label_index)),
            op('elems', $ptr, $bstack),
            op('gt_i', $caps, $ptr, %!reg<zero>),
            op('if_i', $caps, $haselemslabel),
            op('set', $caps, %!reg<zero>),
            op('goto', $haselemsendlabel),
            $haselemslabel,
            op('dec_i', $ptr),
            op('atpos_i', $caps, $bstack, $ptr),
            op('inc_i', $ptr),
            $haselemsendlabel,
            op('lt_i', $i0, $ptr, %!reg<zero>),
            op('if_i', $i0, $backupendlabel),
            op('atpos_i', $i0, $bstack, $ptr),
            op('eq_i', $i0, $i0, $mark),
            op('if_i', $i0, $backupendlabel),
            op('sub_i', $ptr, $ptr, %!reg<four>),
            op('goto', $haselemsendlabel),
            $backupendlabel,
            op('setelemspos', $bstack, $ptr),
            op('lt_i', $i0, $caps, %!reg<one>),
            op('if_i', $i0, $nocapslabel),
            op('lt_i', $i0, $ptr, %!reg<one>),
            op('if_i', $i0, $makemarklabel),
            op('sub_i', $ptr, $ptr, %!reg<three>),
            op('atpos_i', $i0, $bstack, $ptr),
            op('ge_i', $i0, $i0, %!reg<zero>),
            op('if_i', $i0, $makemarklabel),
            op('add_i', $ptr, $ptr, %!reg<two>),
            op('bindpos_i', $bstack, $ptr, $caps),
            op('inc_i', $ptr),
            op('goto', $nocapslabel),
            $makemarklabel,
            op('push_i', $bstack, %!reg<zero>),
            op('push_i', $bstack, %!reg<negone>),
            op('push_i', $bstack, %!reg<zero>),
            op('push_i', $bstack, $caps),
            $nocapslabel
        ]);
        $!regalloc.release_register($mark, $MVM_reg_int64);
        $!regalloc.release_register($ptr, $MVM_reg_int64);
        $!regalloc.release_register($caps, $MVM_reg_int64);
        $!regalloc.release_register($i0, $MVM_reg_int64);
    }

    method regex_mast($node) {
        unless $node ~~ QAST::Regex {
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
        my @ins     := [
            op('ge_i', $i0, %!reg<pos>, %!reg<eos>),
            op('if_i', $i0, %!reg<fail>),
        ];
        if +@($node) == 1 {
            my $hasvalcode := label();
            my $endblock   := label();
            if $prop eq 'name' || $prop eq 'Name' {
                my $s0 := $!regalloc.fresh_s();
                merge_ins(@ins, [
                    op('ordat', $i0, %!reg<tgt>, %!reg<pos>),
                    op('getuniname', $s0, $i0),
                    op('const_i64', $i0, %!reg<zero>),
                    op('unless_s', $s0, $endblock),
                    op('ordfirst', $i0, $s0),
                    op('const_i64', $pcode, ival(60)), # not a property code but the ord of '<'
                    op('ne_i', $i0, $i0, $pcode),
                    $endblock,
                    op('if_i', $i0, $succeed),
                ]);
            }
            elsif $prop ~~ /^ [ In<[A..Z]> | in<[a..z]> ]/ { # "InArabic" is a lookup of Block Arabic
                merge_ins(@ins, [
                    op('const_s', $pname, sval(nqp::substr($prop,2))),
                    op('uniisblock', $i0, %!reg<tgt>, %!reg<pos>, $pname),
                    op('if_i', $i0, $succeed),
                    op('const_s', $pprop, sval('Block')),
                    op('unipropcode', $pcode, $pprop),
                    op('unless_i', $pcode, $endblock),
                    op('unipvalcode', $pvcode, $pcode, $pname),
                    op('if_i', $pvcode, $hasvalcode),
                    $endblock,
                ]);
            }
            merge_ins(@ins, [
                op('const_s', $pname, sval($node[0])),
                op('unipropcode', $pcode, $pname),
                op('unipvalcode', $pvcode, $pcode, $pname),
                #~ op($testop, $pvcode, %!reg<fail>), # XXX I am sure we should fail here
                $hasvalcode,
                op('hasuniprop', $i0, %!reg<tgt>, %!reg<pos>, $pcode, $pvcode),
                $succeed,
                op($testop, $i0, %!reg<fail>),
            ]);
        }
        elsif $prop eq 'name' || $prop eq 'Name' {
            my $smrtmtch_mast := $!qastcomp.as_mast($node[1], :want($MVM_reg_obj));
            my $s0            := $!regalloc.fresh_s();
            merge_ins(@ins, $smrtmtch_mast.instructions);
            merge_ins(@ins, [
                op('ordat', $i0, %!reg<tgt>, %!reg<pos>),
                op('getuniname', $s0, $i0),
                op('findmeth', %!reg<method>, %!reg<cur>, sval('!DELEGATE_ACCEPTS')),
                call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str], :result($i0),
                    %!reg<cur>, $smrtmtch_mast.result_reg, $s0),
                op($testop, $i0, %!reg<fail>),
            ]);
        }
        else {
            my $smrtmtch_mast := $!qastcomp.as_mast($node[1], :want($MVM_reg_obj));
            my $s0            := $!regalloc.fresh_s();
            my $tryintprop    := label();
            my $tryboolprop   := label();
            merge_ins(@ins, $smrtmtch_mast.instructions);
            merge_ins(@ins, [
                op('const_s', $pname, sval($prop)),
                op('unipropcode', $pcode, $pname),
                op('unipvalcode', $pvcode, $pcode, $pname),
                op('ordat', $i0, %!reg<tgt>, %!reg<pos>),

                op('getuniprop_str', $s0, $i0, $pcode),
                op('unless_s', $s0, $tryintprop),
                op('findmeth', %!reg<method>, %!reg<cur>, sval('!DELEGATE_ACCEPTS')),
                call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::str], :result($i0),
                    %!reg<cur>, $smrtmtch_mast.result_reg, $s0),
                op('goto', $succeed),

                $tryintprop,
                op('getuniprop_int', $i0, $i0, $pcode),
                op('findmeth', %!reg<method>, %!reg<cur>, sval('!DELEGATE_ACCEPTS')),
                call(%!reg<method>, [$Arg::obj, $Arg::obj, $Arg::int], :result($i0),
                    %!reg<cur>, $smrtmtch_mast.result_reg, $i0),

                $succeed,
                op($testop, $i0, %!reg<fail>),
            ]);
        }
        nqp::push(@ins, op('inc_i', %!reg<pos>)) unless $node.subtype eq 'zerowidth';
        @ins
    }

    method ws($node) { self.subrule($node) }

    method dba($node) {
        my @flags := [$Arg::obj, $Arg::int, $Arg::str];
        my $sname := $!regalloc.fresh_s();
        my @ins := [
            op('const_s', $sname, sval($node.name)),
            op('findmeth', %!reg<method>, %!reg<cur>, sval('!dba')),
            call(%!reg<method>, @flags, %!reg<cur>, %!reg<pos>, $sname)
        ];
        $!regalloc.release_register($sname, $MVM_reg_str);
        @ins
    }

    method rxjump() {
        my $index := +@!rxjumps;
        @!rxjumps[$index] := MAST::Label.new();
        $index
    }

    sub merge_ins(@dest, @src) {
        nqp::splice(@dest, @src, +@dest, 0);
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
    sub ival($val) { MAST::IVal.new( :value($val) ) }
    sub nval($val) { MAST::NVal.new( :value($val) ) }
    sub sval($val) { MAST::SVal.new( :value($val) ) }
}
