#! nqp

use nqpmo;

plan(31);

sub add_to_sc($sc, $idx, $obj) {
    nqp::scsetobj($sc, $idx, $obj);
    nqp::setobjsc($obj, $sc);
}

# Serializing a knowhow with no attributes and no methods; P6int REPR
# (very simple REPR).
{
    my $sc := nqp::createsc('TEST_SC_1_IN');
    my $sh := nqp::list_s();
    
    my $type := pir::get_knowhow__P().new_type(:name('Badger'), :repr('P6int'));
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);
    add_to_sc($sc, 1, nqp::box_i(42, $type));
    
    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_1_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::elems($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok(nqp::isconcrete($dsc[1]),              'instance deserialized and is concrete');
    ok(nqp::unbox_i($dsc[1]) == 42,           'serialized P6int instance has correct value');
    ok(nqp::istype($dsc[1], $dsc[0]),         'type checking is OK after deserialization');
    ok($dsc[0].HOW.name($dsc[0]) eq 'Badger', 'meta-object deserialized along with name');
}

# Serializing a type using P6opaque, which declares an attribute, along
# with an instance of it.
{
    my $sc := nqp::createsc('TEST_SC_2_IN');
    my $sh := nqp::list_s();
    
    my $type := pir::get_knowhow__P().new_type(:name('Dugong'), :repr('P6opaque'));
    $type.HOW.add_attribute($type, pir::get_knowhow_attribute__P().new(name => '$!home'));
    $type.HOW.compose($type);
    add_to_sc($sc, 0, $type);
    
    my $instance := nqp::create($type);
    nqp::bindattr($instance, $type, '$!home', 'Sea');
    add_to_sc($sc, 1, $instance);
    
    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_2_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::elems($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok(nqp::isconcrete($dsc[1]),              'instance deserialized and is concrete');
    ok(nqp::istype($dsc[1], $dsc[0]),         'type checking is OK after deserialization');
    ok($dsc[0].HOW.name($dsc[0]) eq 'Dugong', 'meta-object deserialized along with name');
    ok(nqp::getattr($dsc[1], $dsc[0], '$!home') eq 'Sea',
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
    
    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_3_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::elems($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok(nqp::isconcrete($dsc[1]),              'instance deserialized and is concrete');
    ok(nqp::istype($dsc[1], $dsc[0]),         'type checking is OK after deserialization');
    ok($dsc[0].HOW.name($dsc[0]) eq 'Badger', 'meta-object deserialized along with name');
    ok(nqp::getattr_s($dsc[1], $dsc[0], '$!eats') eq 'mushrooms',
                                              'str attribute declared in P6opaque-based type is OK');
    ok(nqp::getattr_i($dsc[1], $dsc[0], '$!age') == 5,
                                              'int attribute declared in P6opaque-based type is OK');
    ok(nqp::getattr_n($dsc[1], $dsc[0], '$!weight') == 2.3,
                                              'num attribute declared in P6opaque-based type is OK');

    my $other_instance := nqp::create($dsc[0]);
    ok(nqp::isconcrete($other_instance), 'can make new instance of deserialized type');
    
    nqp::bindattr_s($other_instance, $dsc[0], '$!eats', 'snakes');
    nqp::bindattr_i($other_instance, $dsc[0], '$!age', 10);
    nqp::bindattr_n($other_instance, $dsc[0], '$!weight', 3.4);
    ok(nqp::getattr_s($other_instance, $dsc[0], '$!eats') eq 'snakes',
                                              'str attribute in new instance OK');
    ok(nqp::getattr_i($other_instance, $dsc[0], '$!age') == 10,
                                              'int attribute in new instance OK');
    ok(nqp::getattr_n($other_instance, $dsc[0], '$!weight') == 3.4,
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
    pir::setprop__vPsP($m1, 'STATIC_CODE_REF', $m1);
    pir::setprop__vPsP($m2, 'STATIC_CODE_REF', $m2);
    
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
    
    ok(nqp::elems($dsc) >= 2,                 'deserialized SC has at least the knowhow type and its instance');
    ok(!nqp::isconcrete($dsc[0]),             'type object deserialized and is not concrete');
    ok(nqp::isconcrete($dsc[1]),              'instance deserialized and is concrete');
    ok(nqp::istype($dsc[1], $dsc[0]),         'type checking is OK after deserialization');
    ok($dsc[0].smell eq 'awful',              'method call on deserialized type object ok');
    ok($dsc[1].smell eq 'awful',              'method call on deserialized instance object ok');
    ok($dsc[1].intro eq "Hi, I'm Bob",        'method call accessing instance attributes ok');
}
