#?if moar
nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-meth-call', -> $capture {
    # Try to find the method; complain if there's none found.
    my $obj := nqp::captureposarg($capture, 0);
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
});

nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-call', -> $capture {
    # Guard on the type of the callee.
    my $track-callee := nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0);
    nqp::dispatch('boot-syscall', 'dispatcher-guard-type', $track-callee);

    # Go by callee type to decide how to invoke it.
    my $callee := nqp::captureposarg($capture, 0);
    if nqp::iscoderef($callee) {
        # VM-level code handle.
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
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
            $NQPRegexMethod := nqp::gethllsym('nqp', 'NQPRegexMethod');
            if nqp::istype($callee, $NQPRegexMethod) {
                $is-regex-method := 1;
            }
            else {
                my str $name := $callee.HOW.name($callee);
                if $name eq 'NQPRoutine' { $is-routine := 1 }
                elsif $name eq 'NQPRegex' { $is-regex := 1 }
            }
        }
        if $is-routine {
            # Routine, maybe multi.
            # TODO multi
            my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
                $track-callee, $callee.WHAT, '$!do');
            my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                $args, 0, $track-do);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
                $delegate);
        }
        elsif $is-regex {
            # Regex, just unwrap the code handle and delegate.
            my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
                $track-callee, $callee.WHAT, '$!do');
            my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                $args, 0, $track-do);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
                $delegate);
        }
        elsif $is-regex-method {
            # NQP regex method object.
            my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
                $track-callee, $NQPRegexMethod, '$!code');
            my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
            my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
                $args, 0, $track-do);
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
                $delegate);
        }
        else {
            nqp::die("Cannot invoke object of type '{$callee.HOW.name($callee)}'");
        }
    }
});
#?endif
