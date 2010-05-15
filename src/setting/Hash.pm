#! nqp

=begin

Hash methods and functions

These methods extend Parrot's Hash type to include more
methods typical of Perl 6 hashes.

=end

module Hash {

    =begin item delete
    Delete C<$key> from the hash.
    =end item

    method delete($key) {
        Q:PIR {
            $P1 = find_lex '$key'
            delete self[$P1]
        }
    }


    =begin item exists
    Returns true if C<$key> exists in the hash.
    =end item

    method exists($key) {
        Q:PIR {
            $P1 = find_lex '$key'
            $I0 = exists self[$P1]
            %r  = box $I0
        }
    }


    =begin item keys
    Returns a list of all of the keys in the hash.
    =end item

    method keys () {
        my @keys;
        for self { @keys.push($_.key); }
        @keys;
    }


    =begin item kv
    Return a list of key, value, key, value, ...
    =end item

    method kv () {
        my @kv;
        for self { @kv.push($_.key); @kv.push($_.value); }
        @kv;
    }


    =begin item values
    Returns a list of all of the values in the hash.
    =end item

    method values () {
        my @values;
        for self { @values.push($_.value); }
        @values;
    }

}


=begin item hash
Construct a hash from named arguments.
=end item

our sub hash(*%h) { %h }

# vim: ft=perl6
