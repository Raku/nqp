plan(4);

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
