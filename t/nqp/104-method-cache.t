plan(16);

class TestHOW {
    has int $!find_method_called;
    method new_type() {
        nqp::newtype(self, 'P6opaque');
    }

    method find_method($obj, $name, :$no_fallback = 0, :$no_trace = 0) {
        $!find_method_called := $!find_method_called + 1;
        if $name eq 'find_this' {
            method () {
                "found"
            }
        } elsif $name eq 'find_with_args' {
            method (*@args) {
                is(nqp::join(',', @args), "100,200", "...passing arguments correctly");
                @args[0] + @args[1];
            }
        } else {
            nqp::null();
        }
    }

    method find_method_called() {
        $!find_method_called;
    }
}

my $obj1 := TestHOW.new.new_type;

nqp::setmethcache($obj1, nqp::hash(
    'foo', sub ($self) {
        "foo!"
    }));

nqp::setmethcacheauth($obj1, 1);

is($obj1.foo, "foo!", 'calling a method found in cache');
ok(nqp::can($obj1, 'foo'), 'nqp::can on a method found in cache');
ok(!nqp::can($obj1, 'find_this'), 'nqp::can on a method not in cache');
is($obj1.HOW.find_method_called, 0, '...find_method is not called when the cache is authoritative');

my $exception_thrown_with_auth_cache := 0;
try {
    nqp::findmethod($obj1, 'find_this');
    CATCH {
        $exception_thrown_with_auth_cache := 1;
    }
}
ok($exception_thrown_with_auth_cache, "can't findmethod that's not in the cache when it's authoritative");

$exception_thrown_with_auth_cache := 0;
try {
    $obj1.find_this;
    CATCH {
        $exception_thrown_with_auth_cache := 1;
    }
}
ok($exception_thrown_with_auth_cache, "can't call method that's not in the cache when it's authoritative");

my $obj2 := TestHOW.new.new_type;
nqp::setmethcache($obj2, nqp::hash(
    'bar', sub ($self) {
        "bar!"
    }));
nqp::setmethcacheauth($obj2, 0);

ok(nqp::can($obj2, 'bar'), 'nqp::can with method found in cache');
ok(nqp::can($obj2, 'find_this'), 'nqp::can with method found by find_method');
ok(!nqp::can($obj2, 'baz'), 'nqp::can with method not in cache or found by find_method');


ok(nqp::findmethod($obj2, 'find_this')($obj2) eq 'found', 'nqp::findmethod with a method returned by find_method');
ok(nqp::findmethod($obj2, 'bar')($obj2) eq 'bar!', 'nqp::findmethod with a method from the cache');

my $exception_thrown := 0;
try {
    nqp::findmethod($obj2, 'no_such');
    CATCH {
        $exception_thrown := 1;
    }
}

ok($exception_thrown, 'nqp::findmethod with missing method throws exception');


is($obj2.find_this, "found", 'calling a method from find_method directly');

is($obj2.find_with_args('100', '200'), 300, "...got correct return value");

is($obj2.HOW.find_method_called, 6, 'find_method is called the correct amount of times');

