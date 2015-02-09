plan(2);

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
