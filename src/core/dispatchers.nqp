#?if moar
nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-meth-call', -> $capture {
    # Try to find the method; complain if there's none found.
    my $obj := nqp::captureposarg($capture, 0);
    my str $name := nqp::captureposarg_s($capture, 1);
    my $meth := $obj.HOW.find_method($obj, $name);
    unless nqp::isconcrete($meth) {
        nqp::die("Method '$name' not found for invocant of class '{$obj.HOW.name($obj)}'");
    }

    # Establish a guard on the invocant type and method name (however the name
    # may well be a literal, in which case this is free).
    nqp::dispatch('boot-syscall', 'dispatcher-guard-type',
        nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0));
    nqp::dispatch('boot-syscall', 'dispatcher-guard-literal',
        nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 1));

    # Drop the first two arguments, which are the decontainerized invocant
    # and the method name. Then insert the resolved method and delegate to
    # nqp-call to invoke it.
    my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg',
        nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0),
        0);
    my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-obj',
        $args, 0, $meth);
    nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'nqp-call', $delegate);
});

nqp::dispatch('boot-syscall', 'dispatcher-register', 'nqp-call', -> $capture {
    # Guard on the type of the callee.
    my $track-callee := nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0);
    nqp::dispatch('boot-syscall', 'dispatcher-guard-type', $track-callee);

    # Go by callee type to decide how to invoke it.
    my $callee := nqp::captureposarg($capture, 0);
    if nqp::istype($callee, NQPRoutine) {
        # Routine, maybe multi.
        # TODO multi
        my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
            $track-callee, NQPRoutine, '$!do');
        my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
        my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
            $args, 0, $track-do);
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
            $delegate);
    }
    elsif nqp::istype($callee, NQPRegex) {
        # Regex, just unwrap the code handle and delegate.
        my $track-do := nqp::dispatch('boot-syscall', 'dispatcher-track-attr',
            $track-callee, NQPRegex, '$!do');
        my $args := nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0);
        my $delegate := nqp::dispatch('boot-syscall', 'dispatcher-insert-arg',
            $args, 0, $track-do);
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
            $delegate);
    }
    elsif nqp::iscoderef($callee) {
        # VM-level code handle.
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-code',
            $capture);
    }
    else {
        nqp::die("Cannot invoke object of type '{$callee.HOW.name($callee)}'");
    }
});
#?endif
