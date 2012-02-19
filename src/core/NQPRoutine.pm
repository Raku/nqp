my knowhow NQPRoutine {
    has $!do;
    has $!signature;
    has $!dispatchees;
    has $!dispatch_cache;
    method add_dispatchee($code) {
        $!dispatchees := [] unless $!dispatchees;
        $!dispatchees.push($code);
    }
    method is_dispatcher() {
        !nqp::isnull($!dispatchees)
    }
    method derive_dispatcher() {
        my $der := pir::repr_clone__PP(self);
        my $do  := pir::clone__PP($!do);
        nqp::bindattr($der, NQPRoutine, '$!do', $do);
        nqp::bindattr($der, NQPRoutine, '$!dispatchees', pir::clone__PP($!dispatchees));
        pir::set_sub_code_object__vPP($do, $der);
        $der
    }
}
pir::stable_publish_vtable_handler_mapping__vPP(NQPRoutine,
    nqp::hash('invoke', nqp::list(NQPRoutine, '$!do')));

my knowhow NQPSignature {
    has $!types;
    has $!definednesses;
}
