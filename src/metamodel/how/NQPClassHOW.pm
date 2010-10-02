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
        pir::repr_instance_of__PP(self)
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$repr = 'P6opaque') {
        my $metaclass := self.new();
        pir::repr_type_object_for__PPS($metaclass, $repr);
    }

    method add_method($obj, $name, $code_obj) {
        if %!methods{$name} {
            pir::die("This class already has a method named " ~ $name);
        }
        %!methods{$name} := $code_obj;
    }

    method add_attribute($obj, $meta_attr) {
        my $name := $meta_attr.name;
        if %!attributes{$name} {
            pir::die("This class already has an attribute named " ~ $name);
        }
        %!attributes{$name} := $meta_attr;
    }

    method add_parent($obj, $parent) {
        if $!composed {
            pir::die("NQPClassHOW does not support adding parents after being composed.");
        }
        for @!parents {
            if $_ =:= $parent {
                pir::die("Already have " ~ $parent ~ " as a parent class.");
            }
        }
        @!parents[+@!parents] := $parent;
    }

    method compose($obj) {
        # XXX roles...

        # Some things we only do if we weren't already composed once, like building
        # the MRO.
        unless $!composed {
            @!mro := compute_c3_mro($obj);
            $!composed := 1;
        }

        $obj
    }

    # Computes C3 MRO.
    sub compute_c3_mro($class) {
        my @immediate_parents := $class.HOW.parents($class, :local);

        # Provided we have immediate parents...
        my @result;
        if +@immediate_parents {
            # Build merge list of lineraizations of all our parents, add
            # immediate parents and merge.
            my @merge_list;
            for @immediate_parents {
                @merge_list.push(compute_c3_mro($_));
            }
            @merge_list.push(@immediate_parents);
            @result := c3_merge(@merge_list);
        }

        # Put this class on the start of the list, and we're done.
        @result.unshift($class);
        return @result;
    }

    # C3 merge routine.
    sub c3_merge(@merge_list) {
        my @result;
        my $accepted;
        my $something_accepted := 0;
        my $cand_count := 0;

        # Try to find something appropriate to add to the MRO.
        for @merge_list {
            my @cand_list := $_;
            if +@cand_list {
                my $rejected := 0;
                my $cand_class := @cand_list[0];
                $cand_count := $cand_count + 1;
                for @merge_list {
                    # Skip current list.
                    unless $_ =:= @cand_list {
                        # Is current candidate in the tail? If so, reject.
                        my $cur_pos := 1;
                        while $cur_pos <= +$_ {
                            if $_[$cur_pos] =:= $cand_class {
                                $rejected := 1;
                            }
                            $cur_pos := $cur_pos + 1;
                        }
                    }

                    # If we didn't reject it, this candidate will do.
                    unless $rejected {
                        $accepted := $cand_class;
                        $something_accepted := 1;
                        last;
                    }
                }
            }
        }

        # If we never found any candidates, return an empty list.
        if $cand_count == 0 {
            return @result;
        }

        # If we didn't find anything to accept, error.
        unless $something_accepted {
            pir::die("Could not build C3 linearization: ambiguous hierarchy");
        }

        # Otherwise, remove what was accepted from the merge lists.
        my $i := 0;
        while $i < +@merge_list {
            my @new_list;
            for @merge_list[$i] {
                unless $_ =:= $accepted {
                    @new_list.push($_);
                }
            }
            @merge_list[$i] := @new_list;
            $i := $i + 1;
        }

        # Need to merge what remains of the list, then put what was accepted on
        # the start of the list, and we're done.
        @result := c3_merge(@merge_list);
        @result.unshift($accepted);
        return @result;
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
            my %meths := $_.HOW.method_table($obj);
            my $can := %meths{$name};
            if pir::defined($can) {
                return $can;
            }
        }
        return 0;
    }

    ##
    ## Dispatchy
    ##
    method find_method($obj, $name) {
        for @!mro {
            my %meths := $_.HOW.method_table($obj);
            my $found := %meths{$name};
            if pir::defined($found) {
                return $found;
            }
        }
        pir::die("Could not find method " ~ $name);
    }
}
