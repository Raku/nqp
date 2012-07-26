use NQPHLL;

class QAST::Node {
    # For children.
    has @!array
		is parrot_vtable_handler('get_pmc_keyed_int')
		is parrot_vtable_handler('set_pmc_keyed_int')
		is parrot_vtable_handler('exists_keyed_int')
		is parrot_vtable_handler('delete_keyed_int')
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
    
    method list()          { @!array }
    method pop()           { nqp::pop(self.list) }
    method push($value)    { nqp::push(self.list, $value) }
    method shift()         { nqp::shift(self.list) }
    method unshift($value) { nqp::unshift(self.list, $value) }
    
    method hash() {
        %!hash
    }
    method ($key) is parrot_vtable('get_pmc_keyed_str') {
        %!hash{$key}
    }
    method ($key) is parrot_vtable('get_pmc_keyed') {
        %!hash{$key}
    }
    method ($key, $value) is parrot_vtable('set_pmc_keyed_str') {
        %!hash{$key} := $value;
    }
    method ($key, $value) is parrot_vtable('set_pmc_keyed') {
        %!hash{$key} := $value;
    }
    method ($key) is parrot_vtable('exists_keyed_str') {
        nqp::existskey(%!hash, $key)
    }
    method ($key) is parrot_vtable('exists_keyed') {
        nqp::existskey(%!hash, $key)
    }
    method ($key) is parrot_vtable('delete_keyed_str') {
        nqp::deletekey(%!hash, $key)
    }
    method ($key) is parrot_vtable('delete_keyed') {
        nqp::deletekey(%!hash, $key)
    }
    
    my %uniques;
    method unique($prefix) {
        my $id := nqp::existskey(%uniques, $prefix) ??
            (%uniques{$prefix} := %uniques{$prefix} + 1) !!
            (%uniques{$prefix} := 1);
        $prefix ~ '_' ~ $id
    }
}
