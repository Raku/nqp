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
    has %!attributes;
    has %!methods;

    # Have we been composed?
    has $!composed;

    # The body block of the role. (If we were to support multiple role
    # variants with the same name, this would be a multi. However, we
    # don't do that in NQP.)
    has $!body_block;


    ##
    ## Declarative
    ##

    # Creates a new instance of this meta-class.
    method new(:$name!, :$body_block!) {
        my $obj := pir::repr_instance_of__PP(self);
        $obj.BUILD(:name($name), :body_block($body_block));
        $obj
    }

    method BUILD(:$name!, :$body_block!) {
        $!name := $name;
        $!body_block := $body_block;
    }

    # Create a new meta-class instance, and then a new type object
    # to go with it, and return that.
    method new_type(:$body_block!, :$name = '<anon>', :$repr = 'P6opaque') {
        my $metarole := self.new(:name($name), :body_block($body_block));
        pir::repr_type_object_for__PPS($metarole, $repr);
    }

    # Compose the role. Beyond this point, no changes are allowed.
    method compose($obj) {
        $!composed := 1;
        $obj
    }


    ##
    ## Parametricity
    ##

    # Method to indicate that this type is parametric.
    method parametric($obj) {
        1
    }

    # This instantiates the role with arguments and builds a concrete
    # role.
    method instantiate($obj, *@pos_args, *%named_args) {
        # Run the body block to capture the arguments into the correct
        # type argument context.
        $!body_block(|@pos_args, |%named_args);

        # Construct a new concrete role.
        my $irole := NQPConcreteRoleHOW.new_type(:name($!name));

        # XXX Much comes here
        
        # Compose and return produced role.
        $irole.HOW.compose($irole);
        return $irole;
    }


    ##
    ## Introspecty
    ##

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
}
