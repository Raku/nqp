plan(10);

# code_pair container spec
{
    my $value := 42;
    sub fetch($cont) { $value }
    sub store($cont, $new) { $value := $new }
    
    class SomeCont { }
    nqp::setcontspec(SomeCont, 'code_pair', nqp::hash(
        'fetch', &fetch,
        'store', &store
    ));
    
    my $cont := nqp::create(SomeCont);
    ok(nqp::iscont($cont), 'correct result from iscont');

    ok(nqp::isrwcont($cont), 'correct result from isrwcont');
    
    ok(nqp::decont($cont) == 42, 'initial decontainerization OK');
    
    nqp::assign($cont, 101);
    ok(nqp::decont($cont) == 101, 'assigned value stuck');
    
    ok($value == 101, 'updated captured value also');
    
    nqp::assignunchecked($cont, 69);
    ok(nqp::decont($cont) == 69, 'assignunchecked value stuck');

    class Foo {
        method foo() {
            "foo";
        }
    }

    my $obj := Foo.new;
    nqp::assign($cont, $obj);

    ok($cont.foo eq "foo", "calling a method on a container deconts");
    ok($cont.HOW.name($cont) eq "Foo", "HOW deconts");
    ok(nqp::eqaddr($cont.WHAT, Foo), "WHAT deconts"); 

    class FooMore is Foo {
        method foo() {
            "more foo";
        }
    }

    nqp::rebless($cont, FooMore);
    ok($obj.foo eq "more foo", "nqp::rebless deconts");
}
