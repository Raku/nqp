my class NQPCapture {
    has @!array
		is parrot_vtable_handler('get_pmc_keyed_int')
		is parrot_vtable_handler('set_pmc_keyed_int')
		is parrot_vtable_handler('unshift_pmc')
		is parrot_vtable_handler('push_pmc')
		;

    has %!hash
		is parrot_vtable_handler('get_pmc_keyed_str')
		is parrot_vtable_handler('get_pmc_keyed')
		is parrot_vtable_handler('set_pmc_keyed_str')
		is parrot_vtable_handler('set_pmc_keyed')
		is parrot_vtable_handler('exists_keyed')
		is parrot_vtable_handler('exists_keyed_str')
		is parrot_vtable_handler('delete_keyed')
		is parrot_vtable_handler('delete_keyed_str')
		;

    method new() {
        my $n := self.CREATE;
        $n.BUILD;
        $n
    }

    method BUILD() {
        @!array := nqp::list();
        %!hash := nqp::hash();
    }
    
    method list() { @!array }

    method hash() { %!hash }

}
