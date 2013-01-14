#! nqp

use nqpmo;

plan(9);

# Serializing a type where some methods are clones; no dependency on outers
# just yet.
{
    my $sc := nqp::createsc('TEST_SC_1_IN');
    my $sh := nqp::list_s();
    
    my $m1 := (method () { "success!" }).get_lexinfo().get_static_code();
    pir::nqp_add_code_ref_to_sc__vPiP($sc, 0, $m1);
    pir::setprop__vPsP($m1, 'STATIC_CODE_REF', $m1);
    
    # Here we make a clone of it, which is what we're testing.
    my $m2 := nqp::clone($m1);
    
    my $type := pir::get_knowhow__P().new_type(:name('SimpleCloneTest'), :repr('P6opaque'));
    $type.HOW.add_method($type, 'original', $m1);
    $type.HOW.add_method($type, 'cloned', $m2);
    $type.HOW.compose($type);
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $type);
    
    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_1_OUT');
    my $cr := nqp::list($m1);
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());
    
    ok(nqp::elems($dsc) >= 1,                 'deserialized SC has at least the type');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok($dsc[0].original eq 'success!',        'method call on static code object ok');
    ok($dsc[0].cloned eq 'success!',          'method call on cloned code object ok');
}

# Serializing a type where some methods are clones and depend on lexical
# environment. This is kinda faking up how roles work.
{
    my $sc := nqp::createsc('TEST_SC_2_IN');
    my $sh := nqp::list_s();
    
    my $raw_sub := (sub make_meth_with($x) {
        my $m := method () { $x };
        $m;
    }).get_lexinfo().get_static_code();
    
    my $m1 := $raw_sub('dolphin');
    my $m2 := $raw_sub('whale');
    
    # one more invocation just to avoid getting lucky...
    $raw_sub('XXX');
    
    pir::nqp_add_code_ref_to_sc__vPiP($sc, 0, $raw_sub);
    pir::setprop__vPsP($raw_sub, 'STATIC_CODE_REF', $raw_sub);
    
    my $raw_meth := $m1.get_lexinfo().get_static_code();
    pir::nqp_add_code_ref_to_sc__vPiP($sc, 1, $raw_meth);
    pir::setprop__vPsP($raw_meth, 'STATIC_CODE_REF', $raw_meth);
    
    my $type1 := pir::get_knowhow__P().new_type(:name('RoleLikeTest1'), :repr('P6opaque'));
    $type1.HOW.add_method($type1, 'm', $m1);
    $type1.HOW.compose($type1);
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $type1);
    
    my $type2 := pir::get_knowhow__P().new_type(:name('RoleLikeTest2'), :repr('P6opaque'));
    $type2.HOW.add_method($type2, 'm', $m2);
    $type2.HOW.compose($type2);
    pir::nqp_add_object_to_sc__vPiP($sc, 1, $type2);
    
    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_2_OUT');
    my $cr := nqp::list($raw_sub, $raw_meth);
    nqp::deserialize($serialized, $dsc, $sh, $cr, nqp::null());
    
    ok(nqp::elems($dsc) >= 2,                 'deserialized SC has at least the two type');
    ok(!nqp::isconcrete($dsc[0]),             'first type object deserialized and is not concrete');
    ok(!nqp::isconcrete($dsc[1]),             'second type object deserialized and is not concrete');
    ok($dsc[0].m eq 'dolphin',                'first method call got correct deserialized outer');
    ok($dsc[1].m eq 'whale',                  'second method call got correct deserialized outer');
}
