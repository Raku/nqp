use QASTNode;

our $nfatime;
our $lastnfatime;
our $etctime;

class QRegex::NFA {
    my $EDGE_FATE            := 0;
    my $EDGE_EPSILON         := 1;
    my $EDGE_CODEPOINT       := 2;
    my $EDGE_CODEPOINT_NEG   := 3;
    my $EDGE_CHARCLASS       := 4;
    my $EDGE_CHARCLASS_NEG   := 5;
    my $EDGE_CHARLIST        := 6;
    my $EDGE_CHARLIST_NEG    := 7;
    my $EDGE_SUBRULE         := 8;
    my $EDGE_CODEPOINT_I     := 9;
    my $EDGE_CODEPOINT_I_NEG := 10;
    my $EDGE_GENERIC_VAR     := 11;
    my $EDGE_CHARRANGE       := 12;
    my $EDGE_CHARRANGE_NEG   := 13;
    my $EDGE_CODEPOINT_LL    := 14;
    my $EDGE_CODEPOINT_I_LL  := 15;
    my $EDGE_CODEPOINT_M     := 16;
    my $EDGE_CODEPOINT_M_NEG := 17;
    my $EDGE_CODEPOINT_M_LL  := 18;
    my $EDGE_CODEPOINT_IM     := 19;
    my $EDGE_CODEPOINT_IM_NEG := 20;
    my $EDGE_CODEPOINT_IM_LL  := 21;
    my $EDGE_CHARRANGE_M      := 22;
    my $EDGE_CHARRANGE_M_NEG  := 23;

    my $ACTIONS;
    my $nfadeb;
    my $ind;

    sub dentin() {
        if $nfadeb {
            $ind := $ind + 2;
            nqp::x(' ', $ind);
        }
        else { '' }
    }

    sub dentout($x) {
        $ind := $ind - 2 if $nfadeb;
        $x;
    }

    # The build-time set of states, with element zero being the fate name
    # list.
    has $!states;
    
    # Non-zero if this NFA has some edges added.
    has $!edges;
    
    # Non-zero if this NFA is generic.
    has int $!generic;
    
    # The NFA we will actually run (with NFA REPR).
    has $!nfa_object;

    # Are we finished looking for a longest literal prefix?
    has $!LITEND;

    has $!known;

    method new() {
        my $new := self.bless(:states(nqp::list()), :edges(0), :LITEND(0), :known([]));
        $new.addstate();  # storage for fates
        $new.addstate();  # entry point, mostly fanout epsilons
        $new;
    }
    
    method from_saved($saved) {
        self.bless(:states($saved), :edges(1));
    }

    method addstate() {
        my $indent := dentin();
        my int $id := +$!states;
        note("$indent addstate $id") if $nfadeb;
        $!states[$id] := [];
        dentout($id);
    }

    method addedge($from, $to, $action, $value, :$newedge = 1) {
        my $indent := dentin();
        my $v := nqp::istype($value, QAST::SVal) ?? $value.value !! $value;
        my $vv := $action == $EDGE_SUBRULE ?? "" !! $v;
        note("$indent addedge $from -> $to {$ACTIONS[nqp::bitand_i($action,0xff)] // 'unk'}") if $nfadeb;
        $!edges := 1 if $newedge;
        $to := self.addstate() if $to < 0;
        my $st := $!states[$from];
        if $action == $EDGE_FATE {
            if $!known[$v] {
                if !$to || $to == $!known[$v] {
                    $action := $EDGE_EPSILON;
                    $to := $!known[$v];
                }
            }
            elsif +$st == 0 {
                $!known[$v] := $from;
            }
        }
        nqp::push($st, $action);
        nqp::push($st, $v);
        nqp::push($st, $to);
        dentout($to);
    }

    method states() { $!states }

    method addnode($node, :$*vars_as_generic) {
        my $indent := dentin();
        note("$indent addnode") if $nfadeb;
        # nqp::die("HERE") if $nfadeb && $nfadeb++ == 2;
        self.regex_nfa($node, 1, 0);
        $!LITEND := 0;
        self.mydump() if $nfadeb;
        dentout(self);
    }

    method regex_nfa($node, $from, $to) {
        my $indent := dentin();
        my $method := ($node.rxtype // 'concat');
        note("$indent regex_nfa $from -> $to $method") if $nfadeb;

        $!LITEND := 1 unless $method eq 'literal' || $method eq 'concat' || $method eq 'alt';

        my $result := self.HOW.can(self, $method) 
         ?? self."$method"($node, $from, $to)
         !! self.fate($node, $from, $to);
        note("$indent ...regex_nfa returns $result") if $nfadeb;

        dentout($result);
    }

    method fate($node, $from, $to) { 
        my $indent := dentin();
        note("$indent fate $from -> $to") if $nfadeb;
        dentout(self.addedge($from, 0, $EDGE_FATE, 0, :newedge(0)));
    }

    method alt($node, $from, $to) {
        my $indent := dentin();
        note($node.dump) if $nfadeb;
        my $litendfront := $!LITEND;
        my $litendback;
        for $node.list {
            note("$indent alternative") if $nfadeb;
            $!LITEND := $litendfront;

            my int $st := self.regex_nfa($_, $from, $to);

            $litendback := 1 if $!LITEND;

            $to := $st if $to < 0 && $st > 0;
        }
        # stop litlen at recombination unless all alts are pure literal
        $!LITEND := $litendback;
        dentout($to);
    }

    method altseq($node, $from, $to) {
        if +@($node) {
            my $indent := dentin();
            my int $st := self.regex_nfa($node[0], $from, $to);
            $to := $st if $to < 0 && $st > 0;
            $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
            $to := $st if $to < 0 && $st > 0;
            note("$indent ...altseq returns $to") if $nfadeb;
            dentout($to);
        }
        else {
            self.fate($node, $from, $to);
        }
    }

    method anchor($node, $from, $to) { 
        self.addedge($from, $to, $EDGE_EPSILON, 0);
    }
    
    method dba($node, $from, $to) { 
        self.addedge($from, $to, $EDGE_EPSILON, 0);
    }

    my %cclass_code;
    INIT {
        %cclass_code<.>  := nqp::const::CCLASS_ANY;
        %cclass_code<d>  := nqp::const::CCLASS_NUMERIC;
        %cclass_code<s>  := nqp::const::CCLASS_WHITESPACE;
        %cclass_code<w>  := nqp::const::CCLASS_WORD;
        %cclass_code<n>  := nqp::const::CCLASS_NEWLINE;
        $nfadeb := nqp::existskey(nqp::getenvhash(),'NQP_NFA_DEB');
        $ACTIONS := ['FATE','EPSILON','CODEPOINT','CODEPOINT_NEG','CHARCLASS','CHARCLASS_NEG','CHARLIST','CHARLIST_NEG','SUBRULE','CODEPOINT_I','CODEPOINT_I_NEG','GENERIC_VAR','CHARRANGE','CHARRANGE_NEG','CODEPOINT_LL','CODEPOINT_I_LL','CODEPOINT_M','CODEPOINT_M_NEG'];
        # $ind := 0;
        # $indent := '';
        $nfatime := 0;
        $etctime := 0;
        $lastnfatime := nqp::time_n();
    }

    method cclass($node, $from, $to) {
        my $indent := dentin();
        dentout(self.addedge($from, $to, $EDGE_CHARCLASS + ?$node.negate,
                     %cclass_code{ $node.name }));
    }

    method concat($node, $from, $to) {
        my $indent := dentin();
        note("$indent concat $from -> $to") if $nfadeb;
        my int $i := 0;
        my int $n := +$node.list - 1;
        while $from > 0 && $i < $n {
            $from := self.regex_nfa($node[$i], $from, -1);
            $i := $i + 1;
        }
        note("$indent ...concat created $from, n = $n") if $nfadeb;
        my $result := $from > 0 && $n >= 0 ?? self.regex_nfa($node[$i], $from, $to) !! $to;
        note("$indent ...concat returns $result") if $nfadeb;
        dentout($result);
    }

    method enumcharlist($node, $from, $to) {
        my $indent := dentin();
        note("$indent enumcharlist $from -> $to") if $nfadeb;
        my $charlist := $node[0];
        if $node.subtype eq 'zerowidth' {
            $from := self.addedge($from, -1, $EDGE_CHARLIST + ?$node.negate, $charlist);
            dentout(self.addedge($from, 0, $EDGE_FATE, 0));
        }
        else {
            dentout(self.addedge($from, $to, $EDGE_CHARLIST + ?$node.negate, $charlist));
        }
    }

    method charrange($node, $from, $to) {
        my $indent := dentin();
        note("$indent charrange $from -> $to") if $nfadeb;
        my $base_edge := $node[0] eq 'ignoremark' || $node[0] eq 'ignorecase+ignoremark'
            ?? $EDGE_CHARRANGE_M
            !! $EDGE_CHARRANGE;
        my @to_add;
        if $node[0] eq 'ignorecase' || $node[0] eq 'ignorecase+ignoremark' {
            nqp::push(@to_add, nqp::ord(nqp::lc(nqp::chr($node[1].value))));
            nqp::push(@to_add, nqp::ord(nqp::lc(nqp::chr($node[2].value))));
            nqp::push(@to_add, nqp::ord(nqp::uc(nqp::chr($node[1].value))));
            nqp::push(@to_add, nqp::ord(nqp::uc(nqp::chr($node[2].value))));
        }
        else {
            nqp::push(@to_add, $node[1].value);
            nqp::push(@to_add, $node[2].value);
        }
        my $result;
        for @to_add -> $ord0, $ord1 {
            if $node.subtype eq 'zerowidth' {
                my $next := self.addedge($from, -1, $base_edge + ?$node.negate,
                    [$ord0, $ord1]);
                $result := dentout(self.addedge($next, 0, $EDGE_FATE, 0));
            }
            else {
                $result := dentout(self.addedge($from, $to, $base_edge + ?$node.negate,
                    [$ord0, $ord1]));
            }
        }
        $result
    }

    # Synthetics must be conveyed as strings; anything else can go as an
    # integer
    sub ord-or-str($str, $idx) {
        my int $ord := nqp::ord($str, $idx);
        my str $chr := nqp::substr($str, $idx, 1);
        nqp::chr($ord) eq $chr ?? $ord !! $chr
    }

    method literal($node, $from, $to) {
        my $indent := dentin();
        my int $litlen   := nqp::chars($node[0]) - 1;
        my int $i        := 0;
        if $litlen >= 0 {
            note("$indent literal $from -> $to {$node[0]}") if $nfadeb;
            if $node.subtype eq 'ignorecase' {
                my str $litconst_lc := nqp::lc($node[0]);
                my str $litconst_uc := nqp::uc($node[0]);
                while $i < $litlen {
                    $from := self.addedge($from, -1, $EDGE_CODEPOINT_I,
                        [ord-or-str($litconst_lc, $i), ord-or-str($litconst_uc, $i)]);
                    $i := $i + 1;
                }
                dentout(self.addedge($from, $to, $!LITEND ?? $EDGE_CODEPOINT_I !!  $EDGE_CODEPOINT_I_LL,
                    [ord-or-str($litconst_lc, $i), ord-or-str($litconst_uc, $i)]));
            }
            elsif $node.subtype eq 'ignoremark' {
                my str $litconst := $node[0];
                while $i < $litlen {
                    $from := self.addedge($from, -1, $EDGE_CODEPOINT_M, nqp::ordbaseat($litconst, $i));
                    $i := $i + 1;
                }
                dentout(self.addedge($from, $to, $EDGE_CODEPOINT_M, nqp::ordbaseat($litconst, $i)));
                # XXX $EDGE_CODEPOINT_M_LL ?
            }
            elsif $node.subtype eq 'ignorecase+ignoremark' {
                my str $litconst_lc := nqp::lc($node[0]);
                my str $litconst_uc := nqp::uc($node[0]);
                while $i < $litlen {
                    $from := self.addedge($from, -1, $EDGE_CODEPOINT_IM,
                        [nqp::ordbaseat($litconst_lc, $i), nqp::ordbaseat($litconst_uc, $i)]);
                    $i := $i + 1;
                }
                dentout(self.addedge($from, $to, $EDGE_CODEPOINT_IM,
                    [nqp::ordbaseat($litconst_lc, $i), nqp::ordbaseat($litconst_uc, $i)]));
                # XXX $EDGE_CODEPOINT_IM_LL ?
            }
            else {
                my str $litconst := $node[0];
                while $i < $litlen {
                    $from := self.addedge($from, -1, $EDGE_CODEPOINT, ord-or-str($litconst, $i));
                    $i := $i + 1;
                }
                dentout(self.addedge($from, $to, $!LITEND ?? $EDGE_CODEPOINT !!  $EDGE_CODEPOINT_LL,
                    ord-or-str($litconst, $i)));
            }
        }
        else {
            note("$indent literal $from -> $to ''") if $nfadeb;
            dentout(self.addedge($from, $to, $EDGE_EPSILON, 0));
        }
    }

    method subrule($node, $from, $to) {
        my $indent := dentin();
        my $subtype := $node.subtype;
        note("$indent subrule $from -> $to {$node.name}") if $nfadeb;
        if $node.name eq 'before' && !$node.negate &&
                nqp::istype((try $node[0][1].ann('orig_qast')), QAST::Regex) {
            my int $end := self.addstate();
            self.regex_nfa($node[0][1].ann('orig_qast'), $from, $end);
            dentout(self.fate($node, $end, $to));
        }
        elsif $subtype ne 'zerowidth' &&
                ($node.name eq 'alpha' ||
                    $subtype eq 'method' &&
                    ($node[0][0] ~~ QAST::SVal ?? $node[0][0].value !! $node[0][0]) eq 'alpha') {
            $to := self.addedge($from, $to, $EDGE_CHARCLASS + $node.negate,
                nqp::const::CCLASS_ALPHABETIC);
            dentout(self.addedge($from, $to, $EDGE_CODEPOINT + $node.negate, 95));
        }
        elsif !$node.negate && 
                ($node.name eq 'ws' ||
                    $subtype eq 'method' &&
                    ($node[0][0] ~~ QAST::SVal ?? $node[0][0].value !! $node[0][0]) eq 'ws') {
            dentout(self.fate($node, $from, $to));
        }
        elsif !$node.negate && $subtype ne 'zerowidth' &&
                ($node.name eq 'ident' ||
                    $subtype eq 'method' &&
                    ($node[0][0] ~~ QAST::SVal ?? $node[0][0].value !! $node[0][0]) eq 'ident') {
            my int $beginstate := self.addstate();
            self.addedge($from, $beginstate, $EDGE_EPSILON, 0);

            my int $midstate := self.addstate();
            self.addedge($beginstate, $midstate, $EDGE_CHARCLASS, nqp::const::CCLASS_ALPHABETIC);
            self.addedge($beginstate, $midstate, $EDGE_CODEPOINT, 95);

            my int $second := self.addstate();

            self.addedge($midstate, $second, $EDGE_CHARCLASS, nqp::const::CCLASS_WORD);
            self.addedge($second, $midstate, $EDGE_EPSILON, 0);
            $to := self.addedge($midstate, $to, $EDGE_EPSILON, 0);
            dentout($to);
        }
        elsif $subtype eq 'zerowidth' {
            if $node.negate {
                dentout(self.fate($node, $from, $to))
            }
            else {
                my int $end := self.addstate();
                self.addedge($from, $end, $EDGE_SUBRULE, $node.name);
                dentout(self.fate($node, $end, $to));
            }
        }
        elsif $*vars_as_generic && $subtype eq 'method' &&
                $node[0][0] ~~ QAST::SVal && $node[0][0].value eq '!INTERPOLATE' &&
                $node[0][1] ~~ QAST::Var && $node[0][1].scope eq 'lexical' {
            $!generic := 1;
            dentout(self.addedge($from, $to, $EDGE_GENERIC_VAR, $node[0][1].name));
        }
        else {
            dentout($subtype eq 'capture' && $node[1]
                ?? self.regex_nfa($node[1], $from, $to)
                !! self.addedge($from, $to, $EDGE_SUBRULE, $node[0][0]))
        }
    }
    
    method quant($node, $from, $to) {
        my $indent := dentin();
        my int $min := 0 + ($node.min // 0);
        my int $max := 0 + ($node.max // -1); # -1 means Inf
        note("$indent quant $from -> $to $min $max") if $nfadeb;
        
        if $max > 1 || $min > 1 {
            my int $count := 0;
            my int $st;
            my int $has_sep := nqp::defined($node[1]);
            while $count < $max || $count < $min {
                if $count >= $min {
                    my int $f := self.addedge($from, $to, $EDGE_EPSILON, 0);
                    note("$indent ...quant f = $f") if $nfadeb;
                    $st := $st || $f;
                }
                if $has_sep && $count > 0 {
                    $from := self.regex_nfa($node[1], $from, -1);
                }
                $from := self.regex_nfa($node[0], $from, -1);
                $count := $count + 1;
            }
            $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
            if $max == -1 { # actually I think this is currently unreachable
                my int $start := self.addstate();
                self.addedge($from, $start, $EDGE_EPSILON, 0);
                $from := $start;
                my $looper := self.addstate();
                self.addedge($looper, $to, $EDGE_EPSILON, 0);
                self.addedge($looper, $from, $EDGE_EPSILON, 0);
                if $has_sep && $count > 0 {
                    $from := self.regex_nfa($node[1], $from, -1);
                }
                self.regex_nfa($node[0], $from, $looper);
            }
            $to := $st if $to < 0 && $st > 0;
            note("$indent ...quant returns $to with st = $st") if $nfadeb;
            return dentout($to);
        }
        if $max == -1 {
            if $min == 0 { # * quantifier
                if nqp::defined($node[1]) { # * %
                    my int $start := self.addstate();
                    self.addedge($from, $start, $EDGE_EPSILON, 0);
                    my int $looper := self.addstate();
                    note("$indent ...in quant *%, start = $start, looper = $looper") if $nfadeb;
                    my int $st := self.regex_nfa($node[0], $start, $looper);
                    self.regex_nfa($node[1], $looper, $start);
                    self.addedge($looper, $to, $EDGE_EPSILON, 0) unless $to < 0;
                    $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
                    $to := $st if $to < 0 && $st > 0;
                }
                else {
                    note("$indent ...in quant *") if $nfadeb;
                    self.regex_nfa($node[0], $from, $from);
                    my int $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
                    $to := $st if $to < 0 && $st > 0;
                }
            } else { # + quantifier
                my int $start := self.addstate();
                self.addedge($from, $start, $EDGE_EPSILON, 0);
                my int $looper := self.addstate();
                note("$indent ...in quant +, start = $start, looper = $looper") if $nfadeb;
                my int $st := self.regex_nfa($node[0], $start, $looper);
                if nqp::defined($node[1]) {
                    self.regex_nfa($node[1], $looper, $start);
                }
                else {
                    note("$indent ...in quant +, no node[1]") if $nfadeb;
                    self.addedge($looper, $start, $EDGE_EPSILON, 0);
                }
                self.addedge($looper, $to, $EDGE_EPSILON, 0) unless $to < 0;
                $to := $st if $to < 0 && $st > 0;
            }
            note("$indent ...quant returns $to") if $nfadeb;
            dentout($to);
        } elsif $min == 0 && $max == 1 { # ? quantifier
            my int $st := self.regex_nfa($node[0], $from, $to);
            $to := $st if $to < 0 && $st > 0;
            $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
            $to := $st if $to < 0 && $st > 0;
            note("$indent ...quant returns $to") if $nfadeb;
            dentout($to);
        } else {
            note("$indent ...quant returns fate") if $nfadeb;
            dentout(self.fate($node, $from, $to))
        }
    }
    
    method qastnode($node, $from, $to) {
        my $indent := dentin();
        note("$indent qastnode $from -> $to") if $nfadeb;
        dentout($node.subtype eq 'zerowidth' || $node.subtype eq 'declarative' ??
            self.addedge($from, $to, $EDGE_EPSILON, 0) !!
            self.fate($node, $from, $to));
    }
    
    method subcapture($node, $from, $to) {
        my $indent := dentin();
        note("$indent subcapture $from -> $to") if $nfadeb;
        dentout(self.regex_nfa($node[0], $from, $to));
    }
    
    method save(:$non_empty) {
        my $indent := dentin();
        note("$indent save") if $nfadeb;
        unless $!edges {
            return 0 unless $non_empty;
            self.addedge(1, 0, $EDGE_FATE, 0, :newedge(1)) 
        }
        dentout($!states)
    }

    method mergesubrule($start, $to, $fate, $cursor, $name, %caller_seen?) {
        my $indent := dentin();
        my %seen := nqp::clone(%caller_seen);
        my @substates;
        my $meth;
        my $n;
        my $err := nqp::getstderr();
        if nqp::istype($name,QAST::Var) {
            $meth := $name.ann('coderef');
            $n := $meth.name;
            note("$indent mergesubrule $n start $start to $to fate $fate") if $nfadeb;
            if !nqp::existskey(%seen, $n) {
                if nqp::can($meth, 'NFA') {
                    @substates := $meth.NFA();
                    @substates := [] if nqp::isnull(@substates);
                }
                %seen{$n} := 1;
            }
            else {
                nqp::printfh($err, "$indent ...skipping $n to avoid left recursion\n") if $nfadeb;
            }
        }
        elsif nqp::can($cursor, $name) {
            nqp::printfh($err,"$indent mergesubrule $name start $start to $to fate $fate\n") if $nfadeb;
            $n := $name;
            if !nqp::existskey(%seen, $name) {
                $meth := nqp::can($cursor.HOW, 'traced') && $cursor.HOW.traced($cursor)
                    ?? $cursor.HOW.find_method($cursor, $name, :no_trace(1))
                    !! nqp::findmethod($cursor, $name);
                if nqp::can($meth, 'NFA') {
                    @substates := $meth.NFA();
                    @substates := [] if nqp::isnull(@substates);
                }
                if !@substates {
                    # Maybe it's a protoregex, in which case states are an alternation
                    # of all of the possible rules.
                    my %protorx      := $cursor.HOW.cache($cursor, "!protoregex_table", { $cursor."!protoregex_table"() });
                    my $nfa          := QRegex::NFA.new;
                    my int $gotmatch := 0;
                    if nqp::existskey(%protorx, $name) {
                        for %protorx{$name} -> $rxname {
                            $nfa.addedge(1, 0, $EDGE_SUBRULE, $rxname);
                            $gotmatch := 1;
                        }
                    }
                    @substates := $nfa.states() if $gotmatch;
                }
                %seen{$name} := 1;
            }
            else {
                nqp::printfh($err, "$indent ...skipping $name to avoid left recursion\n") if $nfadeb;
            }
        }
        if $nfadeb {
            my int $s := 1;
            my int $send := +@substates;
            my int $bad := 0;
            while $s < $send {
                my $edges := @substates[$s];
                if +$edges == 0 {
                    nqp::printfh($err, "$indent ...Bad at $s:\n");
                    $bad := $bad + 1;
                }
                $s := $s + 1;
            }
            if $bad > 0 {
                nqp::printfh($err, "$indent ...attempt to merge $bad empty states from $n\n");
                nqp::printfh($err, "Fates:\n");
                for @substates[0] -> $f {
                    nqp::printfh($err, "\t$f\n");
                }
                nqp::printfh($err, "\n");
                $s := 1;
                while $s < $send {
                    nqp::printfh($err, "$s:");
                    for @substates[$s] -> $a, $v, $t {
                        my $act := nqp::bitand_i($a,0xff);
                        my $action := $ACTIONS[$act];
                        if $act == $EDGE_CODEPOINT || $act == $EDGE_CODEPOINT_LL {
                            nqp::printfh($err, "\t$t $action " ~ nqp::chr($v) ~ "\n");
                        }
                        elsif $act == $EDGE_FATE {
                            nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                        }
                        elsif $act == $EDGE_CHARCLASS || $act == $EDGE_CHARCLASS_NEG {
                            nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                        }
                        elsif $act == $EDGE_CHARLIST || $act == $EDGE_CHARLIST_NEG {
                            nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                        }
                        elsif $act == $EDGE_SUBRULE && nqp::istype($v,BOOTStr) {
                            nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                        }
                        else {
                            nqp::printfh($err, "\t$t $action\n");
                        }
                    }
                    nqp::printfh($err, "\n");
                    $s := $s + 1;
                }
            }
        }
        dentout(self.mergesubstates($start, $to, $fate, @substates, $cursor, %seen));
    }
    
    method mergesubstates($start, $to, $fate, @substates, $cursor, %seen?) {
        my $indent := dentin();
        note("$indent mergesubstates start $start to $to fate $fate") if $nfadeb;
        $!states[0][$fate] := $fate;  # overridden by !protoregex_nfa
        if @substates {
            # create an empty end state for the subrule's NFA
            my int $substart := self.addstate();
            # Copy (yes, clone) @substates[1..*] into our states.
            # We have to clone because we'll be modifying the
            # values for use in this particular NFA.
            @substates := nqp::clone(@substates);
            nqp::shift(@substates);
            nqp::push($!states, nqp::clone(nqp::shift(@substates))) 
              while @substates;
            # Go through all of the newly added states, and
            #    apply $substart offset to target states
            #    adjust fate edges to be $fate
            #    append any subrules
            my int $subend := nqp::elems($!states);
            my int $i      := $substart;
            while $i < $subend {
                my $substate := $!states[$i];
                my int $j := 0;
                my int $k := nqp::elems($substate);
                while $j < $k {
                    $substate[$j+2] := $substate[$j+2] + $substart;
                    if $substate[$j] == $EDGE_FATE {
                        if $to > 0 {
                            $substate[$j+1] := $fate;
                        }
                        else {  # adding our own fate later, so don't need this one
                            $substate[$j] := $EDGE_EPSILON;
                        }
                    }
                    elsif $substate[$j] == $EDGE_SUBRULE {
                        my $j2 := $substate[$j+2];
                        my $j1 := $substate[$j+1];
                        nqp::splice($substate,[], $j, 3);
                        self.mergesubrule($i, $j2, $fate, $cursor, $j1, %seen);
                        $j := $j - 3;
                        $k := $k - 3;
                    }
                    elsif $substate[$j] == $EDGE_CODEPOINT_LL || $substate[$j] == $EDGE_CODEPOINT_I_LL {
                        # Added to act because there's no more room arg for two case insensitive chars.
                        # The NFA engine notices a negative act and redispatches to correct spot.
                        # The act and fate are both encoded positively, and we ignore the negative bits.
                        $substate[$j] := $substate[$j] + 256 * $fate - 0x40000000;
                    }
                    $j := $j + 3;
                }
                $i := $i + 1;
            }
            self.addedge($start, $substart+1, $EDGE_EPSILON, 0);
            dentout($to > 0
              ?? self.addedge($substart, $to, $EDGE_EPSILON, 0)
              !! self.addedge($substart, 0, $EDGE_FATE, $fate))
        }
        else {
            dentout(self.addedge($start, 0, $EDGE_FATE, $fate));
        }
    }
    
    # NFA type.
    my knowhow NFAType is repr('NFA') { }

    method run(str $target, int $offset) {
        unless nqp::isconcrete($!nfa_object) {
            self.mydump() if $nfadeb;
            nqp::scwbdisable();
            $!nfa_object := nqp::nfafromstatelist($!states, NFAType);
            nqp::scwbenable();
        }
#        my $t0 := nqp::time_n();
#        $etctime := $etctime + $t0 - $lastnfatime;
        my $result := nqp::nfarunproto($!nfa_object, $target, $offset);
#        my $t1 := nqp::time_n();
#        $nfatime := $nfatime + $t1 - $t0;
#        if nqp::chars($target) == $offset {
#            note( "EOS in proto at $offset " ~ $nfatime ~ " / " ~ $etctime ~ " " ~ ($nfatime / ($etctime + $nfatime)));
#        }
#        $lastnfatime := $t1;
        $result;
    }
    
    method run_alt(str $target, int $offset, $bstack, $cstack, @labels) {
        unless nqp::isconcrete($!nfa_object) {
            self.mydump() if $nfadeb;
            nqp::scwbdisable();
            $!nfa_object := nqp::nfafromstatelist($!states, NFAType);
            nqp::scwbenable();
        }
#        my $t0 := nqp::time_n();
#        $etctime := $etctime + $t0 - $lastnfatime;
        my $result := nqp::nfarunalt($!nfa_object, $target, $offset, $bstack, $cstack, @labels);
#        my $t1 := nqp::time_n();
#        $nfatime := $nfatime + $t1 - $t0;
#        if nqp::chars($target) == $offset {
#            note( "EOS in alt at $offset " ~ $nfatime ~ " / " ~ $etctime ~ " " ~ ($nfatime / ($etctime + $nfatime)));
#        }
#        $lastnfatime := $t1;
        $result;
    }
    
    method generic() {
        $!generic
    }
    
    method instantiate_generic($env) {
        # Create a copy.
        my $copy := nqp::create(self);
        my @copied_states;
        for $!states -> @values {
            nqp::push(@copied_states, nqp::clone(@values));
        }
        nqp::bindattr($copy, QRegex::NFA, '$!states', @copied_states);
        nqp::bindattr($copy, QRegex::NFA, '$!edges', $!edges);
     
        # Work out what we need to do to instantiate it by replacing any
        # generic edges.
        my int $from := 0;
        for @copied_states -> @values {        
            my @output_values;
            my int $i := 0;
            my int $n := nqp::elems(@values);
            while $i < $n {
                my $act := @values[$i];
                my $arg := @values[$i + 1];
                my $to  := @values[$i + 2];
                if $act == $EDGE_GENERIC_VAR {
                    if nqp::existskey($env, $arg) {
                        $copy.literal(
                            QAST::Regex.new( :rxtype('literal'), nqp::atkey($env, $arg) ),
                            $from, $to);
                        @values[$i] := $EDGE_EPSILON;
                        @values[$i + 1] := 0;
                        @values[$i + 2] := 0;
                    }
                    else {
                        @values[$i] := $EDGE_FATE;
                        @values[$i + 1] := 0;
                        @values[$i + 2] := 0;
                    }
                }
                $i := $i + 3;
            }
            $from++;
        }
        
        $copy
    }

    method __dump($dumper, $label) {
        my $subindent := $dumper.'newIndent'();
        print('[');
        my $st := 0;
        for $!states {
            print(nqp::sprintf("\n$subindent'%d' => [%s]", [$st, nqp::join(', ', $_)]));
            $st := $st + 1;
        }
        $dumper.deleteIndent();
        print("\n", $dumper.indent, ']');
    }

    method optimize() {
        my int $send := nqp::elems($!states);
        my $err := nqp::getstderr();
        nqp::printfh($err, "------------------------------------------\n   $send states\n") if $nfadeb;
        my $remap := nqp::list_i();
        nqp::setelems($remap, $send + 1);
        my $refs := nqp::list_i();
        nqp::setelems($refs, $send + 1);
        if $send > 3 {
            self.mydump() if $nfadeb;

            # first pass, remember single-edge epsilon states
            my int $s := 1;
            while $s < $send {
                my $edges := $!states[$s];
                if nqp::elems($edges) == 3 {
                    my int $to := $edges[2];
                    if $edges[0] == $EDGE_EPSILON {
                        nqp::bindpos_i($remap,$s,$to);
                    }
                    elsif $edges[0] == $EDGE_FATE {
                        # is this fate pointing to same fate, possibly via remappables?
                        if $to {
                            while nqp::atpos_i($remap,$to) {
                                $to := nqp::atpos_i($remap,$to);
                            }
                            my $sedges := $!states[$to];
                            if +$sedges && $sedges[0] == $EDGE_FATE && $sedges[1] == $edges[1] {
                                nqp::bindpos_i($remap,$s,$to);
                            }
                        }
                    }
                }
                $s := $s + 1;
            }

#            $s := 1;
#            while $s < $send {
#               if nqp::atpos_i($remap, $s) {
#                    my $newpos := nqp::atpos_i($remap,$s);
#                    nqp::printfh($err, "\t$s -> $newpos\n");
#
#                }
#                $s := $s + 1;
#            }

            # unlink all the empty epsilons, count resulting refs to each state
            nqp::printfh($err, "now $send states before unlinking empties\n") if $nfadeb;
            $s := 1;
            while $s < $send {
                my $edges := $!states[$s];
                if nqp::atpos_i($remap,$s) && $s > 1 {
                    $!states[$s] := [];
                }
                else {
                    my int $eend := nqp::elems($edges);
                    my int $e := 2;
                    while $e < $eend {
                        my int $to := $edges[$e];
                        my int $was := $to;
                        if $to && nqp::atpos_i($remap,$to) {
                            while nqp::atpos_i($remap,$to) {
                                $to := nqp::atpos_i($remap,$to);
                                nqp::printfh($err, "  chasing $was to $to\n") if $nfadeb;
                            }
                            $edges[$e] := $to;
                        }
                        nqp::bindpos_i($refs,$to, nqp::atpos_i($refs,$to) + 1);
                        $e := $e + 3;
                    }
                }
                $s := $s + 1;
            }

            self.mydump() if $nfadeb;
            # replace epsilons to single edge, single ref states
            nqp::printfh($err, "now $send states before stealing singleton edges\n") if $nfadeb;
            $s := 1;
            while $s < $send {
                my $edges := $!states[$s];
                my int $eend := nqp::elems($edges);
                my int $e := 0;
                while $e < $eend {
                    # note that singleton epsilon states were already removed last pass
                    # so these epsilons are part of multiple edge states.
                    if $edges[$e] == $EDGE_EPSILON {
                        my int $to := $edges[$e+2];
                        if $to {
                            my $sedges := $!states[$to];
                            if +$sedges == 3 {
                                nqp::printfh($err, "  $s stealing $to\n") if $nfadeb;
                                $edges[$e]     := $sedges[0];
                                $edges[$e + 1] := $sedges[1];
                                $edges[$e + 2] := $sedges[2];

                                my int $refcnt := nqp::atpos_i($refs,$to);
                                $refcnt := $refcnt - 1;
                                nqp::bindpos_i($refs,$to,$refcnt);
                                $!states[$to] := [] unless $refcnt; # remove if no refs remaining
                            }
                        }
                    }
                    $e := $e + 3;
                }
                $s := $s + 1;
            }
            self.mydump() if $nfadeb;

            # build resequence map for states that still have any edges
            nqp::printfh($err, "now $send states before calculating remap\n") if $nfadeb;
            my int $newend := 1;
            $s := 1;
            while $s < $send {
                if +$!states[$s] {
                    nqp::bindpos_i($remap,$s,$newend);
                    $newend := $newend + 1;
                }
                else {  # zero out entries that were used earlier for epsilon removal.
                    nqp::bindpos_i($remap,$s,0);
                }
                $s := $s + 1;
            }

#            nqp::printfh($err, "now $send states\n");
#            self.mydump();
#            $s := 1;
#            while $s < $send {
#                if nqp::atpos_i($remap, $s) {
#                    my $newpos := nqp::atpos_i($remap,$s);
#                    nqp::printfh($err, "\t$s -> $newpos\n");
#                }
#                $s := $s + 1;
#            }

            # now move the states and remap the edges (if, in fact, any states were removed)
            self.mydump() if $nfadeb;
            nqp::printfh($err, "now $send states mapping to $newend states\n") if $nfadeb;
            if $newend < $send {
                my $newstates := nqp::list();
                nqp::setelems($newstates, $newend);
                nqp::bindpos($newstates, 0, $!states[0]);  # copy fates
                $s := 1;
                while $s < $send {
                    if +$!states[$s] {
                        my $newpos := nqp::atpos_i($remap,$s);
                        nqp::printfh($err, "OOPS outrageous $newpos\n") if $newpos > $s;
                        if $newpos {
                            nqp::bindpos($newstates, $newpos, $!states[$s]);
                            my $edges := $newstates[$newpos];
                            my int $eend := nqp::elems($edges);
                            my int $e := 2;
                            while $e < $eend {
                                my int $to := $edges[$e];
                                my int $act := nqp::bitand_i($edges[$e-2], 0xff);
                                if $to {
                                    my $to2 := nqp::atpos_i($remap,$to);
                                    nqp::printfh($err, "In $s -> $newpos remapping " ~ $ACTIONS[$act] ~ " $to -> $to2\n") if $nfadeb;
                                    $edges[$e] := $to2;
                                }
                                $e := $e + 3;
                            }
                            # a small O(N^2) dup remover
                            $e := 3;
                            while $e < $eend {
                                my int $act := nqp::bitand_i($edges[$e], 0xff);
                                if $act < $EDGE_CHARLIST {
                                    my $f := 0;
                                    while $f < $e {
                                        if $act == $edges[$f] && $edges[$e+2] == $edges[$f+2] && $edges[$e+1] == $edges[$f+1] {
                                            nqp::printfh($err, "Deleting dup edge at $s $e/$f\n") if $nfadeb;
                                            $f := $e;
                                            nqp::splice($edges,[],$e,3);
                                            $e := $e - 3;
                                            $eend := $eend - 3;
                                        }
                                        $f := $f + 3;
                                    }
                                }
                                $e := $e + 3;
                            }
                        }
                        else {
                            nqp::printfh($err, "False mapping for $s\n") if $nfadeb;
                        }
                    }
                    else {
                        nqp::printfh($err, "Skipping $s\n") if $nfadeb;
                    }
                    $s := $s + 1;
                }
                nqp::bindattr(self, QRegex::NFA, '$!states', $newstates);
            }
            self.mydump() if $nfadeb;
        }
    }

    method mydump() {
        my int $send := nqp::elems($!states);
        if $send > 1 {
            my $err := nqp::getstderr();
            nqp::printfh($err, "==========================================\n   $send states\n");
            nqp::printfh($err, "Fates:\n");
            for $!states[0] -> $f {
                $f := "" if nqp::isnull($f);
                nqp::printfh($err, "\t$f\n");
            }
            nqp::printfh($err, "\n");
            my int $s := 1;
            while $s < $send {
                nqp::printfh($err, "$s:");
                for $!states[$s] -> $a, $v, $t {
                    my $act := nqp::bitand_i($a,0xff);
                    my $action := $ACTIONS[$act];
                    if $act == $EDGE_CODEPOINT || $act == $EDGE_CODEPOINT_LL {
                        nqp::printfh($err, "\t$t $action " ~ nqp::chr($v) ~ "\n");
                    }
                    elsif $act == $EDGE_FATE {
                        nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                    }
                    elsif $act == $EDGE_CHARCLASS || $act == $EDGE_CHARCLASS_NEG {
                        nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                    }
                    elsif $act == $EDGE_CHARLIST || $act == $EDGE_CHARLIST_NEG {
                        nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                    }
                    elsif $act == $EDGE_SUBRULE && nqp::istype($v,BOOTStr) {
                        nqp::printfh($err, "\t$t $action " ~ $v ~ "\n");
                    }
                    else {
                        nqp::printfh($err, "\t$t $action\n");
                    }
                }
                nqp::printfh($err, "\n");
                $s := $s + 1;
            }
        }
    }
}

INIT {
    NQPRegex.SET_NFA_TYPE(QRegex::NFA);
}

# vim: ft=perl6 expandtab sw=4
