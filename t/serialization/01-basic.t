#! nqp

plan(4);

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
