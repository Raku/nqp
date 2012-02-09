#! nqp

use nqpmo;

plan(4);

# Serializing a type where some methods are clones; no dependency on outers
# just yet.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_1_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    my $m1 := method () { "success!" };
    pir::nqp_add_code_ref_to_sc__vPiP($sc, 0, $m1);
    pir::setprop__vPsP($m1, 'STATIC_CODE_REF', $m1);
    
    # Here we make a clone of it, which is what we're testing.
    my $m2 := pir::clone__PP($m1);
    
    my $type := pir::get_knowhow__P().new_type(:name('SimpleCloneTest'), :repr('P6opaque'));
    $type.HOW.add_method($type, 'original', $m1);
    $type.HOW.add_method($type, 'cloned', $m2);
    $type.HOW.compose($type);
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $type);
    
    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);

    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_1_OUT');
    my $cr := nqp::list($m1);
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh, $cr);
    
    ok(nqp::elems($dsc) >= 1,                 'deserialized SC has at least the type');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok($dsc[0].original eq 'success!',        'method call on static code object ok');
    ok($dsc[0].cloned eq 'success!',          'method call on cloned code object ok');
}
