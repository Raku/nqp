#- NQPAttribute ----------------------------------------------------------------
knowhow NQPAttribute {
    has $!name;
    has $!type;
    has $!has_type;
    has $!box_target;
    has $!default;
    has $!has_default;
    has $!positional_delegate;
    has $!associative_delegate;

    method new(:$name!, :$box_target, *%_) {
        my $attr := nqp::create(self);
        my $what := $attr.WHAT;
        nqp::bindattr($attr, $what,
          '$!name', $name);
        nqp::bindattr($attr, $what,
          '$!box_target', bool($box_target));

        nqp::bindattr($attr, $what,
          '$!type', nqp::atkey(%_, 'type'));
        nqp::bindattr($attr, $what,
          '$!default', nqp::atkey(%_, 'default'));
        nqp::bindattr($attr, $what,
          '$!has_type', nqp::existskey(%_, 'type'));
        nqp::bindattr($attr, $what,
          '$!has_default', nqp::existskey(%_, 'default'));
        $attr
    }

    # Marker methods
    method is_built()      { 0 }
    method is_bound()      { 0 }
    method has_accessor()  { 0 }
    method build_closure() { 0 }

    # Accessors
    method name()                 { $!name                 }
    method box_target()           { $!box_target           }
    method positional_delegate()  { $!positional_delegate  }
    method associative_delegate() { $!associative_delegate }

    method type()                 { $!has_type    ?? $!type    !! nqp::null }
    method auto_viv_container()   { $!has_default ?? $!default !! nqp::null }

    # Mutators
    method set_box_target($box_target) {
        $!box_target := bool($box_target);
    }
    method set_positional_delegate($value) {
        $!positional_delegate := bool($value);
    }
    method set_associative_delegate($value) {
        $!associative_delegate := bool($value);
    }

    # Action methods
    method compose($obj) { $obj }
}
