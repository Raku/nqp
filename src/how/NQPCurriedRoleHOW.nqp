#- NQPCurriedRoleHOW -----------------------------------------------------------
knowhow NQPCurriedRoleHOW {
    has $!curried_role;
    has $!pos_args;

    my $archetypes := Archetypes.new( :nominal, :composable, :parametric );
    method archetypes($obj?) { $archetypes }

    method new(:$curried_role!, :@pos_args!) {
        my $obj := nqp::create(self);
        nqp::bindattr($obj, NQPCurriedRoleHOW, '$!curried_role', $curried_role);
        nqp::bindattr($obj, NQPCurriedRoleHOW, '$!pos_args',     @pos_args    );
        $obj
    }

    method new_type($curried_role!, *@pos_args) {
        my $meta := self.new(:$curried_role, :@pos_args);
        my $type := nqp::newtype($meta, 'Uninstantiable');
        nqp::settypehll($type, 'nqp');
        nqp::setdebugtypename($type, 'Curried ' ~ $curried_role.HOW.name($curried_role));
        $type
    }

    method specialize($obj, $class_arg) {
        $!curried_role.HOW.specialize($!curried_role, $class_arg, |$!pos_args);
    }

    method name($obj) {
        $!curried_role.HOW.name($!curried_role)
    }

    method shortname($obj) { shortened_name($obj) }

    method curried_role($obj) { $!curried_role }
    method tweaks($obj) { nqp::list }
}
