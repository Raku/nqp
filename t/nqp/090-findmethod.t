plan(13);

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
ok(nqp::findmethod($foo, 'foo')($foo) eq 'foo', 'calling result of findmethod only with invocant');
ok(nqp::findmethod($foo, 'bar')($foo, 'baz') eq 'barfrobbaz', 'calling result of findmethod with argument');

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
ok(nqp::findmethod($bar, 'foo')($bar) eq 'foo', 'calling result of findmethod only with invocant - knowhow instance');
ok(nqp::findmethod($bar, 'bar')($bar, 'baz') eq 'barfrobbaz', 'calling result of findmethod with argument - knowhow instance');

ok(nqp::can($bar, 'bar') == 1, 'nqp::can with existing method - knowhow instance');
ok(nqp::can($bar, 'no_such_method_ever') == 0, 'nqp::can with missing method - knowhow instance');

ok(nqp::can($bar.HOW, "methods"), 'nqp::can on a knowhow metaobj');
ok(!nqp::can($bar.HOW, "no such method ever"), 'nqp::can on a knowhow metaobj');

my $methods := nqp::findmethod($bar.HOW, "methods");
ok(nqp::existskey($methods($bar.HOW, $bar), 'bar'), 'findmethod on a knowhow metaobj');

ok(nqp::can($bar.HOW.HOW, "methods"), 'can on a knowhow meta-metaobj');
ok(!nqp::can($bar.HOW.HOW, "no_such_method_ever"), 'can on a knowhow meta-metaobj');
