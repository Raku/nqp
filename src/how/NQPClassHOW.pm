# This is a first cut at a ClassHOW for NQP. It doesn't support all the stuff
# that Perl 6 needs, but it's sufficient for NQP. Supports methods, attributes,
# role composition, inheritance (single and multiple) and introspection.

knowhow NQPClassHOW {
    ##
    ## Attributes
    ##

    # Name of the class.
    has $!name;

    # Attributes, methods, parents and roles directly added.
    has %!attributes;
    has %!methods;
    has @!method_order;
    has @!multi_methods_to_incorporate;
    has @!parents;
    has @!roles;
    has $!default_parent;

    # Vtable and mapping of method names to slots.
    has @!vtable;
    has %!method-vtable-slots;

    # Have we been composed?
    has $!composed;

    # Cached MRO (list of the type objects).
    has @!mro;

    # Full list of roles that we do.
    has @!done;
    
    # Cached values, which are thrown away if the class changes.
    # XXX Should be an attribute later, but we get into some trouble with
    # the bootstrap for now since we end up with SC references back to the
    # previous build due to a parse altering the cache, and the SC WB getting
    # hit.
    my %caches;

    # Parrot-specific vtable mapping hash. Maps vtable name to method.
    has %!parrot_vtable_mapping;
	has %!parrot_vtable_handler_mapping;
    
    # Call tracing.
    has $!trace;
    has $!trace_depth;
    
    # Build plan.
    has @!BUILDALLPLAN;
    has @!BUILDPLAN;
    
    my $archetypes := Archetypes.new( :nominal(1), :inheritable(1) );
    method archetypes() {
        $archetypes
    }

    ##
    ## Declarative.
    ##

    # Creates a new instance of this meta-class.
    method new(:$name) {
        my $obj := nqp::create(self);
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
        nqp::setwho(nqp::newtype($metaclass, $repr), {});
    }

    method add_method($obj, $name, $code_obj) {
        if %!methods{$name} {
            nqp::die("This class already has a method named " ~ $name);
        }
        if nqp::isnull($code_obj) || !nqp::defined($code_obj) {
            nqp::die("Cannot add a null method '$name' to class '$!name'");
        }
        pir::set_method_cache_authoritativeness__vPi($obj, 0);
        %caches{nqp::where(self)} := {};
        @!method_order[+@!method_order] := %!methods{$name} := $code_obj;
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
        pir::set_method_cache_authoritativeness__vPi($obj, 0);
        $code_obj;
    }

    method add_attribute($obj, $meta_attr) {
        my $name := $meta_attr.name;
        if %!attributes{$name} {
            nqp::die("This class already has an attribute named " ~ $name);
        }
        %!attributes{$name} := $meta_attr;
    }

    method add_parent($obj, $parent) {
        if $!composed {
            nqp::die("NQPClassHOW does not support adding parents after being composed.");
        }
        if $obj =:= $parent {
            nqp::die("Class '$!name' cannot inherit from itself.");
        }
        for @!parents {
            if $_ =:= $parent {
                nqp::die("Already have " ~ $parent ~ " as a parent class.");
            }
        }
        @!parents[+@!parents] := $parent;
    }
    
    method set_default_parent($obj, $parent) {
        $!default_parent := $parent;
    }
    
    # Changes the object's parent. Conditions: it has exactly one parent, and that
    # parent has no attributes, and nor does the new one.
    method reparent($obj, $new_parent) {
        if +@!parents != 1 {
            nqp::die("Can only re-parent a class with exactly one parent");
        }
        for @!parents[0].HOW.mro(@!parents[0]) {
            if +$_.HOW.attributes($_, :local) {
                nqp::die("Can only re-parent a class whose parent has no attributes");
            }
        }
        for $new_parent.HOW.mro($new_parent) {
            if +$_.HOW.attributes($_, :local) {
                nqp::die("Can only re-parent to a class with no attributes");
            }
        }
        @!parents[0] := $new_parent;
        @!mro := compute_c3_mro($obj);
        self.publish_type_cache($obj);
        self.publish_method_cache($obj);
        self.publish_boolification_spec($obj);
        self.publish_parrot_vtable_mapping($obj);
		self.publish_parrot_vtablee_handler_mapping($obj);
        1;
    }

    method add_role($obj, $role) {
        for @!roles {
            if $_ =:= $role {
                nqp::die("The role " ~ $role ~ " has already been added.");
            }
        }
        @!roles[+@!roles] := $role;
    }

    method add_parrot_vtable_mapping($obj, $name, $meth) {
        if nqp::defined(%!parrot_vtable_mapping{$name}) {
            nqp::die("Class '" ~ $!name ~
                "' already has a Parrot v-table override for '" ~
                $name ~ "'");
        }
        %!parrot_vtable_mapping{$name} := $meth;
    }

    method add_parrot_vtable_handler_mapping($obj, $name, $att_name) {
        if nqp::defined(%!parrot_vtable_handler_mapping{$name}) {
            nqp::die("Class '" ~ $!name ~
                "' already has a Parrot v-table handler for '" ~
                $name ~ "'");
        }
        %!parrot_vtable_handler_mapping{$name} := [ $obj, $att_name ];
    }

    method compose($obj) {
        # Incorporate roles. First, specialize them with the type object
        # for this type (so their $?CLASS is correct). Then delegate to
        # the composer.
        if @!roles {
            my @specialized_roles;
            for @!roles {
                my $ins := $_.HOW.specialize($_, $obj);
                @specialized_roles.push($ins);
                @!done[+@!done] := $_;
                @!done[+@!done] := $ins;
            }
            RoleToClassApplier.apply($obj, @specialized_roles);
        }

        # If we have no parents and we're not called NQPMu then add the
        # default parent.
        if +@!parents == 0 && $!name ne 'NQPMu' {
            self.add_parent($obj, $!default_parent)
        }

        # Some things we only do if we weren't already composed once, like building
        # the MRO.
        unless $!composed {
            @!mro := compute_c3_mro($obj);
            $!composed := 1;
        }

        # Incorporate any new multi candidates (needs MRO built).
        self.incorporate_multi_candidates($obj);

        # Compose attributes.
        for self.attributes($obj, :local<0> ) { $_.compose($obj) }

        # Publish type and method caches and boolification spec.
        self.publish_type_cache($obj);
        self.publish_method_cache($obj);
        self.publish_boolification_spec($obj);

        # Install Parrot v-table mapping.
        self.publish_parrot_vtable_mapping($obj);
		self.publish_parrot_vtablee_handler_mapping($obj);
        
        # Create BUILDPLAN.
        self.create_BUILDPLAN($obj);

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
            if nqp::defined($dispatcher) {
                # Yes. Only or dispatcher, though? If only, error. If
                # dispatcher, simply add new dispatchee.
                if pir::is_dispatcher__IP($dispatcher) {
                    pir::push_dispatchee__0PP($dispatcher, $code);
                }
                elsif nqp::can($dispatcher, 'is_dispatcher') && $dispatcher.is_dispatcher {
                    $dispatcher.add_dispatchee($code);
                }
                else {
                    nqp::die("Cannot have a multi candidate for $name when an only method is also in the class");
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
                    if nqp::defined($dispatcher) {
                        # Found a possible - make sure it's a dispatcher, not
                        # an only.
                        if pir::is_dispatcher__IP($dispatcher) {
                            # Clone it and install it in our method table.
                            my @new_dispatchees;
                            @new_dispatchees[0] := $code;
                            my $new_disp := pir::create_dispatch_and_add_candidates__PPP($dispatcher, @new_dispatchees);
                            my $clone_callback := pir::getprop__PPs($dispatcher, 'CLONE_CALLBACK');
                            if nqp::defined($clone_callback) {
                                $clone_callback($dispatcher, $new_disp);
                            }
                            %!methods{$name} := $new_disp;
                            $found := 1;
                        }
                        elsif nqp::can($dispatcher, 'is_dispatcher') && $dispatcher.is_dispatcher {
                            my $new_disp := $dispatcher.derive_dispatcher();
                            $new_disp.add_dispatchee($code);
                            %!methods{$name} := $new_disp;
                            $found := 1;
                        }
                        else {
                            nqp::die("Could not find a proto for multi $name (it may exist, but an only is hiding it if so)");
                        }
                    }
                    $j := $j + 1;
                }
                unless $found {
                    nqp::die("Could not find a proto for multi $name, and proto generation is NYI");
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
            if +@immediate_parents == 1 {
                @result := compute_c3_mro(@immediate_parents[0]);
            } else {
                # Build merge list of lineraizations of all our parents, add
                # immediate parents and merge.
                my @merge_list;
                for @immediate_parents {
                    @merge_list.push(compute_c3_mro($_));
                }
                @merge_list.push(@immediate_parents);
                @result := c3_merge(@merge_list);
            }
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
                }

                # If we didn't reject it, this candidate will do.
                unless $rejected {
                    $accepted := $cand_class;
                    $something_accepted := 1;
                    last;
                }
            }
        }

        # If we never found any candidates, return an empty list.
        if $cand_count == 0 {
            return @result;
        }

        # If we didn't find anything to accept, error.
        unless $something_accepted {
            nqp::die("Could not build C3 linearization: ambiguous hierarchy");
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
        my @tc;
        for @!mro { @tc.push($_); }
        for @!done { @tc.push($_); }
        pir::publish_type_check_cache($obj, @tc)
    }

    method publish_method_cache($obj) {
        # Walk MRO and add methods to cache, unless another method
        # lower in the class hierarchy "shadowed" it.
        my %cache;
        my @mro_reversed := nqp::clone(@!mro);
        @mro_reversed.reverse();
        for @mro_reversed {
            for $_.HOW.method_table($_) {
                %cache{$_.key} := $_.value;
            }
        }
        pir::publish_method_cache($obj, %cache);
        pir::set_method_cache_authoritativeness__0Pi($obj, 1);
    }

    method publish_boolification_spec($obj) {
        my $bool_meth := self.find_method($obj, 'Bool');
        if nqp::defined($bool_meth) {
            pir::set_boolification_spec__0PiP($obj, 0, $bool_meth)
        }
        else {
            pir::set_boolification_spec__0PiP($obj, 5, nqp::null())
        }
    }

    method publish_parrot_vtable_mapping($obj) {
        my %mapping;
        my @mro_reversed := nqp::clone(@!mro);
        @mro_reversed.reverse();
        for @mro_reversed {
            for $_.HOW.parrot_vtable_mappings($_, :local(1)) {
                %mapping{$_.key} := $_.value;
            }
        }
        if +%mapping {
            pir::stable_publish_vtable_mapping__vPP($obj, %mapping);
        }
    }

    method publish_parrot_vtablee_handler_mapping($obj) {
        my %mapping;
        my @mro_reversed := nqp::clone(@!mro);
        @mro_reversed.reverse();
        for @mro_reversed {
            for $_.HOW.parrot_vtable_handler_mappings($_, :local(1)) {
                %mapping{$_.key} := $_.value;
            }
        }
        if +%mapping {
            pir::stable_publish_vtable_handler_mapping__vPP($obj, %mapping);
        }
    }
    
    # Creates the plan for building up the object. This works
    # out what we'll need to do up front, so we can just zip
    # through the "todo list" each time we need to make an object.
    # The plan is an array of arrays. The first element of each
    # nested array is an "op" representing the task to perform:
    #   0 code = call specified BUILD method
    #   1 class name attr_name = try to find initialization value
    #   2 class attr_name code = call default value closure if needed
    method create_BUILDPLAN($obj) {
        # Get MRO, then work from least derived to most derived.
        my @all_plan;
        my @plan;
        my @mro := self.mro($obj);
        my $i := +@mro;
        while $i > 0 {
            # Get current class to consider and its attrs.
            $i := $i - 1;
            my $class := @mro[$i];
            my @attrs := $class.HOW.attributes($class, :local(1));
            
            # Does it have its own BUILD?
            my $build := $class.HOW.find_method($class, 'BUILD', :no_fallback(1));
            if nqp::defined($build) {
                # We'll call the custom one.
                my $entry := [0, $build];
                @all_plan[+@all_plan] := $entry;
                if $i == 0 {
                    @plan[+@plan] := $entry;
                }
            }
            else {
                # No custom BUILD. Rather than having an actual BUILD
                # in Mu, we produce ops here per attribute that may
                # need initializing.
                for @attrs {
                    my $attr_name := $_.name;
                    my $name      := nqp::substr($attr_name, 2);
                    my $entry     := [1, $class, $name, $attr_name];
                    @all_plan[+@all_plan] := $entry;
                    if $i == 0 {
                        @plan[+@plan] := $entry;
                    }
                }
            }
            
            # Check if there's any default values to put in place.
            for @attrs {
                if nqp::can($_, 'build') {
                    my $default := $_.build;
                    if nqp::defined($default) {
                        my $entry := [2, $class, $_.name, $default];
                        @all_plan[+@all_plan] := $entry;
                        if $i == 0 {
                            @plan[+@plan] := $entry;
                        }
                    }
                }
            }
        }
        @!BUILDPLAN := @plan;
        @!BUILDALLPLAN := @all_plan;
    }
    
    method BUILDPLAN($obj) {
        @!BUILDPLAN
    }
    
    method BUILDALLPLAN($obj) {
        @!BUILDALLPLAN
    }

    ##
    ## Introspecty
    ##

    method parents($obj, :$local) {
        $local ?? @!parents !! @!mro
    }
    
    method mro($obj) {
        @!mro
    }

    method roles($obj, :$local!) {
        @!roles
    }

    method methods($obj, :$local) {
        if $local {
            @!method_order
        }
        else {
            my @meths;
            for @!mro {
                for $_.HOW.methods($_, :local) {
                    @meths.push($_)
                }
            }
            @meths
        }
    }

    method method_table($obj) {
        %!methods
    }

    method name($obj) {
        $!name
    }

    method traced($obj) {
        $!trace
    }

    method trace_depth($obj) {
        $!trace_depth
    }

    method attributes($obj, :$local!) {
        my @attrs;
        for %!attributes {
            @attrs.push($_.value);
        }
        @attrs
    }

    method parrot_vtable_mappings($obj, :$local!) {
        %!parrot_vtable_mapping
    }

    method parrot_vtable_handler_mappings($obj, :$local!) {
        %!parrot_vtable_handler_mapping
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
            if nqp::defined($can) {
                return $can;
            }
        }
        return 0;
    }

    ##
    ## Dispatchy
    ##
    method find_method($obj, $name, :$no_fallback, :$no_trace) {
        for @!mro {
            my %meths := $_.HOW.method_table($obj);
            my $found := %meths{$name};
            if nqp::defined($found) {
                return $!trace && !$no_trace && nqp::substr($name, 0, 1) ne '!' ??
                    -> *@pos, *%named { 
                        say(nqp::x('  ', $!trace_depth) ~ "Calling $name");
                        $!trace_depth := $!trace_depth + 1;
                        my $result := $found(|@pos, |%named);
                        $!trace_depth := $!trace_depth - 1;
                        $result
                    } !!
                    $found;
            }
        }
        nqp::null()
    }

    ##
    ## Cache-related
    ##
    method cache($obj, $key, $value_generator) {
        nqp::existskey(%caches, nqp::where(self)) || (%caches{nqp::where(self)} := {});
        nqp::existskey(%caches{nqp::where(self)}, $key) ??
            %caches{nqp::where(self)}{$key} !!
            (%caches{nqp::where(self)}{$key} := $value_generator())
    }
    
    ##
    ## Tracing
    ##
    method trace-on($obj, $depth?) {
        $!trace := 1;
        $!trace_depth := $depth // 0;
        pir::set_method_cache_authoritativeness__0Pi($obj, 0);
        pir::publish_method_cache($obj, nqp::hash());
    }
    method trace-off($obj) {
        $!trace := 0;
    }
}
