plan(41);

ok(nqp::isnull(nqp::decont(nqp::null())), 'nqp::decont works on nqp::null');

# code_pair container spec
{
    my $value := 42;
    sub fetch($cont) { $value }
    sub store($cont, $new) { $value := $new }

    class SomeCont {
        method foo() {
            "container";
        }
    }
    nqp::setcontspec(SomeCont, 'code_pair', nqp::hash(
        'fetch', &fetch,
        'store', &store
    ));

    ok(!nqp::isrwcont(42), 'isrwcont on something that is not a rwcontainer');

    my $cont := nqp::create(SomeCont);
    ok(nqp::iscont($cont), 'correct result from iscont');

    ok(nqp::isrwcont($cont), 'correct result from isrwcont');

    ok(nqp::decont($cont) == 42, 'initial decontainerization OK');

    ok(nqp::eqaddr(nqp::assign($cont, 101), $cont), "assign return container");
    ok(nqp::decont($cont) == 101, 'assigned value stuck');

    ok($value == 101, 'updated captured value also');

    ok(nqp::eqaddr(nqp::assignunchecked($cont, 69), $cont), "assignunchecked returns container");

    ok(nqp::decont($cont) == 69, 'assignunchecked value stuck');

    ok($cont, 'checking container for truthness - positive');

    nqp::assign($cont, 0);

    ok(!$cont, 'checking container for truthness - negative');

    nqp::assign($cont, "just a string");
    ok(nqp::unbox_s($cont) eq "just a string", "unbox_s works correctly with containers");

    nqp::assign($cont, sub () {234});

    ok($cont() == 234, "a call deconts the callee");

    class Foo {
        method foo() {
            "foo";
        }
    }

    my $obj := Foo.new;
    nqp::assign($cont, $obj);

    ok(nqp::iscont(Foo) == 0, "iscont on a type object");
    ok(nqp::iscont(SomeCont) == 1, "iscont on a type object that is a container");

    is($cont.foo, "foo", "calling a method on a container deconts");
    is(SomeCont.foo, "container", "a method call on a type object dosen't decont");
    is($cont.HOW.name($cont), "Foo", "HOW deconts");
    ok(nqp::eqaddr($cont.WHAT, Foo), "WHAT deconts");

    class FooMore is Foo {
        method foo() {
            "more foo";
        }
    }

    nqp::rebless($cont, FooMore);
    is($obj.foo, "more foo", "nqp::rebless deconts");
}

{
    my $flag;
    my $a := 100;
    my $b := 200;

    my sub fetch($cont) {
        if $flag {
            $a;
        }
        else {
            $b;
        }
    }
    my sub store($cont, $new) {
        if $flag {
            $a := $new
        }
        else {
            $b := $new
        }
    }

    class FlaggyCont {
    }

    class Content2 {
        method foo() {
            "content2";
        }
    }

    class Content1 {
        method foo() {
            "content1";
        }
        method check_self($self:) {
            is($self.foo, 'content1', '$self deconts to the initial object at first');
            $flag := 0;
            is($self.foo, 'content2', '... and the deconts to a different object');
        }
    }
    nqp::setcontspec(FlaggyCont, 'code_pair', nqp::hash(
        'fetch', &fetch,
        'store', &store
    ));

    my $cont := nqp::create(FlaggyCont);

    $flag := 1; nqp::assign($cont, Content1.new);
    $flag := 0; nqp::assign($cont, Content2.new);

    $flag := 1;

    $cont.check_self();
}

{
    my class SimpleCont {
        has $!content;
    }

    sub fetch($cont) { nqp::getattr($cont, SimpleCont, '$!content') }
    sub store($cont, $value) {nqp::bindattr($cont, SimpleCont, '$!content', $value) }

    nqp::setcontspec(SimpleCont, 'code_pair', nqp::hash(
        'fetch', &fetch,
        'store', &store
    ));

    my $cont := nqp::create(SimpleCont);

    my class Value {
        has $!attr;
        method attr() { $!attr }
        method set_attr($value) { $!attr := $value }
    }

    nqp::assign($cont, Value);

    ok(nqp::eqaddr(nqp::how_nd($cont), SimpleCont.HOW), 'nqp::how_nd does not decont');
    ok(nqp::eqaddr(nqp::how($cont), Value.HOW), 'nqp::how deconts');

    ok(nqp::isconcrete_nd($cont), 'nqp::isconcrete_nd does not decont');
    ok(!nqp::isconcrete($cont), 'nqp::isconcrete does decont');

    ok(nqp::eqaddr(nqp::what_nd($cont), SimpleCont), 'nqp::what_nd does not decont');
    ok(nqp::eqaddr(nqp::what($cont), Value), 'nqp::what deconts');

    nqp::assign($cont, Value.new(attr => 123));

    ok(nqp::istype($cont, Value), 'nqp::istype on container');
    ok(nqp::istype_nd($cont, SimpleCont), 'nqp::istype_nd on container');

    my $clone_of_value := nqp::clone($cont);

    $clone_of_value.set_attr(456);

    is($cont.attr, 123, 'nqp::cloned cloned content');

    my $clone_of_cont := nqp::clone_nd($cont);

    is($clone_of_cont.attr, 123, 'clone_nd container start with right value');

    $clone_of_cont.set_attr(678);

    nqp::assign($clone_of_cont, $clone_of_value);

    is($clone_of_cont.attr, 456, 'clone_nd container can be assigned to');

    is($cont.attr, 678, 'original container is independent of clone but had shared value');

    class ValueWithDefined {
        has $!defined;
        method defined() {
            $!defined;
        }
    }


    my $cont_for_with_defined := nqp::create(SimpleCont);
    nqp::assign($cont_for_with_defined, ValueWithDefined.new(defined => 1));

    my $cont_for_with_not_defined := nqp::create(SimpleCont);
    nqp::assign($cont_for_with_not_defined, ValueWithDefined.new(defined => 0));

    my $cont_with_false_value := nqp::create(SimpleCont);
    nqp::assign($cont_with_false_value, 0);
    my $cont_for_with_container_defined := nqp::create(SimpleCont);
    nqp::assign($cont_for_with_container_defined, ValueWithDefined.new(defined => $cont_with_false_value));

    if nqp::getcomp('nqp').backend.name eq 'jvm' {
        skip('on the jvm nqp::with incorrectly checks for type object instead of calling defined', 6);
    }
    else {
        is(nqp::with($cont_for_with_defined, "good", "bad"), "good", 'with - defined case');
        is(nqp::with($cont_for_with_not_defined, "good", "bad"), "bad", 'with - undefined case');
        is(nqp::with($cont_for_with_container_defined, "good", "bad"), "good", 'with - defined returns container');

        is(nqp::without($cont_for_with_defined, "good", "bad"), "bad", 'without - defined case');
        is(nqp::without($cont_for_with_not_defined, "good", "bad"), "good", 'without - undefined case');
        is(nqp::without($cont_for_with_container_defined, "good", "bad"), "bad", 'without - defined returns container');
    }
}
