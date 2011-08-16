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
        my $new := self.bless(:state(nqp::list()));
        $new.addstate();
        $new.addstate();
        $new;
    }

    method addstate() {
        my $id := +$!states;
        $!states[$id] := [];
        $id;
    }

    method addedge($from, $to, $action, $value, :$newedge = 1) {
        $!edges := 1 if $newedge;
        $to := self.addstate() if $to < 0;
        my $st := $!states[$from];
        nqp::push($st, $action);
        nqp::push($st, $value);
        nqp::push($st, $to+0);
        $to;
    }

    method states() { $!states }

    method addnode($node) {
        self.regex_nfa($node, 1, 0);
        self;
    }

    method regex_nfa($node, $from, $to) {
        my $method := ($node.rxtype // 'concat');
        self.HOW.can(self, $method) 
         ?? self."$method"($node, $from, $to)
         !! self.fate($node, $from, $to);
    }

    method fate($node, $from, $to) { 
        self.addedge($from, 0, $EDGE_FATE, 0, :newedge(0)) 
    }

    method alt($node, $from, $to) {
        for $node.list {
            my $st := self.regex_nfa($_, $from, $to);
            $to := $st if $to < 0 && $st > 0;
        }
        $to;
    }

    method anchor($node, $from, $to) { $from }

    our %cclass_code;
    INIT {
        %cclass_code<.>  := pir::box__Pi(pir::const::CCLASS_ANY);
        %cclass_code<d>  := pir::box__Pi(pir::const::CCLASS_NUMERIC);
        %cclass_code<s>  := pir::box__Pi(pir::const::CCLASS_WHITESPACE);
        %cclass_code<w>  := pir::box__Pi(pir::const::CCLASS_WORD);
        %cclass_code<n>  := pir::box__Pi(pir::const::CCLASS_NEWLINE);
        %cclass_code<nl> := pir::box__Pi(pir::const::CCLASS_NEWLINE);
    }

    method cclass($node, $from, $to) {
        self.addedge($from, $to, $EDGE_CHARCLASS + ?$node.negate,
                     %cclass_code{nqp::lc($node.subtype)});
    }

    method concat($node, $from, $to) {
        my $i := 0;
        my $n := +$node.list - 1;
        while $from > 0 && $i < $n {
            $from := self.regex_nfa($node[$i], $from, -1);
            $i := $i + 1;
        }
        $from > 0 ?? self.regex_nfa($node[$i], $from, $to) !! $to;
    }

    method enumcharlist($node, $from, $to) {
        my $charlist := $node[0];
        if $node.subtype eq 'zerowidth' {
            $from := self.addedge($from, -1, $EDGE_CHARLIST, $charlist);
            self.addedge($from, 0, $EDGE_FATE, 0);
        }
        else {
            self.addedge($from, $to, $EDGE_CHARLIST, $charlist);
        }
    }

    method literal($node, $from, $to) {
        my $litconst := $node[0];
        my $litlen   := nqp::chars($litconst) - 1;
        my $i        := 0;
        while $i < $litlen {
            $from := self.addedge($from, -1, $EDGE_CODEPOINT, nqp::ord($litconst, $i));
            $i := $i + 1;
        }
        self.addedge($from, $to, $EDGE_CODEPOINT, nqp::ord($litconst, $i));
    }

    method subrule($node, $from, $to) {
        my $subtype := $node.subtype;
        $subtype eq 'zerowidth'
            ?? ($node.negate 
                  ?? self.fate($node, $from, $to)
                  !! self.addedge($from, 0, $EDGE_SUBRULE, $node.name))
            !! self.addedge($from, $to, $EDGE_SUBRULE, $node[0][0]);
    }

    method past() {
        return 0 unless $!edges;
        my $past := PAST::Op.new(:pasttype<list>);
        for $!states {
            $past.push(PAST::Op.new(:pasttype<list>, |$_));
        }
        $past;
    }

    method mergesubrule($start, $to, $fate, $cursor, $name) {
        nqp::say("adding $name");
        my $subrule := $cursor.HOW.find_method($cursor, $name);
        my @substates := $subrule.nqpattr('nfa') if $subrule;
        if @substates {
            # append a clone of the new states to our states
            my $substart := nqp::elems($!states);            
            for @substates { nqp::push($!states, nqp::clone($_)) }
            my $subend   := nqp::elems($!states);
            # Go through all of the newly added states, and
            #    apply $substart offset to target states
            #    adjust fate edges to be $fate
            #    append any subrules
            my $i := $substart;
            while $i < $subend {
                my $substate := $!states[$i];
                my $j := 0;
                my $k := nqp::elems($substate);
                while $j < $k {
                    $substate[$j+2] := $substate[$j+2] + $substart;
                    $substate[$j+1] := $fate 
                        if $substate[$j] == $EDGE_FATE;
                    self.mergesubrule($i, $substate[$j+2], $fate, $cursor, $substate[$j+1])
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

    method run($target, $offset) {
        my @fatepos;
        my @nextst := [1];
        my $gen := 1;
        my @done;
        while @nextst {
            my @curst := @nextst;
            @nextst := [];
            while @curst {
                my $st := nqp::pop(@curst);
                next if @done[$st] == $gen;
                @done[$st] := $gen;
                for $!states[$st] -> $act, $arg, $to {
                    if $act == $EDGE_FATE {
                        @fatepos[$arg] := $offset;
                    }
                    elsif $act == $EDGE_EPSILON && @done[$to] != $gen {
                        nqp::push(@curst, $to);
                    }
                    elsif $act == $EDGE_CODEPOINT {
                        nqp::push(@nextst, $to) if nqp::ord($target, $offset) == $arg;
                    }
                    elsif $act == $EDGE_CHARLIST {
                        nqp::push(@nextst, $to) if nqp::index($arg, nqp::substr($target, $offset, 1)) >= 0;
                    }
                }
            }
            $offset := $offset + 1;
            $gen := $gen + 1;
        }
        @fatepos;
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

