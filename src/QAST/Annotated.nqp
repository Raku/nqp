# Composed or mixed in to any node that also has a compile-time known value.
role QAST::Annotated {
    has %!annotations;

    method is_annotated() {
        1
    }

    method ann($key, $value = NO_VALUE) {
        if !($value =:= NO_VALUE) {
            if nqp::isnull($value) {
                nqp::deletekey(%!annotations, $key);
                NQPMu;
            } else {
                nqp::bindkey(%!annotations, $key, $value);
                $value;
            }
        } else {
            nqp::atkey(%!annotations, $key);
        }
    }

    method initialize_annotations() {
        %!annotations := nqp::hash();
    }

    method has_ann($key) {
        nqp::existskey(%!annotations, $key);
    }
}
