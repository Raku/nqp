my class NQPCapture {
    has @!array;
    has %!hash;

    method new() {
        my $n := self.CREATE;
        $n.BUILD;
        $n
    }

    method BUILD() {
        @!array := pir::new('ResizablePMCArray');
        %!hash := pir::new('Hash');
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

    method ($key) is parrot_vtable('delete_keyed') {
        pir::delete(%!hash, $key);
    }
    method ($key) is parrot_vtable('delete_keyed_str') {
        pir::delete(%!hash, $key);
    }
    method ($key) is parrot_vtable('delete_keyed_int') {
        pir::delete(@!array, $key);
    }
    
    method ($value) is parrot_vtable('unshift_pmc') {
        pir::unshift(@!array, $value);
    }
    
    method ($value) is parrot_vtable('push_pmc') {
        pir::unshift(@!array, $value);
    }
}
