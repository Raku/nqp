my knowhow NQPRoutine {
    has $!do;
    has $!signature;
    has $!dispatchees;
    has $!dispatch_cache;
    method add_dispatchee($code) {
        $!dispatch_cache := nqp::null();
        nqp::push($!dispatchees, $code);
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
        nqp::setcodeobj($do, $der);
        
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
        nqp::setcodeobj($do, $der);
        
        # If needed, arrange for a fixup of the cloned code-ref.
        my $clone_callback := pir::getprop__PPs($!do, 'CLONE_CALLBACK');
        if nqp::defined($clone_callback) {
            $clone_callback($!do, $do, $der);
        }
        
        $der
    }
    method !set_name($name) {
        nqp::setcodename($!do, $name);
    }
}
nqp::setinvokespec(NQPRoutine, NQPRoutine, '$!do', nqp::null);
nqp::setboolspec(NQPRoutine, 5, nqp::null());
pir::stable_publish_vtable_handler_mapping__vPP(NQPRoutine,
    nqp::hash('get_string', nqp::list(NQPRoutine, '$!do')));

my knowhow NQPSignature {
    has $!types;
    has $!definednesses;
}

my knowhow NQPRegex {
    has $!do;
    has $!caps;
    has $!nfa;
    has %!alt_nfas;
    has $!generic_nfa;
    has @!nested_codes;
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
    method SET_GENERIC_NFA($nfa) {
        $!generic_nfa := $nfa.save();
    }
    method ADD_NESTED_CODE($code) {
        nqp::ifnull(@!nested_codes, @!nested_codes := nqp::list());
        nqp::push(@!nested_codes, $code);
    }
    method CAPS() {
        $!caps
    }
    method NFA() {
        $!nfa
    }
    method ALT_NFAS() {
        nqp::isnull(%!alt_nfas) ?? nqp::hash() !! %!alt_nfas
    }
    method ALT_NFA(str $name) {
        nqp::isnull(%!alt_nfas) ?? nqp::null() !! %!alt_nfas{$name}
    }
    method NESTED_CODES() {
        nqp::isnull(@!nested_codes) ?? nqp::list() !! @!nested_codes
    }
    method clone() {
        # Clone the underlying VM code ref.
        my $do  := nqp::clone($!do);
        
        # Clone and attach the code object.
        my $der := pir::repr_clone__PP(self);
        nqp::bindattr($der, NQPRegex, '$!do', $do);
        nqp::setcodeobj($do, $der);
        
        # If needed, arrange for a fixup of the cloned code-ref.
        my $clone_callback := pir::getprop__PPs($!do, 'CLONE_CALLBACK');
        if nqp::defined($clone_callback) {
            $clone_callback($!do, $do, $der);
        }
        
        $der
    }
    my $nfa_type;
    method SET_NFA_TYPE($type) {
        $nfa_type := $type;
    }
    method instantiate_generic($env) {
        if nqp::isnull($!generic_nfa) {
            self
        }
        else {
            my $ins := self.clone();
            nqp::bindattr($ins, NQPRegex, '$!nfa',
                $nfa_type.from_saved($!generic_nfa).instantiate_generic($env).save());
            nqp::bindattr($ins, NQPRegex, '$!generic_nfa', nqp::null());
            $ins
        }
    }
    method !set_name($name) {
        nqp::setcodename($!do, $name);
    }
}
nqp::setinvokespec(NQPRegex, NQPRegex, '$!do', nqp::null);
nqp::setboolspec(NQPRegex, 5, nqp::null());
pir::stable_publish_vtable_handler_mapping__vPP(NQPRegex,
    nqp::hash('get_string', nqp::list(NQPRegex, '$!do')));
