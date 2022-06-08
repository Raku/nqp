knowhow NQPCurriedRoleHOW {
    has $!curried_role;
    has @!pos_args;
    has @!role_typecheck_list;

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
        @!role_typecheck_list := nqp::clone(
            nqp::how_nd($curried_role).role_typecheck_list($curried_role));
        nqp::unshift(@!role_typecheck_list, $curried_role);
    }

    method new_type($curried_role!, *@pos_args) {
        my $meta := self.new(:curried_role($curried_role), :pos_args(@pos_args));
        my $type := nqp::newtype($meta, 'Uninstantiable');
        nqp::settypehll($type, 'nqp');
        nqp::setdebugtypename($type, 'Curried ' ~ $curried_role.HOW.name($curried_role));

        my @rtl := $meta.role_typecheck_list($type);
        nqp::settypecache($type, @rtl);
        nqp::settypecheckmode($type,
            nqp::const::TYPE_CHECK_CACHE_DEFINITIVE);
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

    method role_typecheck_list($obj) {
        @!role_typecheck_list
    }

    method roles($obj, *%named) {
        $!curried_role.HOW.roles($!curried_role, |%named)
    }
}
