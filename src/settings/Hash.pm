=begin

=head2 Hash Methods

These methods extend the native NQP Hash class to support more of the basic
functionality expected for Perl 6 Hashes.

=end

module Hash {


=begin

=over 4

=item $found := %hash.exists($key)

Return a true value if C<$key> exists in C<%hash>, or a false value otherwise.

=end

    method exists ($key) {
        return Q:PIR{
            $P1 = find_lex '$key'
            $I0 = exists self[$P1]
            %r  = box $I0
        };
    }

=begin

=item %hash.delete($key)

Delete C<$key> from C<%hash>.

=end

    method delete ($key) {
        Q:PIR{
            $P1 = find_lex '$key'
            delete self[$P1]
        };
    }


=begin

=item @keys := %hash.keys

Return all the C<@keys> in the C<%hash> as an unordered array.

=end

    method keys () {
        my @keys;
        for self { @keys.push($_.key); }
        @keys;
    }


=begin

=item @values := %hash.values

Return all the C<@values> in the C<%hash> as an unordered array.

=end

    method values () {
        my @values;
        for self { @values.push($_.value); }
        @values;
    }


=begin

=item @flattened := %hash.kv

Flatten C<%hash> into an array, alternating key and value.  This is useful
when iterating over key and value simultaneously:

    for %hash.kv -> $k, $v { ... }

=end

    method kv () {
        my @kv;
        for self { @kv.push($_.key); @kv.push($_.value); }
        @kv;
    }


=begin

=back

=end

}

=begin

=item %hash := hash(:key1(value1), :key2(value2), ...)

Coerce a list of pairs into a hash.

=end

sub hash (*%h) { return %h }

# vim: ft=perl6
