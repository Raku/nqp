#?if moar
nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-meth-call', -> $capture {
    # See if this callsite is heading megamorphic due to loads of different
    # method names; if so, we'll try to cope with that.
    my $obj := nqp::captureposarg($capture, 0);
    my int $cache-size := nqp::dispatch('boot-syscall', 'dispatcher-inline-cache-size');
    if $cache-size >= 4 && !nqp::dispatch('boot-syscall', 'capture-is-literal-arg', $capture, 1)
            && nqp::can($obj.HOW, 'mro') {
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'nqp-meth-call-mega', $capture);
    }
    else {
        # Try to find the method; complain if there's none found.
        my str $name := nqp::captureposarg_s($capture, 1);
        my $meth := $obj.HOW.find_method($obj, $name);
        if nqp::isconcrete($meth) {
            # Establish a guard on the invocant type and method name (however the name
            # may well be a literal, in which case this is free).
            nqp::dispatch('boot-syscall', 'dispatcher-guard-type',
                nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0));
            nqp::dispatch('boot-syscall', 'dispatcher-guard-literal',
                nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 1));

            # Drop the first two arguments, which are the decontainerized invocant
            # and the method name. Then insert the resolved method and delegate to
            # lang-call to invoke it (we may have other languages mixing into NQP
            # types and adding their methods).
            my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg',
                nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0),
                0);
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
                $args, 0, $meth);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'lang-call', $delegate);
        }
        else {
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'lang-meth-not-found', $capture);
        }
    }
});

nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-meth-call-mega', -> $capture {
    # When we have a megamorphic callsite due to loads of different method
    # names, we build a hash table of the methods.
    my $obj := nqp::captureposarg($capture, 0);
    my %lookup;
    for $obj.HOW.mro($obj) {
        for $_.HOW.method_table($_) {
            my str $name := $_.key;
            %lookup{$name} := $_.value unless nqp::existskey(%lookup, $name);
        }
    }

    # Make sure we really can find the method name; error if not.
    my str $name := nqp::captureposarg_s($capture, 1);
    if nqp::existskey(%lookup, $name) {
        # Guard on the type of the invocant.
        nqp::dispatch('boot-syscall', 'dispatcher-guard-type',
            nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0));

        # Do the lookup of the method; the lookup table gets stored as a constant,
        # and the dispatch fails in the event that the name is not found.
        my $track-name := nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 1);
        my $track-resolution := nqp::dispatch('boot-syscall', 'dispatcher-index-lookup-table',
            %lookup, $track-name);

        # Drop the first two arguments, which are the decontainerized invocant
        # and the method name. Then insert the resolved method and delegate to
        # lang-call to invoke it (we may have other languages mixing into NQP
        # types and adding their methods).
        my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg',
            nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0),
            0);
        my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
            $args, 0, $track-resolution);
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'lang-call', $delegate);
    }
    else {
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'lang-meth-not-found', $capture);
    }
});

nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-find-meth', -> $capture {
    # Guard on the invocant type and method name.
    nqp::dispatch('boot-syscall', 'dispatcher-guard-type',
        nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0));
    nqp::dispatch('boot-syscall', 'dispatcher-guard-literal',
        nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 1));

    # Try to find the method.
    my $obj := nqp::captureposarg($capture, 0);
    my str $name := nqp::captureposarg_s($capture, 1);
    my $meth := nqp::how_nd($obj).find_method($obj, $name);

    # If it's found, evaluate to it.
    if nqp::isconcrete($meth) {
        my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
            $capture, 0, $meth);
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-constant', $delegate);
    }

    # Otherwise, depends on exceptional flag whether we report the missing
    # method or hand back a null.
    else {
        nqp::dispatch('boot-syscall', 'dispatcher-guard-literal',
            nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 2));
        if nqp::captureposarg_i($capture, 2) {
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'lang-meth-not-found',
                nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0));
        }
        else {
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
                $capture, 0, nqp::null());
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-constant', $delegate);
        }
    }
});

nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-call', -> $capture {
    # Guard on the type of the callee.
    my $track-callee := nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0);
    nqp::dispatch('boot-syscall', 'dispatcher-guard-type', $track-callee);

    # Go by callee type to decide how to invoke it.
    my $callee := nqp::captureposarg($capture, 0);
    my int $code-constant := nqp::dispatch('boot-syscall', 'dispatcher-is-arg-literal',
        $capture, 0);
    if nqp::iscoderef($callee) {
        # VM-level code handle.
        nqp::dispatch('boot-syscall', 'dispatcher-delegate',
            $code-constant ?? 'boot-code-constant' !! 'boot-code',
            $capture);
    }
    else {
        # Normally we can go on the type objects, but due to the bootstrap,
        # we may be expected to dispatch for the compiling NQP version too,
        # thus the mildly deplorable string name workaround here.
        my $NQPRegexMethod;
        my int $is-routine := nqp::istype($callee, NQPRoutine);
        my int $is-regex := $is-routine ?? 0 !! nqp::istype($callee, NQPRegex);
        my int $is-regex-method;
        unless $is-routine || $is-regex {
            my str $name := $callee.HOW.name($callee);
            if $name eq 'NQPRoutine' { $is-routine := 1 }
            elsif $name eq 'NQPRegexMethod' {
                $NQPRegexMethod := $callee.WHAT;
                $is-regex-method := 1
            }
            elsif $name eq 'NQPRegex' {
                # Oddly we have two of these: one subclassing NQPRegexMethod
                # and another that is a KnowHOW and so has no parents.
                if nqp::can($callee.HOW, 'parents') {
                    my @parents := $callee.HOW.parents($callee, :local);
                    if @parents {
                        my $parent := @parents[0];
                        if $parent.HOW.name($parent) eq 'NQPRegexMethod' {
                            $NQPRegexMethod := $parent.WHAT;
                            $is-regex-method := 1
                        }
                    }
                }
                unless $is-regex-method {
                    $is-regex := 1
                }
            }
        }
        if $is-routine {
            # Routine, maybe multi.
            if nqp::isconcrete(nqp::getattr($callee, $callee.WHAT, '$!dispatchees')) {
                # Multiple dispatch; delegate to multi dispatcher.
                unless $code-constant {
                    my $track-dispatchees := nqp::dispatch('boot-syscall',
                        'dispatcher-track-attr', $track-callee, $callee.WHAT, '$!dispatchees');
                    nqp::dispatch('boot-syscall', 'dispatcher-guard-literal',
                        $track-dispatchees);
                }
                nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'nqp-multi', $capture);
            }
            else {
                # Non-multi call; run the underlying code reference.
                my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
                if $code-constant {
                    # It's a constant, so just extract the do and insert it as a
                    # constant also.
                    my $do := nqp::getattr($callee, $callee.WHAT, '$!do');
                    my $delegate := nqp::dispatch('boot-syscall',
                        'dispatcher-insert-arg-literal-obj', $args, 0, $do);
                    nqp::dispatch('boot-syscall', 'dispatcher-delegate',
                        'boot-code-constant', $delegate);
                }
                else {
                    # Not a constant, so need guards and attribute tracking.
                    my $track-dispatchees := nqp::dispatch('boot-syscall',
                        'dispatcher-track-attr', $track-callee, $callee.WHAT, '$!dispatchees');
                    nqp::dispatch('boot-syscall', 'dispatcher-guard-concreteness',
                        $track-dispatchees);
                    my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
                        $track-callee, $callee.WHAT, '$!do');
                    my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                        $args, 0, $track-do);
                    nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
                        $delegate);
                }
            }
        }
        elsif $is-regex {
            # Regex, just unwrap the code handle and delegate.
            my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
            if $code-constant {
                my $do := nqp::getattr($callee, $callee.WHAT, '$!do');
                my $delegate := nqp::dispatch('boot-syscall',
                    'dispatcher-insert-arg-literal-obj', $args, 0, $do);
                nqp::dispatch('boot-syscall', 'dispatcher-delegate',
                    'boot-code-constant', $delegate);
            }
            else {
                my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
                    $track-callee, $callee.WHAT, '$!do');
                my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                    $args, 0, $track-do);
                nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
                    $delegate);
            }
        }
        elsif $is-regex-method {
            # NQP regex method object.
            my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
            if $code-constant {
                my $code := nqp::getattr($callee, $NQPRegexMethod, '$!code');
                my $delegate := nqp::dispatch('boot-syscall',
                    'dispatcher-insert-arg-literal-obj', $args, 0, $code);
                nqp::dispatch('boot-syscall', 'dispatcher-delegate',
                    'boot-code-constant', $delegate);
            }
            else {
                my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
                    $track-callee, $NQPRegexMethod, '$!code');
                my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                    $args, 0, $track-do);
                nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
                    $delegate);
            }
        }
        else {
            nqp::die("Cannot invoke object of type '{$callee.HOW.name($callee)}'");
        }
    }
});

# The entrypoint to multiple dispatch figures out if we need to run the proto
# or not, and if so, makes that happen. Assuming the proto does decide to do
# the multi dispatch, we end up in nqp-multi-core.
nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-multi',
    # Initial dispatch
    -> $capture {
        # Check if it's an onlystar.
        my $callee := nqp::captureposarg($capture, 0);
        if nqp::getattr_i($callee, $callee.WHAT, '$!onlystar') {
            # It's an onlystar proto, so we don't need to run it, and can get
            # directly on with the dispatch.
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'nqp-multi-core', $capture);
        }
        else {
            # We need to run the proto, which will then resume. Set up this
            # capture as the resumption init state.
            nqp::dispatch('boot-syscall', 'dispatcher-set-resume-init-args', $capture);
            my $track-callee := nqp::dispatch('boot-syscall', 'dispatcher-track-arg',
                $capture, 0);
            my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
                $track-callee, $callee.WHAT, '$!do');
            my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                $args, 0, $track-do);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
                $delegate);
        }
    },
    # Resumption, used for handling non-onlystar protos
    -> $capture {
        # Continue the dispatch with the real args.
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'nqp-multi-core',
            nqp::dispatch('boot-syscall', 'dispatcher-get-resume-init-args'));
    });

# The core of the NQP multiple dispatch.
{
    my int $DEFINED_ONLY      := 1;
    my int $UNDEFINED_ONLY    := 2;
    sub is-narrower-type($a, $b) {
        # If one of the types is null, then we know that's automatically
        # wider than anything.
        if nqp::isnull($b) && !nqp::isnull($a) { 1 }
        elsif nqp::isnull($a) || nqp::isnull($b) { 0 }
        else { nqp::istype($a, $b) }
    }
    nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-multi-core', -> $capture {
        # Get list and number of candidates, triggering a sort if it needs doing.
        my $proto := nqp::captureposarg($capture, 0);
        my @candidates := nqp::getattr($proto, $proto.WHAT, '$!dispatch_order');
        if nqp::isnull(@candidates) {
            @candidates := $proto.sort_dispatchees();
            nqp::scwbdisable();
            nqp::bindattr($proto, $proto.WHAT, '$!dispatch_order', @candidates);
            nqp::scwbenable();
        }
        my int $num-candidates := nqp::elems(@candidates);

        # Obtain the argument capture to dispatch over and argument count.
        my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
        my int $num-args := nqp::captureposelems($args);

        # Go through candidates looking for the best one, if any.
        my int $cur-idx := 0;
        my @possibles;
        while 1 {
            my $cur-candidate := @candidates[$cur-idx];

            if nqp::isnull($cur-candidate) {
                # If we have some possible candidate(s), we're done in this loop.
                if nqp::elems(@possibles) {
                    last;
                }

                # Otherwise, we keep looping and looking, unless we really hit the end.
                if nqp::isnull(@candidates[++$cur-idx]) {
                    last;
                }
                else {
                    next;
                }
            }

            # Check if it's admissible by arity.
            if $num-args < $cur-candidate<min_arity> || $num-args > $cur-candidate<max_arity> {
                ++$cur-idx;
                next;
            }

            # Check if it's admissible by type.
            my int $type-check-count := $cur-candidate<num_types> > $num-args
                    ?? $num-args
                    !! $cur-candidate<num_types>;
            my int $type-mismatch := 0;
            my int $i := 0;
            while $i < $type-check-count {
                my $wanted-type := $cur-candidate<types>[$i];
                my $wanted-definedness := $cur-candidate<definednesses>[$i];
                if nqp::captureposprimspec($args, $i) == 0 {
                    # Object argument. Obtain it and check its type and definedness.
                    my $param := nqp::captureposarg($args, $i);
                    my $param-type := $param.WHAT;
                    unless nqp::eqaddr($param-type, $wanted-type) ||
                            nqp::isnull($wanted-type) ||
                            is-narrower-type($param-type, $wanted-type) {
                        $type-mismatch := 1;
                        last;
                    }
                    if $wanted-definedness {
                        # Have a constraint on the definedness.
                        my int $defined := nqp::isconcrete($param);
                        if (!$defined && $wanted-definedness == $DEFINED_ONLY) ||
                                ($defined && $wanted-definedness == $UNDEFINED_ONLY) {
                            $type-mismatch := 1;
                            last;
                        }
                    }
                }
                else {
                    # Native argument. NQP doesn't do multiple dispatch over the
                    # native types, so if there's a type constraint we'll reject
                    # it. Also if we require an undefined object.
                    if !nqp::isnull($wanted-type) || $wanted-definedness == $UNDEFINED_ONLY {
                        $type-mismatch := 1;
                        last;
                    }
                }
                $i++;
            }

            if $type-mismatch {
                ++$cur-idx;
                next;
            }

            # If we get here, it's an admissible candidate; add to list. */
            nqp::push(@possibles, $cur-candidate);
            ++$cur-idx;
        }

        if nqp::elems(@possibles) == 1 {
            # Found a matching candidate. Add guards on all object arguments.
            my int $i := 0;
            while $i < $num-args {
                if nqp::captureposprimspec($args, $i) == 0 {
                    my $track-arg := nqp::dispatch('boot-syscall', 'dispatcher-track-arg',
                            $args, $i);
                    nqp::dispatch('boot-syscall', 'dispatcher-guard-type', $track-arg);
                    nqp::dispatch('boot-syscall', 'dispatcher-guard-concreteness', $track-arg);
                }
                $i++;
            }

            # Invoke it.
            my $result := @possibles[0]<sub>;
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
                $args, 0, $result);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'nqp-call', $delegate);
        }
        elsif nqp::elems(@possibles) == 0 {
            nqp::die("No applicable candidates found to dispatch to for '" ~ $proto.name ~ "'.")
        }
        else {
            nqp::die("Ambiguous dispatch to multi '" ~ $proto.name ~ "'.")
        }
    });
}

# The istype fallback dispatcher, for when the type check cache cannot resolve
# the matter.
my $type-check-then-accepts-type := -> $obj, $type {
    my $obj_how := nqp::how_nd($obj);
    my $type_check := nqp::tryfindmethod($obj_how, 'type_check');
    my int $type_check_ok := nqp::isconcrete($type_check)
        ?? $type_check($obj_how, $obj, $type)
        !! 0;
    if $type_check_ok {
        1
    }
    else {
        my $type_how := nqp::how_nd($type);
        my $accepts_type := nqp::tryfindmethod($type_how, 'accepts_type');
        nqp::isconcrete($accepts_type)
            ?? $accepts_type($type_how, $type, $obj)
            !! nqp::die("Expected 'accepts_type' method, but none found in meta-object")
    }
}
nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-istype', -> $capture {
    # Obtain and guard on the type we're checking against.
    my $type := nqp::captureposarg($capture, 1);
    my $track-type := nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 1);
    nqp::dispatch('boot-syscall', 'dispatcher-guard-type', $track-type);

    # Go by typecheck mode.
    my int $mode := nqp::dispatch('boot-syscall', 'type-check-mode-flags', $type);
    my $obj := nqp::captureposarg($capture, 0);
    if $mode +& 1 || !nqp::dispatch('boot-syscall', 'has-type-check-cache', $obj) {
        # Need to produce a call to obj.HOW.type_check(obj, type), so long as
        # the method exists. However, will we also need to call accepts_type?
        nqp::dispatch('boot-syscall', 'dispatcher-guard-type',
            nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0));
        if $mode +& 2 {
            # Yes, so delegate to thunk.
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
                $capture, 0, $type-check-then-accepts-type);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code-constant',
                $delegate);
        }
        else {
            # No, so rewrite to type_check call.
            my $how := nqp::how_nd($obj);
            my $meth := $how.HOW.find_method($how, 'type_check');
            if nqp::isconcrete($meth) {
                my $with-how := nqp::dispatch('boot-syscall',
                    'dispatcher-insert-arg-literal-obj', $capture, 0, $how);
                my $delegate := nqp::dispatch('boot-syscall',
                    'dispatcher-insert-arg-literal-obj', $with-how, 0, $meth);
                nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'lang-call', $delegate);
            }
            else {
                my $delegate := nqp::dispatch('boot-syscall',
                    'dispatcher-insert-arg-literal-int', $capture, 0, 0);
                nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-constant', $delegate);
            }
        }
    }
    elsif $mode +& 2 {
        # Need to produce a call to type.HOW.accepts_type(type, obj) (note the
        # permutation of the arguments).
        my $how := nqp::how_nd($type);
        my $meth := $how.HOW.find_method($how, 'accepts_type');
        if nqp::isconcrete($meth) {
            my $permuted := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 1),
                0, $track-type);
            my $with-how := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
                $permuted, 0, $how);
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
                $with-how, 0, $meth);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'lang-call', $delegate);
        }
        else {
            nqp::die("Expected 'accepts_type' method, but none found in meta-object");
        }
    }
    else {
        nqp::die("Unknown type check mode $mode");
    }
});

# The isinvokable dispatcher, which checks if it's a known kind of NQP code object.
# A bit twisty thanks to bootstrapping.
nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-isinvokable', -> $capture {
    # Guard on the type of the object.
    my $track-callee := nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0);
    nqp::dispatch('boot-syscall', 'dispatcher-guard-type', $track-callee);

    # Now see if it's invokable. Note that VM code references should never make it
    # here, so long as lang-isinvokable was used, so we don't consider it. See
    # the nqp-call dispatcher for an explanation of the logic here.
    my $callee := nqp::captureposarg($capture, 0);
    my int $is-invokable := nqp::istype($callee, NQPRoutine) ||
        nqp::istype($callee, NQPRegex);
    unless $is-invokable {
        my str $name := $callee.HOW.name($callee);
        $is-invokable := $name eq 'NQPRoutine' || $name eq 'NQPRegexMethod' ||
            $name eq 'NQPRegex';
    }

    # Produce a constant result.
    my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-int',
        $capture, 0, $is-invokable);
    nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-constant', $delegate);
});
#?endif
