my knowhow NQPRoutine {
    has $!do;
    has $!signature;
    has $!dispatchees;
    has $!dispatch_cache;
    method add_dispatchee($code) {
        $!dispatchees.push($code);
    }
    method is_dispatcher() {
        !nqp::isnull($!dispatchees)
    }
    method derive_dispatcher() {
        my $der := pir::repr_clone__PP(self);
        nqp::bindattr($der, NQPRoutine, '$!dispatchees', pir::clone__PP($!dispatchees));
        $der
    }
}
pir::stable_publish_vtable_handler_mapping__vPP(NQPRoutine,
    nqp::hash('invoke', nqp::list(NQPRoutine, '$!do')));

my knowhow NQPSignature {
    has $!types;
    has $!definednesses;
}
