class QRegex::NFA {
    our $NFA_FATE          := 0;
    our $NFA_EPSILON       := 1;
    our $NFA_CODEPOINT     := 2;
    our $NFA_CODEPOINT_NEG := 3;
    our $NFA_CHARCLASS     := 4;
    our $NFA_CHARCLASS_NEG := 5;
    our $NFA_CHARLIST      := 6;
    our $NFA_CHARLIST_NEG  := 7;
    our $NFA_SUBRULE       := 8;

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
        $!states[$id] := nqp::list();
        $id;
    }

    method addedge($from, $to, $action, $value, :$newedge = 1) {
        $to := self.addstate() if $to < 0;
        my $st := $!states[$from];
        nqp::push($st, $action);
        nqp::push($st, $value);
        nqp::push($st, $to+0);
        $!edges := 1 if $newedge;
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

    method fate($node, $from, $to) { self.addedge($from, 0, $NFA_FATE, 0, :newedge(0)) }

    method alt($node, $from, $to) {
        for $node.list {
            my $st := self.regex_nfa($_, $from, $to);
            $to := $st if $to < 0 && $st > 0;
        }
        $to;
    }

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
        self.addedge($from, $to, $NFA_CHARCLASS + ?$node.negate,
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

    method literal($node, $from, $to) {
        my $litconst := $node[0];
        my $litlen   := nqp::chars($litconst) - 1;
        my $i        := 0;
        while $i < $litlen {
            $from := self.addedge($from, -1, $NFA_CODEPOINT, nqp::ord($litconst, $i));
            $i := $i + 1;
        }
        self.addedge($from, $to, $NFA_CODEPOINT, nqp::ord($litconst, $i));
    }

    method subrule($node, $from, $to) {
        my $subtype := $node.subtype;
        $subtype eq 'zerowidth'
            ?? ($node.negate 
                  ?? self.fate($node, $from, $to)
                  !! self.addedge($from, 0, $NFA_SUBRULE, $node.name))
            !! self.addedge($from, $to, $NFA_SUBRULE, $node[0][0]);
    }

    method past() {
        return 0 unless $!edges;
        my $past := PAST::Op.new(:pasttype<list>);
        for $!states {
            $past.push(PAST::Op.new(:pasttype<list>, |$_));
        }
        $past;
    }
}

