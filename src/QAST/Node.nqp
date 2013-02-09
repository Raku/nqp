class QAST::Node {
    # For children.
    has @!array
		is parrot_vtable_handler('get_pmc_keyed_int')
		is parrot_vtable_handler('set_pmc_keyed_int')
		is parrot_vtable_handler('unshift_pmc')
		is parrot_vtable_handler('push_pmc')
		;

    # For annotations, lazily allocated.
    has %!hash;
    
    has $!node;
    has $!returns;
    has int $!arity;

    method new(*@children, *%options) {
        my $new := self.CREATE();
        nqp::bindattr($new, QAST::Node, '@!array', @children);
        for %options {
            nqp::findmethod($new, $_.key)($new, $_.value);
        }
        $new;
    }

    method node(*@value)       { $!node := @value[0] if @value; $!node }
    method returns(*@value)    { $!returns := @value[0] if @value; $!returns }
    method arity(*@value)      { $!arity := @value[0] if @value; $!arity }
    
    method named(*@value) {
        if @value {
            self.HOW.mixin(self, QAST::SpecialArg);
            self.named(@value[0]);
        }
        else {
            ""
        }
    }
    method flat(*@value) {
        if @value {
            self.HOW.mixin(self, QAST::SpecialArg);
            self.flat(@value[0]);
        }
        else {
            0
        }
    }
    
    method has_compile_time_value() {
        0
    }
    
    method set_compile_time_value($value) {
        self.HOW.mixin(self, QAST::CompileTimeValue);
        self.set_compile_time_value($value);
    }
    
    method list()          { @!array }
    method pop()           { nqp::pop(self.list) }
    method push($value)    { nqp::push(self.list, $value) }
    method shift()         { nqp::shift(self.list) }
    method unshift($value) { nqp::unshift(self.list, $value) }
    
    method hash() {
        nqp::isnull(%!hash) ?? %!hash !! nqp::hash()
    }
    method ($key) is parrot_vtable('get_pmc_keyed_str') {
        nqp::isnull(%!hash) ?? NQPMu !! %!hash{$key}
    }
    method ($key) is parrot_vtable('get_pmc_keyed') {
        nqp::isnull(%!hash) ?? NQPMu !! %!hash{$key}
    }
    method ($key, $value) is parrot_vtable('set_pmc_keyed_str') {
        %!hash := nqp::hash() if nqp::isnull(%!hash);
        %!hash{$key} := $value;
    }
    method ($key, $value) is parrot_vtable('set_pmc_keyed') {
        %!hash := nqp::hash() if nqp::isnull(%!hash);
        %!hash{$key} := $value;
    }
    method ($key) is parrot_vtable('exists_keyed_str') {
        nqp::isnull(%!hash) ?? 0 !! nqp::existskey(%!hash, $key)
    }
    method ($key) is parrot_vtable('exists_keyed') {
        nqp::isnull(%!hash) ?? 0 !! nqp::existskey(%!hash, $key)
    }
    method ($key) is parrot_vtable('delete_keyed_str') {
        nqp::deletekey(%!hash, $key) unless nqp::isnull(%!hash)
    }
    method ($key) is parrot_vtable('delete_keyed') {
        nqp::deletekey(%!hash, $key) unless nqp::isnull(%!hash)
    }
    
    my %uniques;
    method unique($prefix) {
        my $id := nqp::existskey(%uniques, $prefix) ??
            (%uniques{$prefix} := %uniques{$prefix} + 1) !!
            (%uniques{$prefix} := 1);
        $prefix ~ '_' ~ $id
    }
    
    method shallow_clone() {
        my $clone := pir::repr_clone__PP(self);
        nqp::bindattr($clone, QAST::Node, '@!array', nqp::clone(@!array));
        $clone
    }
    
    method substitute_inline_placeholders(@fillers) {
        nqp::die(self.HOW.name(self) ~ " does not support inlining");
    }

    method evaluate_unquotes(@unquotes) {
        nqp::die(self.HOW.name(self) ~ " does not support evaluating unquotes");
    }

    method dump($indent?) {
        unless nqp::defined($indent) {
            $indent := 0;
        }
        my @chunks := [
            nqp::x(' ', $indent), '- ', self.HOW.name(self),
        ];
        my $extra := self.dump_extra_node_info();
        if nqp::chars($extra) {
            nqp::push(@chunks, "($extra)");
        }
        if (self.node) {
            nqp::push(@chunks, ' ');
            nqp::push(@chunks, pir::escape__SS(self.node));
        }
        nqp::push(@chunks, "\n");
        self.dump_children($indent + 2, @chunks);
        return nqp::join('', @chunks);
    }

    method dump_children(int $indent, @onto) {
        for @!array {
            if nqp::istype($_, QAST::Node) {
                nqp::push(@onto, $_.dump($indent));
            }
            else {
                nqp::push(@onto, nqp::x(' ', $indent));
                nqp::push(@onto, '- ');
                nqp::push(@onto, ~$_);
                nqp::push(@onto, "\n");
            }
        }
    }

    method dump_extra_node_info() { '' }
}
