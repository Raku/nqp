class NQPMu {
    method CREATE() {
        pir::repr_instance_of__PP(self)
    }

    method new() {
        self.CREATE()
    }

    proto method Str() is parrot_vtable('get_string') { * }
    multi method Str(Mu:U $self:) {
        self.HOW.name(self) ~ '()'
    }

    proto method ACCEPTS($topic) { * }
    multi method ACCEPTS(NQPMu:U $self: $topic) {
        pir::type_check__IPP($topic, self.WHAT)
    }

    method isa($type) {
        self.HOW.isa(self, $type)
    }

}

class NQPCapture is NQPMu {
    has @!array;
    has %!hash;

    method new() {
        my $n := self.CREATE;
        $n.BUILD;
        $n
    }

    method BUILD() {
        @!array := pir::new('ResizablePMCArray');
        %!hash  := pir::new('Hash');
    }

    method ($key) is parrot_vtable('get_pmc_keyed_str') {
        %!hash{$key}
    }
    method ($key) is parrot_vtable('get_pmc_keyed') {
        %!hash{$key}
    }
    method ($key) is parrot_vtable('get_pmc_keyed_int') {
        @!array[$key]
    }

    method ($key, $value) is parrot_vtable('set_pmc_keyed_str') {
        %!hash{$key} := $value
    }
    method ($key, $value) is parrot_vtable('set_pmc_keyed') {
        %!hash{$key} := $value
    }
    method ($key, $value) is parrot_vtable('set_pmc_keyed_int') {
        @!array[$key] := $value
    }
    
    method ($key) is parrot_vtable('exists_keyed') {
        pir::exists(%!hash, $key);
    }
    method ($key) is parrot_vtable('exists_keyed_str') {
        pir::exists(%!hash, $key);
    }
    method ($key) is parrot_vtable('exists_keyed_int') {
        pir::exists(@!array, $key);
    }
}
