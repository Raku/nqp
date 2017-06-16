#! nqp

plan(1517);

{
    my $sc := nqp::createsc('exampleHandle');
    is(nqp::istrue($sc), 1, 'sc works with istrue');
    ok(nqp::scsetdesc($sc, "foobar") eq 'foobar', 'scsetdesc has correct return value');
    ok(nqp::scgetdesc($sc) eq 'foobar', 'scgetdesc');
    ok(nqp::scgethandle($sc) eq 'exampleHandle', 'scgethandle');

    my $sc2 := nqp::createsc('exampleHandle2');

    ok(nqp::scgethandle(nqp::pushcompsc($sc)) eq 'exampleHandle', 'pushcompsc return correct value');
    ok(nqp::scgethandle(nqp::pushcompsc($sc2)) eq 'exampleHandle2', 'pushcompsc return correct value');

    ok(nqp::scgethandle(nqp::popcompsc()) eq 'exampleHandle2', 'popping the correct sc');
    ok(nqp::scgethandle(nqp::popcompsc()) eq 'exampleHandle', 'again popping the correct sc');
}

sub add_to_sc($sc, $idx, $obj) {
    nqp::scsetobj($sc, $idx, $obj);
    nqp::setobjsc($obj, $sc);
}

# Test nqp::getobjsc/nqp::scgetobjidx
{
    my $sc := nqp::createsc('TEST_SC_0_IN');
    class T0 is repr('P6int') { }
    my $v1 := nqp::box_i(42, T0);
    my $v2 := nqp::box_i(43, T0);

    ok(nqp::isnull(nqp::getobjsc($v1)), 'nqp::getobjsc on an object without sc');

    add_to_sc($sc, 0, $v1);
    add_to_sc($sc, 1, $v2);

    ok(nqp::eqaddr(nqp::getobjsc($v1), $sc), 'nqp::getobjsc');
    ok(nqp::scgetobjidx($sc, $v2) == 1, 'nqp::scgetobjidx');
}

# Serializing an empty SC.
{
    my $sc := nqp::createsc('TEST_SC_1_IN');
    my $sh := nqp::list_s();
    
    my $serialized := nqp::serialize($sc, $sh);
    ok(nqp::chars($serialized) > 0,   'serialized empty SC to non-empty string');
    ok(nqp::chars($serialized) >= 36, 'output is at least as long as the header');

    my $dsc := nqp::createsc('TEST_SC_1_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::scobjcount($dsc) == 0, 'deserialized SC is also empty');
}

# Serializing an SC with a single object with P6int REPR.
{
    my $sc := nqp::createsc('TEST_SC_2_IN');
    my $sh := nqp::list_s();
    
    class T1 is repr('P6int') { }
    my $v1 := nqp::box_i(42, T1);
    add_to_sc($sc, 0, $v1);

    my $serialized := nqp::serialize($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6int output longer than a header');
    
    my $dsc := nqp::createsc('TEST_SC_2_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::scobjcount($dsc) == 1,  'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T1),    'deserialized object has correct type');
    ok(nqp::unbox_i(nqp::scgetobj($dsc, 0)) == 42, 'deserialized object has correct value');
}
    
# Serializing an SC with a single object with P6num REPR.
{
    my $sc := nqp::createsc('TEST_SC_3_IN');
    my $sh := nqp::list_s();
    
    class T2 is repr('P6num') { }
    my $v := nqp::box_n(6.9, T2);
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6num output longer than a header');
    
    my $dsc := nqp::createsc('TEST_SC_3_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::scobjcount($dsc) == 1,   'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T2),     'deserialized object has correct type');
    ok(nqp::unbox_n(nqp::scgetobj($dsc, 0)) == 6.9, 'deserialized object has correct value');
}

# Serializing an SC with a single object with P6str REPR.
{
    my $sc := nqp::createsc('TEST_SC_4_IN');
    my $sh := nqp::list_s();
    
    class T3 is repr('P6str') { }
    my $v := nqp::box_s('dugong', T3);
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6str output longer than a header');
    
    my $dsc := nqp::createsc('TEST_SC_4_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::scobjcount($dsc) == 1,        'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T3),          'deserialized object has correct type');
    ok(nqp::unbox_s(nqp::scgetobj($dsc, 0)) eq 'dugong', 'deserialized object has correct value');
}

# Serializing an SC with a P6opaque containing a P6int, P6num and P6str.
{
    my $sc := nqp::createsc('TEST_SC_5_IN');
    my $sh := nqp::list_s();
    
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
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6opaque output longer than a header');
    
    my $dsc := nqp::createsc('TEST_SC_5_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) == 1,        'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T4),          'deserialized object has correct type');
    ok(nqp::scgetobj($dsc, 0).a == 42,                   'P6int attribute has correct value');
    ok(nqp::scgetobj($dsc, 0).b == 6.9,                  'P6num attribute has correct value');
    ok(nqp::scgetobj($dsc, 0).c eq 'llama',              'P6str attribute has correct value');
}

# Serializing an SC with P6opaues and circular references
{
    my $sc := nqp::createsc('TEST_SC_6_IN');
    my $sh := nqp::list_s();
    
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
    add_to_sc($sc, 0, $v1);
    add_to_sc($sc, 1, $v2);

    my $serialized := nqp::serialize($sc, $sh);
    ok(nqp::chars($serialized) > 36, 'serialized SC with P6opaque output longer than a header');
    
    my $dsc := nqp::createsc('TEST_SC_6_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::scobjcount($dsc) == 2,  'deserialized SC has 2 objects');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T5),    'first deserialized object has correct type');
    ok(nqp::istype(nqp::scgetobj($dsc, 1), T5),    'second deserialized object has correct type');
    ok(nqp::scgetobj($dsc, 0).x =:= nqp::scgetobj($dsc, 1),       'reference from first object to second ok');
    ok(nqp::scgetobj($dsc, 1).x =:= nqp::scgetobj($dsc, 0),       'reference from second object to first ok');
}

# Tracing an object graph.
{
    my $sc := nqp::createsc('TEST_SC_7_IN');
    my $sh := nqp::list_s();
    
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
    add_to_sc($sc, 0, $v1);
    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_7_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());
    
    ok(nqp::scobjcount($dsc) == 3,  'deserialized SC has 3 objects - the one we added and two discovered');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T6),    'first deserialized object has correct type');
    ok(nqp::istype(nqp::scgetobj($dsc, 1), T6),    'second deserialized object has correct type');
    ok(nqp::istype(nqp::scgetobj($dsc, 2), T6),    'third deserialized object has correct type');
    ok(nqp::scgetobj($dsc, 0).x =:= nqp::scgetobj($dsc, 1),       'reference from first object to second ok');
    ok(nqp::scgetobj($dsc, 0).v == 5,              'first object value attribute is ok');
    ok(nqp::scgetobj($dsc, 1).x =:= nqp::scgetobj($dsc, 2),       'reference from second object to third ok');
    ok(nqp::scgetobj($dsc, 1).v == 8,              'second object value attribute is ok');
    ok(nqp::scgetobj($dsc, 2).v == 40,             'third object value attribute is ok');
}

# Serializing an SC with a P6opaque containing VM Integer/Float/String
{
    my $sc := nqp::createsc('TEST_SC_8_IN');
    my $sh := nqp::list_s();
    
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
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_8_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) == 1,        'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T7),          'deserialized object has correct type');
    ok(nqp::scgetobj($dsc, 0).a == 42,                   'Integer survived serialization');
    ok(nqp::scgetobj($dsc, 0).b == 6.9,                  'Float survived serialization');
    ok(nqp::scgetobj($dsc, 0).c eq 'llama',              'String survived serialization');
}

# Array in an object attribute
{
    my $sc := nqp::createsc('TEST_SC_9_IN');
    my $sh := nqp::list_s();
    
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
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_9_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::istype(nqp::scgetobj($dsc, 0), T8),          'deserialized object has correct type');
    ok(nqp::elems(nqp::scgetobj($dsc, 0).a) == 3,        'array a came back with correct element count');
    ok(nqp::scgetobj($dsc, 0).a[0] == 1,                 'array a first element is correct');
    ok(nqp::scgetobj($dsc, 0).a[1] eq 'lol',             'array a second element is correct');
    ok(nqp::scgetobj($dsc, 0).a[2] == 3,                 'array a third element is fine');
    ok(nqp::elems(nqp::scgetobj($dsc, 0).b) == 3,        'array b came back with correct element count');
    ok(nqp::scgetobj($dsc, 0).b[0] == 1,                 'array b first element is correct');
    ok(nqp::elems(nqp::scgetobj($dsc, 0).b[1]) == 2,     'array b nested array has correct element count');
    ok(+nqp::scgetobj($dsc, 0).b[1][0] == 2,             'array b nested array first element ok');
    ok(+nqp::scgetobj($dsc, 0).b[1][1] == 3,             'array b nested array second element ok');
    ok(+nqp::scgetobj($dsc, 0).b[2] == 4,                'array b third element is correct');
}

# Hash in an object attribute.
{
    my $sc := nqp::createsc('TEST_SC_10_IN');
    my $sh := nqp::list_s();
    
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
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_10_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::istype(nqp::scgetobj($dsc, 0), T9),          'deserialized object has correct type');
    ok(nqp::elems(nqp::scgetobj($dsc, 0).a) == 2,        'hash came back with correct element count');
    ok(nqp::scgetobj($dsc, 0).a<a> == 42,                'hash first element is correct');
    ok(nqp::scgetobj($dsc, 0).a<b> eq 'polar bear',      'hash second element is correct');
}

# Integer array (probably needed for NFA serialization).
{
    my $sc := nqp::createsc('TEST_SC_11_IN');
    my $sh := nqp::list_s();
    
    class T10 {
        has $!a;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method BUILD() {
            my @a := nqp::list_i();
            nqp::bindpos_i(@a, 0, 101);
            nqp::bindpos_i(@a, 1, 102);
            nqp::bindpos_i(@a, 2, 103);
            $!a := @a;
        }
        method a() { $!a }
    }
    my $v := T10.new();
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_11_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::istype(nqp::scgetobj($dsc, 0), T10),          'deserialized object has correct type');
    ok(nqp::elems(nqp::scgetobj($dsc, 0).a) == 3,         'integer array came back with correct element count');
    ok(nqp::atpos_i(nqp::scgetobj($dsc, 0).a, 0) == 101,  'integer array first element is correct');
    ok(nqp::atpos_i(nqp::scgetobj($dsc, 0).a, 1) == 102,  'integer array second element is correct');
    ok(nqp::atpos_i(nqp::scgetobj($dsc, 0).a, 2) == 103,  'integer array third element is correct');
}

# Number array

# String array (used by Rakudo in signatures)
{
    my $sc := nqp::createsc('TEST_SC_12_IN');
    my $sh := nqp::list_s();
    
    class T11 {
        has $!a;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method BUILD() {
            my @a := nqp::list_s();
            nqp::bindpos_s(@a, 0, 'cow');
            nqp::bindpos_s(@a, 1, 'sheep');
            nqp::bindpos_s(@a, 2, 'pig');
            $!a := @a;
        }
        method a() { $!a }
    }
    my $v := T11.new();
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);
    
    my $dsc := nqp::createsc('TEST_SC_12_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::istype(nqp::scgetobj($dsc, 0), T11),             'deserialized object has correct type');
    ok(nqp::elems(nqp::scgetobj($dsc, 0).a) == 3,            'string array came back with correct element count');
    ok(nqp::atpos_s(nqp::scgetobj($dsc, 0).a, 0) eq 'cow',   'string array first element is correct');
    ok(nqp::atpos_s(nqp::scgetobj($dsc, 0).a, 1) eq 'sheep', 'string array second element is correct');
    ok(nqp::atpos_s(nqp::scgetobj($dsc, 0).a, 2) eq 'pig',   'string array third element is correct');
}




# Serializing an SC with a P6opaque containing a MultiCache
{
    my $sc := nqp::createsc('TEST_SC_13_IN');
    my $sh := nqp::list_s();

    class T8 {
        has $!cache;
        has $!fh;
        has $!stdin;
        has $!stderr;
        has $!stdout;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method cache() {
            $!cache;
        }
        method fh() {
            $!fh;
        }
        method stdin() {
            $!stdin;
        }
        method stderr() {
            $!stderr;
        }
        method stdout() {
            $!stdout;
        }
        method BUILD() {
            $!fh := nqp::open('t/nqp/019-chars.txt', 'r');
            $!cache := nqp::multicacheadd(nqp::null(), nqp::usecapture(), 123);
            $!stdin := nqp::getstdin();
            $!stderr := nqp::getstderr();
            $!stdout := nqp::getstdout();
        }
    }
    my $v := T8.new();
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_13_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) == 1, 'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), T8), 'deserialized object has correct type');
    if nqp::getcomp('nqp').backend.name eq 'jvm' {
        skip("accessing a attribute containing a null is broken on the jvm", 5);
    }
    else {
        ok(nqp::isnull(nqp::scgetobj($dsc, 0).cache), 'Multi cache ends up null');
        ok(nqp::isnull(nqp::scgetobj($dsc, 0).fh), 'File handle ends up null');
        ok(nqp::isnull(nqp::scgetobj($dsc, 0).stdin), 'stdin ends up null');
        ok(nqp::isnull(nqp::scgetobj($dsc, 0).stderr), 'stderr ends up null');
        ok(nqp::isnull(nqp::scgetobj($dsc, 0).stdout), 'stdout up null');
    }
}

# Serializing an SC with a VMArray
{
    my $sc := nqp::createsc('TEST_SC_14_IN');
    my $sh := nqp::list_s();

    class VMArrayClass is repr('VMArray') {
    }

    my $v := VMArrayClass.new();
    nqp::push($v, 123);
    nqp::push($v, 456);
    $v[3] := 789;
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_14_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) == 1, 'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), VMArrayClass), 'deserialized array has correct type');
    is(nqp::elems(nqp::scgetobj($dsc, 0)), 4, 'deserialize array has correct number of elements');
    is(nqp::scgetobj($dsc, 0)[0], 123, '0th element of array is correct');
    is(nqp::scgetobj($dsc, 0)[1], 456, '1st element of array is correct');
    is(nqp::scgetobj($dsc, 0)[3], 789, '3st element of array is correct');
}

{
    my knowhow NFAType is repr('NFA') { }

    my $EDGE_FATE            := 0;
    my $EDGE_EPSILON         := 1;
    my $EDGE_CODEPOINT       := 2;
    my $EDGE_CODEPOINT_NEG   := 3;
    my $EDGE_CHARCLASS       := 4;
    my $EDGE_CHARCLASS_NEG   := 5;
    my $EDGE_CHARLIST        := 6;
    my $EDGE_CHARLIST_NEG    := 7;
    my $EDGE_SUBRULE         := 8;
    my $EDGE_CODEPOINT_I     := 9;
    my $EDGE_CODEPOINT_I_NEG := 10;
    my $EDGE_GENERIC_VAR     := 11;

    # the target state of a FATE transition is ignore so we can pass anything
    my $nfa := nqp::nfafromstatelist([[11],[$EDGE_CODEPOINT,102,2],[$EDGE_CODEPOINT,111,3],[$EDGE_CODEPOINT,111,4],[$EDGE_FATE,11,666]],NFAType);

    my $sc := nqp::createsc('TEST_SC_15_IN');
    my $sh := nqp::list_s();

    add_to_sc($sc, 0, $nfa);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_15_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    my $deserialized_nfa := nqp::scgetobj($dsc, 0);
    ok(nqp::istype($deserialized_nfa, NFAType), 'deserialized object has correct type');

    my $matching := nqp::nfarunproto($deserialized_nfa,"foo",0);
    ok(nqp::elems($matching) == 1,"we can match a simple string using the deserialized NFA");
    ok(nqp::atpos_i($matching, 0) == 11,"...and we get the right fate");
}

# nqp::attrinitied works after serialization
{
    my $sc := nqp::createsc('TEST_SC_16_IN');
    my $sh := nqp::list_s();

    my class TestAttrinitied {
        has $!written;
        has $!read;
        has $!not_inited;
        has $!null;
        method write() {
            $!written := 123;
            $!null := nqp::null();
        }
        method read() {
            if $!read {
                ok(0);
            }
        }
    }

    my $v := TestAttrinitied.new();
    $v.write();
    $v.read();

    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_16_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::attrinited(nqp::scgetobj($dsc, 0), TestAttrinitied, '$!written'), 'nqp::attrinited on an attribute that has been written to');
    ok(!nqp::attrinited(nqp::scgetobj($dsc, 0), TestAttrinitied, '$!not_inited'), 'nqp::attinitied on an attribute that has not be initialized');
    ok(nqp::attrinited(nqp::scgetobj($dsc, 0), TestAttrinitied, '$!read'), 'nqp::attrinited on an attribute that has been autovivified');

    if nqp::getcomp('nqp').backend.name eq 'jvm' {
        skip('null handling is broken on the jvm', 1);
    }
    else {
        ok(nqp::attrinited(nqp::scgetobj($dsc, 0), TestAttrinitied, '$!null'), 'nqp::attrinited on an attribute that has been set with null');
    }

}

# Serializing an SC with a VMArray
{
    my $sc := nqp::createsc('TEST_SC_17_IN');
    my $sh := nqp::list_s();

    class VMHashClass is repr('VMHash') {
    }

    my $v := VMHashClass.new();
    $v<hi> := 123;
    $v<hello> := 456;
    $v<ciao> := 789;
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_17_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::scobjcount($dsc) == 1, 'deserialized SC has a single object');
    ok(nqp::istype(nqp::scgetobj($dsc, 0), VMHashClass), 'deserialized hash has correct type');
    is(nqp::scgetobj($dsc, 0) + 0, 3, 'deserialized hash has correct number of keys');
    is(nqp::scgetobj($dsc, 0)<hi>, 123, 'element of hash is correct');
    is(nqp::scgetobj($dsc, 0)<hello>, 456, 'element of hash is correct');
    is(nqp::scgetobj($dsc, 0)<ciao>, 789, 'element of hash is correct');
}

# integers
my $seq := 1;
sub round_trip_int_array($desc, @a) {
    my $name := 'ROUND_TRIP_SC_' ~ $seq;
    $seq := $seq + 1;
    $desc := 'for ' ~ $desc ~ ', ';
    my $elems := nqp::elems(@a);

    my $sc := nqp::createsc($name ~ '_IN');
    my $sh := nqp::list_s();

    class T12 {
        has $!a;
        method set_a(@a) { $!a := @a }
        method get_a() { $!a }
    }
    my $v := T12.new();
    $v.set_a(@a);
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc($name ~ '_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::istype(nqp::scgetobj($dsc, 0), T12), $desc ~ 'deserialized object has correct type');
    my $j := 0;
    my @b := nqp::scgetobj($dsc, 0).get_a();
    ok(nqp::elems(@b) == $elems, $desc ~ 'array came back with correct element count');
    while ($j < $elems) {
        ok(nqp::iseq_i(@b[$j], @a[$j]), $desc ~ 'integer ' ~ @a[$j] ~ ' serialization round trip (' ~ $j ~ ')');
        ++$j;
    }
};

{
    my $sc := nqp::createsc('TEST_SC_13_IN');
    my $sh := nqp::list_s();

    class T13 {
        has $!a;
        method new() {
            my $obj := nqp::create(self);
            $obj.BUILD();
            $obj;
        }
        method BUILD() {
            my @a := nqp::list_n();
            nqp::bindpos_n(@a, 0, 101);
            nqp::bindpos_n(@a, 1, 102);
            nqp::bindpos_n(@a, 2, 103);
            $!a := @a;
        }
        method a() { $!a }
    }
    my $v := T13.new();
    add_to_sc($sc, 0, $v);

    my $serialized := nqp::serialize($sc, $sh);

    my $dsc := nqp::createsc('TEST_SC_13_OUT');
    nqp::deserialize($serialized, $dsc, $sh, nqp::list(), nqp::null());

    ok(nqp::istype(nqp::scgetobj($dsc, 0), T13),          'deserialized object has correct type');
    ok(nqp::elems(nqp::scgetobj($dsc, 0).a) == 3,         'num array came back with correct element count');
    ok(nqp::atpos_n(nqp::scgetobj($dsc, 0).a, 0) == 101,  'num array first element is correct');
    ok(nqp::atpos_n(nqp::scgetobj($dsc, 0).a, 1) == 102,  'num array second element is correct');
    ok(nqp::atpos_n(nqp::scgetobj($dsc, 0).a, 2) == 103,  'num array third element is correct');
}

{
    my @a;

    my int $i := -258;
    while ($i <= 258) {
        nqp::push(@a, $i);
        $i := $i + 1;
    }
    round_trip_int_array('small integers', @a);
}

{
    my $i := 9;
    my int $b := 512;

    while ($i < 63) {
        my $backend := nqp::getcomp('nqp').backend.name;
        if $i >= 31 &&  $backend eq 'js'
            && nqp::backendconfig(){"intvalsize"} < 8 {
            todo("native NQP ints are only 32 bit on js :-(", 1);
            # Sadly this also means that the rest of the tests for these sizes
            # are (effectively) meaningless, because $b is 0, and 0 + 0 is still
            # 0. However, they don't fail, because 0 - 4 to 0 + 2 serialise just
            # fine. So marking them as TODO would give false positive TODO
            # passes, which prove would alert us to.
            # It's not clear *what* size guarantees NQP gives (and therefore
            # expects from the underlying VM). This may need to be revisited
            # for JS, because JS won't really cope with integers larger than
            # 2**53
        }
        ok(nqp::isgt_i($b, 511), '$b is positive for 2 ** ' ~ $i);
        my @a;
        my int $j := -4;
        while (nqp::islt_i($j, 2)) {
            nqp::push(@a, nqp::add_i($b, $j));
            nqp::push(@a, nqp::neg_i(nqp::add_i($b, $j)));
            $j := nqp::add_i($j, 1);
        }
        round_trip_int_array('integers around 2 ** ' ~ $i, @a);
        ++$i;
        $b := nqp::add_i($b, $b);
    }
}

{
    # values around 2 ** 63, and interesting bit patterns.
    # Need to do these as BigInts parsing strings due to a bug in nqp::radix
    my @s := (
               '9223372036854775805', # 0x7FFFFFFFFFFFFFFD
               '9223372036854775806', # 0x7FFFFFFFFFFFFFFE
               '9223372036854775807', # 0x7FFFFFFFFFFFFFFF
              '-9223372036854775808', # 0x8000000000000000
              '-9223372036854775807', # 0x8000000000000001
              '-9223372036854775806', # 0x8000000000000002
                '-81985529216486896', # 0xFEDCBA9876543210
               '1147797409030816545', # 0x0FEDCBA987654321
              '-6148914691236517206', # 0xAAAAAAAAAAAAAAAA
               '6148914691236517205', # 0x5555555555555555
              '-6510615555426900571', # 0xA5A5A5A5A5A5A5A5
               '6510615555426900570', # 0x5A5A5A5A5A5A5A5A
             );
    my $bi_type := nqp::knowhow().new_type(:name("TestBigInt"), :repr("P6bigint"));
    $bi_type.HOW.compose($bi_type);
    my @a;
    for (@s) {
        my $bi := nqp::fromstr_I($_, $bi_type);
        nqp::push(@a, nqp::unbox_i($bi));
    }

    round_trip_int_array('special case integers', @a);
}

{
    my @a;
    my $i := 0;
    while ($i < 64) {
        nqp::push(@a, nqp::bitxor_i(-1, nqp::bitshiftl_i(1, $i)));
        ++$i;
    }

    round_trip_int_array('integers with one zero bit', @a);
}
