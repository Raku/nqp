plan(16);

class Foo {
    has $!attr;
    method foo() {
        'foo';
    }
    method bar($arg) {
        'bar' ~ $!attr ~ $arg;
    }
}

my $foo := Foo.new(attr => 'frob');
is(nqp::findmethod($foo, 'foo')($foo), 'foo', 'calling result of findmethod only with invocant');
is(nqp::findmethod($foo, 'bar')($foo, 'baz'), 'barfrobbaz', 'calling result of findmethod with argument');

ok(nqp::eqaddr(nqp::findmethod($foo, 'foo'), nqp::tryfindmethod($foo, 'foo')), 'nqp::tryfindmethod works like nqp::findmethod when the method exists');

dies-ok({nqp::findmethod($foo, 'no_such_method_ever')}, "nqp::findmethod throws exception when the method doesn\'t exit");

ok(nqp::isnull(nqp::tryfindmethod($foo, 'no_such_method_ever')), 'nqp::tryfindmethod returns null for missing method');

ok(nqp::can($foo, 'foo') == 1, 'nqp::can with existing method');
ok(nqp::can($foo, 'no_such_method_ever') == 0, 'nqp::can with missing method');

knowhow Bar {
    has $!attr;
    method new(:$attr) { my $obj := nqp::create(self); $obj.BUILD($attr); $obj }
    method BUILD($attr) {$!attr := $attr}
    method foo() {
        'foo';
    }
    method bar($arg) {
        'bar' ~ $!attr ~ $arg;
    }
}

my $bar := Bar.new(attr => 'frob');
is(nqp::findmethod($bar, 'foo')($bar), 'foo', 'calling result of findmethod only with invocant - knowhow instance');
is(nqp::findmethod($bar, 'bar')($bar, 'baz'), 'barfrobbaz', 'calling result of findmethod with argument - knowhow instance');

ok(nqp::can($bar, 'bar') == 1, 'nqp::can with existing method - knowhow instance');
ok(nqp::can($bar, 'no_such_method_ever') == 0, 'nqp::can with missing method - knowhow instance');

ok(nqp::can($bar.HOW, "methods"), 'nqp::can on a knowhow metaobj');
ok(!nqp::can($bar.HOW, "no such method ever"), 'nqp::can on a knowhow metaobj');

my $methods := nqp::findmethod($bar.HOW, "methods");
ok(nqp::existskey($methods($bar.HOW, $bar), 'bar'), 'findmethod on a knowhow metaobj');

ok(nqp::can($bar.HOW.HOW, "methods"), 'can on a knowhow meta-metaobj');
ok(!nqp::can($bar.HOW.HOW, "no_such_method_ever"), 'can on a knowhow meta-metaobj');
