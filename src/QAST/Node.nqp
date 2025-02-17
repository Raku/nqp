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
        nqp::isnull($value)
          ?? ($!node := NQPMu)
          !! $!node
    }

    method returns($value = NO_VALUE) {
        $value =:= NO_VALUE
          ?? $!returns
          !! ($!returns := $value)
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
        @flags ?? '<' ~ nqp::join(' ',@flags) ~ '>' !! '';
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
    method annotate_self(str $key, $value) {
        %!annotations := nqp::hash() unless nqp::ishash(%!annotations);
        %!annotations{$key} := $value;
        self
    }

    method ann(str $key) {
        my %annotations := %!annotations;
        nqp::ishash(%annotations)
          ?? %annotations{$key}
          !! NQPMu
    }

    method has_ann(str $key) {
        nqp::ishash(%!annotations) && nqp::existskey(%!annotations, $key)
    }

    method clear_annotations() {
        %!annotations := nqp::null();
    }

    my $uniques_lock := NQPLock.new;
    my %uniques;
    method unique($prefix) {
        nqp::lock($uniques_lock);
        my $id := ++%uniques{$prefix};
        nqp::unlock($uniques_lock);
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

    method stringify_value($v, $max_length = 80) {
        unless nqp::isconcrete($v) {
            return '(' ~ $v.HOW.name($v) ~ ')'
        }
        if nqp::objprimspec($v) {
            return nqp::stringify($v);
        }
        if nqp::can($v, 'raku') {
            my str $raku_s := nqp::join('\n', nqp::split("\n", $v.raku));
            return nqp::substr($raku_s, 0, $max_length - 3) ~ "..." if nqp::chars($raku_s) > $max_length;
        }
        $v.HOW.name($v) ~ '|' ~ nqp::objectid($v);
    }

    method dump(int $indent = 0, :$guide-line = 0) {
        my @chunks := [
            self.dump_indent_string($indent, :$guide-line), '- ', self.HOW.name(self)
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
        join('', @chunks)
    }

    method dump_annotations() {
        my @anns;
        nqp::push(@anns, self.dump_flags);
        if nqp::ishash(%!annotations) {
            for sorted_keys(%!annotations) -> $k {
                my $v := %!annotations{$k};
                try {
                    if nqp::isconcrete($v) {
                        if $k eq 'IN_DECL' || $k eq 'BY' || $k eq 'statement_id' {
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

    my $indent-string := "" ;
    my $indent-length := 0  ;

    method dump_indent_string(int $ind, :$guide-line) {
        if $ind > $indent-length {
            my $diff := $ind - $indent-length ;
            my $extra := $guide-line  ?? '│'   !! ' ';
            $extra := $extra ~ nqp::x(' ', $diff-1) ;
            $indent-string := $indent-string ~ $extra ;
            $indent-length := nqp::chars($indent-string)
        }
        elsif $ind < $indent-length {
            $indent-string := nqp::substr($indent-string, 0, $ind) ;
            $indent-length := $ind
        }

        $indent-string
    }
}
