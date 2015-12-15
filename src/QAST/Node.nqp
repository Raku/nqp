class QAST::Node {
    has %!annotations;
    has $!node;
    has $!returns;

    method new(*@children, *%options) {
        nqp::die('Can not instantiate QAST::Node; please use a subclass');
    }

    method set(%options) {
        my $it := nqp::iterator(%options);
        while $it {
            my $cur := nqp::shift($it);
            nqp::findmethod(self, nqp::iterkey_s($cur))(self, nqp::iterval($cur))
        }
        self
    }

    method list() { [] }

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
            NQPMu
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

    method annotate(str $key, $value) {
        %!annotations := nqp::hash() unless nqp::ishash(%!annotations);
        %!annotations{$key} := $value;
    }

    method ann(str $key) {
        nqp::ishash(%!annotations)
            ?? %!annotations{$key}
            !! NQPMu
    }

    method has_ann(str $key) {
        nqp::ishash(%!annotations) && nqp::existskey(%!annotations, $key)
    }

    method clear_annotations() {
        %!annotations := nqp::null();
    }

    my %uniques;
    method unique($prefix) {
        my $id := nqp::existskey(%uniques, $prefix) ??
            (%uniques{$prefix} := %uniques{$prefix} + 1) !!
            (%uniques{$prefix} := 1);
        $prefix ~ '_' ~ $id
    }
    
    method shallow_clone() {
        nqp::clone(self)
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

    method dump(int $indent = 0) {
        my @chunks := [
            nqp::x(' ', $indent), '- ', self.HOW.name(self),
        ];
        my $extra := self.dump_extra_node_info();
        if nqp::chars($extra) {
            nqp::push(@chunks, "($extra)");
        }
	nqp::push(@chunks, ' ');
	nqp::push(@chunks, self.dump_annotations);
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

    method dump_annotations() {
	my @anns;
        if nqp::ishash(%!annotations) {
	    for %!annotations {
		my $k := $_.key;
		my $v := $_.value;
		try {
		    if nqp::isconcrete($v) {
			if $k eq 'context' || $k eq 'IN_DECL' || $k eq 'BY' {
			    nqp::push(@anns, ':' ~ $k ~ '<' ~ $v ~ '>');
			}
			elsif $k eq 'sink_ok' || $k eq 'WANTED' || $k eq 'final' {
			    nqp::push(@anns, ':' ~ $k);
			}
			else {   # dunno how to introspect
			    nqp::push(@anns, ':' ~ $k ~ '<?>');
			}
		    }
		}
	    }
	}
	nqp::join(' ',@anns);
    }

    method dump_children(int $indent, @onto) { }

    method dump_extra_node_info() { '' }
}
