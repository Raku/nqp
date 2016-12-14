use nqpmo;

plan(10);

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("This test doesn't work on the jvm", 10);
    nqp::exit(0);
}

sub add_to_sc($sc, $idx, $obj) {
    nqp::scsetobj($sc, $idx, $obj);
    nqp::setobjsc($obj, $sc);
}


my $seq := 0;
sub fresh_sc_name() {
    $seq := $seq + 1;
    'TEST_SC_' ~ $seq;
}

{
    my $sc1 := fresh_sc_name();
    my $sc2 := fresh_sc_name();

    my $old_sc := nqp::createsc($sc1);
    my $old_sh := nqp::list_s();

    my $type := NQPClassHOW.new_type(:name('stable reposses test'), :repr('P6opaque'));
    $type.HOW.add_parent($type, NQPMu);
    $type.HOW.compose($type);

    my $m1 := method () { "method cache from the old sc" };
    nqp::scsetcode($old_sc, 0, $m1);
    nqp::markcodestatic($m1);

    nqp::setmethcache($type, nqp::hash('foo', $m1));

    add_to_sc($old_sc, 0, $type);


    my $old_serialized := nqp::serialize($old_sc, $old_sh);

    my $new_sc := nqp::createsc($sc2);
    my $new_sh := nqp::list_s();

    my $m2 := method () { "method cache from the new sc" };
    nqp::scsetcode($new_sc, 0, $m2);
    nqp::markcodestatic($m2);

    nqp::pushcompsc($new_sc);

    nqp::setmethcache($type, nqp::hash('foo', $m2));

    nqp::popcompsc();


    my $new_serialized := nqp::serialize($new_sc, $new_sh);


    my $old_dsc := nqp::createsc($sc1);

    nqp::deserialize($old_serialized, $old_dsc, $old_sh, nqp::list($m1), nqp::null());


    my $new_obj := nqp::scgetobj($old_dsc, 0);

    is($new_obj.foo, 'method cache from the old sc',
        'STable from the older context is used before the new one gets loaded');

    my $new_dsc := nqp::createsc($sc2);

    my $conflicts := nqp::list();
    nqp::deserialize($new_serialized, $new_dsc, $new_sh, nqp::list($m2), $conflicts);

    is($new_obj.foo, 'method cache from the new sc',
        'STable from the newer context is used when it gets loaded');

    is(nqp::elems($conflicts), 0, "we don't have any conflicts");
}; # add ; because of a NQP bug

{
   my class Foo {
        has int $!int;
        method set($value) {
            $!int := $value;
        }
        method get() {
            $!int;
        }
    }

    my $sc1 := fresh_sc_name();
    my $sc2 := fresh_sc_name();

    my $old_sc := nqp::createsc($sc1);
    my $old_sh := nqp::list_s();

    my $obj := Foo.new;

    $obj.set(123);

    add_to_sc($old_sc, 0, $obj);


    my $old_serialized := nqp::serialize($old_sc, $old_sh);

    my $new_sc := nqp::createsc($sc2);
    my $new_sh := nqp::list_s();

    nqp::pushcompsc($new_sc);

    $obj.set(246);

    nqp::popcompsc();


    my $new_serialized := nqp::serialize($new_sc, $new_sh);


    my $old_dsc := nqp::createsc($sc1);
    nqp::deserialize($old_serialized, $old_dsc, $old_sh, nqp::list(), nqp::null());


    my $new_obj := nqp::scgetobj($old_dsc, 0);
    is($new_obj.get, 123, 'the object deserializes and has the value from before the repossesion');

    my $new_dsc := nqp::createsc($sc2);

    my $conflicts := nqp::list();
    nqp::deserialize($new_serialized, $new_dsc, $new_sh, nqp::list(), $conflicts);

    is($new_obj.get, 246, "the reposses object has a correct value");

    is(nqp::elems($conflicts), 0, "we don't have any conflicts");
}

{
   my class Foo {
        has int $!int;
        method set($value) {
            $!int := $value;
        }
        method get() {
            $!int;
        }
    }

    my $sc1 := fresh_sc_name();
    my $sc2 := fresh_sc_name();

    my $old_sc := nqp::createsc($sc1);
    my $old_sh := nqp::list_s();

    my $obj := Foo.new;

    $obj.set(123);

    ok(nqp::eqaddr(nqp::neverrepossess($obj), $obj), 'nqp::neverrepossess has the correct return value');

    add_to_sc($old_sc, 0, $obj);


    my $old_serialized := nqp::serialize($old_sc, $old_sh);

    my $new_sc := nqp::createsc($sc2);
    my $new_sh := nqp::list_s();

    nqp::pushcompsc($new_sc);

    $obj.set(246);

    nqp::popcompsc();


    my $new_serialized := nqp::serialize($new_sc, $new_sh);


    my $old_dsc := nqp::createsc($sc1);
    nqp::deserialize($old_serialized, $old_dsc, $old_sh, nqp::list(), nqp::null());


    my $new_obj := nqp::scgetobj($old_dsc, 0);
    is($new_obj.get, 123, 'the object deserializes and has the value from before the attempted repossesion');

    my $new_dsc := nqp::createsc($sc2);

    my $conflicts := nqp::list();
    nqp::deserialize($new_serialized, $new_dsc, $new_sh, nqp::list(), $conflicts);

    is($new_obj.get, 123, "neverrepossess prevents the object from being repossessed");

    is(nqp::elems($conflicts), 0, "we don't have any conflicts");
}
