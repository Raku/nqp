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
    has @!multi_methods_to_incorporate;
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
    method new(:$name) {
        my $obj := pir::repr_instance_of__PP(self);
        $obj.BUILD(:name($name));
        $obj
    }

    method BUILD(:$name) {
        $!name := $name;
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>', :$repr = 'P6opaque') {
        my $metaclass := self.new(:name($name));
        pir::repr_type_object_for__PPS($metaclass, $repr);
    }

    method add_method($obj, $name, $code_obj) {
        if %!methods{$name} {
            pir::die("This class already has a method named " ~ $name);
        }
        %!methods{$name} := $code_obj;
    }

    method add_multi_method($obj, $name, $code_obj) {
        # We can't incorporate these right away as we don't know all
        # parents yet, maybe, which influences whether we even can
        # have multis, need to generate a proto or worreva. So just
        # queue them up in a todo list and we handle it at class
        # composition time.
        my %todo;
        %todo<name> := $name;
        %todo<code> := $code_obj;
        @!multi_methods_to_incorporate[+@!multi_methods_to_incorporate] := %todo;
        $code_obj;
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

        # If we have no parents and we're not called NQPMu then add NQPMu as
        # our parent.
        if +@!parents == 0 && $!name ne 'NQPMu' {
            self.add_parent($obj, NQPMu)
        }

        # Some things we only do if we weren't already composed once, like building
        # the MRO.
        unless $!composed {
            @!mro := compute_c3_mro($obj);
            $!composed := 1;
        }

        # Incorporate any new multi candidates (needs MRO built).
        self.incorporate_multi_candidates($obj);

        # Publish type and method caches.
        self.publish_type_cache($obj);
        self.publish_method_cache($obj);

        $obj
    }

    method incorporate_multi_candidates($obj) {
        my $num_todo := +@!multi_methods_to_incorporate;
        my $i := 0;
        while $i != $num_todo {
            # Get method name and code.
            my $name := @!multi_methods_to_incorporate[$i]<name>;
            my $code := @!multi_methods_to_incorporate[$i]<code>;

            # Do we have anything in the methods table already in
            # this class?
            my $dispatcher := %!methods{$name};
            if pir::defined($dispatcher) {
                # Yes. Only or dispatcher, though? If only, error. If
                # dispatcher, simply add new dispatchee.
                if pir::is_dispatcher__IP($dispatcher) {
                    pir::push_dispatchee__0PP($dispatcher, $code);
                }
                else {
                    pir::die("Cannot have a multi candidate for $name when an only method is also in the class");
                }
            }
            else {
                # Go hunting in the MRO for a proto.
                my $j := 1;
                my $found := 0;
                while $j != +@!mro && !$found {
                    my $parent := @!mro[$j];
                    my %meths := $parent.HOW.method_table($parent);
                    my $dispatcher := %meths{$name};
                    if pir::defined($dispatcher) {
                        # Found a possible - make sure it's a dispatcher, not
                        # an only.
                        if pir::is_dispatcher__IP($dispatcher) {
                            # Clone it and install it in our method table.
                            my @new_dispatchees;
                            @new_dispatchees[0] := $code;
                            %!methods{$name} := pir::create_dispatch_and_add_candidates__PPP($dispatcher, @new_dispatchees);
                            $found := 1;
                        }
                        else {
                            pir::die("Could not find a proto for multi $name (it may exist, but an only is hiding it if so)");
                        }
                    }
                    $j := $j + 1;
                }
                unless $found {
                    pir::die("Could not find a proto for multi $name, and proto generation is NYI");
                }
            }
            $i := $i + 1;
        }
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

    method publish_type_cache($obj) {
        # XXX TODO: when we have roles, need these here too.
        pir::publish_type_check_cache($obj, @!mro)
    }

    method publish_method_cache($obj) {
        # Walk MRO and add methods to cache, unless another method
        # lower in the class hierarchy "shadowed" it.
        my %cache;
        for @!mro {
            my %methods := $_.HOW.method_table($_);
            for %methods {
                unless %methods{$_.key} {
                    %methods{$_.key} := $_.value;
                }
            }
        }
        pir::publish_method_cache($obj, %cache)
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

    method name($obj) {
        $!name
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
        pir::null__P()
    }
}
