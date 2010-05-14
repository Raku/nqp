#! nqp

=begin

Hash methods and functions

These methods extend Parrot's Hash type to include more
methods typical of Perl 6 hashes.

=end

module Hash {

    =begin item delete($key)
    Delete C<$key> from the hash.
    =end

    method delete($key) {
        Q:PIR {
            $P1 = find_lex '$key'
            delete self[$P1]
        }
    }


    =begin item exists($key)
    Returns true if C<$key> exists in the hash.
    =end item

    method exists($key) {
        Q:PIR {
            $P1 = find_lex '$key'
            $I0 = exists self[$P1]
            %r  = box $I0
        }
    }
}


=begin item hash
Construct a hash from named arguments.
=end item

sub hash(*%h) { %h }

# vim: ft=perl6
