my class NQPLock is repr('ReentrantMutex') {
    class ConditionVariable is repr('ConditionVariable') {
        method new() {
            nqp::die("Cannot directly create a ConditionVariable; use the 'condition' method on a lock");
        }
        method wait() { nqp::condwait(self) }
        method signal() { nqp::condsignalone(self) }
        method signal_all() { nqp::condsignalall(self) }
    }

    method new() { nqp::create(self) }

    method lock() { nqp::lock(self) }

    method unlock() { nqp::unlock(self) }

    method protect($code) {
        nqp::lock(self);
        my $res := $code();
        nqp::unlock(self);
        CATCH {
            nqp::unlock(self);
            nqp::rethrow($!);
        }
        $res
    }

    method condition() {
        nqp::getlockcondvar(self, ConditionVariable)
    }
}
