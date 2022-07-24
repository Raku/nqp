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
    my int $INT_MIN_MAX := nqp::bitneg_i(0);

    has atomicint $!counter;
    has atomicint $!blocker;
    has str       $!moniker;

    method new(int $counter, str $moniker = nqp::null_s()) {
        my $self := nqp::create(self);
        nqp::bindattr_i($self, $?CLASS, '$!counter', $counter);
        nqp::bindattr_i($self, $?CLASS, '$!blocker', $counter == 0);
        nqp::bindattr_s($self, $?CLASS, '$!moniker', $moniker);
        $self
    }

    # Gives the predecessor unless we're at the lower bound.
    method drop_pred() {
        my $counter := nqp::getattrref_i(self, $?CLASS, '$!counter');
        if nqp::atomicload_i($counter) -> int $pred {
            nqp::barrierfull();
            nqp::atomicstore_i($counter, ($pred := $pred - 1));
            nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), $pred == 0);
            my uint $this := $pred
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
        if (my int $succ := nqp::atomicload_i($counter)) < $INT_MIN_MAX {
            nqp::barrierfull();
            nqp::atomicstore_i($counter, ($succ := $succ + 1));
            nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), 0);
            my uint $this := $succ
        }
        else {
            my uint $this := $INT_MIN_MAX
        }
    }

    # Gives the successor, waiting for one to become valid if need be.
    method want_succ() {
        my $counter := nqp::getattrref_i(self, $?CLASS, '$!counter');
        nqp::threadyield()
            while (my int $succ := nqp::atomicload_i($counter)) == $INT_MIN_MAX;
        nqp::barrierfull();
        nqp::atomicstore_i($counter, ($succ := $succ + 1));
        nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), 0);
        my uint $this := $succ
    }

    # Gives the predecessor immediately, ignoring overflows.
    method need_succ() {
        my uint $succ := nqp::add_i(nqp::getattrref_i(self, $?CLASS, '$!counter'), 1);
        nqp::atomicstore_i(nqp::getattrref_i(self, $?CLASS, '$!blocker'), $succ == 0);
        $succ
    }

    method Int() {
        my uint $counter := nqp::atomicload_i(nqp::getattrref_i(self, $?CLASS, '$!counter'))
    }

    method Numeric() {
        self.Int()
    }

    method Str() {
        nqp::if(nqp::isnull_s($!moniker), ~self.Int(), $!moniker)
    }

    method raku() {
        nqp::if(
          nqp::isconcrete(self),
          nqp::join('', nqp::list_s(
            nqp::how_nd(self).name(self),
            '.new(',
            ~self.Int(),
            nqp::if(
              nqp::isnull_s($!moniker),
              '',
              ', "' ~ nqp::join('\"', nqp::split('"', $!moniker)) ~ '"'),
            ')')),
          nqp::how_nd(self).name(self))
    }

    method COERCE($counter) {
        self.new(+$counter, ~$counter)
    }

    my &ENCODE := nqp::getstaticcode(
        anon sub ENCODE($head, *@tail) {
            my str $method := nqp::list_s($head);
            my @operations := nqp::list_s();
            nqp::push_s(@operations, nqp::shift(@tail)) while nqp::elems(@tail);
            nqp::join('_', @operations)
        });

    proto method CALL-ME(*@xs) {*}
    multi method CALL-ME($a) {
        self."$a"()
    }
    multi method CALL-ME($a, $b) {
        my str $method := $a ~ '_' ~ $b;
        self."$method"()
    }
    multi method CALL-ME($a, $b, *@xs) {
        my str $method := ENCODE($a, $b, |@xs);
        self."$method"()
    }
}
