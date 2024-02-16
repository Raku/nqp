#- NQPHOWLock ------------------------------------------------------------------
# Provides simple locking capabilities for the setting up of NQP's metamodel.
# A lock can be created with NQPHOWLock.new, and any code block that needs
# to be protected, can be protected with $lock.protect(&code).

knowhow NQPHOWLock is repr('ReentrantMutex') {
    method new() { nqp::create(self) }
    method protect($code) {
        CATCH {
            nqp::unlock(self);
            nqp::rethrow($!);
        }
        nqp::lock(self);
        my $res := $code();
        nqp::unlock(self);
        $res
    }
}
