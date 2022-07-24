# This adds bounds to a native atomic uint, giving a few means of handling when
# those are reached via succ/pred operations:
#
# - drop_pred and drop_succ perform said operation only if valid
# - want_pred and want_succ wait for said operation to become valid
# - need_pred and need_succ permit underflows and overflows respectively
#
# This roughly translates to a semaphore's tryacquire/acquire/release
# operations, which it was originally designed to replicate, to which it
# performs comparably. We get more flavours of bounds handling and
# serializability if we ditch that structure, however.
class Counter {
    my uint $UINT_MAX := nqp::bitneg_i(0);

    has int $!counter;
    has int $!blocker;

    method new($counter) {
        my $self := nqp::create(self);
        nqp::bindattr_i($self, $?CLASS, '$!counter', $counter);
        nqp::bindattr_i($self, $?CLASS, '$!blocker', $counter == 0);
        $self
    }

    # Gives the predecessor unless we're at the lower bound.
    method drop_pred() {
        my $counter := nqp::getattrref_i(self, $?CLASS, '$!counter');
        if nqp::atomicload_i($counter) -> uint $pred {
            nqp::barrierfull();
            nqp::atomicstore_i($counter, ($pred := $pred - 1));
            nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), $pred == 0);
            $pred
        }
        else {
            0
        }
    }

    # Gives the predecessor, waiting for one to become valid if need be.
    method want_pred() {
        my $blocker := nqp::getattrref_i(self, $?CLASS, '$!blocker');
        nqp::threadyield()
            while nqp::cas_i($blocker, 0, 1);
        nqp::atomicstore_i($blocker, 0)
            if my uint $pred := nqp::sub_i(nqp::getattrref_i(self, $?CLASS, '$!counter'), 1);
        $pred
    }

    # Gives the predecessor immediately, ignoring underflows.
    method need_pred() {
        nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), 1)
            if my uint $pred := nqp::sub_i(nqp::getattrref_i(self, $?CLASS, '$!counter'), 1);
        $pred
    }

    # Gives the successor unless we're at the upper bound.
    method drop_succ() {
        my $counter := nqp::getattrref_i(self, $?CLASS, '$!counter');
        if (my uint $succ := nqp::atomicload_i($counter)) < $UINT_MAX {
            nqp::barrierfull();
            nqp::atomicstore_i($counter, ($succ := $succ + 1));
            nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), 0);
            $succ
        }
        else {
            $UINT_MAX
        }
    }

    # Gives the successor, waiting for one to become valid if need be.
    method want_succ() {
        my $counter := nqp::getattrref_i(self, $?CLASS, '$!counter');
        nqp::threadyield()
            while (my uint $succ := nqp::atomicload_i($counter)) == $UINT_MAX;
        nqp::barrierfull();
        nqp::atomicstore_i($counter, ($succ := $succ + 1));
        nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), 0);
        $succ
    }

    # Gives the predecessor immediately, ignoring overflows.
    method need_succ() {
        my uint $succ := nqp::add_i(nqp::getattrref_i(self, $?CLASS, '$!counter'), 1);
        nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), $succ == 0);
        $succ
    }
}
