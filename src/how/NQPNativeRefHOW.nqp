knowhow NQPNativeRefHOW {
    has $!name;
    has $!type;
    has $!refkind;
    has $!composed;
    has $!repr_composed;

    my $archetypes := Archetypes.new(:nominal);
    method archetypes() {
        $archetypes
    }

    method new(:$name) {
        my $self := nqp::create(self);
        nqp::bindattr($self, $?CLASS, '$!name', $name);
        $self
    }

    method new_type(:$name) {
        my $how := self.new();
        my $obj := nqp::newtype($how, 'NativeRef');
        nqp::settypehll($obj, 'nqp');
        nqp::setdebugtypename($obj, $name)
    }

    method set_native_type($obj, $type) {
        $!type := $type
    }

    method native_type($obj) {
        $!type
    }

    method set_ref_kind($obj, $refkind) {
        $!refkind := $refkind
    }

    method ref_kind($obj) {
        $!refkind
    }

    method compose($obj, *%named) {
        $obj := nqp::decont($obj);
        self.compose_repr($obj);
        self.publish_type_cache($obj);
        $!composed := 1;
        $obj
    }

    method is_composed($obj) {
        $!composed
    }

    method compose_repr($obj) {
        unless $!repr_composed {
            my $info := nqp::hash();
            $info<nativeref> := nqp::hash();
            $info<nativeref><type> := nqp::decont($!type);
            $info<nativeref><refkind> := $!refkind // 'unknown';
            nqp::composetype(nqp::decont($obj), $info);
            $!repr_composed := 1;
        }
    }

    method repr_composed($obj) {
        $!repr_composed
    }

    method publish_type_cache($obj) {
        nqp::settypecache($obj, nqp::list($obj, $!type))
    }
}
