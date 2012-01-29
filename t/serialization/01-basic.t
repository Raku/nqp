#! nqp

plan(57);

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
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v1);

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
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v);

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
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v);

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6str output longer than a header');
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_4_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) == 1,             'deserialized SC has a single element');
    ok(nqp::istype($dsc[0], T3),          'deserialized object has correct type');
    ok(nqp::unbox_s($dsc[0]) eq 'dugong', 'deserialized object has correct value');
}

# Serializing an SC with a P6opaque containing a P6int, P6num and P6str.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_5_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T4 {
        has int $!a;
        has num $!b;
        has str $!c;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method BUILD() {
            $!a := 42;
            $!b := 6.9;
            $!c := 'llama';
        }
        method a() { $!a }
        method b() { $!b }
        method c() { $!c }
    }
    my $v := T4.new();
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v);

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6opaque output longer than a header');
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_5_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);

    ok(nqp::elems($dsc) == 1,             'deserialized SC has a single element');
    ok(nqp::istype($dsc[0], T4),          'deserialized object has correct type');
    ok($dsc[0].a == 42,                   'P6int attribute has correct value');
    ok($dsc[0].b == 6.9,                  'P6num attribute has correct value');
    ok($dsc[0].c eq 'llama',              'P6str attribute has correct value');
}

# Serializing an SC with P6opaues and circular references
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_6_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T5 {
        has $!x;
        method set_x($x) {
            $!x := $x;
        }
        method x() { $!x }
    }
    my $v1 := T5.new();
    my $v2 := T5.new();
    $v1.set_x($v2);
    $v2.set_x($v1);
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v1);
    pir::nqp_add_object_to_sc__vPiP($sc, 1, $v2);

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6opaque output longer than a header');
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_6_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) == 2,       'deserialized SC has 2 element');
    ok(nqp::istype($dsc[0], T5),    'first deserialized object has correct type');
    ok(nqp::istype($dsc[1], T5),    'second deserialized object has correct type');
    ok($dsc[0].x =:= $dsc[1],       'reference from first object to second ok');
    ok($dsc[1].x =:= $dsc[0],       'reference from second object to first ok');
}

# Tracing an object graph.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_7_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T6 {
        has $!x;
        has int $!v;
        method set_xv($x, $v) {
            $!x := $x;
            $!v := $v;
        }
        method set_v($v) {
            $!v := $v;
        }
        method x() { $!x }
        method v() { $!v }
    }
    my $v1 := T6.new();
    my $v2 := T6.new();
    my $v3 := T6.new();
    $v1.set_xv($v2, 5);
    $v2.set_xv($v3, 8);
    $v3.set_v(40);
    
    # Here, we only add *one* of the three explicitly to the SC.
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v1);
    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_7_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);
    
    ok(nqp::elems($dsc) == 3,       'deserialized SC has 3 elements - the one we added and two discovered');
    ok(nqp::istype($dsc[0], T6),    'first deserialized object has correct type');
    ok(nqp::istype($dsc[1], T6),    'second deserialized object has correct type');
    ok(nqp::istype($dsc[2], T6),    'third deserialized object has correct type');
    ok($dsc[0].x =:= $dsc[1],       'reference from first object to second ok');
    ok($dsc[0].v == 5,              'first object value attribute is ok');
    ok($dsc[1].x =:= $dsc[2],       'reference from second object to third ok');
    ok($dsc[1].v == 8,              'second object value attribute is ok');
    ok($dsc[2].v == 40,             'third object value attribute is ok');
}

# Serializing an SC with a P6opaque containing VM Integer/Float/String
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_8_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T7 {
        has $!a;
        has $!b;
        has $!c;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method BUILD() {
            $!a := 42;
            $!b := 6.9;
            $!c := 'llama';
        }
        method a() { $!a }
        method b() { $!b }
        method c() { $!c }
    }
    my $v := T7.new();
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v);

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_8_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);

    ok(nqp::elems($dsc) == 1,             'deserialized SC has a single element');
    ok(nqp::istype($dsc[0], T7),          'deserialized object has correct type');
    ok($dsc[0].a == 42,                   'Integer survived serialization');
    ok($dsc[0].b == 6.9,                  'Float survived serialization');
    ok($dsc[0].c eq 'llama',              'String survived serialization');
}

# Array in an object attribute
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_9_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T8 {
        has $!a;
        has $!b;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method BUILD() {
            $!a := [1,'lol',3];
            $!b := [1,[2,3],4];
        }
        method a() { $!a }
        method b() { $!b }
    }
    my $v := T8.new();
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v);

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_9_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);

    ok(nqp::istype($dsc[0], T8),          'deserialized object has correct type');
    ok(+$dsc[0].a == 3,                   'array a came back with correct element count');
    ok($dsc[0].a[0] == 1,                 'array a first element is correct');
    ok($dsc[0].a[1] eq 'lol',             'array a second element is correct');
    ok($dsc[0].a[2] == 3,                 'array a third element is fine');
    ok(+$dsc[0].b == 3,                   'array b came back with correct element count');
    ok($dsc[0].b[0] == 1,                 'array b first element is correct');
    ok(+$dsc[0].b[1] == 2,                'array b nested array has correct count');
    ok(+$dsc[0].b[1][0] == 2,             'array b nested array first element ok');
    ok(+$dsc[0].b[1][1] == 3,             'array b nested array second element ok');
    ok(+$dsc[0].b[2] == 4,                'array b third element is correct');
}

# Hash in an object attribute.
{
    my $sc := pir::nqp_create_sc__Ps('TEST_SC_10_IN');
    my $sh := pir::new__Ps('ResizableStringArray');
    
    class T9 {
        has $!a;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method BUILD() {
            my %h;
            %h<a> := 42;
            %h<b> := 'polar bear';
            $!a := %h;
        }
        method a() { $!a }
    }
    my $v := T9.new();
    pir::nqp_add_object_to_sc__vPiP($sc, 0, $v);

    my $serialized := pir::nqp_serialize_sc__SPP($sc, $sh);
    
    my $dsc := pir::nqp_create_sc__Ps('TEST_SC_10_OUT');
    pir::nqp_deserialize_sc__vSPP($serialized, $dsc, $sh);

    ok(nqp::istype($dsc[0], T9),          'deserialized object has correct type');
    ok(+$dsc[0].a == 2,                   'hash came back with correct element count');
    ok($dsc[0].a<a> == 42,                'hash first element is correct');
    ok($dsc[0].a<b> eq 'polar bear',      'hash second element is correct');
}
