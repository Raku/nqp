class QAST::Node {
    # For children.
    has @!array is positional_delegate;

    # For annotations.
    has %!hash is associative_delegate;
    
    has $!node;
    has $!returns;

    method new(*@children, *%options) {
        my $new := self.CREATE();
        nqp::bindattr($new, QAST::Node, '@!array', @children);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        for %options {
            nqp::findmethod($new, $_.key)($new, $_.value);
        }
        $new;
    }

    method node(*@value)       { $!node := @value[0] if @value; $!node }
    method returns(*@value)    { $!returns := @value[0] if @value; $!returns }
    
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
    
    method hash()          { %!hash }
    method list()          { @!array }
    method pop()           { nqp::pop(@!array) }
    method push($value)    { nqp::push(@!array, $value) }
    method shift()         { nqp::shift(@!array) }
    method unshift($value) { nqp::unshift(@!array, $value) }
    
    my %uniques;
    method unique($prefix) {
        my $id := nqp::existskey(%uniques, $prefix) ??
            (%uniques{$prefix} := %uniques{$prefix} + 1) !!
            (%uniques{$prefix} := 1);
        $prefix ~ '_' ~ $id
    }
    
    method shallow_clone() {
        my $clone := nqp::clone(self);
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
            my $escaped_node := nqp::escape(self.node);
            nqp::push(@chunks, nqp::substr($escaped_node, 0, 50));
            if (nqp::chars($escaped_node) > 50) {
                nqp::push(@chunks, "...");
            }
        }
        nqp::push(@chunks, "\n");
        self.dump_children($indent + 2, @chunks);
        return join('', @chunks);
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
