my knowhow NQPRoutine {
    has $!do;
    has $!signature;
    has $!dispatchees;
    has $!dispatch_cache;
    method add_dispatchee($code) {
        $!dispatch_cache := nqp::null();
        $!dispatchees.push($code);
    }
    method is_dispatcher() {
        nqp::defined($!dispatchees)
    }
    method derive_dispatcher() {
        # Clone the underlying VM code ref.
        my $do  := nqp::clone($!do);
        
        # Clone and attach the code object.
        my $der := pir::repr_clone__PP(self);
        nqp::bindattr($der, NQPRoutine, '$!do', $do);
        nqp::bindattr($der, NQPRoutine, '$!dispatchees', nqp::clone($!dispatchees));
        pir::set_sub_code_object__vPP($do, $der);
        
        # If needed, arrange for a fixup of the cloned code-ref.
        my $clone_callback := pir::getprop__PPs($!do, 'CLONE_CALLBACK');
        if nqp::defined($clone_callback) {
            $clone_callback($!do, $do, $der);
        }
        
        $der
    }
    method clone() {
        # Clone the underlying VM code ref.
        my $do  := nqp::clone($!do);
        
        # Clone and attach the code object.
        my $der := pir::repr_clone__PP(self);
        nqp::bindattr($der, NQPRoutine, '$!do', $do);
        pir::set_sub_code_object__vPP($do, $der);
        
        # If needed, arrange for a fixup of the cloned code-ref.
        my $clone_callback := pir::getprop__PPs($!do, 'CLONE_CALLBACK');
        if nqp::defined($clone_callback) {
            $clone_callback($!do, $do, $der);
        }
        
        $der
    }
    method nqpattr($key) {
        $!do.nqpattr($key)
    }
    method !set_name($name) {
        pir::assign__0Ps($!do, $name);
    }
}
pir::stable_publish_vtable_handler_mapping__vPP(NQPRoutine,
    nqp::hash(
        'invoke', nqp::list(NQPRoutine, '$!do'),
        'get_string', nqp::list(NQPRoutine, '$!do')));
pir::set_boolification_spec__0PiP(NQPRoutine, 5, nqp::null());

my knowhow NQPSignature {
    has $!types;
    has $!definednesses;
}

my knowhow NQPRegex {
    has $!do;
    has $!caps;
    has $!nfa;
    has %!alt_nfas;
    method nqpattr($key) {
        $!do.nqpattr($key)
    }
    method SET_CAPS($caps) {
        $!caps := $caps;
    }
    method SET_NFA($nfa) {
        $!nfa := $nfa;
    }
    method SET_ALT_NFA($name, $nfa) {
        nqp::ifnull(%!alt_nfas, %!alt_nfas := {});
        %!alt_nfas{$name} := $nfa;
    }
    method CAPS() {
        $!caps
    }
    method NFA() {
        $!nfa
    }
    method ALT_NFA($name) {
        %!alt_nfas{$name}
    }
}
pir::stable_publish_vtable_handler_mapping__vPP(NQPRegex,
    nqp::hash(
        'invoke', nqp::list(NQPRegex, '$!do'),
        'get_string', nqp::list(NQPRegex, '$!do')));
pir::set_boolification_spec__0PiP(NQPRegex, 5, nqp::null());
