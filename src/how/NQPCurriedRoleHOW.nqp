knowhow NQPCurriedRoleHOW {
    has $!curried_role;
    has @!pos_args;
    
    my $archetypes := Archetypes.new( :nominal(1), :composable(1), :parametric(1) );
    method archetypes() {
        $archetypes
    }
    
    method new(:$curried_role!, :@pos_args!) {
        my $obj := nqp::create(self);
        $obj.BUILD(:$curried_role, :@pos_args);
        $obj
    }

    method BUILD(:$curried_role!, :@pos_args!) {
        $!curried_role := $curried_role;
        @!pos_args := @pos_args;
    }
    
    method new_type($curried_role!, *@pos_args) {
        my $meta := self.new(:curried_role($curried_role), :pos_args(@pos_args));
        nqp::newtype($meta, 'Uninstantiable');
    }
    
    method specialize($obj, $class_arg) {
        $!curried_role.HOW.specialize($!curried_role, $class_arg, |@!pos_args);
    }
    
    method name($obj) {
        $!curried_role.HOW.name($!curried_role)
    }

    method shortname($obj) {
        my @parts := nqp::split('::', self.name($obj) // '');
        @parts ?? @parts[nqp::elems(@parts) - 1] !! '<anon>'
    }
    
    method curried_role($obj) {
        $!curried_role
    }
}
