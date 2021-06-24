my class NQPMu {
    method CREATE() {
        nqp::create(self)
    }

    method bless(NQPMu:U $self: *%attributes) {
        my $instance := self.CREATE();
        $instance.BUILDALL(|%attributes);
        $instance
    }

    method BUILDALL(NQPMu:D $self: *%attrinit) {
        # Get the build plan.
        my $build_plan := self.HOW.BUILDALLPLAN(self);
        my int $count  := nqp::elems($build_plan);
        my int $i      := 0;
        while $i < $count {
            my $task := nqp::atpos($build_plan, $i);
            $i := $i + 1;

            # Something with data
            if nqp::islist($task) {
                my int $code := nqp::atpos($task, 0);

                if nqp::iseq_i($code, 0) {
                    # See if we have a value to initialize this attr with.
                    my $key_name := nqp::atpos($task, 3);
                    if nqp::existskey(%attrinit, $key_name) {
                        nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2), %attrinit{$key_name});
                    }
                }
                elsif nqp::iseq_i($code, 4) {
                    unless nqp::attrinited(self, nqp::atpos($task, 1), nqp::atpos($task, 2)) {
                        nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2),
                            nqp::atpos($task, 3)(self,
                                nqp::getattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2))));
                    }
                }
                elsif nqp::iseq_i($code, 10) {
                    # Defeat lazy allocation
                    nqp::getattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2))
                }
                elsif nqp::iseq_i($code, 11) {
                    # See if we have a value to initialize this attr with;
                    # if not, set it to an empty array.
                    my $key_name := nqp::atpos($task, 3);
                    if nqp::existskey(%attrinit, $key_name) {
                        nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2), %attrinit{$key_name});
                    }
                    else {
                        nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2), nqp::list());
                    }
                }
                elsif nqp::iseq_i($code, 12) {
                    # See if we have a value to initialize this attr with;
                    # if not, set it to an empty array.
                    my $key_name := nqp::atpos($task, 3);
                    if nqp::existskey(%attrinit, $key_name) {
                        nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2), %attrinit{$key_name});
                    }
                    else {
                        nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2), nqp::hash());
                    }
                }
                else {
                    nqp::die("Invalid BUILDALLPLAN");
                }
            }

            # Custom BUILD call.
            else {
                $task(self, |%attrinit);
            }
        }
        self
    }

    method new(*%attributes) {
        self.bless(|%attributes);
    }

    method defined() {
        nqp::isconcrete(self)
    }

    proto method ACCEPTS($topic) { * }
    multi method ACCEPTS(NQPMu:U $self: $topic) {
        nqp::istype($topic, self.WHAT)
    }

    proto method NOT-ACCEPTS($topic) { * }
    multi method NOT-ACCEPTS(NQPMu:U $self: $topic) {
        nqp::isfalse(nqp::istype($topic, self.WHAT))
    }

    method isa($type) {
        self.HOW.isa(self, $type)
    }
}

# An NQP array, which is the standard array representation with a few methods
# added.
my class NQPArray is repr('VMArray') {
    method push($value) { nqp::push(self, $value) }
    method pop() { nqp::pop(self) }
    method unshift($value) { nqp::unshift(self, $value) }
    method shift() { nqp::shift(self) }
}
nqp::setboolspec(NQPArray, 8, nqp::null());
nqp::settypehllrole(NQPArray, 4);

# Iterator types.
my class NQPArrayIter is repr('VMIter') { }
nqp::setboolspec(NQPArrayIter, 7, nqp::null());
my class NQPHashIter is repr('VMIter') {
    method key() { nqp::iterkey_s(self) }
    method value() { nqp::iterval(self) }
    method Str() { nqp::iterkey_s(self) }
}
nqp::setboolspec(NQPHashIter, 7, nqp::null());

# NQP HLL configuration.
nqp::sethllconfig('nqp', nqp::hash(
    'list', NQPArray,
    'slurpy_array', NQPArray,
    'array_iter', NQPArrayIter,
    'hash_iter', NQPHashIter,
    'foreign_transform_hash', -> $hash {
        # BOOTHashes don't actually need transformation
        nqp::ishash($hash) ?? $hash !! $hash.FLATTENABLE_HASH
    },
#?if moar
    'call_dispatcher', 'nqp-call',
    'method_call_dispatcher', 'nqp-meth-call',
#?endif
));

my class NQPLabel { }
