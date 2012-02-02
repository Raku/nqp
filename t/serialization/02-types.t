#! nqp

plan(12);

# Serializing a knowhow with no attributes and no methods; P6int REPR
# (very simple REPR).
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_1_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    my $type := pir::get_knowhow__P().new_type(:name('Badger'), :repr('P6int'));
    $type.HOW.compose($type);
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $type);
    pir::nqp_add_object_to_sc__vPiP($sc, 1, nqp::box_i(42, $type));
    
    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_1_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok(nqp::isconcrete($dsc[1]),              'instance deserialized and is concrete');
    ok(nqp::unbox_i($dsc[1]) == 42,           'serialized P6int instance has correct value');
    ok(nqp::istype($dsc[1], $dsc[0]),         'type checking is OK after deserialization');
    ok($dsc[0].HOW.name($dsc[0]) eq 'Badger', 'meta-object deserialized along with name');
}

# Serializing a type using P6opaque, which declares a couple of attributes, along
# with an instance of it.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_2_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    my $type := pir::get_knowhow__P().new_type(:name('Dugong'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, pir::get_knowhow_attribute__P().new(name => '$!home'));
    $type.HOW.compose($type);
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $type);
    
    my $instance := nqp::create($type);
    nqp::bindattr($instance, $type, '$!home', 'Sea');
    pir::nqp_add_object_to_sc__vPiP($sc, 1, $instance);
    
    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_2_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok(nqp::isconcrete($dsc[1]),              'instance deserialized and is concrete');
    ok(nqp::istype($dsc[1], $dsc[0]),         'type checking is OK after deserialization');
    ok($dsc[0].HOW.name($dsc[0]) eq 'Dugong', 'meta-object deserialized along with name');
    ok(nqp::getattr($dsc[1], $dsc[0], '$!home') eq 'Sea',
                                              'attribute declared in P6opaque-based type is OK');
}
