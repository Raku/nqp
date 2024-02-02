#?if moar
#- nqp-meth-call ---------------------------------------------------------------
# Dispatch method calls by name.  Expects the decontainerized invocant and
# the method name as the first 2 arguments: the rest are arguments to the
# actual method call.
nqp::register('nqp-meth-call', -> $capture {
    # See if this callsite is heading megamorphic due to loads of different
    # method names; if so, we'll try to cope with that
    my $obj := nqp::captureposarg($capture, 0);
    my $how := nqp::how_nd($obj);
    my int $cache-size := nqp::syscall('dispatcher-inline-cache-size');
    my str $delegate   := 'lang-call';  # preset most common case

    if $cache-size >= 8
      && nqp::istype($how, nqp::getcurhllsym('NQPClassHOW')) {
        # We determine it is megamorphic in type if either the name is
        # literal (so only the type could be varying) or it's non-literal
        # but we have at # least 16 entries (meaning it is likely megamorphic
        # in name *and* type)
        $delegate := $cache-size >= 16
          || nqp::syscall('capture-is-literal-arg', $capture, 1)
          ?? 'nqp-meth-call-mega-type'
          !! 'nqp-meth-call-mega-name';
    }
    else {
        # Try to find the method; complain if there's none found.
        my $meth := $how.find_method($obj, nqp::captureposarg_s($capture, 1));

        if nqp::isconcrete($meth) {
            # Establish a guard on the invocant type and method name
            # (however the name may well be a literal, in which case
            # this is free)
            nqp::guard('type',    nqp::track('arg', $capture, 0));
            nqp::guard('literal', nqp::track('arg', $capture, 1));

            # Drop the first two arguments, which are the decontainerized
            # invocant and the method name. Then insert the resolved method
            # and delegate to lang-call to invoke it (we may have other
            # languages mixing into NQP types and adding their methods).
            $capture  := nqp::syscall('dispatcher-insert-arg-literal-obj',
              nqp::syscall('dispatcher-drop-n-args',$capture, 0, 2), 0, $meth
            );
        }

        # Unknown method
        else {
            $delegate := 'lang-meth-not-found';
        }
    }

    # Actually delegate
    nqp::delegate($delegate, $capture);
});

#- nqp-meth-call-mega-name -----------------------------------------------------
# Internal helper dispatch logic for nqp-meth-call in case the call-site
# is mega-morphic on the method name, with same arguments as nqp-meth-call.
nqp::register('nqp-meth-call-mega-name', -> $capture {
    my $obj    := nqp::captureposarg($capture, 0);
    my %lookup := nqp::how_nd($obj).all_method_table($obj);
    my str $delegate := 'lang-call';  # preset most common case

    # Make sure we really can find the method name; error if not.
    if nqp::isconcrete(nqp::atkey(%lookup, nqp::captureposarg_s($capture,1))) {
        # Guard on the type of the invocant.
        nqp::guard('type', nqp::track('arg', $capture, 0));

        # Do the lookup of the method. The flat table is stored at the
        # callsite.  Guard that we get a concrete value back from the
        # lookup - that is, a method was found.
        my $Tresolution := nqp::syscall('dispatcher-index-lookup-table',
          %lookup,
          nqp::track('arg', $capture, 1)
        );
        nqp::guard('concreteness', $Tresolution);

        # Drop the first two arguments, which are the decontainerized
        # invocant and the method name. Then insert the resolved method
        # and delegate to lang-call to invoke it (we may have other
        # languages mixing into NQP types and adding their methods).
        $capture  := nqp::syscall('dispatcher-insert-arg',
          nqp::syscall('dispatcher-drop-n-args',$capture,0,2), 0, $Tresolution
        );
    }
    else {
        $delegate := 'lang-meth-not-found';
    }

    # Actually delegate
    nqp::delegate($delegate, $capture);
});

#- nqp-meth-call-mega-type -----------------------------------------------------
# Internal helper dispatch logic for nqp-meth-call in case the call-site
# is mega-morphic on the invocant type, with same arguments as nqp-meth-call.
# Make sure the type has a lookup table, and ensure the method exists. If it
# does not have a method table then we will not install this dispatcher; we
# may already have a type megamorphic handler in place and only missed it
# because we temporarily lacked the calculated flattened method table. This
# avoids us stacking up the same program repeatedly at the callsite.
nqp::register('nqp-meth-call-mega-type', -> $capture {
    my $obj := nqp::captureposarg($capture, 0);
    my $how := nqp::how_nd($obj);
    my $class-how := nqp::getcurhllsym('NQPClassHOW');

    # Don't bother if no lookup
    nqp::syscall('dispatcher-do-not-install')
      unless nqp::isconcrete(
               nqp::getattr($how, $class-how, '$!cached_all_method_table')
             );

    my str $delegate := 'lang-call';  # preset most common case
    if nqp::isconcrete(nqp::atkey(
      $how.all_method_table($obj), nqp::captureposarg_s($capture, 1)
    )) {
        # It exists. We'll set up a dispatch program that tracks the HOW of
        # the type, looks up the cached method table on it, and then tracks
        # the resolution of the method
        my $Tobj := nqp::track('arg', $capture, 0);
        my $Tresolution := nqp::syscall(
          'dispatcher-index-tracked-lookup-table',
          nqp::track('attr',
            nqp::track('how', $Tobj), $class-how, '$!cached_all_method_table'
          ),
          nqp::track('arg', $capture, 1)
        );

        # This is only a valid dispatch program if the method is found. (If
        # not, we'll run this again to report the error.)
        nqp::guard('concreteness', $Tresolution);

        # Drop the first two arguments, which are the decontainerized invocant
        # and the method name. Then insert the resolved method and delegate to
        # lang-call to invoke it (we may have other languages mixing into NQP
        # types and adding their methods).
        $capture := nqp::syscall('dispatcher-insert-arg',
          nqp::syscall('dispatcher-drop-n-args',$capture,0,2), 0, $Tresolution
        );
    }
    else {
        $delegate := 'lang-meth-not-found';
    }

    # Actually delegate
    nqp::delegate($delegate, $capture);
});

#- nqp-find-meth ---------------------------------------------------------------
# Dispatcher to produce a method object for the given decontainerized invocant,
# a method name, and an integer flag to indicate to throw an exception if not
# found.  Checks if this callsite is going megamorphic and do a fallback if so.
# We only do this in the non-exceptional case.
nqp::register('nqp-find-meth', -> $capture {
    my $obj := nqp::captureposarg($capture, 0);
    my $how := nqp::how_nd($obj);
    my int $cache-size := nqp::syscall('dispatcher-inline-cache-size');
    my int $throw-exception := nqp::captureposarg_i($capture, 2);
    my str $delegate := 'boot-constant';  # preset the common case

    if $cache-size >= 8
      && !$throw-exception
      && nqp::istype($how, nqp::getcurhllsym('NQPClassHOW')) {
        # We determine it is megamorphic in type if either the name is literal
        # (so only the type could be varying) or it's non-literal but we have
        # at least 16 entries (meaning it is likely megamorphic in name *and*
        # type)
        $delegate := $cache-size >= 16
          || nqp::syscall('capture-is-literal-arg', $capture, 1)
          ?? 'nqp-find-meth-mega-type'
          !! 'nqp-find-meth-mega-name';
    }
    else {
        # Guard on the invocant type and method name
        nqp::guard('type', nqp::track('arg', $capture, 0));
        nqp::guard('literal', nqp::track('arg', $capture, 1));

        # Try to find the method
        my str $name := nqp::captureposarg_s($capture, 1);
        my $meth := $how.find_method($obj, $name);

        # If it's found, evaluate to it
        if nqp::isconcrete($meth) {
            $capture := nqp::syscall('dispatcher-insert-arg-literal-obj',
              $capture, 0, $meth
            );
        }

        # Otherwise, depends on exceptional flag whether we report the missing
        # method or hand back a null.
        else {
            nqp::guard('literal', nqp::track('arg', $capture, 2));
            if $throw-exception {
                $delegate := 'lang-meth-not-found';
                $capture := nqp::syscall('dispatcher-drop-arg', $capture, 0);
            }
            else {
                $capture := nqp::syscall('dispatcher-insert-arg-literal-obj',
                  $capture, 0, nqp::null
                );
            }
        }
    }

    # Actually delegate
    nqp::delegate($delegate, $capture);
});

#- nqp-find-meth-mega-name -----------------------------------------------------
# Internal dispatcher used by nqp-find-meth, with the same arguments, in the
# case of being mega-morphic on method name.
nqp::register('nqp-find-meth-mega-name', -> $capture {
    # Always guard on the exception mode (which should always be false, since we
    # don't handle it here) and also the type.
    nqp::guard('type', nqp::track('arg', $capture, 0));
    nqp::guard('literal', nqp::track('arg', $capture, 2));

    # When we have a megamorphic callsite due to loads of different method
    # names, we build a hash table of the methods.
    # Do the lookup of the method; the lookup table gets stored as a constant
    # at the callsite. If it's not found, the outcome will be a null, which
    # is exactly what we want.
    my $obj := nqp::captureposarg($capture, 0);
    nqp::delegate('boot-value',
      nqp::syscall('dispatcher-insert-arg', $capture, 0,
        nqp::syscall('dispatcher-index-lookup-table',
          nqp::how_nd($obj).all_method_table($obj),
          nqp::track('arg', $capture, 1),
        )
      )
    );
});

#- nqp-find-meth-mega-type -----------------------------------------------------
# Internal dispatcher used by nqp-find-meth, with the same arguments, in the
# case of being mega-morphic on invocant type.
nqp::register('nqp-find-meth-mega-type', -> $capture {
    # Always guard on the exception mode (which should always be false, since
    # we don't handle it here).
    nqp::guard('literal', nqp::track('arg', $capture, 2));

    # Make sure that we have a method table build for this type (but we
    # don't actually need the table itself)
    my $obj := nqp::captureposarg($capture, 0);
    my $how := nqp::how_nd($obj);
    $how.all_method_table($obj);

    # Don't bother if no lookup
    my $class-how := nqp::getcurhllsym('NQPClassHOW');
    nqp::syscall('dispatcher-do-not-install')
      unless nqp::isconcrete(
               nqp::getattr($how, $class-how, '$!cached_all_method_table')
             );

    # Track the HOW and then the attribute holding the table.  Do the lookup
    # of the method in the table we found in the meta-object. If it's not
    # found, the outcome will be a null, which is exactly what we want
    nqp::track('arg', $capture, 0);
    nqp::delegate('boot-value',
      nqp::syscall('dispatcher-insert-arg', $capture, 0,
        nqp::syscall('dispatcher-index-tracked-lookup-table',
          nqp::track('attr',
            nqp::track('how', nqp::track('arg', $capture, 0)),
            $class-how,
            '$!cached_all_method_table'
          ),
          nqp::track('arg', $capture, 1)
        )
      )
    );
});

#- nqp-call --------------------------------------------------------------------
# Dispatcher for calling a routine with given arguments
nqp::register('nqp-call', -> $capture {
    # Guard on the type of the callee.
    my $Tcallee := nqp::track('arg', $capture, 0);
    nqp::guard('type', $Tcallee);

    # Go by callee type to decide how to invoke it.
    my $callee := nqp::captureposarg($capture, 0);
    my int $literal := nqp::syscall('dispatcher-is-arg-literal', $capture, 0);
    my str $delegate := $literal ?? 'boot-code-constant' !! 'boot-code';

    # Not a VM-level code handle
    unless nqp::iscoderef($callee) {

        # Normally we can go on the type objects, but due to the bootstrap,
        # we may be expected to dispatch for the compiling NQP version too,
        # thus the mildly deplorable string name workaround here.
        my int $is-routine := nqp::istype($callee, NQPRoutine);
        my int $is-regex := $is-routine ?? 0 !! nqp::istype($callee, NQPRegex);
        my $regex-what := nqp::null;  # also regex method flag
        my $how := $callee.HOW;
        my $what:= $callee.WHAT;

        # Probably in bootstrap, so attempt to determine by name
        unless $is-routine || $is-regex {
            my str $name := $how.name($callee);

            if $name eq 'NQPRoutine' {
                $is-routine := 1
            }
            elsif $name eq 'NQPRegexMethod' {
                $regex-what := $what;
            }
            elsif $name eq 'NQPRegex' {
                # Oddly we have two of these: one subclassing NQPRegexMethod
                # and another that is a KnowHOW and so has no parents.
                if nqp::can($how, 'parents') {
                    my $parent  := $how.parents($callee, :local)[0];
                    $regex-what := $parent.WHAT
                      if !nqp::isnull($parent)
                      && $parent.HOW.name($parent) eq 'NQPRegexMethod';
                }
                $is-regex := nqp::isnull($regex-what);
            }
        }

        # Got a ordinary routine, maybe a multi
        if $is-routine {
            if nqp::isconcrete(nqp::getattr($callee, $what, '$!dispatchees')) {
                # Multiple dispatch; delegate to multi dispatcher
                nqp::guard('literal',
                  nqp::track('attr', $Tcallee, $what, '$!dispatchees')
                ) unless $literal;
                $delegate := 'nqp-multi';
            }

            # It's a constant, so just extract the do and insert it as a
            # constant also
            elsif $literal {
                $capture := nqp::syscall('dispatcher-replace-arg-literal-obj',
                  $capture, 0, nqp::getattr($callee, $what, '$!do')
                );
            }

            # Not a constant, so need guards and attribute tracking
            else {
                nqp::guard('concreteness',
                  nqp::track('attr', $Tcallee, $what, '$!dispatchees')
                );
                $capture := nqp::syscall('dispatcher-replace-arg',
                  $capture, 0, nqp::track('attr', $Tcallee, $what, '$!do')
                );
            }
        }

        # Regex, just unwrap the code handle and delegate
        elsif $is-regex {
            $capture := $literal
              ?? nqp::syscall('dispatcher-replace-arg-literal-obj',
                   $capture, 0, nqp::getattr($callee, $what, '$!do')
                 )
              !! nqp::syscall('dispatcher-replace-arg',
                   $capture, 0, nqp::track('attr', $Tcallee, $what, '$!do')
                 );
        }

        # NQP regex method object
        elsif !nqp::isnull($regex-what) {
            $capture := $literal
              ?? nqp::syscall('dispatcher-replace-arg-literal-obj',
                   $capture, 0, nqp::getattr($callee, $regex-what, '$!code')
                 )
              !! nqp::syscall('dispatcher-replace-arg', $capture, 0,
                   nqp::track('attr', $Tcallee, $regex-what, '$!code')
                 );
        }
        else {
            nqp::die("Cannot invoke object of type '"
              ~ $how.name($callee)
              ~ "'"
            );
        }
    }

    # The actual delegation
    nqp::delegate($delegate, $capture);
});

#- nqp-multi -------------------------------------------------------------------
# Internal dispatcher: the entrypoint to multiple dispatch figures out if we
# need to run the proto or not, and if so, makes that happen. Assuming the
# proto does decide to do the multi dispatch, we end up in nqp-multi-core.
nqp::register('nqp-multi',
    # Initial dispatch
    -> $capture {
        # Check if it's an onlystar.
        my $callee := nqp::captureposarg($capture, 0);
        my $what   := $callee.WHAT;
        my str $delegate := 'nqp-multi-core';  # preset common case

        # Not an onlystar proto, so we need to run it, which will then
        # resume. Set up this capture as the resumption init state.
        unless nqp::getattr_i($callee, $what, '$!onlystar') {
            nqp::syscall('dispatcher-set-resume-init-args', $capture);

            $delegate := 'boot-code';
            $capture := nqp::syscall('dispatcher-replace-arg',
              $capture, 0, nqp::track('attr',
                nqp::track('arg', $capture, 0), $what, '$!do'
              )
            );
        }

        nqp::delegate($delegate, $capture);
    },
    # Resumption, used for handling non-onlystar protos
    -> $capture {
        # Continue the dispatch with the real args.
        nqp::delegate('nqp-multi-core',
          nqp::syscall('dispatcher-get-resume-init-args')
        );
    }
);

#- nqp-multi-core --------------------------------------------------------------
# Internal dispatcher containing the core of the NQP multiple dispatch.
my int $DEFINED_ONLY   := 1;
my int $UNDEFINED_ONLY := 2;
# If one of the types is null, then we know that's automatically
# wider than anything.
sub is-narrower-type($a, $b) {
    nqp::isnull($b) && !nqp::isnull($a)
      ?? 1
      !! nqp::isnull($a) || nqp::isnull($b)
        ?? 0
        !! nqp::istype($a, $b)
}

# The actual multi dispatch dispatcher, taking the proto as the first
# argument, and a capture of any arguments.
nqp::register('nqp-multi-core', -> $capture {
    # Get list and number of candidates, triggering a sort if it needs doing.
    my $proto := nqp::captureposarg($capture, 0);
    my $what  := $proto.WHAT;

    my @candidates := nqp::getattr($proto, $what, '$!dispatch_order');
    if nqp::isnull(@candidates) {
        @candidates := $proto.sort_dispatchees;
        nqp::scwbdisable();
        nqp::bindattr($proto, $what, '$!dispatch_order', @candidates);
        nqp::scwbenable();
    }
    my int $num-candidates := nqp::elems(@candidates);

    # Obtain the argument capture to dispatch over and argument count.
    my $args := nqp::syscall('dispatcher-drop-arg', $capture, 0);
    my int $num-args := nqp::captureposelems($args);

    # Go through candidates looking for the best one, if any.
    my int $cur-idx := 0;
    my @possibles;
    while 1 {
        my $cur-candidate := @candidates[$cur-idx];

        if nqp::isnull($cur-candidate) {
            # If we have some possible candidate(s), we're done in this loop.
            # Otherwise, we keep looping and looking, unless we really hit the
            # end
            nqp::elems(@possibles) || nqp::isnull(@candidates[++$cur-idx])
              ?? last
              !! next;
        }

        # Check if it's admissible by arity.
        if $num-args < $cur-candidate<min_arity>
          || $num-args > $cur-candidate<max_arity> {
            ++$cur-idx;
            next;
        }

        # Check if it's admissible by type.
        my int $type-check-count := $cur-candidate<num_types> > $num-args
          ?? $num-args
          !! $cur-candidate<num_types>;
        my int $type-ok := 1;
        my int $i := -1;
        while $type-ok && ++$i < $type-check-count {
            my $wanted-type := $cur-candidate<types>[$i];
            my $wanted-definedness := $cur-candidate<definednesses>[$i];

            # Native argument. NQP doesn't do multiple dispatch over the
            # native types, so if there's a type constraint we'll reject
            # it. Also if we require an undefined object.
            if nqp::captureposprimspec($args, $i) {
                if !nqp::isnull($wanted-type)
                  || $wanted-definedness == $UNDEFINED_ONLY {
                    $type-ok := 0;
                }
            }

            # Object argument. Obtain it and check its type and definedness.
            else {
                my $param := nqp::captureposarg($args, $i);
                my $param-type := $param.WHAT;
                unless nqp::eqaddr($param-type, $wanted-type)
                  || nqp::isnull($wanted-type)
                  || is-narrower-type($param-type, $wanted-type) {
                    $type-ok := 0;
                }

                if $wanted-definedness {
                    # Have a constraint on the definedness.
                    my int $defined := nqp::isconcrete($param);
                    if (!$defined && $wanted-definedness == $DEFINED_ONLY)
                      || ($defined && $wanted-definedness == $UNDEFINED_ONLY) {
                        $type-ok := 0;
                    }
                }
            }
        }

        # Add to list as an admissible candidate unless there was a
        # type mismatch
        nqp::push(@possibles, $cur-candidate) if $type-ok;
        ++$cur-idx;
    }

    if nqp::elems(@possibles) == 1 {
        # Found a matching candidate. Add guards on all object arguments.
        my int $i := -1;
        while ++$i < $num-args {
            unless nqp::captureposprimspec($args, $i) {
                my $Targ := nqp::track('arg', $args, $i);
                nqp::guard('type', $Targ);
                nqp::guard('concreteness', $Targ);
            }
        }

        # Invoke it as if it was a routine
        nqp::delegate('nqp-call',
          nqp::syscall('dispatcher-insert-arg-literal-obj',
            $args, 0, @possibles[0]<sub>
          )
        );
    }
    else {
        my str $name := $proto.name;
        nqp::die(nqp::elems(@possibles)
          ?? "Ambiguous dispatch to multi '$name'."
          !! "No applicable candidates found to dispatch to for '$name'."
        );
    }
});

#- nqp-istype ------------------------------------------------------------------
# The istype fallback dispatcher, for when the type check cache cannot
# resolve the matter.
my $type-check-then-accepts-type := -> $obj, $type {
    my $obj_how    := nqp::how_nd($obj);
    my $type_check := nqp::tryfindmethod($obj_how, 'type_check');

    if nqp::isconcrete($type_check) && $type_check($obj_how, $obj, $type) {
        1
    }
    else {
        my $type_how     := nqp::how_nd($type);
        my $accepts_type := nqp::tryfindmethod($type_how, 'accepts_type');
        nqp::isconcrete($accepts_type)
          ?? $accepts_type($type_how, $type, $obj)
          !! nqp::die("Expected 'accepts_type' method, but none found in meta-object")
    }
}

# Type checker that uses the typecheck mode flags
my $nqp-istype-mega := -> $obj, $type {
    my $found;

    if nqp::syscall('type-check-mode-flags', $obj) +& 1
      || !nqp::syscall('has-type-check-cache', $obj) {
        my $obj-how    := nqp::how_nd($obj);
        my $type-check := nqp::tryfindmethod($obj-how, 'type_check');

        $found := nqp::isconcrete($type-check)
          && $type-check($obj-how, $obj, $type);
    }

    if !$found && nqp::syscall('type-check-mode-flags', $type) +& 2 {
        my $type-how     := nqp::how_nd($type);
        my $accepts-type := nqp::tryfindmethod($type-how, 'accepts_type');
        $found := nqp::isconcrete($accepts-type)
          ?? $accepts-type($type-how, $type, $obj)
          !! nqp::die(
               "Expected 'accepts_type' method, but none found in meta-object"
             )
    }

    nqp::istrue($found)
}

# The actual dispatcher for type-checking dispatcher, taking the object and
# type as arguments.
nqp::register('nqp-istype', -> $capture {
    my str $delegate := 'lang-call';  # preset the common case

    # If this site is heading megamorphic, then fall back to a general path
    if nqp::syscall('dispatcher-inline-cache-size') >= 8 {
        $delegate := 'boot-code-constant';
        $capture  := nqp::syscall('dispatcher-insert-arg-literal-obj',
          $capture, 0, $nqp-istype-mega
        );
    }
    else {
        # Obtain and type guard on the object and type we're checking.
        nqp::guard('type', nqp::track('arg', $capture, 0));
        my $Ttype := nqp::track('arg', $capture, 1);
        nqp::guard('type', $Ttype);

        # First go by typecheck mode
        my $obj  := nqp::captureposarg($capture, 0);
        my $type := nqp::captureposarg($capture, 1);
        my int $type-mode := nqp::syscall('type-check-mode-flags', $type);

        # Need to produce a call to obj.HOW.type_check(obj, type), if
        # the method exists. However, will we also need to call
        # accepts_type?
        if nqp::syscall('type-check-mode-flags', $obj) +& 1
          || !nqp::syscall('has-type-check-cache', $obj) {

            # Yes, so delegate to thunk
            if $type-mode +& 2 {
                $delegate := 'boot-code-constant';
                $capture  := nqp::syscall('dispatcher-insert-arg-literal-obj',
                  $capture, 0, $type-check-then-accepts-type
                );
            }

            # No, so rewrite to type_check call
            else {
                my $how  := nqp::how_nd($obj);
                my $meth := $how.HOW.find_method($how, 'type_check');
                if nqp::isconcrete($meth) {
                    $capture := nqp::syscall(
                      'dispatcher-insert-arg-literal-obj',
                      nqp::syscall('dispatcher-insert-arg-literal-obj',
                        $capture, 0, $how
                      ), 0, $meth
                    );
                }
                else {
                    $delegate := 'boot-constant';
                    $capture  := nqp::syscall(
                      'dispatcher-insert-arg-literal-int', $capture, 0, 0
                    );
                }
            }
        }

        # Need to produce a call to type.HOW.accepts_type(type, obj) (note
        # the permutation of the arguments) if that method can be found
        elsif $type-mode +& 2 {
            my $how  := nqp::how_nd($type);
            my $meth := $how.HOW.find_method($how, 'accepts_type');

            nqp::isconcrete($meth)
              ?? ($capture := nqp::syscall('dispatcher-insert-arg-literal-obj',
                   nqp::syscall('dispatcher-insert-arg-literal-obj',
                     nqp::syscall('dispatcher-insert-arg',
                       nqp::syscall('dispatcher-drop-arg', $capture, 1),
                       0, $Ttype
                     ),
                     0, $how
                   ),
                   0, $meth
                 ))
              !! nqp::die("Expected 'accepts_type' method, but none found in meta-object");
        }

        # No cache and no additional ways to check, so answer no
        else {
            $delegate := 'boot-constant';
            $capture  := nqp::syscall('dispatcher-insert-arg-literal-int',
              $capture, 0, 0
            );
        }
    }

    nqp::delegate($delegate, $capture);
});

#- nqp-isinvokable -------------------------------------------------------------
# Checks whether the given object is a known kind of NQP codeobject.
# A bit twisty thanks to bootstrapping issues.
nqp::register('nqp-isinvokable', -> $capture {
    # Guard on the type of the object
    nqp::guard('type', nqp::track('arg', $capture, 0));

    # Now see if it's invokable. Note that VM code references should never
    # make it here, so long as lang-isinvokable was used, so we don't
    # consider it. See the nqp-call dispatcher for an explanation of the
    # logic here
    my $callee := nqp::captureposarg($capture, 0);
    my int $is-invokable := nqp::istype_nd($callee, NQPRoutine)
      || nqp::istype_nd($callee, NQPRegex);

    # Huh? Assume bootstrapping, so check by name
    unless $is-invokable {
        my str $name := nqp::how_nd($callee).name($callee);
        $is-invokable := $name eq 'NQPRoutine'
          || $name eq 'NQPRegexMethod'
          || $name eq 'NQPRegex';
    }

    # Produce a constant result
    nqp::delegate('boot-constant',
      nqp::syscall('dispatcher-insert-arg-literal-int',
        $capture, 0, $is-invokable
      )
    );
});
#?endif
