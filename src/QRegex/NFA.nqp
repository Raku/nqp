use QASTNode;

#- QRegex::NFA -----------------------------------------------------------------
class QRegex::NFA {

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
#
#    sub dentin() {
#        if $nfadeb {
#            $ind := $ind + 2;
#            nqp::x(' ', nqp::if($ind >= 0, $ind, 0));
#        }
#        else { '' }
#    }
#
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
#        $id

        nqp::push(@!states, nqp::list);
        nqp::elems(@!states) - 1
    }

    method addedge(
      int $from,
      int $to,
      $action,
      $value,
      :$newedge = 1
    ) {

#        my $indent := dentin();
#        note("$indent addedge $from -> $to {$ACTIONS[nqp::bitand_i($action,0xff)] // 'unk'}") if $nfadeb;

        $value   := $value.value  if nqp::istype($value, QAST::SVal);
        $!edges  := 1             if $newedge;
        $to      := self.addstate if $to < 0;
        my @this := nqp::atpos(@!states, $from);

        if $action == nqp::const::EDGE_FATE {
            my $known_value := nqp::atpos($!known, $value);
            if $known_value {
                if nqp::not_i($to) || $to == $known_value {
                    $action := nqp::const::EDGE_EPSILON;
                    $to     := $known_value;
                }
            }
            elsif nqp::elems(@this) == 0 {
                nqp::bindpos($!known, $value, $from);
            }
        }

#        dentout($to);
#        $to

        nqp::push(@this, $action);
        nqp::push(@this, $value);
        nqp::push(@this, $to)  # push returns value being pushed
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

#        note("$indent regex_nfa $from -> $to $method") if $nfadeb;

        $!LITEND := 1 unless $method eq 'literal'
          || $method eq 'concat'
          || $method eq 'alt';

#        my $result :=
        self.HOW.can(self, $method)
         ?? self."$method"($node, $from, $to)
         !! self.fate($node, $from, $to)

#        ;
#        note("$indent ...regex_nfa returns $result") if $nfadeb;
#        dentout($result);
#        $result
    }

    method fate($node, int $from, int $to) {

#        my $indent := dentin();
#        note("$indent fate $from -> $to") if $nfadeb;
#        dentout(self.addedge($from, 0, nqp::const::EDGE_FATE, 0, :newedge(0)));

        self.addedge($from, 0, nqp::const::EDGE_FATE, 0, :newedge(0));
    }

    method alt($node, int $from, int $to) {

#        my $indent := dentin();
#        note($node.dump) if $nfadeb;

        my $litendfront := $!LITEND;
        my $litendback;

        my int $m := nqp::elems($node);
        my int $i;
        while $i < $m {

#            note("$indent alternative") if $nfadeb;

            $!LITEND := $litendfront;
            my int $state :=
              self.regex_nfa(nqp::atpos($node, $i), $from, $to);
            $litendback := 1 if $!LITEND;

            $to := $state if $to < 0 && $state > 0;
            ++$i;
        }

        # stop litlen at recombination unless all alts are pure literal
        $!LITEND := $litendback;

#        dentout($to);

        $to
    }

    method altseq($node, int $from, int $to) {
        if nqp::elems($node) {

#            my $indent := dentin();

            my int $state := self.regex_nfa(nqp::atpos($node,0), $from, $to);
            $to := $state if $to < 0 && $state > 0;

            $state := self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0);
            $to < 0 && $state > 0 ?? $state !! $to

#            $to := $st if $to < 0 && $st > 0;
#            note("$indent ...altseq returns $to") if $nfadeb;
#            dentout($to);
#            $to;
        }

        else {
            self.fate($node, $from, $to)
        }
    }

    method anchor($node, int $from, int $to) {
        self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0)
    }

    method dba($node, int $from, int $to) {
        self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0)
    }

    method cclass($node, int $from, int $to) {

#        my $indent := dentin();
#        dentout(self.addedge($from, $to, nqp::const::EDGE_CHARCLASS + ?$node.negate,
#                     %cclass_code{ $node.name }));

        self.addedge(
          $from,
          $to,
          nqp::const::EDGE_CHARCLASS + ?$node.negate,
          nqp::atkey(%cclass_code, $node.name)
        )
    }

    method concat($node, int $from, int $to) {

#        my $indent := dentin();
#        note("$indent concat $from -> $to") if $nfadeb;

        my int $m := nqp::elems($node) - 1;
        my int $i;
        while $i < $m && $from > 0 {
            $from := self.regex_nfa(nqp::atpos($node, $i), $from, -1);
            ++$i;
        }

#        my $result :=
        $from > 0 && $m >= 0
          ?? self.regex_nfa(nqp::atpos($node,$i), $from, $to)
          !! $to

#        ;
#        note("$indent ...concat created $from, n = $n") if $nfadeb;
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
              $from, -1, nqp::const::EDGE_CHARLIST + ?$node.negate, $charlist
            );

#            dentout(self.addedge($from, 0, nqp::const::EDGE_FATE, 0));

            self.addedge($from, 0, nqp::const::EDGE_FATE, 0)
        }

        else {

#            dentout(self.addedge($from, $to, nqp::const::EDGE_CHARLIST + ?$node.negate, $charlist));

             self.addedge(
               $from, $to, nqp::const::EDGE_CHARLIST + ?$node.negate, $charlist
            )
        }
    }

    method charrange($node, int $from, int $to) {

#        my $indent := dentin();
#        note("$indent charrange $from -> $to") if $nfadeb;

        my str $type := nqp::atpos($node, 0);
        my $node1    := nqp::atpos($node, 1).value;
        my $node2    := nqp::atpos($node, 2).value;

        my $base_edge := $type eq 'ignoremark'
          || $type eq 'ignorecase+ignoremark'
          ?? nqp::const::EDGE_CHARRANGE_M
          !! nqp::const::EDGE_CHARRANGE;

        my $add;
        if $type eq 'ignorecase' || $type eq 'ignorecase+ignoremark' {
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
                  0, nqp::const::EDGE_FATE, 0
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

    method literal($node, int $from, int $to) {

#        my $indent := dentin();

        my str $first  := nqp::atpos($node, 0);
        my int $litlen := nqp::chars($first) - 1;
        my int $i;

        if $litlen >= 0 {
            my str $subtype := $node.subtype;

#            note("$indent literal $from -> $to {$node[0]}") if $nfadeb;

            if $subtype eq 'ignorecase' {
                my str $lc := nqp::lc($first);
                my str $uc := nqp::uc($first);

                while $i < $litlen {
                    $from := self.addedge(
                      $from,
                      -1,
                      nqp::const::EDGE_CODEPOINT_I,
                      nqp::list(ord-or-str($lc, $i), ord-or-str($uc, $i))
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, $!LITEND ?? nqp::const::EDGE_CODEPOINT_I !!  nqp::const::EDGE_CODEPOINT_I_LL,
#                    [ord-or-str($litconst_lc, $i), ord-or-str($litconst_uc, $i)]));

                # Add final stage
                self.addedge(
                  $from,
                  $to,
                  $!LITEND
                    ?? nqp::const::EDGE_CODEPOINT_I
                    !!  nqp::const::EDGE_CODEPOINT_I_LL,
                  nqp::list(ord-or-str($lc, $i), ord-or-str($uc, $i))
                );
            }

            elsif $subtype eq 'ignoremark' {
                while $i < $litlen {
                    $from := self.addedge(
                      $from,
                      -1,
                      nqp::const::EDGE_CODEPOINT_M,
                      nqp::ordbaseat($first, $i)
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, nqp::const::EDGE_CODEPOINT_M, nqp::ordbaseat($litconst, $i)));

                self.addedge(
                  $from,
                  $to,
                  nqp::const::EDGE_CODEPOINT_M,
                  nqp::ordbaseat($first, $i)
                )
                # XXX nqp::const::EDGE_CODEPOINT_M_LL ?
            }

            elsif $subtype eq 'ignorecase+ignoremark' {
                my str $lc := nqp::lc($first);
                my str $uc := nqp::uc($first);

                while $i < $litlen {
                    $from := self.addedge(
                      $from,
                      -1,
                      nqp::const::EDGE_CODEPOINT_IM,
                      nqp::list(ord-or-str($lc, $i), ord-or-str($uc, $i))
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, nqp::const::EDGE_CODEPOINT_IM,
#                    [nqp::ordbaseat($litconst_lc, $i), nqp::ordbaseat($litconst_uc, $i)]));

                self.addedge(
                  $from,
                  $to,
                  nqp::const::EDGE_CODEPOINT_IM,
                  nqp::list(ord-or-str($lc, $i), ord-or-str($uc, $i))
                )
                # XXX nqp::const::EDGE_CODEPOINT_IM_LL ?
            }

            else {

                while $i < $litlen {
                    $from := self.addedge(
                      $from,
                      -1,
                      nqp::const::EDGE_CODEPOINT,
                      ord-or-str($first, $i)
                    );
                    ++$i;
                }

#                dentout(self.addedge($from, $to, $!LITEND ?? nqp::const::EDGE_CODEPOINT !!  nqp::const::EDGE_CODEPOINT_LL,
#                    ord-or-str($litconst, $i)));

                self.addedge(
                  $from,
                  $to,
                  $!LITEND
                    ?? nqp::const::EDGE_CODEPOINT
                    !!  nqp::const::EDGE_CODEPOINT_LL,
                  ord-or-str($first, $i)
                )
            }
        }

        else {

#            note("$indent literal $from -> $to ''") if $nfadeb;
#            dentout(self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0));

             self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0)
        }
    }

    method subrule($node, int $from, int $to) {

#        my $indent := dentin();
#        note("$indent subrule $from -> $to {$node.name}") if $nfadeb;

        my str $subtype := $node.subtype;
        my str $name    := $node.name;
        my int $negate  := $node.negate;

        my $node0       := nqp::atpos($node,  0);
        my $node00      := nqp::atpos($node0, 0);
        my $node01      := nqp::atpos($node0, 1);
        my $nodetype := nqp::istype($node00, QAST::SVal)
          ?? $node00.value
          !! $node00;

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
               || $subtype  eq 'method'
               && $nodetype eq 'alpha') {

            $to := self.addedge(
              $from,
              $to,
              nqp::const::EDGE_CHARCLASS + $negate,
              nqp::const::CCLASS_ALPHABETIC
            );

#            dentout(self.addedge($from, $to, nqp::const::EDGE_CODEPOINT + $node.negate, 95));

            self.addedge($from, $to, nqp::const::EDGE_CODEPOINT + $negate, 95)
        }

        elsif nqp::not_i($negate)
          && ($name eq 'ws' || $subtype eq 'method' && $nodetype eq 'ws')
        {

#            dentout(self.fate($node, $from, $to));

             self.fate($node, $from, $to)
        }

        elsif nqp::not_i($negate)
          && $subtype ne 'zerowidth'
          && ($name eq 'ident' || $subtype eq 'method' && $nodetype eq 'ident')
        {
            my int $beginstate := self.addstate;
            self.addedge($from, $beginstate, nqp::const::EDGE_EPSILON, 0);

            my int $midstate := self.addstate;
            self.addedge(
              $beginstate,
              $midstate,
              nqp::const::EDGE_CHARCLASS,
              nqp::const::CCLASS_ALPHABETIC
            );
            self.addedge($beginstate, $midstate,
              nqp::const::EDGE_CODEPOINT, 95
            );

            my int $second := self.addstate;
            self.addedge($midstate, $second,
              nqp::const::EDGE_CHARCLASS, nqp::const::CCLASS_WORD
            );

            self.addedge($second, $midstate, nqp::const::EDGE_EPSILON, 0);
#            $to :=
            self.addedge($midstate, $to, nqp::const::EDGE_EPSILON, 0)

#            ;
#            dentout($to);
#            $to
        }

        elsif $subtype eq 'zerowidth' {
            if $negate {

#                dentout(self.fate($node, $from, $to))

                 self.fate($node, $from, $to)
            }
            else {
                my int $end := self.addstate;
                self.addedge($from, $end, nqp::const::EDGE_SUBRULE, $name);

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

#            dentout(self.addedge($from, $to, nqp::const::EDGE_GENERIC_VAR, $node01.name));

             self.addedge(
               $from, $to, nqp::const::EDGE_GENERIC_VAR, $node01.name)
        }

        else {

#            dentout($subtype eq 'capture' && $node[1]
#                ?? self.regex_nfa($node[1], $from, $to)
#                !! self.addedge($from, $to, nqp::const::EDGE_SUBRULE, $node[0][0]))

             $subtype eq 'capture' && nqp::atpos($node, 1)
                ?? self.regex_nfa(nqp::atpos($node, 1), $from, $to)
                !! self.addedge($from, $to, nqp::const::EDGE_SUBRULE, $node00)
        }
    }

    method quant($node, int $from, int $to) {

#        my $indent := dentin();

        my int $min := $node.min // 0;
        my int $max := $node.max // -1; # -1 means Inf
        my $node0   := nqp::atpos($node, 0);
        my $node1   := nqp::atpos($node, 1);

#        note("$indent quant $from -> $to $min $max") if $nfadeb;

        if $max > 1 || $min > 1 {
            my int $count;
            my int $state := -1;
            my int $has_sep := nqp::defined($node1);

            while $count < $max || $count < $min {
                if $count >= $min {
                    $state := self.addedge(
                      $from, $to, nqp::const::EDGE_EPSILON, 0);

#                    note("$indent ...quant sf = $st") if $nfadeb;
                }

                $from := self.regex_nfa($node1, $from, -1)
                  if $has_sep && $count > 0;

                $from := self.regex_nfa($node0, $from, $state);
                ++$count;
            }

            $state := self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0);

            if $max == -1 {
                my int $start := self.addstate;
                self.addedge($from, $start, nqp::const::EDGE_EPSILON, 0);
                $from := $start;

                my $looper := self.addstate;
                self.addedge($looper, $to,   nqp::const::EDGE_EPSILON, 0);
                self.addedge($looper, $from, nqp::const::EDGE_EPSILON, 0);

                $from := self.regex_nfa($node1, $from, -1)
                  if $has_sep && $count > 0;

                self.regex_nfa($node0, $from, $looper);
            }

            $to < 0 && $state > 0 ?? $state !! $to

#            $to := $st if $to < 0 && $st > 0;
#            note("$indent ...quant returns $to with st = $st") if $nfadeb;
#            return dentout($to);
        }

        elsif $max == -1 {
            my int $state;

            if $min { # + quantifier
                my int $start := self.addstate;
                self.addedge($from, $start, nqp::const::EDGE_EPSILON, 0);
                my int $looper := self.addstate;

#                note("$indent ...in quant +, start = $start, looper = $looper") if $nfadeb;

                $state := self.regex_nfa($node0, $start, $looper);
                if nqp::defined($node1) {
                    self.regex_nfa($node1, $looper, $start);
                }
                else {

#                    note("$indent ...in quant +, no node[1]") if $nfadeb;

                    self.addedge($looper, $start, nqp::const::EDGE_EPSILON, 0);
                }
                self.addedge($looper, $to, nqp::const::EDGE_EPSILON, 0)
                  unless $to < 0;

            }

            else { # * quantifier

                if nqp::defined($node1) { # * %
                    my int $start := self.addstate;
                    self.addedge($from, $start, nqp::const::EDGE_EPSILON, 0);
                    my int $looper := self.addstate;

#                    note("$indent ...in quant *%, start = $start, looper = $looper") if $nfadeb;

                    self.regex_nfa($node0, $start, $looper);
                    self.regex_nfa($node1, $looper, $start);
                    self.addedge($looper, $to, nqp::const::EDGE_EPSILON, 0)
                      unless $to < 0;
                }

                else {

#                    note("$indent ...in quant *") if $nfadeb;

                    self.regex_nfa($node0, $from, $from);
                }

                $state := self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0);
            }

#            $to := $state if $to < 0 && $state > 0;
#            note("$indent ...quant returns $to") if $nfadeb;
#            dentout($to);
#            $to

            $to < 0 && $state > 0 ?? $state !! $to
        }

        elsif $min == 0 && $max == 1 { # ? quantifier

            my int $state := self.regex_nfa($node0, $from, $to);
            $to := $state if $to < 0 && $state > 0;

            $state := self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0);
            $to < 0 && $state > 0 ?? $state !! $to

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
#            self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0) !!
#            self.fate($node, $from, $to));

         $node.subtype eq 'zerowidth' || $node.subtype eq 'declarative'
           ?? self.addedge($from, $to, nqp::const::EDGE_EPSILON, 0)
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
              ?? self.addedge(1, 0, nqp::const::EDGE_FATE, 0, :newedge(1))
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
          $rule,
          %caller_seen?
    ) {

#        my $indent := dentin();

        my %seen := nqp::clone(%caller_seen);
        my @substates;
        if nqp::istype($rule, QAST::Var) {
            my $method   := $rule.ann('coderef');
            my str $name := $method.name;

#            note("$indent mergesubrule $name start $start to $to fate $fate") if $nfadeb;

            unless nqp::existskey(%seen, $name) {
                my $nfa_method := nqp::tryfindmethod($method, 'NFA');
                @substates     := nqp::ifnull($nfa_method($method), nqp::list)
                  if nqp::isconcrete($nfa_method);
                nqp::bindkey(%seen, $name, 1);
            }

#            else {
#                note("$indent ...skipping $name to avoid left recursion") if $nfadeb;
#            }
        }

        elsif nqp::isconcrete(my $method := nqp::tryfindmethod($cursor,$rule)) {

#            note("$indent mergesubrule $rule start $start to $to fate $fate") if $nfadeb;

            unless nqp::existskey(%seen, $rule) {
                my $nfa_method := nqp::tryfindmethod($method, 'NFA');
                @substates     := nqp::ifnull($nfa_method($method), nqp::list)
                  if nqp::isconcrete($nfa_method);

                unless @substates {

                    # Maybe it's a protoregex, in which case states are an
                    # alternation of all of the possible rules.

                    my %protorx      := $cursor.HOW.cache(
                      $cursor, "!protoregex_table",
                      { $cursor."!protoregex_table"() }
                    );
                    my $nfa := QRegex::NFA.new;

                    my $rxnames := nqp::atkey(%protorx, $rule);
                    unless nqp::isnull($rxnames) {
                        my int $m := nqp::elems($rxnames);
                        my int $i;
                        while $i < $m {
                            $nfa.addedge(1, 0,
                              nqp::const::EDGE_SUBRULE, nqp::atpos($rxnames, $i)
                            );
                            ++$i;
                        }
                        @substates := $nfa.states;
                    }
                }
                nqp::bindkey(%seen, $rule, 1);
            }

#            else {
#                note("$indent ...skipping $rule to avoid left recursion") if $nfadeb;
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
#                        if $act == nqp::const::EDGE_CODEPOINT || $act == nqp::const::EDGE_CODEPOINT_LL {
#                            note("\t$t $action " ~ nqp::chr($v));
#                        }
#                        elsif $act == nqp::const::EDGE_FATE {
#                            note("\t$t $action " ~ $v);
#                        }
#                        elsif $act == nqp::const::EDGE_CHARCLASS || $act == nqp::const::EDGE_CHARCLASS_NEG {
#                            note("\t$t $action " ~ $v ~ "\n");
#                        }
#                        elsif $act == nqp::const::EDGE_CHARLIST || $act == nqp::const::EDGE_CHARLIST_NEG {
#                            note("\t$t $action " ~ $v ~ "\n");
#                        }
#                        elsif $act == nqp::const::EDGE_SUBRULE && nqp::istype($v,BOOTStr) {
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
            my int $substart := self.addstate;
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
                    if @substate[$j] == nqp::const::EDGE_FATE {
                        if $to > 0 {
                            @substate[$j+1] := $fate;
                        }

                        # adding our own fate later, so don't need this one
                        else {
                            @substate[$j] := nqp::const::EDGE_EPSILON;
                        }
                    }
                    elsif @substate[$j] == nqp::const::EDGE_SUBRULE {
                        my int $j2 := @substate[$j+2];
                        my $j1 := @substate[$j+1];
                        nqp::splice(@substate, nqp::list(), $j, 3);
                        self.mergesubrule($i, $j2, $fate, $cursor, $j1, %seen);
                        $j := $j - 3;
                        $k := $k - 3;
                    }
                    elsif @substate[$j] == nqp::const::EDGE_CODEPOINT_LL
                      || @substate[$j] == nqp::const::EDGE_CODEPOINT_I_LL {
                        # Added to act because there's no more room arg for
                        # two case insensitive chars.  The NFA engine notices
                        # a negative act and redispatches to correct spot.
                        # The act and fate are both encoded positively, and
                        # we ignore the negative bits.
                        @substate[$j] := @substate[$j] + 256 * $fate - 0x40000000;
                    }
                    $j := $j + 3;
                }
                $i := $i + 1;
            }
            self.addedge($start, $substart+1, nqp::const::EDGE_EPSILON, 0);

#            dentout($to > 0
#              ?? self.addedge($substart, $to, nqp::const::EDGE_EPSILON, 0)
#              !! self.addedge($substart, 0, nqp::const::EDGE_FATE, $fate))

              $to > 0
              ?? self.addedge($substart, $to, nqp::const::EDGE_EPSILON, 0)
              !! self.addedge($substart, 0, nqp::const::EDGE_FATE, $fate)
        }
        else {

#            dentout(self.addedge($start, 0, nqp::const::EDGE_FATE, $fate));

            self.addedge($start, 0, nqp::const::EDGE_FATE, $fate);
        }
    }

    # NFA type.
    my knowhow NFAType is repr('NFA') { }

    method create-nfa-object() {
        $!nfa_object := nqp::nfafromstatelist(@!states, NFAType);
    }

    method run-nocheck($nfa_object, str $target, int $offset) {
        nqp::nfarunproto($nfa_object, $target, $offset)
    }
    method run_alt-nocheck($nfa_object, str $target, int $offset, $bstack, $cstack, @labels) {
        nqp::nfarunalt($nfa_object, $target, $offset, $bstack,$cstack, @labels)
    }

    method run(str $target, int $offset) {
        unless nqp::isconcrete($!nfa_object) {

#            self.mydump() if $nfadeb;

            nqp::scwbdisable();
            $!nfa_object := nqp::nfafromstatelist(@!states, NFAType);
            nqp::scwbenable();
        }

        nqp::nfarunproto($!nfa_object, $target, $offset)
    }

    method run_alt(str $target, int $offset, $bstack, $cstack, @labels) {

        unless nqp::isconcrete($!nfa_object) {

#            self.mydump() if $nfadeb;

            nqp::scwbdisable();
            $!nfa_object := nqp::nfafromstatelist(@!states, NFAType);
            nqp::scwbenable();
        }

        nqp::nfarunalt($!nfa_object, $target, $offset, $bstack,$cstack, @labels)
    }

    method generic() { $!generic }

    method instantiate_generic($env) {

        # Set up object
        my $obj := nqp::create(self);
        my @new;
        nqp::bindattr(  $obj, QRegex::NFA, '@!states', @new);
        nqp::bindattr_i($obj, QRegex::NFA, '$!edges',  $!edges);

        # Local alias for faster access
        my @states := @!states;

        my int $m := nqp::elems(@states);  # also for @new
        my int $i;

        # Pre-populate the new object with copies of all the states
        # to endure that $obj.literal during the checks, will actually
        # have something to work with
        while $i < $m {
            nqp::push(@new, nqp::clone(nqp::atpos(@states, $i)));
            ++$i;
        }

        # Work out what we need to do to instantiate it by replacing any
        # generic edges.
        $i := 0;
        while $i < $m {
            my @values := nqp::atpos(@new, $i);
            my int $n  := nqp::elems(@values);
            my int $j;

            while $j < $n {
                if nqp::atpos(@values, $j) == nqp::const::EDGE_GENERIC_VAR {
                    my $arg := nqp::atpos(@values, $j + 1);

                    if nqp::existskey($env, $arg) {
                        $obj.literal(
                          QAST::Regex.new(
                            :rxtype('literal'), nqp::atkey($env, $arg)
                          ),
                          $i,
                          nqp::atpos(@values, $j + 2)  # to
                        );
                        nqp::bindpos(@values, $j, nqp::const::EDGE_EPSILON);
                    }
                    else {
                        nqp::bindpos(@values, $j, nqp::const::EDGE_FATE);
                    }

                    nqp::bindpos(@values, $j + 1, 0);
                    nqp::bindpos(@values, $j + 2, 0);
                }
                $j := $j + 3;
            }
            ++$i;
        }

        $obj
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

        # Local alias for faster access
        my @states := @!states;

        my int $send := nqp::elems(@states);

#        note("------------------------------------------\n   $send states") if $nfadeb;
#        $ind := 0 if $nfadeb;

        if $send > 3 {
            my @remap := nqp::setelems(nqp::list_i, $send + 1);
            my @refs  := nqp::setelems(nqp::list_i, $send + 1);

#            self.mydump() if $nfadeb;

            # first pass, remember single-edge epsilon states
            my int $s := 1;  # skip fates
            while $s < $send {
                my @edges := nqp::atpos(@states, $s);
                if nqp::elems(@edges) == 3 {
                    my int $act := nqp::atpos(@edges, 0);
                    my int $to  := nqp::atpos(@edges, 2);

                    if $act == nqp::const::EDGE_EPSILON {
                        nqp::bindpos_i(@remap, $s, $to);
                    }
                    elsif $act == nqp::const::EDGE_FATE {

                        # is this fate pointing to same fate, possibly via
                        # remappables?
                        if $to {
                            while nqp::atpos_i(@remap, $to) {
                                $to := nqp::atpos_i(@remap, $to);
                            }

                            my @sedges := nqp::atpos(@states, $to);
                            nqp::bindpos_i(@remap, $s, $to)
                              if nqp::elems(@sedges)
                              && nqp::atpos(@sedges, 0) == nqp::const::EDGE_FATE
                              && nqp::atpos(@sedges, 1) == nqp::atpos(@edges,1);
                        }
                    }
                }

                ++$s;
            }

#            $s := 0;
#            while ++$s < $send {
#               if nqp::atpos_i(@remap, $s) {
#                    my $newpos := nqp::atpos_i(@remap,$s);
#                    note("\t$s -> $newpos");
#
#                }
#            }
#            note("now $send states before unlinking empties") if $nfadeb;

            # unlink all the empty epsilons, count resulting refs to each state
            $s := 1;  # skip fates
            while $s < $send {
                if $s > 1 && nqp::atpos_i(@remap,$s) {
                    nqp::bindpos(@states, $s, nqp::list);
                }

                else {
                    my @edges    := nqp::atpos(@states, $s);
                    my int $eend := nqp::elems(@edges);
                    my int $e := 2;
                    while $e < $eend {
                        my int $to := nqp::atpos(@edges, $e);

#                        my int $was := $to;

                        if $to {
                            my int $valid;
                            while ($valid := nqp::atpos_i(@remap,$to)) {
                                $to := $valid;

#                                note("  chasing $was to $to") if $nfadeb;
                            }
                            nqp::bindpos(@edges, $e, $to);
                        }

                        nqp::bindpos_i(@refs, $to, nqp::atpos_i(@refs,$to) + 1);
                        $e := $e + 3;
                    }
                }

                ++$s;
            }

#            self.mydump() if $nfadeb;
#            note("now $send states before stealing singleton edges") if $nfadeb;
            # replace epsilons to single edge, single ref states
            $s := 1;  # skip fates
            while $s < $send {
                my @edges    := nqp::atpos(@states, $s);

                my int $eend := nqp::elems(@edges);
                my int $e;
                while $e < $eend {
                    # note that singleton epsilon states were already
                    # removed last pass so these epsilons are part of
                    # multiple edge states.
                    if nqp::atpos(@edges, $e) == nqp::const::EDGE_EPSILON {

                        my int $to := nqp::atpos(@edges, $e + 2);
                        if $to {
                            my @sedges := nqp::atpos(@states, $to);

                            if nqp::elems(@sedges) == 3 {

#                                note("  $s stealing $to") if $nfadeb;

                                nqp::bindpos(
                                  @edges, $e,     nqp::atpos(@sedges, 0));
                                nqp::bindpos(
                                  @edges, $e + 1, nqp::atpos(@sedges, 1));
                                nqp::bindpos(
                                  @edges, $e + 2, nqp::atpos(@sedges, 2));

                                my int $refcnt := nqp::atpos_i(@refs, $to) - 1;
                                nqp::bindpos_i(@refs, $to, $refcnt);

                                # remove if no refs remaining
                                nqp::bindpos(@states, $to, nqp::list)
                                  unless $refcnt;
                            }
                        }
                    }
                    $e := $e + 3;
                }

                ++$s;
            }

#            self.mydump() if $nfadeb;
#            note("now $send states before calculating remap") if $nfadeb;

            # build resequence map for states that still have any edges
            my int $newend := 0;
            $s := 1;  # skip fates
            while $s < $send {
                nqp::bindpos_i(
                  @remap, $s, nqp::elems(nqp::atpos(@states, $s))
                    ?? ++$newend
                    !! 0 # zero out entries used earlier for epsilon removal
                );
                ++$s;
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
#            self.mydump() if $nfadeb;
#            note("now $send states mapping to $newend states") if $nfadeb;

            # now move the states and remap the edges (if, in fact, any
            # states were removed)
            if $newend < $send {
                my @newstates := nqp::setelems(nqp::list, $newend);
                # copy fates
                nqp::bindpos(@newstates, 0, nqp::atpos(@states, 0));

                $s := 1;  # skip fates
                while $s < $send {
                    if nqp::elems(nqp::atpos(@states, $s)) {
                        my int $newpos := nqp::atpos_i(@remap, $s);
                        note("OOPS outrageous $newpos") if $newpos > $s;

                        if $newpos {
                            nqp::bindpos(
                              @newstates, $newpos, nqp::atpos(@states, $s));
                            my @edges    := nqp::atpos(@newstates, $newpos);

                            my int $eend := nqp::elems(@edges);
                            my int $e := 2;
                            while $e < $eend {
                                my int $to := nqp::atpos(@edges, $e);

#                                 my int $act := nqp::bitand_i(@edges[$e-2], 0xff);

#                                if $to {
#                                    my int $to2 := nqp::atpos_i(@remap,$to);
#                                    note("In $s -> $newpos remapping " ~ $ACTIONS[$act] ~ " $to -> $to2") if $nfadeb;
#                                    nqp::bindpos(@edges, $e, $to2);
#                                 }

                                nqp::bindpos(
                                  @edges, $e, nqp::atpos_i(@remap, $to)
                                ) if $to;
                                $e := $e + 3;
                            }

                            # a small O(N^2) dup remover
                            $e := 3;
                            while $e < $eend {
                                my int $act :=
                                  nqp::bitand_i(nqp::atpos(@edges, $e), 0xff);

                                if $act < nqp::const::EDGE_CHARLIST {
                                    my int $f;
                                    while $f < $e {
                                        if $act == nqp::atpos(@edges, $f)
                                          && nqp::atpos(
                                               @edges, $e + 2
                                             ) == nqp::atpos(
                                               @edges, $f + 2
                                             )
                                          && nqp::atpos(
                                               @edges, $e + 1
                                             ) == nqp::atpos(
                                               @edges, $f + 1)
                                        {

#                                            note("Deleting dup edge at $s $e/$f") if $nfadeb;

                                            nqp::splice(
                                              @edges, nqp::list(), $e, 3
                                            );
                                            $f    := $e;
                                            $e    := $e - 3;
                                            $eend := $eend - 3;
                                        }
                                        $f := $f + 3;
                                    }
                                }
                                $e := $e + 3;
                            }
                        }
#                        else {
#                            note("False mapping for $s") if $nfadeb;
#                        }
                    }
#                    else {
#                        note("Skipping $s") if $nfadeb;
#                    }

                    ++$s;
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
                    if $act == nqp::const::EDGE_CODEPOINT
                      || $act == nqp::const::EDGE_CODEPOINT_LL {
                        note("\t$t $action " ~ nqp::chr($v));
                    }
                    elsif $act == nqp::const::EDGE_FATE {
                        note("\t$t $action " ~ $v);
                    }
                    elsif $act == nqp::const::EDGE_CHARCLASS
                      || $act == nqp::const::EDGE_CHARCLASS_NEG {
                        note("\t$t $action " ~ $v);
                    }
                    elsif $act == nqp::const::EDGE_CHARLIST
                      || $act == nqp::const::EDGE_CHARLIST_NEG {
                        note("\t$t $action " ~ $v);
                    }
                    elsif $act == nqp::const::EDGE_SUBRULE
                      && nqp::istype($v,BOOTStr) {
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

INIT { NQPRegex.SET_NFA_TYPE(QRegex::NFA) }
