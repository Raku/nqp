my knowhow NQPRoutine {
    has $!do;
    has $!signature;
    has $!dispatchees;
    has $!dispatch_cache;
}
pir::stable_publish_vtable_handler_mapping__vPP(NQPRoutine,
    nqp::hash('invoke', nqp::list(NQPRoutine, '$!do')));

my knowhow NQPSignature {
    has $!types;
    has $!definednesses;
}
