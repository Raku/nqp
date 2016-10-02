knowhow Foo {
    has $!bbq;
    method new() { nqp::create(self) }
    method lol() {
        "yay, methods"
    }
    method set_bbq($bbq) { $!bbq := $bbq; }
    method get_bbq() { $!bbq }
}

plan(12);

is(Foo.lol, "yay, methods", "method calls on knowhow type object");

my $x := Foo.new;
is($x.lol, "yay, methods", "method calls on knowhow instance");

$x.set_bbq("wurst");
is($x.get_bbq, "wurst", "attributes on knowhow instance");
is(Foo.HOW.name(Foo), 'Foo', "getting the name using the HOW works correctly");

my $attrs := Foo.HOW.attributes(Foo);
is($attrs[0].name, '$!bbq',"we can get the attributes");

my $foo_attr := nqp::knowhowattr().new(:name('$!foo'));
is($foo_attr.name, '$!foo',"created attribute has correct name");

knowhow Bar {
    has $!foo;
    has $!bar;
    method argh() {
    }
}

my $methods := Foo.HOW.methods(Foo);
ok(nqp::existskey($methods,'lol'),'lol method exists in Foo.HOW.methods');
ok(nqp::existskey($methods,'new'),'new method exists in Foo.HOW.methods');
ok(nqp::existskey($methods,'set_bbq'),'set_bbq method exists in Foo.HOW.methods');
ok(nqp::existskey($methods,'get_bbq'),'get_bbq method exists in Foo.HOW.methods');
ok(!nqp::existskey($methods,'argh'),"argh doesn't exist in Foo.HOW.methods");
ok(nqp::existskey(Bar.HOW.methods(Bar),'argh'),'different knowhows have seperate method sets');
