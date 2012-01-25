#! nqp

plan(8);

# Serializing an empty SC.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_1_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    ok(nqp::chars($serialized) > 0,   'serialized empty SC to non-empty string');
    ok(nqp::chars($serialized) >= 36, 'output is at least as long as the header');
    ok(nqp::elems($sh) == 0,          'string heap empty with empty SC');

    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_1_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) == 0, 'deserialized SC is also empty');
}

# Serializing an SC with a single object with P6int REPR.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_2_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T1 is repr('P6int') { }
    my $v1 := nqp::box_i(42, T1);
    $sc[0] := $v1;

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6int output longer than a header');
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_2_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) == 1,       'deserialized SC has a single element');
    ok(nqp::istype($dsc[0], T1),    'deserialized object has correct type');
    ok(nqp::unbox_i($dsc[0]) == 42, 'deserialized object has correct value');
}
    
# Serializing an SC with a single object with P6num REPR.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_3_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T2 is repr('P6num') { }
    my $v := nqp::box_n(6.9, T2);
    $sc[0] := $v;

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6num output longer than a header');
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_3_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) == 1,        'deserialized SC has a single element');
    ok(nqp::istype($dsc[0], T2),     'deserialized object has correct type');
    ok(nqp::unbox_n($dsc[0]) == 6.9, 'deserialized object has correct value');
}

# Serializing an SC with a single object with P6str REPR.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_4_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T3 is repr('P6str') { }
    my $v := nqp::box_s('dugong', T3);
    $sc[0] := $v;

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6str output longer than a header');
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_4_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) == 1,             'deserialized SC has a single element');
    ok(nqp::istype($dsc[0], T3),          'deserialized object has correct type');
    ok(nqp::unbox_s($dsc[0]) eq 'dugong', 'deserialized object has correct value');
}

