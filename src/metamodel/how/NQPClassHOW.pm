# This is a first cut at a ClassHOW for NQP. It doesn't support all the stuff
# that Perl 6 needs, but it should - when the missing bits are filled out and
# it's debugged and made to compile/work - be sufficient for NQP. Supports
# methods, attributes, role composition, inheritance (single and multiple)
# and introspection.

knowhow NQPClassHOW {
    ##
    ## Attributes
    ##

    # Name of the class.
    has $!name;

    # Attributes, methods, parents and roles directly added.
    has %!attributes;
    has %!methods;
    has @!parents;
    has @!roles;

    # Vtable and mapping of method names to slots.
    has @!vtable;
    has %!method-vtable-slots;

    # Have we been composed?
    has $!composed;

    # Cached MRO (list of the type objects).
    has @!mro;

    # Full list of roles that we do.
    has @!done;

    ##
    ## Declarative.
    ##

    # Creates a new instance of this meta-class.
    method new() {
        nqp::instance_of(self)
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$repr) {
        my $metaclass := self.new();
        nqp::type_object_for($repr, $metaclass);
    }

    method add_method($obj, $name, $code_obj) {
        if %!methods{$name} {
            die("This class already has a method named " ~ $name);
        }
        %!methods{$name} := $code_obj;
    }

    method add_attribute($obj, $meta_attr) {
        my $name := $meta_attr.name;
        if %!attributes{$name} {
            die("This class already has an attribute named " ~ $name);
        }
        %!attributes.add($name, $meta_attr);
    }

    method add_parent($obj, $parent) {
        if $!composed {
            die("NQPClassHOW does not support adding parents after being composed.");
        }
        # XXX Duplicate parent check.
        @!parents.push($parent);
    }

    method compose($obj) {
        # XXX NYI
        $obj
    }

    ##
    ## Introspecty
    ##

    method parents($obj, :$local!) {
        @!parents
    }

    method roles($obj, :$local!) {
        @!roles
    }

    method methods($obj, :$local!) {
        my @meths;
        for %!methods {
            @meths.push($_.value);
        }
        @meths
    }

    method method_table($obj) {
        %!methods
    }

    method attributes($obj, :$local!) {
        my @attrs;
        for %!attributes {
            @attrs.push($_.value);
        }
        @attrs
    }

    ##
    ## Checky
    ##

    method isa($obj, $check) {
        my $check-class := $check.WHAT;
        my $i := +@!mro;
        while $i > 0 {
            $i := $i - 1;
            if @!mro[$i] =:= $check-class {
                return 1;
            }
        }
        return 0;
    }

    method does($obj, $check) {
        my $i := +@!done;
        while $i > 0 {
            $i := $i - 1;
            if @!done[$i] =:= $check {
                return 1;
            }
        }
        return 0;
    }

    method can($obj, $name) {
        for @!mro {
            my %meths := $obj.HOW.method_table($obj);
            my $can := %meths{$name};
            if nqp::defined($can) {
                return $can;
            }
        }
        return 0;
    }
}
