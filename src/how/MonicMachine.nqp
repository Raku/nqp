knowhow MonicMachine is repr('VMArray') {
    method new() {
        nqp::create(self)
    }

    method accept($member) {
        nqp::push(self, $member);
        self
    }

    method veneer(@members) {
        nqp::splice(self, @members, nqp::elems(self), 0)
    }

    method embody(*@members) {
        nqp::splice(self, @members, 0, nqp::elems(self))
    }

    method emboss(*@members) {
        nqp::push(self, nqp::splice(nqp::create(self), @members, 0, 0));
        self
    }

    method summon($evoke) {
        if nqp::elems(self) -> $cursor {
            repeat { $evoke(self, nqp::shift(self)) } while --$cursor;
        }
        self
    }

    method banish($evoke, @keep) {
        if nqp::elems(self) -> $cursor {
            repeat { $evoke(self, nqp::shift(self)) } while --$cursor;
            nqp::splice(@keep, self, nqp::elems(@keep), 0);
            nqp::setelems(self, 0);
        }
        @keep
    }

    method beckon(@keep) {
        my @safe;
        my $cursor := 0;
        while nqp::elems(self) -> $n {
            repeat {
                my @members := self[$cursor];
                next unless nqp::elems(@members);

                my $member := @members[0];
                my $i;
                repeat {
                    my @blocks := self[$i];
                    next if @blocks =:= @members;
                    next unless my $b := nqp::elems(@blocks);
                    my $j;
                    last if @blocks[$j] =:= $member while ++$j < $b;
                    last if $j < $b;
                } while ++$i < $n;
                last if $i == $n;
            } while ++$cursor < $n;
            last if $cursor == $n;

            nqp::push(@safe, my $member := self[$cursor][0]);
            $cursor := nqp::elems(self);
            repeat {
                my @members := nqp::pop(self);
                next unless nqp::elems(@members);
                nqp::shift(@members) if @members[0] =:= $member;
                nqp::unshift(self, @members) if nqp::elems(@members);
            } while --$cursor;
        }
        if $cursor && @safe {
            nqp::die("Could not build C3 linearization: ambiguous hierarchy");
        }
        nqp::splice(@keep, @safe, nqp::elems(@keep), 0)
    }

    method list() {
        nqp::splice(nqp::list(), self, 0, 0)
    }
}
