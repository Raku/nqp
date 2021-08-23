use nqpmo;

plan(55);

sub add_to_sc($sc, $idx, $obj) {
    nqp::scsetobj($sc, $idx, $obj);
    nqp::setobjsc($obj, $sc);
}

# Serializing a knowhow with no attributes and no methods; P6int REPR
# (very simple REPR).
{
    my $sc := nqp::createsc('TEST_SC_1_IN');
    my $sh := nqp::list_s();

    my $type := nqp::knowhow().new_type(:name('Badger'), :repr('P6int'));
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);
    add_to_sc($sc, 1, nqp::box_i(42, $type));

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_1_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete(nqp::scgetobj($dsc, 0)),   'type object deserialized and is not concrete');
    ok(nqp::isconcrete(nqp::scgetobj($dsc, 1)),    'instance deserialized and is concrete');
    ok(nqp::unbox_i(nqp::scgetobj($dsc, 1)) == 42, 'serialized P6int instance has correct value');
    ok(nqp::istype(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0)),         'type checking is OK after deserialization');
    ok(nqp::scgetobj($dsc, 0).HOW.name(nqp::scgetobj($dsc, 0)) eq 'Badger', 'meta-object deserialized along with name');
}

# Serializing a type using P6opaque, which declares an attribute, along
# with an instance of it.
{
    my $sc := nqp::createsc('TEST_SC_2_IN');
    my $sh := nqp::list_s();

    my $type := nqp::knowhow().new_type(:name('Dugong'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, nqp::knowhowattr().new(name => '$!home'));
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);

    my $instance := nqp::create($type);
    nqp::bindattr($instance, $type, '$!home', 'Sea');
    add_to_sc($sc, 1, $instance);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_2_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete(nqp::scgetobj($dsc, 0)),   'type object deserialized and is not concrete');
    ok(nqp::isconcrete(nqp::scgetobj($dsc, 1)),    'instance deserialized and is concrete');
    ok(nqp::istype(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0)),         'type checking is OK after deserialization');
    ok(nqp::scgetobj($dsc, 0).HOW.name(nqp::scgetobj($dsc, 0)) eq 'Dugong', 'meta-object deserialized along with name');
    ok(nqp::getattr(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0), '$!home') eq 'Sea',
        'attribute declared in P6opaque-based type is OK');
}

# Serializing a P6opaque type with natively typed attributes, this time using NQPClassHOW.
{
    my $sc := nqp::createsc('TEST_SC_3_IN');
    my $sh := nqp::list_s();

    my $type := NQPClassHOW.new_type(:name('Badger'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, NQPAttribute.new(name => '$!eats', type => str));
    $type.HOW.add_attribute($type, NQPAttribute.new(name => '$!age', type => int));
    $type.HOW.add_attribute($type, NQPAttribute.new(name => '$!weight', type => num));
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);

    my $instance := nqp::create($type);
    nqp::bindattr_s($instance, $type, '$!eats', 'mushrooms');
    nqp::bindattr_i($instance, $type, '$!age', 5);
    nqp::bindattr_n($instance, $type, '$!weight', 2.3);
    add_to_sc($sc, 1, $instance);

    my $defaults := nqp::create($type);

    add_to_sc($sc, 2, $defaults);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_3_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete(nqp::scgetobj($dsc, 0)),   'type object deserialized and is not concrete');
    ok(nqp::isconcrete(nqp::scgetobj($dsc, 1)),    'instance deserialized and is concrete');
    ok(nqp::istype(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0)),         'type checking is OK after deserialization');
    ok(nqp::scgetobj($dsc, 0).HOW.name(nqp::scgetobj($dsc, 0)) eq 'Badger', 'meta-object deserialized along with name');
    ok(nqp::getattr_s(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0), '$!eats') eq 'mushrooms',
                                              'str attribute declared in P6opaque-based type is OK');
    ok(nqp::getattr_i(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0), '$!age') == 5,
                                              'int attribute declared in P6opaque-based type is OK');
    ok(nqp::getattr_n(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0), '$!weight') == 2.3,
                                              'num attribute declared in P6opaque-based type is OK');

    ok(nqp::isnull_s(nqp::getattr_s(nqp::scgetobj($dsc, 2), nqp::scgetobj($dsc, 0), '$!eats')),
        'default str value is OK');
    ok(nqp::getattr_i(nqp::scgetobj($dsc, 2), nqp::scgetobj($dsc, 0), '$!age') == 0,
        'default int value is OK');
    ok(nqp::getattr_n(nqp::scgetobj($dsc, 2), nqp::scgetobj($dsc, 0), '$!weight') == 0,
        'default num value is OK');

    my $other_instance := nqp::create(nqp::scgetobj($dsc, 0));
    ok(nqp::isconcrete($other_instance), 'can make new instance of deserialized type');

    nqp::bindattr_s($other_instance, nqp::scgetobj($dsc, 0), '$!eats', 'snakes');
    nqp::bindattr_i($other_instance, nqp::scgetobj($dsc, 0), '$!age', 10);
    nqp::bindattr_n($other_instance, nqp::scgetobj($dsc, 0), '$!weight', 3.4);
    ok(nqp::getattr_s($other_instance, nqp::scgetobj($dsc, 0), '$!eats') eq 'snakes',
                                              'str attribute in new instance OK');
    ok(nqp::getattr_i($other_instance, nqp::scgetobj($dsc, 0), '$!age') == 10,
                                              'int attribute in new instance OK');
    ok(nqp::getattr_n($other_instance, nqp::scgetobj($dsc, 0), '$!weight') == 3.4,
                                              'num attribute in new instance OK');
}

# Serializing a type with methods (P6opaque REPR, NQPClassHOW)
{
    my $sc := nqp::createsc('TEST_SC_4_IN');
    my $sh := nqp::list_s();

    my $m1 := method () { "awful" };
    my $m2 := method () { "Hi, I'm " ~ nqp::getattr(self, self.WHAT, '$!name') };
    nqp::scsetcode($sc, 0, $m1);
    nqp::scsetcode($sc, 1, $m2);
    nqp::markcodestatic($m1);
    nqp::markcodestatic($m2);

    my $type := NQPClassHOW.new_type(:name('Llama'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, NQPAttribute.new(name => '$!name'));
    $type.HOW.add_method($type, 'smell', $m1);
    $type.HOW.add_method($type, 'intro', $m2);
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);

    my $instance := nqp::create($type);
    nqp::bindattr($instance, $type, '$!name', 'Bob');
    add_to_sc($sc, 1, $instance);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_4_OUT');
    my $cr := nqp::list($m1, $m2);
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    ok(nqp::scobjcount($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete(nqp::scgetobj($dsc, 0)),   'type object deserialized and is not concrete');
    ok(nqp::isconcrete(nqp::scgetobj($dsc, 1)),    'instance deserialized and is concrete');
    ok(nqp::istype(nqp::scgetobj($dsc, 1), nqp::scgetobj($dsc, 0)), 'type checking is OK after deserialization');
    ok(nqp::scgetobj($dsc, 0).smell eq 'awful',       'method call on deserialized type object ok');
    ok(nqp::scgetobj($dsc, 1).smell eq 'awful',       'method call on deserialized instance object ok');
    ok(nqp::scgetobj($dsc, 1).intro eq "Hi, I'm Bob", 'method call accessing instance attributes ok');
}

# Serializing a type with boolification (P6opaque REPR, NQPClassHOW)
{
    my $sc := nqp::createsc('TEST_SC_5_IN');
    my $sh := nqp::list_s();


    my $half-true := method () {
        nqp::bindattr(self, self.WHAT, '$!bool', !nqp::getattr(self, self.WHAT, '$!bool'));
        nqp::getattr(self, self.WHAT, '$!bool')
    };

    nqp::scsetcode($sc, 0, $half-true);
    nqp::markcodestatic($half-true);

    my $type := NQPClassHOW.new_type(:name('Llama'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, NQPAttribute.new(name => '$!bool'));
    $type.HOW.add_method($type, 'half-true', $half-true);
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);
    nqp::setboolspec($type, 0, $half-true);

    my $instance := nqp::create($type);
    nqp::bindattr($instance, $type, '$!bool', 1);
    add_to_sc($sc, 0, $instance);

    my $serialized := nqp::serialize($sc, $sh);


    my $dsc := nqp::createsc('TEST_SC_5_OUT');
    my $cr := nqp::list($half-true);
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    ok(nqp::scobjcount($dsc) >= 2, 'deserialized SC has at least the knowhow type and its instance');

    my $obj := nqp::scgetobj($dsc, 0);

    ok(nqp::istrue($obj) == 0, "checking our custom boolifier is called... 1/3");
    ok(nqp::istrue($obj) == 1, "checking our custom boolifier is called... 2/3");
    ok(nqp::istrue($obj) == 0, "checking our custom boolifier is called... 3/3");

}

# Serializing a type with box_target attribute
{
    my $sc := nqp::createsc('TEST_SC_7_IN');
    my $sh := nqp::list_s();

    my $type := NQPClassHOW.new_type(:name('boxing_test'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, NQPAttribute.new(
        :name('$!value'), :type(int), :box_target(1)
    ));
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);

    my $instance := nqp::box_i(4, $type);
    add_to_sc($sc, 1, $instance);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_7_OUT');
    my $cr := nqp::list();
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    ok(nqp::unbox_i(nqp::box_i(7, nqp::scgetobj($dsc, 0))) == 7, "can use deserialized type for boxing");
    ok(nqp::unbox_i(nqp::scgetobj($dsc, 1)) == 4, "can unbox deserialized object - int");
}

# Serializing a P6bigint repr
{
    my $sc := nqp::createsc('TEST_SC_8_IN');
    my $sh := nqp::list_s();

    my $knowhow := nqp::knowhow();
    my $type := $knowhow.new_type(:name('TestBigInt'), :repr('P6bigint'));
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);

    my $instance := nqp::box_i(147, $type);
    add_to_sc($sc, 1, $instance);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_8_OUT');
    my $cr := nqp::list();
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    ok(nqp::unbox_i(nqp::scgetobj($dsc, 1)) == 147, "can unbox serialized bigint");
}

# Serializing a type with box_target attribute and P6bigint type
{
    my $bi_type := NQPClassHOW.new_type(:name('TestBigInt'), :repr('P6bigint'));
    $bi_type.HOW.add_parent($bi_type, NQPMu);
    $bi_type.HOW.compose($bi_type);

    my $sc := nqp::createsc('TEST_SC_9_IN');
    my $sh := nqp::list_s();

    my $type := NQPClassHOW.new_type(:name('boxing_test'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, NQPAttribute.new(
        :name('$!value'), :type($bi_type), :box_target(1)
    ));
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);

    add_to_sc($sc, 0, $bi_type);

    my $instance := nqp::box_i(4, $bi_type);
    add_to_sc($sc, 1, $instance);

    my $instance2 := nqp::box_i(5, $bi_type);
    add_to_sc($sc, 2, $instance2);

    add_to_sc($sc, 3, $type);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_9_OUT');
    my $cr := nqp::list();
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    ok(nqp::unbox_i(nqp::box_i(7, nqp::scgetobj($dsc, 0))) == 7, "can use deserialized type for boxing - got " ~ nqp::scgetobj($dsc,0));
    ok(nqp::unbox_i(nqp::box_i(8, nqp::scgetobj($dsc, 3))) == 8, "can use deserialized type for boxing");
    ok(nqp::unbox_i(nqp::scgetobj($dsc, 1)) == 4, "can unbox bigint obj");
    ok(nqp::unbox_i(nqp::scgetobj($dsc, 2)) == 5, "can unbox autoboxed bigint obj");
}

# Serializing a parameterized type
{
    my $sc := nqp::createsc('TEST_SC_10_IN');
    my $sh := nqp::list_s();

    my $cr := nqp::list();

    my $count := 0;

    class SimpleCoerceHOW {
        method new_type() {
            my $type := nqp::newtype(self.new(), 'Uninstantiable');

            my $parameterizer := -> $type, $params {
                # Re-use same HOW.
                $count := $count + 1;
                nqp::newtype($type.HOW, 'Uninstantiable');
            }

            $cr[0] := $parameterizer;
            nqp::scsetcode($sc, 0, $parameterizer);
            nqp::markcodestatic($parameterizer);

            nqp::setparameterizer($type, $parameterizer);
            $type
        }

        method parameterize($type, $params) {
            nqp::parameterizetype($type, $params);
        }
    }

    my $with_param := SimpleCoerceHOW.new_type();


    my $hi := $with_param.HOW.parameterize($with_param, ["Hi"]);

    class Foo {}
    class Bar {}

    my $with_foo := $with_param.HOW.parameterize($with_param, [Foo]);

    add_to_sc($sc, 0, $with_param);

    add_to_sc($sc, 1, $hi);

    add_to_sc($sc, 2, $with_foo);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_10_OUT');
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    my $type := nqp::scgetobj($dsc, 0);

    my $hello := $type.HOW.parameterize($type, ["Hello"]);
    ok(nqp::typeparameterat($hello, 0) eq "Hello", "We can serialize a parameteric type");

    my $dsc_hi := nqp::scgetobj($dsc, 1);

    ok(nqp::typeparameterat($dsc_hi, 0) eq "Hi", "We can serialize a parameterized type");

    my $dsc_with_foo := nqp::scgetobj($dsc, 2);

    ok(nqp::eqaddr(nqp::typeparameterat($dsc_with_foo, 0), Foo), "Type parameterized with type object is serialized correctly");

    my $new_with_foo := $type.HOW.parameterize($type, [Foo]);
    my $new_with_bar := $type.HOW.parameterize($type, [Bar]);

    ok(nqp::eqaddr(nqp::typeparameterat($new_with_foo, 0), Foo), "We can parameterize with a type object using a deserialized parameterizer ");

    #ok(nqp::eqaddr($new_with_foo, $dsc_with_foo), "We get stuff from the type cache");
    ok(!nqp::eqaddr($new_with_bar, $dsc_with_foo), "Parameterizing with a type object that's not in cache");

}

# Serializing a type with HLL owner
{
    my $type := NQPClassHOW.new_type(:name('hll test'), :repr('P6opaque'));
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);

    nqp::settypehll($type, "foo");

    class Baz {
    }

    nqp::sethllconfig('foo', nqp::hash(
        'foreign_transform_array', -> $array {
            nqp::list('fooifed');
         },
        'hllize_dispatcher', 'foo-hllize',
    ));
    nqp::sethllconfig('baz', nqp::hash(
        'foreign_transform_array', -> $array {
            Baz;
        },
        'hllize_dispatcher', 'baz-hllize',
    ));
    nqp::dispatch('boot-syscall', 'dispatcher-register', 'foo-hllize', -> $capture {
        nqp::dispatch('boot-syscall', 'dispatcher-guard-type',
            nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0));
        my $obj := nqp::captureposarg($capture, 0);

        my $role := nqp::gettypehllrole($obj);
        if ($role == 4) {
            nqp::dispatch(
                'boot-syscall', 'dispatcher-delegate', 'lang-call',
                nqp::dispatch(
                    'boot-syscall', 'dispatcher-insert-arg-literal-obj',
                    $capture, 0, -> $array { nqp::list('fooifed') },
                )
            )
        }
        else {
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-value', $capture);
        }
    });
    nqp::dispatch('boot-syscall', 'dispatcher-register', 'baz-hllize', -> $capture {
        nqp::dispatch('boot-syscall', 'dispatcher-guard-type',
            nqp::dispatch('boot-syscall', 'dispatcher-track-arg', $capture, 0));
        my $obj := nqp::captureposarg($capture, 0);

        my $role := nqp::gettypehllrole($obj);
        if ($role == 4) {
            nqp::dispatch(
                'boot-syscall', 'dispatcher-delegate', 'lang-call',
                nqp::dispatch(
                    'boot-syscall', 'dispatcher-insert-arg-literal-obj',
                    $capture, 0, -> $array { Baz },
                )
            )
        }
        else {
            nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-value', $capture);
        }
    });

    my $sc := nqp::createsc('TEST_SC_11_IN');
    my $sh := nqp::list_s();

    my $cr := nqp::list();

    add_to_sc($sc, 0, $type);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_11_OUT');
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    my $obj := nqp::create(nqp::scgetobj($dsc, 0));

    nqp::settypehllrole(nqp::scgetobj($dsc, 0), 4);

    ok(nqp::eqaddr(nqp::hllizefor($obj, "foo"), $obj), "correct hll prevents convertion");
    ok(nqp::eqaddr(nqp::hllizefor($obj, "baz"), Baz), "in this case it's converted anyway");
}

# Serializing a type with HLL role
{

    my $type := NQPClassHOW.new_type(:name('hll test'), :repr('P6opaque'));
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);

    nqp::settypehllrole($type, 4);

    nqp::sethllconfig('somelang', nqp::hash(
        'foreign_transform_array', -> $array {
            nqp::list('fooifed');
        },
        'hllize_dispatcher', 'foo-hllize', # same as foo
    ));
    my $sc := nqp::createsc('TEST_SC_12_IN');
    my $sh := nqp::list_s();

    my $cr := nqp::list();

    add_to_sc($sc, 0, $type);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_12_OUT');
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    my $obj := nqp::scgetobj($dsc, 0).new;


    my $hllized := nqp::hllizefor($obj, "somelang");
    ok(nqp::atpos($hllized, 0) eq "fooifed", "hll role is preserved correctly");
}

# Setting the type check mode nqp::const::TYPE_CHECK_NEEDS_ACCEPTS is preserved by serialization
{
    my class AcceptingType {
        has int $!accepts_type_called;

        has $!accepts;

        method accepts_type_called() {
            $!accepts_type_called;
        }
        method accepts_type($type, $obj) {
            $!accepts_type_called := $!accepts_type_called + 1;
            $!accepts;
        }
        method new_type() {
            nqp::newtype(self, 'Uninstantiable');
        }
    }

    my class Bar { }

    my $type := AcceptingType.new(accepts => 1).new_type;
    nqp::composetype($type, nqp::hash());

    my $sc := nqp::createsc('TEST_SC_13_IN');
    my $sh := nqp::list_s();

    my $cr := nqp::list();

    add_to_sc($sc, 0, $type);

    nqp::settypecheckmode($type, nqp::const::TYPE_CHECK_NEEDS_ACCEPTS);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_13_OUT');
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    my $dsc_type := nqp::scgetobj($dsc, 0);

    ok(nqp::istype(Bar, $dsc_type), 'nqp::const::TYPE_CHECK_NEEDS_ACCEPTS is preserved after serialization');
    is($dsc_type.HOW.accepts_type_called, 1, 'accepts_type is called when needed');

}

{
    my $sc := nqp::createsc('TEST_SC_14_IN');
    my $sh := nqp::list_s();

    my $parameterizer := -> $type, $params {
        nqp::newtype($type.HOW, 'Uninstantiable');
    };
    nqp::scsetcode($sc, 0, $parameterizer);
    nqp::markcodestatic($parameterizer);

    my $cr := nqp::list($parameterizer);

    my $parametric_type := NQPClassHOW.new_type(:name('Parametric'), :repr('P6opaque'));
    $parametric_type.HOW.add_parent($parametric_type, NQPMu);


    nqp::setparameterizer($parametric_type, $parameterizer);
    $parametric_type.HOW.compose($parametric_type);
    add_to_sc($sc, 0, $parametric_type);

    my $param_type := NQPClassHOW.new_type(:name('ParamType'), :repr('P6opaque'));
    $param_type.HOW.add_parent($param_type, NQPMu);
    $param_type.HOW.compose($param_type);
    add_to_sc($sc, 1, $param_type);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_14_OUT');
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());

    my $dsc_parametric_type := nqp::scgetobj($dsc, 0);
    my $dsc_param_type := nqp::scgetobj($dsc, 1);

    my $parameterized1 := nqp::parameterizetype($dsc_parametric_type, [$dsc_param_type]);

    my $sc2 := nqp::createsc('TEST_SC_15_IN');
    my $sh2 := nqp::list_s();

    add_to_sc($sc2, 0, $parameterized1);

    my $serialized2 := nqp::serialize($sc2, $sh2);

    my $cr2 := nqp::list();

    my $dsc2 := nqp::createsc('TEST_SC_15_OUT');
    nqp::deserialize($serialized2, $dsc2, $sh2, $cr2, nqp::null());

    my $dsc3 := nqp::createsc('TEST_SC_16_OUT');
    nqp::deserialize($serialized2, $dsc3, $sh2, $cr2, nqp::null());

    my $dsc_parameterized_a := nqp::scgetobj($dsc2, 0);
    my $dsc_parameterized_b := nqp::scgetobj($dsc3, 0);
}
