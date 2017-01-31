plan(23);

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
