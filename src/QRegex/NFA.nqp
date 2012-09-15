use QASTNode;

class QRegex::NFA {
    our $EDGE_FATE          := 0;
    our $EDGE_EPSILON       := 1;
    our $EDGE_CODEPOINT     := 2;
    our $EDGE_CODEPOINT_NEG := 3;
    our $EDGE_CHARCLASS     := 4;
    our $EDGE_CHARCLASS_NEG := 5;
    our $EDGE_CHARLIST      := 6;
    our $EDGE_CHARLIST_NEG  := 7;
    our $EDGE_SUBRULE       := 8;

    has $!states;
    has $!edges;

    method new() {
        my $new := self.bless(:states(nqp::list()), :edges(nqp::list()));
        $new.addstate();
        $new.addstate();
        $new;
    }

    method addstate() {
        my int $id := +$!states;
        $!states[$id] := [];
        $id;
    }

    method addedge(int $from, int $to, $action, $value, :$newedge = 1) {
        $!edges := 1 if $newedge;
        $to := self.addstate() if $to < 0;
        my $st := $!states[$from];
        nqp::push($st, $action);
        nqp::push($st, $value);
        nqp::push($st, $to);
        $to;
    }

    method states() { $!states }

    method addnode($node) {
        self.regex_nfa($node, 1, 0);
        self;
    }

    method regex_nfa($node, int $from, int $to) {
        my $method := ($node.rxtype // 'concat');
        self.HOW.can(self, $method) 
         ?? self."$method"($node, $from, $to)
         !! self.fate($node, $from, $to);
    }

    method fate($node, int $from, int $to) { 
        self.addedge($from, 0, $EDGE_FATE, 0, :newedge(0)) 
    }

    method alt($node, int $from, int $to) {
        for $node.list {
            my int $st := self.regex_nfa($_, $from, $to);
            $to := $st if $to < 0 && $st > 0;
        }
        $to;
    }

    method anchor($node, int $from, int $to) { 
        self.addedge($from, $to, $EDGE_EPSILON, 0);
    }

    my %cclass_code;
    INIT {
        %cclass_code<.>  := pir::box__Pi(pir::const::CCLASS_ANY);
        %cclass_code<d>  := pir::box__Pi(pir::const::CCLASS_NUMERIC);
        %cclass_code<s>  := pir::box__Pi(pir::const::CCLASS_WHITESPACE);
        %cclass_code<w>  := pir::box__Pi(pir::const::CCLASS_WORD);
        %cclass_code<n>  := pir::box__Pi(pir::const::CCLASS_NEWLINE);
        %cclass_code<nl> := pir::box__Pi(pir::const::CCLASS_NEWLINE);
    }

    method cclass($node, int $from, int $to) {
        self.addedge($from, $to, $EDGE_CHARCLASS + ?$node.negate,
                     %cclass_code{nqp::lc($node.subtype)});
    }

    method concat($node, int $from, int $to) {
        my int $i := 0;
        my int $n := +$node.list - 1;
        while $from > 0 && $i < $n {
            $from := self.regex_nfa($node[$i], $from, -1);
            $i := $i + 1;
        }
        $from > 0 && $n >= 0 ?? self.regex_nfa($node[$i], $from, $to) !! $to;
    }

    method enumcharlist($node, int $from, int $to) {
        my $charlist := $node[0];
        if $node.subtype eq 'zerowidth' {
            $from := self.addedge($from, -1, $EDGE_CHARLIST + ?$node.negate, $charlist);
            self.addedge($from, 0, $EDGE_FATE, 0);
        }
        else {
            self.addedge($from, $to, $EDGE_CHARLIST + ?$node.negate, $charlist);
        }
    }

    method literal($node, int $from, int $to) {
        my str $litconst := $node[0];
        my int $litlen   := nqp::chars($litconst) - 1;
        my int $i        := 0;
        if $litlen >= 0 {
            while $i < $litlen {
                $from := self.addedge($from, -1, $EDGE_CODEPOINT, nqp::ord($litconst, $i));
                $i := $i + 1;
            }
            self.addedge($from, $to, $EDGE_CODEPOINT, nqp::ord($litconst, $i));
        }
        else {
            self.addedge($from, $to, $EDGE_EPSILON, 0);
        }
    }

    method subrule($node, int $from, int $to) {
        my $subtype := $node.subtype;
        if $node.name eq 'before' && !$node.negate {
            my int $end := self.addstate();
            self.regex_nfa($node[0][1]<orig_qast>, $from, $end);
            self.fate($node, $end, $to);
        }
        elsif $subtype ne 'zerowidth' &&
                ($node.name eq 'alpha' ||
                    $subtype eq 'method' &&
                    ($node[0][0] ~~ QAST::SVal ?? $node[0][0].value !! $node[0][0]) eq 'alpha') {
            $to := self.addedge($from, $to, $EDGE_CHARCLASS + $node.negate,
                pir::const::CCLASS_ALPHABETIC);
            self.addedge($from, $to, $EDGE_CODEPOINT + $node.negate, 95);
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
        else {
            $subtype eq 'capture' && $node[1]
                ?? self.regex_nfa($node[1], $from, $to)
                !! self.addedge($from, $to, $EDGE_SUBRULE, $node[0][0])
        }
    }
    
    method quant($node, int $from, int $to) {
        my int $min := 0 + ($node.min // 0);
        my int $max := 0 + ($node.max // -1); # -1 means Inf
        
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
    
    method qastnode($node, int $from, int $to) {
        $node.subtype eq 'zerowidth' || $node.subtype eq 'declarative' ??
            self.addedge($from, $to, $EDGE_EPSILON, 0) !!
            self.fate($node, $from, $to);
    }
    
    method subcapture($node, int $from, int $to) {
        self.regex_nfa($node[0], $from, $to);
    }

    method qast(:$non_empty) {
        unless $!edges {
            return 0 unless $non_empty;
            self.addedge(1, 0, $EDGE_FATE, 0, :newedge(1)) 
        }
        my $past := QAST::Op.new(:op<list>);
        for $!states -> @values {
            my $list := QAST::Op.new(:op<list>);
            for @values {
                if $_ ~~ QAST::SVal {
                    $list.push($_);
                }
                elsif +$_ eq $_ {
                    $list.push(QAST::IVal.new( :value($_) ));
                }
                else {
                    $list.push(QAST::SVal.new( :value($_) ));
                }
            }
            $past.push($list);
        }
        $past;
    }

    method mergesubrule(int $start, int $to, $fate, $cursor, str $name, %caller_seen?) {
        #nqp::say("adding $name");
        my %seen := nqp::clone(%caller_seen);
        my @substates;
        if nqp::can($cursor, $name) {
            if !nqp::existskey(%seen, $name) {
                my $meth := $cursor.HOW.find_method($cursor, $name, :no_trace(1));
                @substates := $meth.nqpattr('nfa') if nqp::can($meth, 'nqpattr');
                @substates := [] if nqp::isnull(@substates);
            }
            if !@substates && !nqp::existskey(%seen, $name) {
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
        }
        %seen{$name} := 1;
        self.mergesubstates($start, $to, $fate, @substates, $cursor, %seen);
    }
    
    method mergesubstates($start, $to, $fate, @substates, $cursor, %seen?) {
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
                    $substate[$j+1] := $fate 
                        if $substate[$j] == $EDGE_FATE;
                    self.mergesubrule($i, $substate[$j+2], $fate, $cursor, $substate[$j+1], %seen)
                        if $substate[$j] == $EDGE_SUBRULE;
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

    method run(str $target, int $offset) {
        # This does what the NQP below says, but these days an op is used since
        # it's hugely faster.
        #my $eos := nqp::chars($target);
        #my @fates;
        #my @nextst := [1];
        #my $gen := 1;
        #my @done;
        #while @nextst && $offset <= $eos {
        #    my @curst := @nextst;
        #    @nextst := [];
        #    while @curst {
        #        my $st := nqp::pop(@curst);
        #        next if @done[$st] == $gen;
        #        @done[$st] := $gen;
        #        for $!states[$st] -> $act, $arg, $to {
        #            if $act == $EDGE_FATE {
        #                @fates.push($arg);
        #            }
        #            elsif $act == $EDGE_EPSILON && @done[$to] != $gen {
        #                nqp::push(@curst, $to);
        #            }
        #            elsif $offset >= $eos { }
        #            elsif $act == $EDGE_CODEPOINT {
        #                nqp::push(@nextst, $to) if nqp::ord($target, $offset) == $arg;
        #            }
        #            elsif $act == $EDGE_CODEPOINT_NEG {
        #                nqp::push(@nextst, $to) unless nqp::ord($target, $offset) == $arg;
        #            }
        #            elsif $act == $EDGE_CHARCLASS {
        #                nqp::push(@nextst, $to) if nqp::iscclass($arg, $target, $offset);
        #            }
        #            elsif $act == $EDGE_CHARCLASS_NEG {
        #                nqp::push(@nextst, $to) unless nqp::iscclass($arg, $target, $offset);
        #            }
        #            elsif $act == $EDGE_CHARLIST {
        #                nqp::push(@nextst, $to) if nqp::index($arg, nqp::substr($target, $offset, 1)) >= 0;
        #            }
        #            elsif $act == $EDGE_CHARLIST_NEG {
        #                nqp::push(@nextst, $to) unless nqp::index($arg, nqp::substr($target, $offset, 1)) >= 0;
        #            }
        #        }
        #    }
        #    $offset := $offset + 1;
        #    $gen := $gen + 1;
        #}
        #@fates;
        pir::nqp_nfa_run_protoregex__PPSI($!states, $target, $offset)
    }
    
    method run_alt(str $target, int $offset, $bstack, $cstack) {
        pir::nqp_nfa_run_alternation__vPSIPP($!states, $target, $offset, $bstack, $cstack)
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
