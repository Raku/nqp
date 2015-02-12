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
        my $count      := nqp::elems($build_plan);
        my $i          := 0;
        while $i < $count {
            my $task := nqp::atpos($build_plan, $i);
            my int $code := nqp::atpos($task, 0);
            $i := $i + 1;
            if nqp::iseq_i($code, 0) {
                # Custom BUILD call.
                nqp::atpos($task, 1)(self, |%attrinit);
            }
            elsif nqp::iseq_i($code, 1) {
                # See if we have a value to initialize this attr with.
                my $key_name := nqp::atpos($task, 2);
                if nqp::existskey(%attrinit, $key_name) {
                    nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 3), %attrinit{$key_name});
                }
            }
            elsif nqp::iseq_i($code, 2) {
                # See if we have a value to initialize this attr with;
                # if not, set it to an empty array.
                my $key_name := nqp::atpos($task, 2);
                if nqp::existskey(%attrinit, $key_name) {
                    nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 3), %attrinit{$key_name});
                }
                else {
                    nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 3), nqp::list());
                }
            }
            elsif nqp::iseq_i($code, 3) {
                # See if we have a value to initialize this attr with;
                # if not, set it to an empty array.
                my $key_name := nqp::atpos($task, 2);
                if nqp::existskey(%attrinit, $key_name) {
                    nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 3), %attrinit{$key_name});
                }
                else {
                    nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 3), nqp::hash());
                }
            }
            elsif nqp::iseq_i($code, 4) {
                unless nqp::attrinited(self, nqp::atpos($task, 1), nqp::atpos($task, 2)) {
                    nqp::bindattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2),
                        nqp::atpos($task, 3)(self,
                            nqp::getattr(self, nqp::atpos($task, 1), nqp::atpos($task, 2))));
                }
            }
            else {
                nqp::die("Invalid BUILDALLPLAN");
            }
        }
        self
    }

    method new(*%attributes) {
        self.bless(|%attributes);
    }

#?if parrot
    proto method Str() is parrot_vtable('get_string') { * }
    multi method Str(NQPMu:U $self:) {
        ''
    }
    multi method Str(NQPMu:D $self:) {
        self.HOW.name(self) ~ '<' ~ nqp::where(self) ~ '>'
    }
    
    proto method Numeric() is parrot_vtable('get_number') { * }
    multi method Numeric(NQPMu:U $self:) {
        0.0
    }
    
    proto method Int() is parrot_vtable('get_integer') { * }
    multi method Int(NQPMu:U $self:) {
        0
    }

    method defined() is parrot_vtable('defined') {
        nqp::isconcrete(self)
    }
#?endif
#?if !parrot
    method defined() {
        nqp::isconcrete(self)
    }
#?endif

    proto method ACCEPTS($topic) { * }
    multi method ACCEPTS(NQPMu:U $self: $topic) {
        nqp::istype($topic, self.WHAT)
    }

    method isa($type) {
        self.HOW.isa(self, $type)
    }
}

#?if !parrot
# A few bits when we're bootstrapping everything 6model-style rather than using
# Parrot-supplied things.
my class NQPArray is repr('VMArray') {
    method push($value) { nqp::push(self, $value) }
    method pop() { nqp::pop(self) }
    method unshift($value) { nqp::unshift(self, $value) }
    method shift() { nqp::shift(self) }
}
nqp::setboolspec(NQPArray, 8, nqp::null());
nqp::settypehllrole(NQPArray, 4);
my class NQPArrayIter is repr('VMIter') { }
nqp::setboolspec(NQPArrayIter, 7, nqp::null());
my class NQPHashIter is repr('VMIter') {
    method key() { nqp::iterkey_s(self) }
    method value() { nqp::iterval(self) }
    method Str() { nqp::iterkey_s(self) }
}
nqp::setboolspec(NQPHashIter, 7, nqp::null());
nqp::sethllconfig('nqp', nqp::hash(
    'list', NQPArray,
    'slurpy_array', NQPArray,
    'array_iter', NQPArrayIter,
    'hash_iter', NQPHashIter
));
#?endif

my class NQPLabel { }
