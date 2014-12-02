#! nqp

plan(14);

# Counter to make sure parameterization interning works right.
my int $num_parameterizations := 0;

# A coercion type HOW, as far as needed to test parameterization.
class SimpleCoerceHOW {
    method new_type() {
        my $type := nqp::newtype(self.new(), 'Uninstantiable');
        nqp::setparameterizer($type, -> $type, $params {
            # Re-use same HOW.
            $num_parameterizations++;
            nqp::newtype($type.HOW, 'Uninstantiable');
        });
        $type
    }

    method parameterize($coercion_types, $to, $from) {
        nqp::parameterizetype($coercion_types, [$to, $from]);
    }

    sub check_instantiated($coercion_type) {
        nqp::die('Cannot perform this operation on an uninstantiated coercion type')
            if nqp::isnull(nqp::typeparameterized($coercion_type));
    }

    method to_type($coercion_type) {
        check_instantiated($coercion_type);
        nqp::typeparameterat($coercion_type, 0)
    }

    method from_type($coercion_type) {
        check_instantiated($coercion_type);
        # Could be nqp::typeparameterat($coercion_type, 1), but want to test other op.
        nqp::atpos(nqp::typeparameters($coercion_type), 1)
    }
}

my $coercion_types := SimpleCoerceHOW.new_type();
ok(1, 'Can create a parameterized type');

my $failed := 0;
try {
    nqp::setparameterizer($coercion_types, -> $type, $params { });
    CATCH { $failed := 1; }
}
ok($failed, 'Cannot set up parametricity twice');

class A { }
class B { }
class C { }

ok($num_parameterizations == 0, 'Sanity: did not yet run parameterization closure');
my $ct1 := $coercion_types.HOW.parameterize($coercion_types, A, B);
ok($num_parameterizations == 1, 'Produced one parameterization');

ok(nqp::eqaddr($ct1.HOW, $coercion_types.HOW), 'TestCoerceHOW is shared');
ok(!nqp::eqaddr($ct1.WHAT, $coercion_types.WHAT), '.WHAT is not shared');

ok(nqp::eqaddr(nqp::typeparameterized($ct1), $coercion_types), 'Can get back to parametric type');

ok(nqp::eqaddr($ct1.HOW.to_type($ct1), A), 'Can get type parameter (1)');
ok(nqp::eqaddr($ct1.HOW.from_type($ct1), B), 'Can get type parameter (2)');

$failed := 0;
try {
    $coercion_types.HOW.to_type($coercion_types);
    CATCH { $failed := 1 }
}
ok($failed, 'Cannot get type parameters on the unparameterized coercion type');

my $ct2 := $coercion_types.HOW.parameterize($coercion_types, A, B);
ok($num_parameterizations == 1, 'Coercions are interned by type');
ok(nqp::eqaddr($ct1, $ct2), 'Really got back same coercion type');

my $ct3 := $coercion_types.HOW.parameterize($coercion_types, A, C);
ok($num_parameterizations == 2, 'Interning actually pays attention to types');
ok(!nqp::eqaddr($ct1, $ct3), 'Got back a different coercion type');
