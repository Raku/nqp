use nqpmo;

my $plan := 22;
plan($plan);

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("This test doesn't work on the jvm", $plan);
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
}; # semicolon works around NQP bug

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

    ok(nqp::eqaddr(nqp::getobjsc($new_obj), $old_dsc), "the object stars out in the old sc");

    my $new_dsc := nqp::createsc($sc2);

    my $conflicts := nqp::list();
    nqp::deserialize($new_serialized, $new_dsc, $new_sh, nqp::list(), $conflicts);

    is($new_obj.get, 246, "the reposses object has a correct value");

    ok(nqp::eqaddr(nqp::getobjsc($new_obj), $new_dsc), "the object is repossesed into the new sc");

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
    my $obj2 := Foo.new;

    $obj.set(123);
    $obj2.set(1230);


    add_to_sc($old_sc, 0, $obj);
    add_to_sc($old_sc, 1, $obj2);


    my $old_serialized := nqp::serialize($old_sc, $old_sh);

    my $new_sc := nqp::createsc($sc2);
    my $new_sh := nqp::list_s();

    nqp::pushcompsc($new_sc);

    nqp::scwbdisable();

    $obj.set(246);

    nqp::scwbenable();

    $obj2.set(2460);


    nqp::popcompsc();


    my $new_serialized := nqp::serialize($new_sc, $new_sh);


    my $old_dsc := nqp::createsc($sc1);
    nqp::deserialize($old_serialized, $old_dsc, $old_sh, nqp::list(), nqp::null());


    my $new_obj := nqp::scgetobj($old_dsc, 0);
    my $new_obj2 := nqp::scgetobj($old_dsc, 1);

    is($new_obj.get, 123, 'the object deserializes and has the value from before the attempted repossesion');
    is($new_obj2.get, 1230, 'the object deserializes and has the value from before the attempted repossesion');

    my $new_dsc := nqp::createsc($sc2);

    my $conflicts := nqp::list();
    nqp::deserialize($new_serialized, $new_dsc, $new_sh, nqp::list(), $conflicts);

    is($new_obj.get, 123, "nqp::scwbdisable turns off object repossession");
    is($new_obj2.get, 2460, "nqp::scwbenable turns on object repossession");

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
    my class Bar is mixin is Foo {
        has num $!num;
        method set_num($value) {
            $!num := $value;
        }
        method get_num() {
            $!num;
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

    nqp::rebless($obj, Bar);
    nqp::popcompsc();

    $obj.set_num(246);


    my $new_serialized := nqp::serialize($new_sc, $new_sh);


    my $old_dsc := nqp::createsc($sc1);
    nqp::deserialize($old_serialized, $old_dsc, $old_sh, nqp::list(), nqp::null());


    my $new_obj := nqp::scgetobj($old_dsc, 0);
    is($new_obj.get, 123, 'the object deserializes and has the value from before the repossesion');
    ok(nqp::istype($new_obj, Foo), 'object has the base type before repossession');
    ok(!nqp::istype($new_obj, Bar), "object doesn't have the subclass type before repossession");

    my $new_dsc := nqp::createsc($sc2);

    my $conflicts := nqp::list();
    nqp::deserialize($new_serialized, $new_dsc, $new_sh, nqp::list(), $conflicts);

    ok(nqp::istype($new_obj, Foo), 'object has the base type after repossession');
    ok(nqp::istype($new_obj, Bar), 'object has the subclass type after repossesion');

    is($new_obj.get, 123, "the object has the correct value in an original attribute");
    is($new_obj.get_num, 246, "the object has the correct value in an added attribute");

    is(nqp::elems($conflicts), 0, "we don't have any conflicts");
}
