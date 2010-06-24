#! nqp

=begin

ResizablePMCArray Methods

These methods extend Parrot's ResizablePMCArray type to include
more methods typical of Perl 6 lists and arrays.

=end

module ResizablePMCArray {

    =begin item delete
    Remove item at C<$pos>
    =end item

    method delete($pos) {
        pir::delete__vQi(self, $pos);
    }

    =begin item exists
    Return true if item exists at C<$pos>
    =end item

    method exists($pos) {
        pir::exists__IQi(self, $pos);
    }

    =begin item join
    Return all elements joined by $sep.
    =end item

    method join ($separator) {
        pir::join($separator, self);
    }

    =begin item map
    Return an array with the results of applying C<&code> to
    each element of the invocant.  Note that NQP doesn't have
    a flattening list context, so the number of elements returned
    is exactly the same as the original.
    =end item

    method map (&code) {
        my @mapped;
        for self { @mapped.push( &code($_) ); }
        @mapped;
    }

    =begin item reverse
    Return a reversed copy of the invocant.
    =end item

    method reverse () {
        my @reversed;
        for self { @reversed.unshift($_); }
        @reversed;
    }
}


our sub join ($separator, *@values) { @values.join($separator); }
our sub map (&code, *@values) { @values.map(&code); }
our sub list (*@values) { @values; }

# vim: ft=perl6
