class QAST::Node {
    # For annotations.
    has %!hash is associative_delegate;
    
    has $!node;
    has $!returns;

    method new(*%options) {
        my $new := nqp::create(self);
        nqp::bindattr($new, QAST::Node, '%!hash', nqp::hash());
        $new.set_options(%options);
        $new;
    }

    method set_options(%options) {
        my $it := nqp::iterator(%options);
        my $cur;
        while $it {
            $cur := nqp::shift($it);
            nqp::findmethod(self, nqp::iterkey_s($cur))(self, nqp::iterval($cur))
        }
        self
    }

    method node($value = NO_VALUE) {
        $!node := $value unless $value =:= NO_VALUE;
        $!node := NQPMu if nqp::isnull($value);
        $!node
    }
    method returns($value = NO_VALUE) {
        $!returns := $value unless $value =:= NO_VALUE;
        $!returns
    }
    
    method named($value = NO_VALUE) {
        if $value =:= NO_VALUE {
            ""
        }
        else {
            self.HOW.mixin(self, QAST::SpecialArg);
            self.named($value);
        }
    }
    method flat($value = NO_VALUE) {
        if $value =:= NO_VALUE {
            0
        }
        else {
            self.HOW.mixin(self, QAST::SpecialArg);
            self.flat($value);
        }
    }
    
    method has_compile_time_value() {
        0
    }
    
    method set_compile_time_value($value) {
        self.HOW.mixin(self, QAST::CompileTimeValue);
        self.set_compile_time_value($value);
    }

    method list() { [] }
    method hash() { %!hash }
    
    my %uniques;
    method unique($prefix) {
        my $id := nqp::existskey(%uniques, $prefix) ??
            (%uniques{$prefix} := %uniques{$prefix} + 1) !!
            (%uniques{$prefix} := 1);
        $prefix ~ '_' ~ $id
    }
    
    method shallow_clone() {
        my $clone := nqp::clone(self);
        $clone.set_children(nqp::clone(self.list))
            if nqp::istype(self, QAST::Children);
        $clone
    }
    
    method count_inline_placeholder_usages(@usages) {
        nqp::die(self.HOW.name(self) ~ " does not support inlining");
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
        if nqp::istype(self, QAST::Children) {
            for self.list {
                if nqp::istype($_, QAST::Node) {
                    nqp::push(@onto, $_.dump($indent));
                }
                else {
                    nqp::push(@onto, nqp::x(' ', $indent));
                    nqp::push(@onto, '- ');
                    nqp::push(@onto, nqp::istype($_, NQPMu) ?? '(NQPMu)' !! ~$_);
                    nqp::push(@onto, "\n");
                }
            }
        }
    }

    method dump_extra_node_info() { '' }
}
