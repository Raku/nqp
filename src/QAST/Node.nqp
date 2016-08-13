class QAST::Node {
    has %!annotations;
    has $!node;
    has $!returns;
    has int $!flags;

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
    
    method setflag($bit)   { $!flags := nqp::bitor_i($!flags, $bit) }
    method clearflag($bit) { $!flags := nqp::bitand_i($!flags, nqp::bitneg_i($bit)) }
    method isflag($bit)    { nqp::istrue(nqp::bitand_i($!flags, $bit)) }

    method wanted ($value = NO_VALUE) { $value =:= NO_VALUE ?? self.isflag(0x1) !! $value ?? self.setflag(0x1) !! self.clearflag(0x1) }
    method sunk   ($value = NO_VALUE) { $value =:= NO_VALUE ?? self.isflag(0x2) !! $value ?? self.setflag(0x2) !! self.clearflag(0x2) }
    method nosink ($value = NO_VALUE) { $value =:= NO_VALUE ?? self.isflag(0x4) !! $value ?? self.setflag(0x4) !! self.clearflag(0x4) }
    method sinkok ($value = NO_VALUE) { $value =:= NO_VALUE ?? self.isflag(0x8) !! $value ?? self.setflag(0x8) !! self.clearflag(0x8) }
    method final  ($value = NO_VALUE) { $value =:= NO_VALUE ?? self.isflag(0x10) !! $value ?? self.setflag(0x10) !! self.clearflag(0x10) }
    method okifnil($value = NO_VALUE) { $value =:= NO_VALUE ?? self.isflag(0x20) !! $value ?? self.setflag(0x20) !! self.clearflag(0x20) }

    method dump_flags() {
	my @flags;
	if $!flags {
	    nqp::push(@flags, 'wanted')  if self.wanted;
	    nqp::push(@flags, 'sunk')    if self.sunk;
	    nqp::push(@flags, 'nosink')  if self.nosink;
	    nqp::push(@flags, 'sinkok')  if self.sinkok;
	    nqp::push(@flags, 'final')   if self.final;
	    nqp::push(@flags, 'okifnil') if self.okifnil;
	}
	'<' ~ nqp::join(' ',@flags) ~ '>';
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
	nqp::push(@anns, self.dump_flags);

        if nqp::ishash(%!annotations) {
	    for %!annotations {
		my $k := $_.key;
		my $v := $_.value;
		try {
		    if nqp::isconcrete($v) {
			if $k eq 'IN_DECL' || $k eq 'BY' {
			    nqp::push(@anns, ':' ~ $k ~ '<' ~ $v ~ '>');
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
