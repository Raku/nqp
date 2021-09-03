# This is a first cut at a ClassHOW for NQP. It doesn't support all the stuff
# that Raku needs, but it's sufficient for NQP. Supports methods, attributes,
# role composition, inheritance (single and multiple) and introspection.

knowhow NQPMixinCacheHOW {
    method new(:$name = '<anon>') {
        nqp::create(self)
    }
    method new_type($class_type) {
        my $mo := self.new();
        my $type := nqp::newtype($mo, 'Uninstantiable');
        nqp::setparameterizer($type, sub ($type, @roles) {
            $class_type.HOW.generate_mixin($class_type, @roles)
        });
        nqp::setdebugtypename($type, $class_type.HOW.name($class_type) ~ ' mixin cache');
        $type
    }
    method name($obj) {
        'mixin cache';
    }
}

knowhow NQPClassHOW {
    ##
    ## Attributes
    ##

    # Name of the class.
    has $!name;

    # Attributes, methods, parents and roles directly added.
    has @!attributes;
    has %!methods;
    has @!method_order;
    has @!multi_methods_to_incorporate;
    has @!parents;
    has @!roles;
    has $!default_parent;

    # Array type support.
    has $!is_array_type;
    has $!array_type;

    # Have we been composed?
    has $!composed;

    # Cached MRO (list of the type objects).
    has @!mro;

    # Full list of roles that we do.
    has @!done;

    # Cached values, which are thrown away if the class changes. We don't ever
    # mutate the %!caches hash, but instead clone/mutate/replace; additions
    # are rare compared to lookups, and this beats locking.
    has %!caches;
    has $!is_mixin;

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
    method new(:$name = '<anon>') {
        my $obj := nqp::create(self);
        $obj.BUILD(:name($name));
        $obj
    }

    method BUILD(:$name = '<anon>') {
        $!name := $name;
        @!attributes := nqp::list();
        %!methods := nqp::hash();
        @!method_order := nqp::list();
        @!multi_methods_to_incorporate := nqp::list();
        @!parents := nqp::list();
        @!roles := nqp::list();
        @!mro := nqp::list();
        @!done := nqp::list();
        @!BUILDALLPLAN := nqp::list();
        @!BUILDPLAN := nqp::list();
        $!is_mixin := 0;
        $!composed := 0;
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>', :$repr = 'P6opaque', :$array_type, :$is_mixin) {
        my $metaclass := self.new(:name($name));
        my $new_type;
        if $is_mixin {
            $new_type := nqp::newmixintype($metaclass, $repr);
            $metaclass.set_is_mixin($new_type);
        }
        else {
            $new_type := nqp::newtype($metaclass, $repr);
        }
        $metaclass.setup_mixin_cache($new_type);
        nqp::settypehll($new_type, 'nqp');
        nqp::setdebugtypename(nqp::setwho($new_type, {}), $name)
    }

    method add_method($obj, $name, $code_obj) {
        if nqp::existskey(%!methods, $name) {
            nqp::die("This class already has a method named " ~ $name);
        }
        if nqp::isnull($code_obj) || !nqp::defined($code_obj) {
            nqp::die("Cannot add a null method '$name' to class '$!name'");
        }
#?if !moar
        nqp::setmethcacheauth($obj, 0);
#?endif
        nqp::push(@!method_order, %!methods{$name} := $code_obj);
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
        nqp::push(@!multi_methods_to_incorporate, %todo);
#?if !moar
        nqp::setmethcacheauth($obj, 0);
#?endif
        $code_obj;
    }

    method add_attribute($obj, $meta_attr) {
        my $name := $meta_attr.name;
        for @!attributes {
            if $_.name eq $name {
                nqp::die("This class already has an attribute named " ~ $name);
            }
        }
        nqp::push(@!attributes, $meta_attr);
    }

    method is_array_type($obj) {
        $!is_array_type
    }

    method array_type($obj) {
        $!array_type
    }

    method set_array_type($obj, $type) {
        $!is_array_type := 1;
        $!array_type := $type;
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
        nqp::push(@!parents, $parent);
    }

    method set_default_parent($obj, $parent) {
        $!default_parent := $parent;
    }

    # Changes the object's parent. Conditions: it has exactly one parent, and that
    # parent has no attributes, and nor does the new one.
    method reparent($obj, $new_parent) {
        if nqp::elems(@!parents) != 1 {
            nqp::die("Can only re-parent a class with exactly one parent");
        }
        for @!parents[0].HOW.mro(@!parents[0]) {
            if nqp::elems($_.HOW.attributes($_, :local)) {
                nqp::die("Can only re-parent a class whose parent has no attributes");
            }
        }
        for $new_parent.HOW.mro($new_parent) {
            if nqp::elems($_.HOW.attributes($_, :local)) {
                nqp::die("Can only re-parent to a class with no attributes");
            }
        }
        @!parents[0] := $new_parent;
        @!mro := compute_c3_mro($obj);
        self.publish_type_cache($obj);
        self.publish_method_cache($obj);
        self.publish_boolification_spec($obj);
        1;
    }

    method add_role($obj, $role) {
        for @!roles {
            if $_ =:= $role {
                nqp::die("The role " ~ $role ~ " has already been added.");
            }
        }
        nqp::push(@!roles, $role);
    }


    method compose($obj) {
        # Incorporate roles. First, specialize them with the type object
        # for this type (so their $?CLASS is correct). Then delegate to
        # the composer.
        if @!roles {
            my @specialized_roles;
            for @!roles {
                my $ins := $_.HOW.specialize($_, $obj);
                nqp::push(@specialized_roles, $ins);
                nqp::push(@!done, $_);
                nqp::push(@!done, $ins);
            }
            RoleToClassApplier.apply($obj, @specialized_roles);
        }

        # If we have no parents and we're not called NQPMu then add the
        # default parent.
        if nqp::elems(@!parents) == 0 && $!name ne 'NQPMu' {
            self.add_parent($obj, $!default_parent)
        }

        # Compute the MRO.
        @!mro := compute_c3_mro($obj);

        # Incorporate any new multi candidates (needs MRO built).
        self.incorporate_multi_candidates($obj);

        # Compose attributes.
        for self.attributes($obj, :local(0) ) { $_.compose($obj) }

        # Publish type and method caches and boolification spec.
        self.publish_type_cache($obj);
        self.publish_method_cache($obj);
        self.publish_boolification_spec($obj);

        # Create BUILDPLAN.
        self.create_BUILDPLAN($obj);

        # Compose the representation.
        unless $!composed {
            self.compose_repr($obj);
        }

        # Mark as composed.
        $!composed := 1;

        $obj
    }

    method compose_repr($obj) {
        if self.is_array_type($obj) {
            if self.attributes($obj) {
                nqp::die("Cannot have attributes on an array representation");
            }
            nqp::composetype(nqp::decont($obj), nqp::hash('array',
                nqp::hash('type', nqp::decont(self.array_type($obj)))));
        }

        else {
            # Use any attribute information to produce attribute protocol
            # data. The protocol consists of an array...
            my @repr_info;

            # ...which contains an array per MRO entry...
            for @!mro -> $type_obj {
                my @type_info;
                nqp::push(@repr_info, @type_info);

                # ...which in turn contains the current type in the MRO...
                nqp::push(@type_info, $type_obj);

                # ...then an array of hashes per attribute...
                my @attrs;
                nqp::push(@type_info, @attrs);
                for $type_obj.HOW.attributes($type_obj, :local) -> $attr {
                    my %attr_info;
                    %attr_info<name> := $attr.name;
                    %attr_info<type> := $attr.type;
                    if $attr.box_target {
                        # Merely having the key serves as a "yes".
                        %attr_info<box_target> := 1;
                    }
                    if nqp::can($attr, 'auto_viv_container') {
                        %attr_info<auto_viv_container> := $attr.auto_viv_container;
                    }
                    if $attr.positional_delegate {
                        %attr_info<positional_delegate> := 1;
                    }
                    if $attr.associative_delegate {
                        %attr_info<associative_delegate> := 1;
                    }
                    nqp::push(@attrs, %attr_info);
                }

                # ...followed by a list of immediate parents.
                nqp::push(@type_info, $type_obj.HOW.parents($type_obj, :local));
            }

            # Compose the representation using it.
            my $info := nqp::hash();
            $info<attribute> := @repr_info;
            nqp::composetype($obj, $info)
        }
    }

    method incorporate_multi_candidates($obj) {
        my $num_todo := nqp::elems(@!multi_methods_to_incorporate);
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
                if nqp::can($dispatcher, 'is_dispatcher') && $dispatcher.is_dispatcher {
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
                while $j != nqp::elems(@!mro) && !$found {
                    my $parent := @!mro[$j];
                    my %meths := $parent.HOW.method_table($parent);
                    my $dispatcher := %meths{$name};
                    if nqp::defined($dispatcher) {
                        # Found a possible - make sure it's a dispatcher, not
                        # an only.
                        if nqp::can($dispatcher, 'is_dispatcher') && $dispatcher.is_dispatcher {
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
        if nqp::elems(@immediate_parents) {
            if nqp::elems(@immediate_parents) == 1 {
                @result := compute_c3_mro(@immediate_parents[0]);
            } else {
                # Build merge list of linearizations of all our parents, add
                # immediate parents and merge.
                my @merge_list;
                for @immediate_parents {
                    nqp::push(@merge_list, compute_c3_mro($_));
                }
                nqp::push(@merge_list, @immediate_parents);
                @result := c3_merge(@merge_list);
            }
        }

        # Put this class on the start of the list, and we're done.
        nqp::unshift(@result, $class);
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
            if @cand_list {
                my $rejected := 0;
                my $cand_class := @cand_list[0];
                $cand_count := $cand_count + 1;
                for @merge_list {
                    # Skip current list.
                    unless $_ =:= @cand_list {
                        # Is current candidate in the tail? If so, reject.
                        my $cur_pos := 1;
                        while $cur_pos <= nqp::elems($_) {
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
        while $i < nqp::elems(@merge_list) {
            my @new_list;
            for @merge_list[$i] {
                unless $_ =:= $accepted {
                    nqp::push(@new_list, $_);
                }
            }
            @merge_list[$i] := @new_list;
            $i := $i + 1;
        }

        # Need to merge what remains of the list, then put what was accepted on
        # the start of the list, and we're done.
        @result := c3_merge(@merge_list);
        nqp::unshift(@result, $accepted);
        return @result;
    }

    method publish_type_cache($obj) {
        my @tc;

        for self.mro($obj) {
            nqp::push(@tc, $_);
            if nqp::can($_.HOW, 'role_typecheck_list') {
                for $_.HOW.role_typecheck_list($_) -> $role {
                    nqp::push(@tc, $role);
                    if nqp::can($role.HOW, 'role_typecheck_list') {
                        for $role.HOW.role_typecheck_list($role) {
                            nqp::push(@tc, $_);
                        }
                    }
                }
            }
        }

        nqp::settypecache($obj, @tc)
    }

    sub reverse(@in) {
        my @out;
        for @in { nqp::unshift(@out, $_) }
        @out
    }

    method publish_method_cache($obj) {
#?if !moar
        # Walk MRO and add methods to cache, unless another method
        # lower in the class hierarchy "shadowed" it.
        my %cache;
        my @mro_reversed := reverse(@!mro);
        for @mro_reversed {
            for $_.HOW.method_table($_) {
                %cache{nqp::iterkey_s($_)} := nqp::iterval($_);
            }
        }
        nqp::setmethcache($obj, %cache);
        nqp::setmethcacheauth($obj, 1);
#?endif
    }

    method publish_boolification_spec($obj) {
        my $bool_meth := self.find_method($obj, 'Bool');
        if nqp::defined($bool_meth) {
            nqp::setboolspec($obj, 0, $bool_meth)
        }
        else {
            nqp::setboolspec($obj, 5, nqp::null())
        }
    }


    # Creates the plan for building up the object. This works
    # out what we'll need to do up front, so we can just zip
    # through the "todo list" each time we need to make an object.
    # The plan is an array of tasks. A task is either a method to
    # be called, or an array in which The first element is an "op"
    # representing the task to perform:
    #   code = call specified BUILD method
    #   0 class name attr_name = find initialization value
    #   4 class attr_name code = call default value closure if uninitialized
    #   11 class name attr_name = find initialization value, or set nqp::list()
    #   12 class name attr_name = find initialization value, or set nqp::hash()
    # Note the numbers are a bit odd, but they are this way to conform to the
    # HLL version of BUILDALL.
    method create_BUILDPLAN($obj) {
        # First, we'll create the build plan for just this class.
        my @plan;
        my @attrs := $obj.HOW.attributes($obj, :local(1));

        # Does it have its own BUILD?
        my $build := $obj.HOW.method_table($obj)<BUILD>;
        if nqp::defined($build) {
            # We'll call the custom one.
            nqp::push(@plan, $build);
        }
        else {
            # No custom BUILD. Rather than having an actual BUILD
            # in Mu, we produce ops here per attribute that may
            # need initializing.
            for @attrs {
                my $attr_name := $_.name;
                my $name      := nqp::substr($attr_name, 2);
                my $sigil     := nqp::substr($attr_name, 0, 1);
                my $sigop     := $sigil eq '@' ?? 11 !! $sigil eq '%' ?? 12 !! 0;
                nqp::push(@plan, [$sigop, $obj, $attr_name, $name]);
            }
        }

        # Check if there's any default values to put in place.
        for @attrs {
            if nqp::can($_, 'build') {
                my $default := $_.build;
                if nqp::defined($default) {
                    nqp::push(@plan, [4, $obj, $_.name, $default]);
                }
            }
        }

        # Install plan for this class.
        @!BUILDPLAN := @plan;

        # Now create the full plan by getting the MRO, and working from
        # least derived to most derived, copying the plans.
        my @all_plan;
        my @mro := self.mro($obj);
        my $i := nqp::elems(@mro);
        while $i > 0 {
            $i := $i - 1;
            my $class := @mro[$i];
            for $class.HOW.BUILDPLAN($class) {
                nqp::push(@all_plan, $_);
            }
        }
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

    method parents($obj, :$local = 0) {
        $local ?? @!parents !! @!mro
    }

    method mro($obj) {
        @!mro
    }

    method roles($obj, :$local!) {
        @!roles
    }

    method role_typecheck_list($obj) {
        @!done;
    }

    method methods($obj, :$local = 0, :$all) {
        if $local {
            @!method_order
        }
        else {
            my @meths;
            for @!mro {
                for $_.HOW.methods($_, :local) {
                    nqp::push(@meths, $_)
                }
            }
            @meths
        }
    }

    method submethod_table($obj) {
        nqp::hash()
    }

    method method_table($obj) {
        %!methods
    }

    method name($obj) {
        $!name
    }

    method shortname($obj) {
        my @parts := nqp::split('::', self.name($obj) // '');
        @parts ?? @parts[nqp::elems(@parts) - 1] !! '<anon>'
    }

    method attributes($obj, :$local = 0) {
        my @attrs;
        if $local {
            for @!attributes {
                nqp::push(@attrs, $_);
            }
        }
        else {
            for @!mro {
                for $_.HOW.attributes($_, :local) {
                    nqp::push(@attrs, $_);
                }
            }
        }
        @attrs
    }


    ##
    ## Checky
    ##

    method isa($obj, $check) {
        my $check-class := $check.WHAT;
        my $i := nqp::elems(@!mro);
        while $i > 0 {
            $i := $i - 1;
            if @!mro[$i] =:= $check-class {
                return 1;
            }
        }
        return 0;
    }

    method does($obj, $check) {
        my $i := nqp::elems(@!done);
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
    method find_method($obj, $name, :$no_fallback = 0) {
        for @!mro {
            my %meths := $_.HOW.method_table($obj);
            my $found := nqp::atkey(%meths, $name);
            return $found if nqp::isconcrete($found);
        }
        nqp::null()
    }

    ##
    ## Cache-related
    ##

    method cache($obj, $key, $value_generator) {
        my %orig_cache := %!caches;
        nqp::ishash(%orig_cache) && nqp::existskey(%!caches, $key)
            ?? %!caches{$key}
            !! self.cache_add($obj, $key, $value_generator())
    }

    method flush_cache($obj) {
        nqp::scwbdisable();
        %!caches := {} unless nqp::isnull(%!caches);
        nqp::scwbenable();
    }

    method cache_get($obj, $key) {
        my %caches := %!caches;
        nqp::ishash(%caches) ?? nqp::atkey(%caches, $key) !! nqp::null()
    }

    method cache_add($obj, $key, $value) {
        my %orig_cache := %!caches;
        my %copy := nqp::ishash(%orig_cache) ?? nqp::clone(%orig_cache) !! {};
        %copy{$key} := $value;
        nqp::scwbdisable();
        %!caches := %copy;
        nqp::scwbenable();
        $value
    }

    ##
    ## Mix-ins
    ##
    has $!mixin_cache;
    method set_is_mixin($obj) { $!is_mixin := 1 }
    method is_mixin($obj) { $!is_mixin }
    method setup_mixin_cache($obj) {
        $!mixin_cache := NQPMixinCacheHOW.new_type($obj.WHAT);
    }

    method mixin($obj, $role) {
        my @roles;
        nqp::push(@roles, $role);

        my $mixin_type := nqp::parameterizetype($!mixin_cache, @roles);

        # If the original object was concrete, change its type by calling a
        # low level op. Otherwise, we just return the new type object
        nqp::isconcrete($obj) ??
            nqp::rebless($obj, $mixin_type) !!
            $mixin_type
    }

    method generate_mixin($obj, @roles) {
        my $role := nqp::atpos(@roles, 0);
        # Flush its cache as promised, otherwise outdated NFAs will stick around.
        self.flush_cache($obj) if !nqp::isnull($obj) || self.is_mixin($obj);
        # Work out a type name for the post-mixed-in role.
        my $new_name := self.name($obj) ~ '+{' ~ $role.HOW.name($role) ~ '}';

        # Create new type, derive it from ourself and then add
        # all the roles we're mixing it.
        my $new_type := self.new_type(:name($new_name), :repr($obj.REPR), :is_mixin);
        $new_type.HOW.add_parent($new_type, $obj.WHAT);
        $new_type.HOW.add_role($new_type, $role);
        $new_type.HOW.compose($new_type);

        $new_type
    }
}
