use QASTNode;

class QRegex::NFA {
    my int $EDGE_FATE             :=  0;
    my int $EDGE_EPSILON          :=  1;
    my int $EDGE_CODEPOINT        :=  2;
    my int $EDGE_CODEPOINT_NEG    :=  3;
    my int $EDGE_CHARCLASS        :=  4;
    my int $EDGE_CHARCLASS_NEG    :=  5;
    my int $EDGE_CHARLIST         :=  6;
    my int $EDGE_CHARLIST_NEG     :=  7;
    my int $EDGE_SUBRULE          :=  8;
    my int $EDGE_CODEPOINT_I      :=  9;
    my int $EDGE_CODEPOINT_I_NEG  := 10;
    my int $EDGE_GENERIC_VAR      := 11;
    my int $EDGE_CHARRANGE        := 12;
    my int $EDGE_CHARRANGE_NEG    := 13;
    my int $EDGE_CODEPOINT_LL     := 14;
    my int $EDGE_CODEPOINT_I_LL   := 15;
    my int $EDGE_CODEPOINT_M      := 16;
    my int $EDGE_CODEPOINT_M_NEG  := 17;
    my int $EDGE_CODEPOINT_M_LL   := 18;
    my int $EDGE_CODEPOINT_IM     := 19;
    my int $EDGE_CODEPOINT_IM_NEG := 20;
    my int $EDGE_CODEPOINT_IM_LL  := 21;
    my int $EDGE_CHARRANGE_M      := 22;
    my int $EDGE_CHARRANGE_M_NEG  := 23;

    # Constant to name mapping for debugging
    my $ACTIONS := nqp::list(
      'FATE',
      'EPSILON',
      'CODEPOINT',
      'CODEPOINT_NEG',
      'CHARCLASS',
      'CHARCLASS_NEG',
      'CHARLIST',
      'CHARLIST_NEG',
      'SUBRULE',
      'CODEPOINT_I',
      'CODEPOINT_I_NEG',
      'GENERIC_VAR',
      'CHARRANGE',
      'CHARRANGE_NEG',
      'CODEPOINT_LL',
      'CODEPOINT_I_LL',
      'CODEPOINT_M',
      'CODEPOINT_M_NEG',
      'EDGE_CODEPOINT_M_LL',
      'EDGE_CODEPOINT_IM',
      'EDGE_CODEPOINT_IM_NEG',
      'EDGE_CODEPOINT_IM_LL',
      'EDGE_CHARRANGE_M',
      'EDGE_CHARRANGE_M_NEG'
    );

    # Mapping of escape code to charclass constant
    my %cclass_code := nqp::hash(
      '.', nqp::const::CCLASS_ANY,
      'd', nqp::const::CCLASS_NUMERIC,
      's', nqp::const::CCLASS_WHITESPACE,
      'w', nqp::const::CCLASS_WORD,
      'n', nqp::const::CCLASS_NEWLINE
    );

# DEBUGGING HELPERS, uncomment to activate
#    my $nfadeb := nqp::existskey(nqp::getenvhash(),'NQP_NFA_DEB');
#    my int $ind;

#    sub dentin() {
#        if $nfadeb {
#            $ind := $ind + 2;
#            nqp::x(' ', nqp::if($ind >= 0, $ind, 0));
#        }
#        else { '' }
#    }

#    sub dentout($x) {
#        if $nfadeb {
#            $ind := $ind - 2;
#            if $ind < 0 {
#                note("                inconsistent indentation! NFA debugger tried to dentout to $ind.");
#            }
#        }
#        $x;
#    }

    # The build-time set of states, with element zero being the fate name
    # list.
    has @!states;

    # Non-zero if this NFA has some edges added.
    has int $!edges;

    # Non-zero if this NFA is generic.
    has int $!generic;

    # The NFA we will actually run (with NFA REPR).
    has $!nfa_object;

    # Are we finished looking for a longest literal prefix?
    has int $!LITEND;

    has $!known;

    method new() {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, QRegex::NFA, '$!known',  nqp::list);
        nqp::bindattr($obj, QRegex::NFA, '@!states', nqp::list(
          nqp::list,  # storage for fates
          nqp::list   # entry point, mostly fanout epsilons
        ));
        $obj
    }

    method from_saved($saved) {
        my $obj := nqp::create(self);
        nqp::bindattr(  $obj, QRegex::NFA, '@!states', $saved);
        nqp::bindattr_i($obj, QRegex::NFA, '$!edges',  1);
        $obj
    }

    method addstate() {
#        my $indent := dentin();
#        my int $id := +@!states;
#        note("$indent addstate $id") if $nfadeb;
#        @!states[$id] := [];
#        dentout($id);

        nqp::push(@!states, nqp::list);
        nqp::elems(@!states) - 1
    }

    method addedge(int $from, int $to, int $action, $value, :$newedge = 1) {
#        my $indent := dentin();
#        note("$indent addedge $from -> $to {$ACTIONS[nqp::bitand_i($action,0xff)] // 'unk'}") if $nfadeb;

        $!edges  := 1             if $newedge;
        my $v    := nqp::istype($value, QAST::SVal) ?? $value.value !! $value;
        $to      := self.addstate if $to < 0;
        my @this := nqp::atpos(@!states, $from);

        if $action == $EDGE_FATE {
            my $knownv := nqp::atpos($!known, $v);
            if $knownv {
                if !$to || $to == $knownv {
                    $action := $EDGE_EPSILON;
                    $to := $knownv;
                }
            }
            elsif nqp::elems(@this) == 0 {
                nqp::bindpos($!known, $v, $from);
            }
        }

        nqp::push(@this, $action);
        nqp::push(@this, $v);
        nqp::push(@this, $to);
#        dentout($to);
        $to
    }

    method states() { @!states }

    method addnode($node, :$*vars_as_generic) {
#        my $indent := dentin();
#        note("$indent addnode") if $nfadeb;
#        # nqp::die("HERE") if $nfadeb && $nfadeb++ == 2;
        self.regex_nfa($node, 1, 0);
        $!LITEND := 0;
#        self.mydump() if $nfadeb;
#        dentout(self);
        self
    }

    method regex_nfa($node, int $from, int $to) {
#        my $indent := dentin();
        my $method := ($node.rxtype // 'concat');

        $!LITEND := 1 unless $method eq 'literal'
          || $method eq 'concat'
          || $method eq 'alt';

        self.HOW.can(self, $method)
          ?? self."$method"($node, $from, $to)
          !! self.fate($node, $from, $to)

#        note("$indent regex_nfa $from -> $to $method") if $nfadeb;
#        my $result := self.HOW.can(self, $method)
#          ?? self."$method"($node, $from, $to)
#          !! self.fate($node, $from, $to);
#        note("$indent ...regex_nfa returns $result") if $nfadeb;
#        dentout($result);
#        $result
    }

    method fate($node, int $from, int $to) {
#        my $indent := dentin();
#        note("$indent fate $from -> $to") if $nfadeb;
#        dentout(self.addedge($from, 0, $EDGE_FATE, 0, :newedge(0)));
        self.addedge($from, 0, $EDGE_FATE, 0, :newedge(0));
    }

    method alt($node, int $from, int $to) {
#        my $indent := dentin();
#        note($node.dump) if $nfadeb;
        my $litendfront := $!LITEND;
        my $litendback;

        my $targets := $node.list;
        my int $m := nqp::elems($targets);
        my int $i;
        while $i < $m {
#            note("$indent alternative") if $nfadeb;
            $!LITEND := $litendfront;

            my int $st := self.regex_nfa(nqp::atpos($targets, $i), $from, $to);
            $litendback := 1 if $!LITEND;
            $to := $st if $to < 0 && $st > 0;
            ++$i;
        }

        # stop litlen at recombination unless all alts are pure literal
        $!LITEND := $litendback;
#        dentout($to);
        $to
    }

    method altseq($node, int $from, int $to) {

        if nqp::elems(@($node)) {
            my int $st := self.regex_nfa($node[0], $from, $to);
            $to := $st if $to < 0 && $st > 0;
            $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
            $to < 0 && $st > 0 ?? $st !! $to

#            $to := $st if $to < 0 && $st > 0;
#            my $indent := dentin();
#            note("$indent ...altseq returns $to") if $nfadeb;
#            dentout($to);
#            $to
        }
        else {
            self.fate($node, $from, $to);
        }
    }

    method anchor($node, int $from, int $to) {
        self.addedge($from, $to, $EDGE_EPSILON, 0);
    }

    method dba($node, int $from, int $to) {
        self.addedge($from, $to, $EDGE_EPSILON, 0);
    }

    method cclass($node, int $from, int $to) {
#        my $indent := dentin();
#        dentout(self.addedge($from, $to, $EDGE_CHARCLASS + ?$node.negate,
#                     %cclass_code{ $node.name }));

         self.addedge(
           $from,
           $to,
           $EDGE_CHARCLASS + ?$node.negate,
           nqp::atkey(%cclass_code, $node.name)
        )
    }

    method concat($node, int $from, int $to) {
#        my $indent := dentin();
#        note("$indent concat $from -> $to") if $nfadeb;

        my int $n := nqp::elems($node.list) - 1;
        my int $i;
        while $from > 0 && $i < $n {
            $from := self.regex_nfa(nqp::atpos($node, $i), $from, -1);
            ++$i;
        }
        $from > 0 && $n >= 0
          ?? self.regex_nfa($node[$i], $from, $to)
          !! $to

#        note("$indent ...concat created $from, n = $n") if $nfadeb;
#        my $result := $from > 0 && $n >= 0 ?? self.regex_nfa($node[$i], $from, $to) !! $to;
#        note("$indent ...concat returns $result") if $nfadeb;
#        dentout($result);
#        $result;
    }

    method enumcharlist($node, int $from, int $to) {
#        my $indent := dentin();
#        note("$indent enumcharlist $from -> $to") if $nfadeb;

        my $charlist := nqp::atpos($node, 0);
        if $node.subtype eq 'zerowidth' {
            $from := self.addedge(
              $from, -1, $EDGE_CHARLIST + ?$node.negate, $charlist
            );

#            dentout(self.addedge($from, 0, $EDGE_FATE, 0));

            self.addedge($from, 0, $EDGE_FATE, 0);
        }

        else {

#            dentout(self.addedge($from, $to, $EDGE_CHARLIST + ?$node.negate, $charlist));

             self.addedge(
               $from, $to, $EDGE_CHARLIST + ?$node.negate, $charlist
            );
        }
    }

    method charrange($node, int $from, int $to) {
#        my $indent := dentin();
#        note("$indent charrange $from -> $to") if $nfadeb;

        my str $type := nqp::atpos($node, 0);
        my $node1    := nqp::atpos($node, 1).value;
        my $node2    := nqp::atpos($node, 2).value;

        my $base_edge;
        my $add;
        if $type eq 'ignoremark' || $type eq 'ignorecase+ignoremark' {
            $base_edge := $EDGE_CHARRANGE_M;

            $node1 := nqp::chr($node1);
            $node2 := nqp::chr($node2);
            $add := nqp::list_i(
              nqp::ord(nqp::lc($node1)),
              nqp::ord(nqp::lc($node2)),
              nqp::ord(nqp::uc($node1)),
              nqp::ord(nqp::uc($node2))
            );
        }
        else {
            $base_edge := $EDGE_CHARRANGE;
            $add := nqp::list_i($node1, $node2);
        }

        my $result;
        my int $m := nqp::elems($add);
        my int $i;

        if $node.subtype eq 'zerowidth' {
            while $i < $m {
                $result := self.addedge(
                  self.addedge(
                    $from, -1, $base_edge + ?$node.negate, nqp::list(
                      nqp::atpos_i($add, $i), nqp::atpos_i($add, $i + 1)
                    )
                  ),
                  0, $EDGE_FATE, 0
                );
                $i := $i + 2;
            }
        }
        else {
            while $i < $m {
                $result := self.addedge(
                  $from, $to, $base_edge + ?$node.negate, nqp::list(
                    nqp::atpos_i($add, $i), nqp::atpos_i($add, $i + 1)
                  )
                );
                $to := $result if $to < 0 && $result > 0;
                $i  := $i + 2;
            }
        }

#        dentout($result)

        $result
    }

    # Synthetics must be conveyed as strings; anything else can go as an
    # integer
    sub ord-or-str(str $str, int $idx) {
        my int $ord := nqp::ord($str, $idx);
        my str $chr := nqp::substr($str, $idx, 1);
        nqp::chr($ord) eq $chr ?? $ord !! $chr
    }

    method literal($node, $from, $to) {

#        my $indent := dentin();

        my str $first  := nqp::atpos($node, 0);
        my int $litlen := nqp::chars($first) - 1;
        my int $i;

        if $litlen >= 0 {
            my str $subtype := $node.subtype;

#            note("$indent literal $from -> $to {$node[0]}") if $nfadeb;

            if $subtype eq 'ignorecase' {
                my str $litconst_lc := nqp::lc($first);
                my str $litconst_uc := nqp::uc($first);

                while $i < $litlen {
                    $from := self.addedge(
                      $from,
                      -1,
                      $EDGE_CODEPOINT_I,
                      nqp::list(
                        ord-or-str($litconst_lc, $i),
                        ord-or-str($litconst_uc, $i)
                      )
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, $!LITEND ?? $EDGE_CODEPOINT_I !!  $EDGE_CODEPOINT_I_LL,
#                    [ord-or-str($litconst_lc, $i), ord-or-str($litconst_uc, $i)]));

                # Add final edge
                self.addedge(
                  $from,
                  $to,
                  $!LITEND ?? $EDGE_CODEPOINT_I !!  $EDGE_CODEPOINT_I_LL,
                  nqp::list(
                    ord-or-str($litconst_lc, $i),
                    ord-or-str($litconst_uc, $i)
                  )
                );
            }

            elsif $subtype eq 'ignoremark' {
                ++$litlen;  # last element handled same as the other ones
                while $i < $litlen {
                    $from := self.addedge(
                      $from,
                      -1,
                      $EDGE_CODEPOINT_M,
                      nqp::ordbaseat($first, $i)
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, $EDGE_CODEPOINT_M, nqp::ordbaseat($litconst, $i)));

                # XXX $EDGE_CODEPOINT_M_LL ?
#                self.addedge(
#                  $from,
#                  $to,
#                  $EDGE_CODEPOINT_M,
#                  nqp::ordbaseat($first, $i)
#                );
            }

            elsif $subtype eq 'ignorecase+ignoremark' {
                ++$litlen;  # last element handled same as the other ones

                my str $litconst_lc := nqp::lc($first);
                my str $litconst_uc := nqp::uc($first);
                while $i < $litlen {
                    $from := self.addedge(
                      $from,
                      -1,
                      $EDGE_CODEPOINT_IM,
                      nqp::list(
                        ord-or-str($litconst_lc, $i),
                        ord-or-str($litconst_uc, $i)
                      )
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, $EDGE_CODEPOINT_IM,
#                    [nqp::ordbaseat($litconst_lc, $i), nqp::ordbaseat($litconst_uc, $i)]));

                 # XXX $EDGE_CODEPOINT_IM_LL ?
#                self.addedge(
#                  $from,
#                  $to,
#                  $EDGE_CODEPOINT_IM,
#                  nqp::list(
#                    ord-or-str($litconst_lc, $i),
#                    ord-or-str($litconst_uc, $i)
#                  )
#                );
            }

            else {
                while $i < $litlen {
                    $from := self.addedge(
                      $from, -1, $EDGE_CODEPOINT, ord-or-str($first, $i)
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, $!LITEND ?? $EDGE_CODEPOINT !!  $EDGE_CODEPOINT_LL,
#                    ord-or-str($litconst, $i)));

                self.addedge(
                  $from,
                  $to,
                  $!LITEND ?? $EDGE_CODEPOINT !!  $EDGE_CODEPOINT_LL,
                  ord-or-str($first, $i)
                );
            }
        }

        else {

#            note("$indent literal $from -> $to ''") if $nfadeb;
#            dentout(self.addedge($from, $to, $EDGE_EPSILON, 0));

             self.addedge($from, $to, $EDGE_EPSILON, 0);
        }
    }

    method subrule($node, int $from, int $to) {

#        my $indent := dentin();

        my str $subtype := $node.subtype;
        my str $name    := $node.name;
        my int $negate  := $node.negate;

        my $node0       := nqp::atpos($node,  0);
        my $node00      := nqp::atpos($node0, 0);
        my $node01      := nqp::atpos($node0, 1);
        my $nodetype :=
          nqp::istype($node00, QAST::SVal) ?? $node00.value !! $node00;

#        note("$indent subrule $from -> $to {$node.name}") if $nfadeb;

        if $name eq 'before'
          && nqp::not_i($negate)
          && nqp::can($node01, "ann")
          && nqp::istype($node01.ann('orig_qast'), QAST::Regex) {

            my int $end := self.addstate;
            self.regex_nfa($node01.ann('orig_qast'), $from, $end);

#            dentout(self.fate($node, $end, $to));

             self.fate($node, $end, $to)
        }

        elsif $subtype ne 'zerowidth'
          && ($name eq 'alpha'
               || $subtype eq 'method'
               && $nodetype eq 'alpha'
        ) {
            $to := self.addedge(
              $from,
              $to,
              $EDGE_CHARCLASS + $negate,
              nqp::const::CCLASS_ALPHABETIC
            );

#            dentout(self.addedge($from, $to, $EDGE_CODEPOINT + $node.negate, 95));

            self.addedge($from, $to, $EDGE_CODEPOINT + $negate, 95)
        }

        elsif nqp::not_i($negate)
          && ($node.name eq 'ws'
               || $subtype eq 'method'
               && $nodetype eq 'ws'
        ) {

#            dentout(self.fate($node, $from, $to));

             self.fate($node, $from, $to)
        }

        elsif nqp::not_i($node.negate)
          && $subtype ne 'zerowidth'
          && ($node.name eq 'ident'
               || $subtype eq 'method'
               && $nodetype eq 'ident'
        ) {
            my int $beginstate := self.addstate;
            self.addedge($from, $beginstate, $EDGE_EPSILON, 0);

            my int $midstate := self.addstate;
            self.addedge(
              $beginstate,
              $midstate,
              $EDGE_CHARCLASS,
              nqp::const::CCLASS_ALPHABETIC
            );
            self.addedge($beginstate, $midstate, $EDGE_CODEPOINT, 95);

            my int $second := self.addstate;
            self.addedge(
              $midstate, $second, $EDGE_CHARCLASS, nqp::const::CCLASS_WORD
            );

            self.addedge($second, $midstate, $EDGE_EPSILON, 0);
            $to := self.addedge($midstate, $to, $EDGE_EPSILON, 0);

#            dentout($to);

            $to
        }

        elsif $subtype eq 'zerowidth' {
            if $negate {

#                dentout(self.fate($node, $from, $to))

                 self.fate($node, $from, $to)
            }
            else {
                my int $end := self.addstate;
                self.addedge($from, $end, $EDGE_SUBRULE, $name);

#                dentout(self.fate($node, $end, $to));

                 self.fate($node, $end, $to);
            }
        }

        elsif $*vars_as_generic
          && $subtype eq 'method'
          && nqp::istype($node00, QAST::SVal)
          && $node00.value eq '!INTERPOLATE'
          && nqp::istype($node01, QAST::Var)
          && $node01.scope eq 'lexical'
        {
            $!generic := 1;

#            dentout(self.addedge($from, $to, $EDGE_GENERIC_VAR, $node[0][1].name));

             self.addedge($from, $to, $EDGE_GENERIC_VAR, $node01.name);
        }

        else {

#            dentout($subtype eq 'capture' && $node[1]
#                ?? self.regex_nfa($node[1], $from, $to)
#                !! self.addedge($from, $to, $EDGE_SUBRULE, $node[0][0]))

             $subtype eq 'capture' && nqp::atpos($node, 1)
                ?? self.regex_nfa(nqp::atpos($node, 1), $from, $to)
                !! self.addedge($from, $to, $EDGE_SUBRULE, $node00)
        }
    }

    method quant($node, int $from, int $to) {

#        my $indent := dentin();

        my int $min := $node.min // 0;
        my int $max := $node.max // -1; # -1 means Inf
        my $node0   := nqp::atpos($node, 0);
        my $node1   := nqp::atpos($node, 1);

#        note("$indent quant $from -> $to $min $max") if $nfadeb;

        if $min > 1 {
            my int $count;
            my int $st := -1;
            my int $has_sep := nqp::defined($node1);

            while $count < $max || $count < $min {
                if $count >= $min {
                    $st := self.addedge($from, $to, $EDGE_EPSILON, 0);

#                    note("$indent ...quant sf = $st") if $nfadeb;

                }
                $from := self.regex_nfa($node1, $from, -1)
                  if $has_sep && $count > 0;

                $from := self.regex_nfa($node0, $from, $st);
                ++$count;
            }
            $st := self.addedge($from, $to, $EDGE_EPSILON, 0);

            if $max == -1 {

                my int $start := self.addstate;
                self.addedge($from, $start, $EDGE_EPSILON, 0);
                $from := $start;

                my $looper := self.addstate;
                self.addedge($looper, $to,   $EDGE_EPSILON, 0);
                self.addedge($looper, $from, $EDGE_EPSILON, 0);
                $from := self.regex_nfa($node1, $from, -1)
                  if $has_sep && $count > 0;

                self.regex_nfa($node0, $from, $looper);
            }

            $to < 0 && $st > 0 ?? $st !! $to;

#            $to := $st if $to < 0 && $st > 0;
#            note("$indent ...quant returns $to with st = $st") if $nfadeb;
#            return dentout($to);

        }

        elsif $max == -1 {
            my int $st;

            if $min { # + quantifier
                my int $start := self.addstate;
                self.addedge($from, $start, $EDGE_EPSILON, 0);
                my int $looper := self.addstate;

#                note("$indent ...in quant +, start = $start, looper = $looper") if $nfadeb;

                $st := self.regex_nfa($node0, $start, $looper);
                if nqp::defined($node1) {
                    self.regex_nfa($node1, $looper, $start);
                }
                else {

#                    note("$indent ...in quant +, no node[1]") if $nfadeb;

                    self.addedge($looper, $start, $EDGE_EPSILON, 0);
                }

                self.addedge($looper, $to, $EDGE_EPSILON, 0)
                  unless $to < 0;
            }

            else { # * quantifier
                if nqp::defined($node1) { # * %
                    my int $start := self.addstate;
                    self.addedge($from, $start, $EDGE_EPSILON, 0);
                    my int $looper := self.addstate;

#                    note("$indent ...in quant *%, start = $start, looper = $looper") if $nfadeb;

                    $st := self.regex_nfa($node0, $start, $looper);
                    self.regex_nfa($node1, $looper, $start);
                    self.addedge($looper, $to, $EDGE_EPSILON, 0)
                      unless $to < 0;
                    $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
                }
                else {

#                    note("$indent ...in quant *") if $nfadeb;

                    self.regex_nfa($node0, $from, $from);
                    $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
                }
            }

#            $to := $st if $to < 0 && $st > 0;
#            note("$indent ...quant returns $to") if $nfadeb;
#            dentout($to);

            $to < 0 && $st > 0 ?? $st !! $to
        }

        elsif $min == 0 && $max == 1 { # ? quantifier
            my int $st := self.regex_nfa($node0, $from, $to);
            $to := $st if $to < 0 && $st > 0;
            $st := self.addedge($from, $to, $EDGE_EPSILON, 0);
            $to < 0 && $st > 0 ?? $st !! $to

#            $to := $st if $to < 0 && $st > 0;
#            note("$indent ...quant returns $to") if $nfadeb;
#            dentout($to);
#            $to
        }
        
        else {

#            note("$indent ...quant returns fate") if $nfadeb;
#            dentout(self.fate($node, $from, $to))

             self.fate($node, $from, $to)
        }
    }

    method qastnode($node, int $from, int $to) {

#        my $indent := dentin();
#        note("$indent qastnode $from -> $to") if $nfadeb;
#        dentout($node.subtype eq 'zerowidth' || $node.subtype eq 'declarative' ??
#            self.addedge($from, $to, $EDGE_EPSILON, 0) !!
#            self.fate($node, $from, $to));

         $node.subtype eq 'zerowidth' || $node.subtype eq 'declarative'
           ?? self.addedge($from, $to, $EDGE_EPSILON, 0)
           !! self.fate($node, $from, $to);
    }

    method subcapture($node, int $from, int $to) {

#        my $indent := dentin();
#        note("$indent subcapture $from -> $to") if $nfadeb;
#        dentout(self.regex_nfa($node[0], $from, $to));

         self.regex_nfa(nqp::atpos($node, 0), $from, $to);
    }

    method save(:$non_empty) {

#        my $indent := dentin();
#        note("$indent save") if $nfadeb;

        unless $!edges {
            $non_empty
              ?? self.addedge(1, 0, $EDGE_FATE, 0, :newedge(1))
              !! (return 0)
        }

#        dentout(@!states)

        @!states
    }

    method mergesubrule(
      int $start,
      int $to,
      int $fate,
      $cursor,
      $name,
      %caller_seen?
    ) {

#        my $indent := dentin();

        my %seen := nqp::clone(%caller_seen);
        my @substates;
        my $meth;
        my $n;
        if nqp::istype($name,QAST::Var) {
            $meth := $name.ann('coderef');
            $n    := $meth.name;

#            note("$indent mergesubrule $n start $start to $to fate $fate") if $nfadeb;

            unless nqp::existskey(%seen, $n) {
                my $nfa_meth := nqp::tryfindmethod($meth, 'NFA');
                @substates   := nqp::ifnull($nfa_meth($meth), nqp::list)
                  if nqp::isconcrete($nfa_meth);
                nqp::bindkey(%seen, $n, 1);
            }
#            else {
#                note("$indent ...skipping $n to avoid left recursion") if $nfadeb;
#            }
        }

        elsif nqp::isconcrete($meth := nqp::tryfindmethod($cursor, $name)) {

#            note("$indent mergesubrule $name start $start to $to fate $fate") if $nfadeb;

            $n := $name;
            unless nqp::existskey(%seen, $name) {
                my $nfa_meth := nqp::tryfindmethod($meth, 'NFA');
                @substates   := nqp::ifnull($nfa_meth($meth), nqp::list)
                  if nqp::isconcrete($nfa_meth);

                unless @substates {

                    # Maybe it's a protoregex, in which case states are an
                    # alternation of all of the possible rules.
                    my %protorx := $cursor.HOW.cache(
                      $cursor, "!protoregex_table",
                      { $cursor."!protoregex_table"() }
                    );
                    my $nfa := QRegex::NFA.new;

                    my $rxnames := nqp::atkey(%protorx, $name);
                    unless nqp::isnull($rxnames) {
                        my int $m := nqp::elems($rxnames);
                        my int $i;
                        while $i < $m {
                            $nfa.addedge(
                              1, 0, $EDGE_SUBRULE, nqp::atpos($rxnames, $i)
                            );
                            ++$i;
                        }
                        @substates := $nfa.states;
                    }
                }
                nqp::bindkey(%seen, $name, 1);
            }

#            else {
#                note("$indent ...skipping $name to avoid left recursion") if $nfadeb;
#            }
        }

#        if $nfadeb {
#            my int $s := 1;
#            my int $send := +@substates;
#            my int $bad := 0;
#            while $s < $send {
#                my $edges := @substates[$s];
#                if +$edges == 0 {
#                    note("$indent ...Bad at $s:");
#                    $bad := $bad + 1;
#                }
#                $s := $s + 1;
#            }
#            if $bad > 0 {
#                note("$indent ...attempt to merge $bad empty states from $n");
#                note("Fates:");
#                for @substates[0] -> $f {
#                    note("\t$f");
#                }
#                note("");
#                $s := 1;
#                while $s < $send {
#                    note("$s:");
#                    for @substates[$s] -> $a, $v, $t {
#                        my int $act := nqp::bitand_i($a,0xff);
#                        my $action := $ACTIONS[$act];
#                        if $act == $EDGE_CODEPOINT || $act == $EDGE_CODEPOINT_LL {
#                            note("\t$t $action " ~ nqp::chr($v));
#                        }
#                        elsif $act == $EDGE_FATE {
#                            note("\t$t $action " ~ $v);
#                        }
#                        elsif $act == $EDGE_CHARCLASS || $act == $EDGE_CHARCLASS_NEG {
#                            note("\t$t $action " ~ $v ~ "\n");
#                        }
#                        elsif $act == $EDGE_CHARLIST || $act == $EDGE_CHARLIST_NEG {
#                            note("\t$t $action " ~ $v ~ "\n");
#                        }
#                        elsif $act == $EDGE_SUBRULE && nqp::istype($v,BOOTStr) {
#                            note("\t$t $action " ~ $v ~ "\n");
#                        }
#                        else {
#                            note("\t$t $action\n");
#                        }
#                    }
#                    note("\n");
#                    $s := $s + 1;
#                }
#            }
#        }
#        dentout(self.mergesubstates($start, $to, $fate, @substates, $cursor, %seen));
        self.mergesubstates($start, $to, $fate, @substates, $cursor, %seen);
    }

    method mergesubstates(int $start, int $to, int $fate, @substates, $cursor, %seen?) {
#        my $indent := dentin();
#        note("$indent mergesubstates start $start to $to fate $fate") if $nfadeb;
        @!states[0][$fate] := $fate;  # overridden by !protoregex_nfa
        if nqp::istype(@substates, NQPArray) && nqp::elems(@substates) {
            # create an empty end state for the subrule's NFA
            my int $substart := self.addstate();
            # Copy (yes, clone) @substates[1..*] into our states.
            # We have to clone because we'll be modifying the
            # values for use in this particular NFA.
            my int $i;
            my int $elems := nqp::elems(@substates);
            while ++$i < $elems {  # skip 0 intentionally
                nqp::push(@!states, nqp::clone(@substates[$i]));
            }
            # Go through all of the newly added states, and
            #    apply $substart offset to target states
            #    adjust fate edges to be $fate
            #    append any subrules
            my int $subend := nqp::elems(@!states);
            $i := $substart;
            while $i < $subend {
                my @substate := @!states[$i];
                my int $j := 0;
                my int $k := nqp::elems(@substate);
                while $j < $k {
                    my int $ssj2 := @substate[$j+2];
                    @substate[$j+2] := $ssj2 + $substart;
                    if @substate[$j] == $EDGE_FATE {
                        if $to > 0 {
                            @substate[$j+1] := $fate;
                        }
                        else {  # adding our own fate later, so don't need this one
                            @substate[$j] := $EDGE_EPSILON;
                        }
                    }
                    elsif @substate[$j] == $EDGE_SUBRULE {
                        my int $j2 := @substate[$j+2];
                        my $j1 := @substate[$j+1];
                        nqp::splice(@substate,[], $j, 3);
                        self.mergesubrule($i, $j2, $fate, $cursor, $j1, %seen);
                        $j := $j - 3;
                        $k := $k - 3;
                    }
                    elsif @substate[$j] == $EDGE_CODEPOINT_LL || @substate[$j] == $EDGE_CODEPOINT_I_LL {
                        # Added to act because there's no more room arg for two case insensitive chars.
                        # The NFA engine notices a negative act and redispatches to correct spot.
                        # The act and fate are both encoded positively, and we ignore the negative bits.
                        @substate[$j] := @substate[$j] + 256 * $fate - 0x40000000;
                    }
                    $j := $j + 3;
                }
                $i := $i + 1;
            }
            self.addedge($start, $substart+1, $EDGE_EPSILON, 0);
#            dentout($to > 0
#              ?? self.addedge($substart, $to, $EDGE_EPSILON, 0)
#              !! self.addedge($substart, 0, $EDGE_FATE, $fate))
             $to > 0
              ?? self.addedge($substart, $to, $EDGE_EPSILON, 0)
              !! self.addedge($substart, 0, $EDGE_FATE, $fate)
        }
        else {
#            dentout(self.addedge($start, 0, $EDGE_FATE, $fate));
            self.addedge($start, 0, $EDGE_FATE, $fate);
        }
    }

    # NFA type.
    my knowhow NFAType is repr('NFA') { }

    method run(str $target, int $offset) {
        unless nqp::isconcrete($!nfa_object) {
#            self.mydump() if $nfadeb;
            nqp::scwbdisable();
            $!nfa_object := nqp::nfafromstatelist(@!states, NFAType);
            nqp::scwbenable();
        }
        my $result := nqp::nfarunproto($!nfa_object, $target, $offset);
        $result;
    }

    method run_alt(str $target, int $offset, $bstack, $cstack, @labels) {
        unless nqp::isconcrete($!nfa_object) {
#            self.mydump() if $nfadeb;
            nqp::scwbdisable();
            $!nfa_object := nqp::nfafromstatelist(@!states, NFAType);
            nqp::scwbenable();
        }
        my $result := nqp::nfarunalt($!nfa_object, $target, $offset, $bstack, $cstack, @labels);
        $result;
    }

    method generic() { $!generic }

    method instantiate_generic($env) {
        # Create a copy.
        my $copy := nqp::create(self);
        my @copied_states;
        for @!states -> @values {
            nqp::push(@copied_states, nqp::clone(@values));
        }
        nqp::bindattr(  $copy, QRegex::NFA, '@!states', @copied_states);
        nqp::bindattr_i($copy, QRegex::NFA, '$!edges',  $!edges);

        # Work out what we need to do to instantiate it by replacing any
        # generic edges.
        my int $from;
        for @copied_states -> @values {
            my @output_values;
            my int $n := nqp::elems(@values);
            my int $i;
            while $i < $n {
                my $act := @values[$i];
                my $arg := @values[$i + 1];
                my $to  := @values[$i + 2];
                if $act == $EDGE_GENERIC_VAR {
                    if nqp::existskey($env, $arg) {
                        $copy.literal(
                          QAST::Regex.new(
                            :rxtype('literal'), nqp::atkey($env, $arg)
                          ),
                          $from,
                          $to
                        );
                        @values[$i] := $EDGE_EPSILON;
                    }
                    else {
                        @values[$i] := $EDGE_FATE;
                    }
                    @values[$i + 1] := 0;
                    @values[$i + 2] := 0;
                }
                $i := $i + 3;
            }
            ++$from;
        }

        $copy
    }

    method __dump($dumper, $label) {
        my $subindent := $dumper.'newIndent'();
        print('[');
        my $st := 0;
        for @!states {
            print(nqp::sprintf("\n$subindent'%d' => [%s]", [$st, nqp::join(', ', $_)]));
            $st := $st + 1;
        }
        $dumper.deleteIndent();
        print("\n", $dumper.indent, ']');
    }

    method optimize() {
        my int $send := nqp::elems(@!states);
#        note("------------------------------------------\n   $send states") if $nfadeb;
#        $ind := 0 if $nfadeb;
        if $send > 3 {
            my @remap := nqp::list_i();
            nqp::setelems(@remap, $send + 1);
            my @refs := nqp::list_i();
            nqp::setelems(@refs, $send + 1);

#            self.mydump() if $nfadeb;

            # first pass, remember single-edge epsilon states
            my int $s := 0;
            while ++$s < $send {
                my @edges := @!states[$s];
                if nqp::elems(@edges) == 3 {
                    my int $to := @edges[2];
                    if @edges[0] == $EDGE_EPSILON {
                        nqp::bindpos_i(@remap,$s,$to);
                    }
                    elsif @edges[0] == $EDGE_FATE {
                        # is this fate pointing to same fate, possibly via remappables?
                        if $to {
                            while nqp::atpos_i(@remap,$to) {
                                $to := nqp::atpos_i(@remap,$to);
                            }
                            my @sedges := @!states[$to];
                            if nqp::elems(@sedges) && @sedges[0] == $EDGE_FATE && @sedges[1] == @edges[1] {
                                nqp::bindpos_i(@remap,$s,$to);
                            }
                        }
                    }
                }
            }

#            $s := 0;
#            while ++$s < $send {
#               if nqp::atpos_i(@remap, $s) {
#                    my $newpos := nqp::atpos_i(@remap,$s);
#                    note("\t$s -> $newpos");
#
#                }
#            }

            # unlink all the empty epsilons, count resulting refs to each state
#            note("now $send states before unlinking empties") if $nfadeb;
            $s := 0;
            while ++$s < $send {
                if nqp::atpos_i(@remap,$s) && $s > 1 {
                    @!states[$s] := [];
                }
                else {
                    my @edges := @!states[$s];
                    my int $eend := nqp::elems(@edges);
                    my int $e := 2;
                    while $e < $eend {
                        my int $to := @edges[$e];
#                        my int $was := $to;
                        if $to && nqp::atpos_i(@remap,$to) {
                            while nqp::atpos_i(@remap,$to) {
                                $to := nqp::atpos_i(@remap,$to);
#                                note("  chasing $was to $to") if $nfadeb;
                            }
                            @edges[$e] := $to;
                        }
                        nqp::bindpos_i(@refs,$to, nqp::atpos_i(@refs,$to) + 1);
                        $e := $e + 3;
                    }
                }
            }

#            self.mydump() if $nfadeb;
            # replace epsilons to single edge, single ref states
#            note("now $send states before stealing singleton edges") if $nfadeb;
            $s := 0;
            while ++$s < $send {
                my @edges := @!states[$s];
                my int $eend := nqp::elems(@edges);
                my int $e := 0;
                while $e < $eend {
                    # note that singleton epsilon states were already removed last pass
                    # so these epsilons are part of multiple edge states.
                    if @edges[$e] == $EDGE_EPSILON {
                        my int $to := @edges[$e+2];
                        if $to {
                            my @sedges := @!states[$to];
                            if nqp::elems(@sedges) == 3 {
#                                note("  $s stealing $to") if $nfadeb;
                                @edges[$e]     := @sedges[0];
                                @edges[$e + 1] := @sedges[1];
                                @edges[$e + 2] := @sedges[2];

                                my int $refcnt := nqp::atpos_i(@refs,$to) - 1;
                                nqp::bindpos_i(@refs,$to,$refcnt);
                                @!states[$to] := [] unless $refcnt; # remove if no refs remaining
                            }
                        }
                    }
                    $e := $e + 3;
                }
            }
#            self.mydump() if $nfadeb;

            # build resequence map for states that still have any edges
#            note("now $send states before calculating remap") if $nfadeb;
            my int $newend := 0;
            $s := 0;
            while ++$s < $send {
                nqp::bindpos_i(
                  @remap, $s, nqp::elems(@!states[$s])
                    ?? ++$newend
                    !! 0 # zero out entries used earlier for epsilon removal
                );
            }

#            note("now $send states");
#            self.mydump();
#            $s := 0;
#            while ++$s < $send {
#                if nqp::atpos_i(@remap, $s) {
#                    my $newpos := nqp::atpos_i(@remap,$s);
#                    note("\t$s -> $newpos");
#                }
#            }

            # now move the states and remap the edges (if, in fact, any states were removed)
#            self.mydump() if $nfadeb;
#            note("now $send states mapping to $newend states") if $nfadeb;
            if $newend < $send {
                my @newstates := nqp::list();
                nqp::setelems(@newstates, $newend);
                nqp::bindpos(@newstates, 0, @!states[0]);  # copy fates
                $s := 0;
                while ++$s < $send {
                    if nqp::elems(@!states[$s]) {
                        my int $newpos := nqp::atpos_i(@remap,$s);
                        note("OOPS outrageous $newpos") if $newpos > $s;
                        if $newpos {
                            nqp::bindpos(@newstates, $newpos, @!states[$s]);
                            my @edges := @newstates[$newpos];
                            my int $eend := nqp::elems(@edges);
                            my int $e := 2;
                            while $e < $eend {
                                my int $to := @edges[$e];
#                                 my int $act := nqp::bitand_i(@edges[$e-2], 0xff);
                                if $to {
                                    my int $to2 := nqp::atpos_i(@remap,$to);
#                                    note("In $s -> $newpos remapping " ~ $ACTIONS[$act] ~ " $to -> $to2") if $nfadeb;
                                    @edges[$e] := $to2;
                                }
                                $e := $e + 3;
                            }
                            # a small O(N^2) dup remover
                            $e := 3;
                            while $e < $eend {
                                my int $act := nqp::bitand_i(@edges[$e], 0xff);
                                if $act < $EDGE_CHARLIST {
                                    my int $f := 0;
                                    while $f < $e {
                                        if $act == @edges[$f] && @edges[$e+2] == @edges[$f+2] && @edges[$e+1] == @edges[$f+1] {
#                                            note("Deleting dup edge at $s $e/$f") if $nfadeb;
                                            $f := $e;
                                            nqp::splice(@edges,[],$e,3);
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
#                            note("False mapping for $s") if $nfadeb;
                        }
                    }
                    else {
#                        note("Skipping $s") if $nfadeb;
                    }
                }
                nqp::bindattr(self, QRegex::NFA, '@!states', @newstates);
            }
#            self.mydump() if $nfadeb;
        }

        self
    }

    method mydump() {
        my int $send := nqp::elems(@!states);
        if $send > 1 {
            note("==========================================\n   $send states");
            note("Fates:");
            for @!states[0] -> $f {
                $f := "" if nqp::isnull($f);
                note("\t$f");
            }
            note("");
            my int $s := 1;
            while $s < $send {
                note("$s:");
                for @!states[$s] -> $a, $v, $t {
                    my $act := nqp::bitand_i($a,0xff);
                    my $action := $ACTIONS[$act];
                    if $act == $EDGE_CODEPOINT || $act == $EDGE_CODEPOINT_LL {
                        note("\t$t $action " ~ nqp::chr($v));
                    }
                    elsif $act == $EDGE_FATE {
                        note("\t$t $action " ~ $v);
                    }
                    elsif $act == $EDGE_CHARCLASS || $act == $EDGE_CHARCLASS_NEG {
                        note("\t$t $action " ~ $v);
                    }
                    elsif $act == $EDGE_CHARLIST || $act == $EDGE_CHARLIST_NEG {
                        note("\t$t $action " ~ $v);
                    }
                    elsif $act == $EDGE_SUBRULE && nqp::istype($v,BOOTStr) {
                        note("\t$t $action " ~ $v);
                    }
                    else {
                        note("\t$t $action");
                    }
                }
                note("");
                $s := $s + 1;
            }
        }
    }
}

INIT {
    NQPRegex.SET_NFA_TYPE(QRegex::NFA);
}

# vim: ft=perl6 expandtab sw=4
