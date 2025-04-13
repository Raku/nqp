#- NQPRoutine ------------------------------------------------------------------
my knowhow NQPRoutine {
    has $!do;
    has $!signature;
    has $!dispatchees;
    has $!dispatch_cache;
    has $!dispatch_order;
    has $!clone_callback;
    has int $!onlystar;

    # Adds a multi-dispatch candidate.
    method add_dispatchee($code) {
        nqp::scwbdisable;
        $!dispatch_cache := nqp::null;
        $!dispatch_order := nqp::null;
        nqp::push($!dispatchees, $code);
        nqp::scwbenable;
    }

    # Checks if this code object is a dispatcher.
    method is_dispatcher() { nqp::defined($!dispatchees) }

    # Derives a new dispatcher.
    method derive_dispatcher() {
        # Clone the underlying VM code ref.
        my $do  := nqp::clone($!do);

        # Clone and attach the code object.
        my $der := nqp::clone(self);
        nqp::bindattr($der, NQPRoutine, '$!do', $do);
        nqp::bindattr($der, NQPRoutine, '$!dispatchees', nqp::clone($!dispatchees));
        nqp::setcodeobj($do, $der);

        # If needed, arrange for a fixup of the cloned code-ref.
        $!clone_callback($!do, $do, $der) unless nqp::isnull($!clone_callback);

        $der
    }

    # Checks if one type is narrower than the other.
    sub is_narrower_type($a, $b) {
        # If one of the types is null, then we know that's automatically
        # wider than anything.
        nqp::isnull($b) && nqp::not_i(nqp::isnull($a))
          ?? 1
          !! nqp::isnull($a) || nqp::isnull($b)
            ?? 0
            !! nqp::istype($a, $b)
    }

    # Sorts the dispatchees. Puts nulls between groups that are of equal
    # weight.  The most specific group comes first.
    my int $SLURPY_ARITY      := nqp::bitshiftl_i(1, 30);
    my int $EDGE_REMOVAL_TODO := -1;
    my int $EDGE_REMOVED      := -2;
    my int $DEFINED_ONLY      := 1;
    my int $UNDEFINED_ONLY    := 2;

    method sort_dispatchees() {
        # Takes two candidates and determines if the first one is narrower
        # than the second. Returns a true value if they are.
        sub is_narrower(%a, %b) {

            # Work out how many parameters to compare, factoring in
            # slurpiness and optionals.
            my $a_num_types := nqp::atkey(%a, 'num_types');
            my $b_num_types := nqp::atkey(%b, 'num_types');
            my int $types_to_check := $a_num_types == $b_num_types
                ?? $a_num_types
                !! nqp::atkey(%a, 'min_arity') == nqp::atkey(%b, 'min_arity')
                  ?? $a_num_types > $b_num_types
                    ?? $b_num_types
                    !! $a_num_types
                  !! (return 0);

            # Analyse each parameter in the two candidates.
            my $a_types := nqp::atkey(%a, 'types');
            my $b_types := nqp::atkey(%b, 'types');

            my int $narrower;
            my int $tied;
            my int $i;
            while $i < $types_to_check {
                my $type_obj_a := nqp::atpos($a_types, $i);
                my $type_obj_b := nqp::atpos($b_types, $i);

                if nqp::eqaddr($type_obj_a, $type_obj_b) {
                    ++$tied;
                }
                elsif is_narrower_type($type_obj_a, $type_obj_b) {
                    ++$narrower;
                }
                elsif nqp::not_i(is_narrower_type($type_obj_b, $type_obj_a)) {
                    ++$tied;
                }
                ++$i;
            }

            $narrower >= 1 && $narrower + $tied == $types_to_check
              # If one is narrower than other from current analysis, we're done
              ?? 1
              !! $tied != $types_to_check
                # If they aren't tied, we're also done
                ?? 0
                # Otherwise, we see if one has a slurpy and the other not.
                # A lack of slurpiness makes the candidate narrower.
                # Otherwise, they're tied.
                !! nqp::atkey(%a, 'max_arity') != $SLURPY_ARITY
                     && nqp::atkey(%b, 'max_arity') == $SLURPY_ARITY;
        }

        # Create a node for each candidate in the graph.
        my @graph;
        my int $num_candidates := nqp::elems($!dispatchees);
        my int $i;
        while $i < $num_candidates {
            # Get hold of signature, types and definednesses.
            my $candidate        := nqp::atpos($!dispatchees, $i);
            my $multi_sig        := $candidate.signature;
            my @types_list       := $multi_sig.types;
            my @definedness_list := $multi_sig.definednesses;
            my int $sig_elems    := nqp::elems(@types_list);

            # Type information to be collected
            my @types;
            my @definedness;

            my int $j;
            while $j < $sig_elems {
                # Record type info for this parameter. */
                nqp::push(@types,       nqp::atpos(@types_list, $j      ));
                nqp::push(@definedness, nqp::atpos(@definedness_list, $j));
                ++$j;
            }

            # Add it to graph node, and initialize list of edges.
            nqp::push(@graph, nqp::hash(
              'info',     nqp::hash(
                            'sub',           $candidate,
                            'types',         @types,
                            'definednesses', @definedness,
                            'min_arity',     $sig_elems,
                            'max_arity',     $sig_elems,
                            'num_types',     $sig_elems
              ),
              'edges',     [],
              'edges_in',  0,
              'edges_out', 0
            ));
            ++$i;
        }

        # Now analyze type narrowness of the candidates relative to each other
        # and create the edges.
        $i := 0;
        while $i < $num_candidates {
            my int $j;
            my $graph_i := nqp::atpos(@graph, $i);
            my $graph_i_info := nqp::atkey($graph_i, 'info');

            while $j < $num_candidates {
                if $i != $j {
                    my $graph_j      := nqp::atpos(@graph, $j);
                    my $graph_j_info := nqp::atkey($graph_j, 'info');

                    if is_narrower($graph_i_info, $graph_j_info) {
#                        @graph[$i]<edges>[@graph[$i]<edges_out>] := $graph_j;
                        nqp::bindpos(
                          nqp::atkey($graph_i, 'edges'),
                          nqp::atkey($graph_i, 'edges_out'),
                          $graph_j
                        );
                        ++$graph_i<edges_out>;
                        ++$graph_j<edges_in>;
                    }
                }
                ++$j;
            }
            ++$i;
        }

        # Perform the topological sort.
        my @result;
        my int $candidates_to_sort := $num_candidates;
        while $candidates_to_sort > 0 {
            my int $rem_results := nqp::elems(@result);

            # Find any nodes that have no incoming edges and add them to
            # results.
            my int $i;
            while $i < $num_candidates {
                my $graph_i := nqp::atpos(@graph, $i);

                if nqp::atkey($graph_i, 'edges_in') == 0 {
                    # Add to results.
                    nqp::push(@result, nqp::atkey($graph_i, 'info'));
                    --$candidates_to_sort;
                    nqp::bindkey($graph_i, 'edges_in', $EDGE_REMOVAL_TODO);
                }
                ++$i;
            }
            nqp::die("Circularity detected in multi sub types")
              if $rem_results == nqp::elems(@result);

            # Now we need to decrement edges in counts for things that had
            # edges from candidates we added here.
            $i := 0;
            while $i < $num_candidates {
                my $graph_i := nqp::atpos(@graph, $i);

                if nqp::atkey($graph_i, 'edges_in') == $EDGE_REMOVAL_TODO {
                    my $edges_out := nqp::atkey($graph_i, 'edges_out');

                    my int $j;
                    while $j < $edges_out {
                        --nqp::atpos(nqp::atkey($graph_i,'edges'),$j)<edges_in>;
                        ++$j;
                    }
                    nqp::bindkey($graph_i, 'edges_in', $EDGE_REMOVED);
                }
                ++$i;
            }

            # Add gap between groups.
            nqp::push(@result, nqp::null);
        }

        # Add final null sentinel.
        nqp::push(@result, nqp::null);
        @result
    }

    # On MoarVM, we use new-disp to do the multiple dispatch.
#?if !moar
    method dispatch($capture) {
        # Count arguments.
        my int $num_args := nqp::captureposelems($capture);

        # Get list and number of candidates, triggering a sort if there are none.
        my @candidates := $!dispatch_order;
        if nqp::isnull(@candidates) {
            nqp::scwbdisable();
            @candidates := $!dispatch_order := self.sort_dispatchees();
            nqp::scwbenable();
        }
        my int $num_candidates := nqp::elems(@candidates);

        # Initialize dispatcher state.
        my @possibles;

        # Go through candidates.
        my int $type_mismatch;
        my int $type_check_count;
        my int $i;
        my int $cur_idx := 0;
        my $cur_candidate;
        while 1 {
            $cur_candidate := @candidates[$cur_idx];

            if nqp::isnull($cur_candidate) {
                # If we have some possible candidate(s), we're done in this loop.
                if nqp::elems(@possibles) {
                    last;
                }

                # Otherwise, we keep looping and looking, unless we really hit the end.
                if nqp::isnull(@candidates[++$cur_idx]) {
                    last;
                }
                else {
                    next;
                }
            }

            # Check if it's admissible by arity.
            if $num_args < $cur_candidate<min_arity> || $num_args > $cur_candidate<max_arity> {
                ++$cur_idx;
                next;
            }

            # Check if it's admissible by type.
            $type_check_count := $cur_candidate<num_types> > $num_args
                             ?? $num_args
                             !! $cur_candidate<num_types>;
            $type_mismatch := 0;
            $i := 0;
            while $i < $type_check_count {
                my $param := nqp::captureposarg($capture, $i);
                my $param_type := $param.WHAT;
                my $type_obj := $cur_candidate<types>[$i];
                my $definedness := $cur_candidate<definednesses>[$i];
                unless nqp::eqaddr($param_type, $type_obj) || nqp::isnull($type_obj) || is_narrower_type($param_type, $type_obj) {
                    $type_mismatch := 1;
                    last;
                }
                if $definedness {
                    # Have a constraint on the definedness.
                    my int $defined := nqp::isnull($param_type) ?? nqp::defined($param) !! nqp::isconcrete($param);
                    if (!$defined && $definedness == $DEFINED_ONLY) || ($defined && $definedness == $UNDEFINED_ONLY) {
                        $type_mismatch := 1;
                        last;
                    }
                }
                ++$i;
            }

            if $type_mismatch {
                ++$cur_idx;
                next;
            }

            # If we get here, it's an admissible candidate; add to list. */
            nqp::push(@possibles, $cur_candidate);
            ++$cur_idx;
        }

        # Cache the result if there's a single chosen one and return it.
        if nqp::elems(@possibles) == 1 {
            my $result := @possibles[0]<sub>;
            nqp::scwbdisable();
            $!dispatch_cache := nqp::multicacheadd($!dispatch_cache, $capture, $result);
            nqp::scwbenable();
            $result
        }
        elsif nqp::elems(@possibles) == 0 {
            # XXX Include possible candidate signatures.
            nqp::die("No applicable candidates found to dispatch to for '" ~ self.name ~ "'.")
        }
        else {
            # XXX Include ambiguous candidate signatures.
            nqp::die("Ambiguous dispatch to multi '" ~ self.name ~ "'.")
        }
    }
#?endif

    method clone() {
        # Clone the underlying VM code ref.
        my $do  := nqp::clone($!do);

        # Clone and attach the code object.
        my $der := nqp::clone(self);
        nqp::bindattr($der, NQPRoutine, '$!do', $do);
        nqp::setcodeobj($do, $der);

        # If needed, arrange for a fixup of the cloned code-ref.
        $!clone_callback($!do, $do, $der) unless nqp::isnull($!clone_callback);

        $der
    }

    method name()      { nqp::getcodename($!do) }
    method !set_name($name) { nqp::setcodename($!do, $name) }

    method signature() { $!signature }
    method gist()      { self.name   }
}
#?if !moar
nqp::setinvokespec(NQPRoutine, NQPRoutine, '$!do', nqp::null);
#?endif
nqp::setboolspec(NQPRoutine, 5, nqp::null);
nqp::settypehll(NQPRoutine, 'nqp');

#- NQPSignature ----------------------------------------------------------------
my knowhow NQPSignature {
    has $!types;
    has $!definednesses;
    method types() { $!types }
    method definednesses() { $!definednesses }
}
nqp::settypehll(NQPSignature, 'nqp');

#- RegexCaptures ---------------------------------------------------------------
# Data on the captures that a particular rule has.
my knowhow RegexCaptures {
    # An integer array of positional capture counts.
    has @!pos-capture-counts;

    # A string array of named capture names and a matching integer array of
    # capture counts.
    has @!named-capture-names;
    has @!named-capture-counts;

    # If there's only one name and captured multiple times, then we fast-path it
    # in MATCH. If such a case, this holds the only name.
    has str $!onlyname;

    # Flags to allow us to more quickly figure stuff out.
    my int $HAS_CAPTURES            := 1;
    my int $HAS_QUANT_LIST_CAPTURES := 2;
    my int $HAS_QUANT_HASH_CAPTURES := 4;
    has int $!flags;

    # Form this data structure from a capnames hash.
    method from-capnames(%capnames) {
        nqp::create(self).'!from-capnames'(%capnames)
    }

    method !from-capnames(%capnames) {
        # Initialize.
        @!pos-capture-counts   := nqp::list_i;
        @!named-capture-names  := nqp::list_s;
        @!named-capture-counts := nqp::list_i;

        # Go over the captures and build up the data structure.
        my int $num-captures;
        my str $onlyname := '';
        my int $quant-list-captures;
        my int $quant-hash-captures;

        for sorted_keys(%capnames) -> $name {
            if $name ne '' {
                my int $ord   := nqp::ord($name);
                my int $count := nqp::atkey(%capnames, $name);

                # Positional capture
                if $ord != 36 && $ord < 58 {
                    nqp::bindpos_i(@!pos-capture-counts, +$name, $count);
                    ++$quant-list-captures if $count >= 2;
                }

                # Named capture
                else {
                    nqp::push_s(@!named-capture-names,  $name);
                    nqp::push_i(@!named-capture-counts, $count);
                    ++$quant-hash-captures if $count >= 2;
                }

                ++$num-captures;
                $onlyname := $name if $count >= 2 && $ord != 36;
            }
        }

        $!onlyname := $num-captures == 1 && $onlyname ne ''
          ?? $onlyname
          !! '';

        $!flags := ($num-captures ?? $HAS_CAPTURES !! 0)
          + ($quant-list-captures ?? $HAS_QUANT_LIST_CAPTURES !! 0)
          + ($quant-hash-captures ?? $HAS_QUANT_HASH_CAPTURES !! 0);

        self
    }

    # Are there any captures?
    method has-captures() {
        nqp::bitand_i($!flags, $HAS_CAPTURES)
    }

    # Build a list of positional captures, or return a shared empty list if
    # there are none. This only populates the slots which need an array.
    my $EMPTY-LIST := nqp::list;
    my $EMPTY-HASH := nqp::hash;

    method prepare-list() {
        my int $n := nqp::elems(@!pos-capture-counts);
        if $n > 0 {
            my $result := nqp::list;
            if nqp::bitand_i($!flags, $HAS_QUANT_LIST_CAPTURES) {
                my int $i;
                while $i < $n {
                    nqp::bindpos($result, $i, nqp::list)
                        if nqp::atpos_i(@!pos-capture-counts, $i) >= 2;
                    ++$i;
                }
            }
            $result
        }
        else {
            $EMPTY-LIST
        }
    }

    # Build a hash of named camptures, or return a shared empty hash if there
    # are none. This only poplates the slots that need an array.
    method prepare-hash() {
        my int $n := nqp::elems(@!named-capture-counts);
        if $n > 0 {
            my $result := nqp::hash;
            if nqp::bitand_i($!flags, $HAS_QUANT_HASH_CAPTURES) {
                my int $i;
                while $i < $n {
                    if nqp::atpos_i(@!named-capture-counts, $i) >= 2 {
                        nqp::bindkey($result,
                            nqp::atpos_s(@!named-capture-names, $i),
                            nqp::list);
                    }
                    ++$i;
                }
            }
            $result
        }
        else {
            $EMPTY-HASH
        }
    }

    # Get the name of the only capture, if there is only one.
    method onlyname() { $!onlyname }
}
nqp::settypehll(RegexCaptures, 'nqp');

#- NQPRegex --------------------------------------------------------------------
my knowhow NQPRegex {
    has $!do;
    has $!caps;
    has $!nfa;
    has %!alt_nfas;
    has $!generic_nfa;
    has @!nested_codes;
    has $!clone_callback;

    method SET_CAPS(%capnames) {
        $!caps := RegexCaptures.from-capnames(%capnames);
    }
    method SET_NFA($nfa) {
        $!nfa := self.'!hllize_nfa'($nfa);
    }
    method SET_ALT_NFA($name, $nfa) {
        nqp::ifnull(%!alt_nfas, %!alt_nfas := nqp::hash);
        %!alt_nfas{$name} := self.'!hllize_nfa'($nfa);
    }
    method SET_GENERIC_NFA($nfa) {
        $!generic_nfa := self.'!hllize_nfa'($nfa.save());
    }
    method !hllize_nfa($nfa) {
        sub hll_list($l) {
            if nqp::islist($l) {
                my @h_l := nqp::list;
                for $l -> $elem {
                    nqp::push(@h_l, hll_list($elem));
                }
                @h_l
            }
            else {
                $l
            }
        }
        hll_list($nfa)
    }
    method ADD_NESTED_CODE($code) {
        nqp::push(
          nqp::ifnull(@!nested_codes, @!nested_codes := nqp::list),
          $code
        )
    }
    method CAPS() { $!caps }
    method NFA()  { $!nfa  }

    method ALT_NFAS() { nqp::ifnull(%!alt_nfas, nqp::hash) }

    method ALT_NFA(str $name) {
        nqp::isnull(%!alt_nfas) ?? nqp::null !! nqp::atkey(%!alt_nfas, $name)
    }
    method NESTED_CODES() {
        nqp::ifnull(@!nested_codes, nqp::list)
    }

    method clone() {
        # Clone the underlying VM code ref.
        my $do  := nqp::clone($!do);

        # Clone and attach the code object.
        my $der := nqp::clone(self);
        nqp::bindattr($der, NQPRegex, '$!do', $do);
        nqp::setcodeobj($do, $der);

        # If needed, arrange for a fixup of the cloned code-ref.
        $!clone_callback($!do, $do, $der) unless nqp::isnull($!clone_callback);

        $der
    }

    my $nfa_type;
    method SET_NFA_TYPE($type) { $nfa_type := $type }
    method NFA_TYPE() { $nfa_type }

    method instantiate_generic($env) {
        if nqp::isnull($!generic_nfa) {
            self.clone;
        }
        else {
            my $ins := self.clone;
            nqp::bindattr($ins, NQPRegex, '$!nfa',
              $nfa_type.from_saved($!generic_nfa).instantiate_generic($env).save);
            nqp::bindattr($ins, NQPRegex, '$!generic_nfa', nqp::null);
            $ins
        }
    }
    method !set_name($name) { nqp::setcodename($!do, $name); }
    method name() { nqp::getcodename($!do) }
}
#?if !moar
nqp::setinvokespec(NQPRegex, NQPRegex, '$!do', nqp::null);
nqp::bindhllsym('default', 'NQPRegex', NQPRegex);
#?endif
nqp::setboolspec(NQPRegex, 5, nqp::null);
nqp::settypehll(NQPRegex, 'nqp');
