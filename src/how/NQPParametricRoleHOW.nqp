# This implements a parametric role (that is, one that has yet to be
# parameterized to get a concrete role that we can actually compose
# into a class or mix into an object). It also contains the logic to
# reify it into an actual role.
knowhow NQPParametricRoleHOW {
    ##
    ## Attributes
    ##

    # Name of the parametric role.
    has $!name;

    # Attributes and methods.
    has @!attributes;
    has %!methods;
    has @!multi_methods_to_incorporate;

    # Other roles that this one does.
    has @!roles;

    # Have we been composed?
    has $!composed;

    # The body block of the role. (If we were to support multiple role
    # variants with the same name, this would be a multi. However, we
    # don't do that in NQP.)
    has $!body_block;

    my $archetypes := Archetypes.new( :nominal(1), :composable(1), :parametric(1) );
    method archetypes() {
        $archetypes
    }

    ##
    ## Declarative
    ##

    # Creates a new instance of this meta-class.
    method new(:$name!) {
        my $obj := nqp::create(self);
        $obj.BUILD(:name($name));
        $obj
    }

    method BUILD(:$name!) {
        $!name := $name;
        @!attributes := nqp::list();
        %!methods := nqp::hash();
        @!multi_methods_to_incorporate := nqp::list();
        @!roles := nqp::list();
        $!composed := 0;
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$name = '<anon>') {
        my $metarole := self.new(:name($name));
        nqp::setwho(nqp::newtype($metarole, 'Uninstantiable'), {});
    }
    
    method set_body_block($obj, $body_block) {
        $!body_block := $body_block;
    }

    method add_method($obj, $name, $code_obj) {
        if nqp::existskey(%!methods, $name) {
            nqp::die("This role already has a method named " ~ $name);
        }
        %!methods{$name} := $code_obj;
    }

    method add_multi_method($obj, $name, $code_obj) {
        my %todo;
        %todo<name> := $name;
        %todo<code> := $code_obj;
        nqp::push(@!multi_methods_to_incorporate, %todo);
        $code_obj;
    }

    method add_attribute($obj, $meta_attr) {
        my $name := $meta_attr.name;
        for @!attributes {
            if $_.name eq $name {
                nqp::die("This role already has an attribute named " ~ $name);
            }
        }
        nqp::push(@!attributes, $meta_attr);
    }

    method add_parent($obj, $parent) {
        nqp::die("A role cannot inherit from a class")
    }

    method add_role($obj, $role) {
        nqp::push(@!roles, $role);
    }

    # Compose the role. Beyond this point, no changes are allowed.
    method compose($obj) {
        $!composed := 1;
        nqp::settypecache($obj, [$obj.WHAT]);
        nqp::setmethcache($obj, {});
        nqp::setmethcacheauth($obj, 1);
        $obj
    }


    ##
    ## Parametricity
    ##

    # Method to indicate that this type is parametric.
    method parametric($obj) {
        1
    }
    
    # Curries this parametric role with arguments.
    method curry($obj, *@args) {
        NQPCurriedRoleHOW.new_type($obj, |@args)
    }

    # This specializes the role for the given class and builds a concrete
    # role.
    method specialize($obj, $class_arg, *@args) {
        # Run the body block to capture the arguments into the correct
        # type argument context.
        my $pad := $!body_block($class_arg, |@args);

        # Construct a new concrete role.
        my $irole := NQPConcreteRoleHOW.new_type(:name($!name), :instance_of($obj));

        # Copy attributes. (Nothing to reify in NQP as we don't currently
        # have parametric types that may end up in the signature.)
        for @!attributes {
            $irole.HOW.add_attribute($irole, $_);
        }

        # Capture methods in the correct lexical context.
        for %!methods {
            my $name := nqp::iterkey_s($_);
            my $meth := nqp::can(nqp::iterval($_), 'instantiate_generic')
                ?? nqp::iterval($_).instantiate_generic($pad)
                !! nqp::iterval($_).clone();
            if nqp::eqat($name, '!!LATENAME!!', 0) {
                $name := nqp::atkey($pad, nqp::substr($name, 12));
                $meth.'!set_name'($name);
            }
            $irole.HOW.add_method($irole, $name, $meth);
        }
        for @!multi_methods_to_incorporate {
            $irole.HOW.add_multi_method($irole, $_<name>, $_<code>.clone());
        }

        # Copy roles, instantiating them as we go.
        for @!roles {
            my $specialized := $_.HOW.specialize($_, $class_arg);
            $irole.HOW.add_role($irole, $specialized);
        }

        # Compose and return produced role.
        $irole.HOW.compose($irole);
        return $irole;
    }

    ##
    ## Introspecty
    ##

    method methods($obj, :$local) {
        my @meths;
        for %!methods {
            nqp::push(@meths, nqp::iterval($_));
        }
        @meths
    }

    method method_table($obj) {
        %!methods
    }

    method name($obj) {
        $!name
    }

    method attributes($obj, :$local) {
        my @attrs;
        for @!attributes {
            nqp::push(@attrs, $_);
        }
        @attrs
    }

    method roles($obj) {
        @!roles
    }
}
