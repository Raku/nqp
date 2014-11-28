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

    my $ACTIONS;
    # my $nfadeb;
    # my $ind;
    # my $indent;

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

    method new() {
        my $new := self.bless(:states(nqp::list()), :edges(0), :LITEND(0));
        $new.addstate();
        $new.addstate();
        $new;
    }
    
    method from_saved($saved) {
        self.bless(:states($saved), :edges(1));
    }

    method addstate() {
        my int $id := +$!states;
        $!states[$id] := [];
        $id;
    }

    method addedge($from, $to, $action, $value, :$newedge = 1) {
        my $v := nqp::istype($value, QAST::SVal) ?? $value.value !! $value;
        my $vv := $action == $EDGE_SUBRULE ?? "" !! $v;
        # say("$indent addedge $from -> $to {$ACTIONS[nqp::bitand_i($action,0xff)] // 'unk'}") if $nfadeb;
        $!edges := 1 if $newedge;
        $to := self.addstate() if $to < 0;
        my $st := $!states[$from];
        nqp::push($st, $action);
        nqp::push($st, $v);
        nqp::push($st, $to);
        $to;
    }

    method states() { $!states }

    method addnode($node, :$*vars_as_generic) {
        # say("addnode") if $nfadeb;
        # nqp::die("HERE") if $nfadeb && $nfadeb++ == 2;
        self.regex_nfa($node, 1, 0);
        $!LITEND := 0;
        self;
    }

    method regex_nfa($node, $from, $to) {
        my $method := ($node.rxtype // 'concat');

        # if $nfadeb {
        #     say("$indent regex_nfa $from -> $to $method");
        #     $ind := $ind + 2;
        #     $indent := nqp::x(' ',$ind);
        # }
        $!LITEND := 1 unless $method eq 'literal' || $method eq 'concat' || $method eq 'alt';

        my $result := self.HOW.can(self, $method) 
         ?? self."$method"($node, $from, $to)
         !! self.fate($node, $from, $to);

        # if $nfadeb {
        #     $ind := $ind - 2;
        #     $indent := nqp::x(' ',$ind);
        # }

        $result;
    }

    method fate($node, $from, $to) { 
        # say("$indent fate $from -> $to") if $nfadeb;
        self.addedge($from, 0, $EDGE_FATE, 0, :newedge(0)) 
    }

    method alt($node, $from, $to) {
        # say($node.dump) if $nfadeb;
        my $litendfront := $!LITEND;
        my $litendback;
        for $node.list {
            # say("$indent alternative") if $nfadeb;
            $!LITEND := $litendfront;

            my int $st := self.regex_nfa($_, $from, $to);

            $litendback := 1 if $!LITEND;

            $to := $st if $to < 0 && $st > 0;
        }
        # stop litlen at recombination unless all alts are pure literal
        $!LITEND := $litendback;
        $to;
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
        %cclass_code<nl> := nqp::const::CCLASS_NEWLINE;
        # $nfadeb := nqp::existskey(nqp::getenvhash(),'MVM_NFA_DEB');
        # $ACTIONS := ['FATE','EPSILON','CODEPOINT','CODEPOINT_NEG','CHARCLASS','CHARCLASS_NEG','CHARLIST','CHARLIST_NEG','SUBRULE','CODEPOINT_I','CODEPOINT_I_NEG','GENERIC_VAR','CHARRANGE','CHARRANGE_NEG','CODEPOINT_LL','CODEPOINT_I_LL'];
        # $ind := 0;
        # $indent := '';
        $nfatime := 0;
        $etctime := 0;
        $lastnfatime := nqp::time_n();
    }

    method cclass($node, $from, $to) {
        self.addedge($from, $to, $EDGE_CHARCLASS + ?$node.negate,
                     %cclass_code{ $node.name });
    }

    method concat($node, $from, $to) {
        # say("$indent concat $from -> $to") if $nfadeb;
        my int $i := 0;
        my int $n := +$node.list - 1;
        while $from > 0 && $i < $n {
            $from := self.regex_nfa($node[$i], $from, -1);
            $i := $i + 1;
        }
        my $result := $from > 0 && $n >= 0 ?? self.regex_nfa($node[$i], $from, $to) !! $to;
        $result;
    }

    method enumcharlist($node, $from, $to) {
        my $charlist := $node[0];
        if $node.subtype eq 'zerowidth' {
            $from := self.addedge($from, -1, $EDGE_CHARLIST + ?$node.negate, $charlist);
            self.addedge($from, 0, $EDGE_FATE, 0);
        }
        else {
            self.addedge($from, $to, $EDGE_CHARLIST + ?$node.negate, $charlist);
        }
    }

    method charrange($node, $from, $to) {
        # say("$indent charrange $from -> $to") if $nfadeb;
        if $node.subtype eq 'zerowidth' {
            $from := self.addedge($from, -1, $EDGE_CHARRANGE + ?$node.negate,
                [$node[1].value, $node[2].value]);
            self.addedge($from, 0, $EDGE_FATE, 0);
        }
        else {
            self.addedge($from, $to, $EDGE_CHARRANGE + ?$node.negate,
                [$node[1].value, $node[2].value]);
        }
    }

    method literal($node, $from, $to) {
        my int $litlen   := nqp::chars($node[0]) - 1;
        my int $i        := 0;
        if $litlen >= 0 {
            # say("$indent literal $from -> $to {$node[0]}") if $nfadeb;
            if $node.subtype eq 'ignorecase' {
                my str $litconst_lc := nqp::lc($node[0]);
                my str $litconst_uc := nqp::uc($node[0]);
                while $i < $litlen {
                    $from := self.addedge($from, -1, $EDGE_CODEPOINT_I,
                        [nqp::ord($litconst_lc, $i), nqp::ord($litconst_uc, $i)]);
                    $i := $i + 1;
                }
                self.addedge($from, $to, $!LITEND ?? $EDGE_CODEPOINT_I !!  $EDGE_CODEPOINT_I_LL,
                    [nqp::ord($litconst_lc, $i), nqp::ord($litconst_uc, $i)]);
            }
            else {
                my str $litconst := $node[0];
                while $i < $litlen {
                    $from := self.addedge($from, -1, $EDGE_CODEPOINT, nqp::ord($litconst, $i));
                    $i := $i + 1;
                }
                self.addedge($from, $to, $!LITEND ?? $EDGE_CODEPOINT !!  $EDGE_CODEPOINT_LL, nqp::ord($litconst, $i));
            }
        }
        else {
            # say("$indent literal $from -> $to ''") if $nfadeb;
            self.addedge($from, $to, $EDGE_EPSILON, 0);
        }
    }

    method subrule($node, $from, $to) {
        my $subtype := $node.subtype;
        # say("$indent subrule $from -> $to {$node.name}") if $nfadeb;
        if $node.name eq 'before' && !$node.negate {
            my int $end := self.addstate();
            self.regex_nfa($node[0][1].ann('orig_qast'), $from, $end);
            self.fate($node, $end, $to);
        }
        elsif $subtype ne 'zerowidth' &&
                ($node.name eq 'alpha' ||
                    $subtype eq 'method' &&
                    ($node[0][0] ~~ QAST::SVal ?? $node[0][0].value !! $node[0][0]) eq 'alpha') {
            $to := self.addedge($from, $to, $EDGE_CHARCLASS + $node.negate,
                nqp::const::CCLASS_ALPHABETIC);
            self.addedge($from, $to, $EDGE_CODEPOINT + $node.negate, 95);
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
            $to;
        }
        elsif $subtype eq 'zerowidth' {
            if $node.negate {
                self.fate($node, $from, $to)
            }
            else {
                my int $end := self.addstate();
                self.addedge($from, $end, $EDGE_SUBRULE, $node.name);
                self.fate($node, $end, $to);
            }
        }
        elsif $*vars_as_generic && $subtype eq 'method' &&
                $node[0][0] ~~ QAST::SVal && $node[0][0].value eq '!INTERPOLATE' &&
                $node[0][1] ~~ QAST::Var && $node[0][1].scope eq 'lexical' {
            $!generic := 1;
            self.addedge($from, $to, $EDGE_GENERIC_VAR, $node[0][1].name);
        }
        else {
            $subtype eq 'capture' && $node[1]
                ?? self.regex_nfa($node[1], $from, $to)
                !! self.addedge($from, $to, $EDGE_SUBRULE, $node[0][0])
        }
    }
    
    method quant($node, $from, $to) {
        my int $min := 0 + ($node.min // 0);
        my int $max := 0 + ($node.max // -1); # -1 means Inf
        # say("$indent quant $from -> $to $min $max") if $nfadeb;
        
        if $max > 1 || $min > 1 {
            my int $count := 0;
            my int $st;
            my int $has_sep := nqp::defined($node[1]);
            while $count < $max || $count < $min {
                if $count >= $min {
                    my int $f := self.addedge($from, $to, $EDGE_EPSILON, 0);
                    $st := $st || $f;
                }
                if $has_sep && $count > 0 {
                    $from := self.regex_nfa($node[1], $from, -1);
                }
                $from := self.regex_nfa($node[0], $from, -1);
                $count := $count + 1;
            }
            self.addedge($from, $to, $EDGE_EPSILON, 0);
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
            return $to;
        }
        if $max == -1 {
            if $min == 0 { # * quantifier
                if nqp::defined($node[1]) { # * %
                    my int $start := self.addstate();
                    self.addedge($from, $start, $EDGE_EPSILON, 0);
                    my int $looper := self.addstate();
                    my int $st := self.regex_nfa($node[0], $start, $looper);
                    self.regex_nfa($node[1], $looper, $start);
                    self.addedge($looper, $to, $EDGE_EPSILON, 0);
                    $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
                    $to := $st if $to < 0 && $st > 0;
                }
                else {
                    self.regex_nfa($node[0], $from, $from);
                    my int $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
                    $to := $st if $to < 0 && $st > 0;
                }
            } else { # + quantifier
                my int $start := self.addstate();
                self.addedge($from, $start, $EDGE_EPSILON, 0);
                my int $looper := self.addstate();
                my int $st := self.regex_nfa($node[0], $start, $looper);
                if nqp::defined($node[1]) {
                    self.regex_nfa($node[1], $looper, $start);
                }
                else {
                    self.addedge($looper, $start, $EDGE_EPSILON, 0);
                }
                self.addedge($looper, $to, $EDGE_EPSILON, 0);
                $to := $st if $to < 0 && $st > 0;
            }
            $to;
        } elsif $min == 0 && $max == 1 { # ? quantifier
            my int $st := self.regex_nfa($node[0], $from, $to);
            $to := $st if $to < 0 && $st > 0;
            $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
            $to := $st if $to < 0 && $st > 0;
            $to;
        } else {
            self.fate($node, $from, $to)
        }
    }
    
    method qastnode($node, $from, $to) {
        # say("$indent qastnode $from -> $to") if $nfadeb;
        $node.subtype eq 'zerowidth' || $node.subtype eq 'declarative' ??
            self.addedge($from, $to, $EDGE_EPSILON, 0) !!
            self.fate($node, $from, $to);
    }
    
    method subcapture($node, $from, $to) {
        # say("$indent subcapture $from -> $to") if $nfadeb;
        self.regex_nfa($node[0], $from, $to);
    }
    
    method save(:$non_empty) {
        # say("save") if $nfadeb;
        unless $!edges {
            return 0 unless $non_empty;
            self.addedge(1, 0, $EDGE_FATE, 0, :newedge(1)) 
        }
        $!states
    }

    method mergesubrule($start, $to, $fate, $cursor, $name, %caller_seen?) {
        my %seen := nqp::clone(%caller_seen);
        my @substates;
        my $meth;
        if nqp::istype($name,QAST::Var) {
            $meth := $name.ann('coderef');
            my $n := $meth.name;
            # nqp::say("mergesubrule $n start $start to $to fate $fate") if $nfadeb;
            if !nqp::existskey(%seen, $n) {
                if nqp::can($meth, 'NFA') {
                    @substates := $meth.NFA();
                    @substates := [] if nqp::isnull(@substates);
                }
                %seen{$n} := 1;
            }
        }
        elsif nqp::can($cursor, $name) {
            # nqp::say("mergesubrule $name start $start to $to fate $fate") if $nfadeb;
            if !nqp::existskey(%seen, $name) {
                $meth := $cursor.HOW.find_method($cursor, $name, :no_trace(1));
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
        }
        self.mergesubstates($start, $to, $fate, @substates, $cursor, %seen);
    }
    
    method mergesubstates($start, $to, $fate, @substates, $cursor, %seen?) {
        # nqp::say("mergesubstates start $start to $to fate $fate") if $nfadeb;
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
                        $substate[$j+1] := $fate;
                    }
                    elsif $substate[$j] == $EDGE_SUBRULE {
                        self.mergesubrule($i, $substate[$j+2], $fate, $cursor, $substate[$j+1], %seen);
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
            $to > 0
              ?? self.addedge($substart, $to, $EDGE_EPSILON, 0)
              !! self.addedge($substart, 0, $EDGE_FATE, $fate)
        }
        else {
            self.addedge($start, 0, $EDGE_FATE, $fate);
        }
    }
    
    # NFA type.
    my knowhow NFAType is repr('NFA') { }

    method run(str $target, int $offset) {
        unless nqp::isconcrete($!nfa_object) {
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
#            nqp::printfh(nqp::getstderr(), "EOS in proto at $offset nfa " ~ $nfatime ~ " etc " ~ $etctime ~ "\n");
#        }
#        $lastnfatime := $t1;
        $result;
    }
    
    method run_alt(str $target, int $offset, $bstack, $cstack, @labels) {
        unless nqp::isconcrete($!nfa_object) {
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
#            nqp::printfh(nqp::getstderr(), "EOS in alt at $offset nfa " ~ $nfatime ~ " etc " ~ $etctime ~ "\n");
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
}

INIT {
    NQPRegex.SET_NFA_TYPE(QRegex::NFA);
}
