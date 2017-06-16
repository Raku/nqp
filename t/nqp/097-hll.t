plan(48);

is(nqp::bindhllsym("blabla", "key1", "value1"), 'value1', 'nqp::bindhllsym');
nqp::bindhllsym("blabla", "key2", "value2");
nqp::bindhllsym("blabla2", "key2", "value3");

is(nqp::gethllsym("blabla", "key1"), 'value1', 'nqp::gethllsym');
is(nqp::gethllsym("blabla", "key2"), 'value2', 'different keys are separate');
is(nqp::gethllsym("blabla2", "key2"), 'value3', 'different languages are separate');

ok(nqp::isnull(nqp::gethllsym("no_such_lang", "bla")), "nqp::gethllsym with unknown language");
ok(nqp::isnull(nqp::gethllsym("blabla", "no_such_key")), "nqp::gethllsym with unknown key");

ok(nqp::bindcurhllsym("key3", "value4"), 'nqp::bindcurhllsym');
is(nqp::getcurhllsym("key3"), "value4", 'nqp::getcurhllsym');

is(nqp::gethllsym("nqp", "key3"), "value4", 'nqp::bindcurhllsym/nqp::gethllsym combo');

nqp::bindhllsym("nqp", "key4", "value5");

is(nqp::getcurhllsym("key4"), "value5", 'nqp::bindhllsym/nqp::getcurhllsym combo');

nqp::sethllconfig('foobar', nqp::hash(
    'foreign_transform_hash', -> $hash {
        'HASH:' ~ $hash<key>;
    },
    'foreign_transform_array', -> $array {
        'ARRAY:' ~ $array[2];
    },
    'foreign_transform_code', -> $code {
        sub ($value) {$code($value) * 10};
    },
    'null_value', 'fearsome *NULL*'
));

nqp::sethllconfig('empty', nqp::hash(
));

is(nqp::hllizefor(nqp::hash('key', 'value1'), 'foobar'), 'HASH:value1', 'hllizefor with hash');

is(nqp::hllizefor(nqp::list('the 0th one', 'the 1st one', 'the 2nd'), 'foobar'), 'ARRAY:the 2nd', 'hllizefor with nqp::list');


my $list_i := nqp::list_i(1, 2, 3);
my $list_s := nqp::list_i('1', '2', '3');
my $list_n := nqp::list_i(1, 2, 3);

ok(nqp::eqaddr(nqp::hllizefor($list_i, 'foobar'), $list_i), "list_i doesn't hllize");
ok(nqp::eqaddr(nqp::hllizefor($list_s, 'foobar'), $list_s), "list_s doesn't hllize");
ok(nqp::eqaddr(nqp::hllizefor($list_n, 'foobar'), $list_n), "list_n doesn't hllize");

my $boot_array := nqp::create(nqp::bootarray());
nqp::push($boot_array, 'the 0th boot one');
nqp::push($boot_array, 'the 1th boot one');
nqp::push($boot_array, 'the 2nd boot one');
is(nqp::hllizefor($boot_array, 'foobar'), 'ARRAY:the 2nd boot one', 'hllizefor with nqp::bootarray');

my $sub := nqp::hllizefor(sub ($value) {$value+2}, 'foobar');
ok($sub(5) == 70, 'hllizerfor with coderef');
is(nqp::hllizefor(nqp::null(), 'foobar'), 'fearsome *NULL*', 'hllizerfor with null');

my $hash := nqp::hash('key', 'value1');
my $list := nqp::list('the 0th one', 'the 1st one', 'the 2nd');

ok(nqp::eqaddr($hash, $hash), 'preserving hash');
ok(nqp::eqaddr(nqp::hllizefor($list, 'empty'), $list), 'preserving list');
ok(nqp::eqaddr(nqp::hllizefor($sub, 'empty'), $sub), 'preserving code ref');
ok(nqp::isnull(nqp::hllizefor(nqp::null(), 'empty')), 'preserving null');


nqp::sethllconfig('baz', nqp::hash(
    'foreign_transform_array', -> $array {
        'ARRAY:' ~ $array.bazify();
    },
    'foreign_transform_code', -> $code {
        'CODE:' ~ $code.bazify();
    },
    'foreign_transform_hash', -> $hash {
        'HASH:' ~ $hash.bazify();
    }
));

class FooBarArray {
    method bazify() {
        'bazified array';
    }
}
nqp::settypehll(FooBarArray, "foobar");
nqp::settypehllrole(FooBarArray, 4);

my $foobar-array := FooBarArray.new;

class FooBarCode {
    method bazify() {
        'bazified code';
    }
}
nqp::settypehll(FooBarCode, "foobar");
nqp::settypehllrole(FooBarCode, 6);

my $foobar-code := FooBarCode.new;

class FooBarHash {
    method bazify() {
        'bazified hash';
    }
}
nqp::settypehll(FooBarHash, "foobar");
nqp::settypehllrole(FooBarHash, 5);

my $foobar-hash := FooBarHash.new;

class FooBarOther {
    method bazify() {
        'bazified ?';
    }
}
nqp::settypehll(FooBarOther, "other");
my $foobar-other := FooBarOther.new;


ok(nqp::eqaddr(nqp::hllizefor($foobar-array, "foobar"), $foobar-array), "array in correct language");
is(nqp::hllizefor($foobar-array, "baz"), 'ARRAY:bazified array', "converting custom array");

ok(nqp::eqaddr(nqp::hllizefor($foobar-code, "foobar"), $foobar-code), "code in correct language");
is(nqp::hllizefor($foobar-code, "baz"), 'CODE:bazified code', "converting custom code");

ok(nqp::eqaddr(nqp::hllizefor($foobar-hash, "foobar"), $foobar-hash), "hash in correct language");
is(nqp::hllizefor($foobar-hash, "baz"), 'HASH:bazified hash', "converting custom hash");

ok(nqp::eqaddr(nqp::hllizefor($foobar-other, "foobar"), $foobar-other), "other stuff doesn't get transformed");
ok(nqp::eqaddr(nqp::hllizefor($foobar-other, "baz"), $foobar-other), "other stuff doesn't get transformed");

class BoxxyNum is repr('P6num') {
}

class BoxxyStr is repr('P6str') {
}

class BoxxyInt is repr('P6int') {
}

nqp::sethllconfig('boxxy', nqp::hash(
    'foreign_type_num', BoxxyNum,
    'foreign_type_str', BoxxyStr,
    'foreign_type_int', BoxxyInt
));

my $num := nqp::hllizefor(1.3, 'boxxy');
my $int := nqp::hllizefor(1, 'boxxy');
my $str := nqp::hllizefor('trolling', 'boxxy');

ok(nqp::istype($num, BoxxyNum), 'got the right type for num');
ok(nqp::unbox_n($num) == 1.3, 'got the right value for num');
ok(nqp::istype($str, BoxxyStr), 'got the right type for str');
is(nqp::unbox_s($str), "trolling", 'got the right value for str');
ok(nqp::istype($int, BoxxyInt), 'got the right type for int');
ok(nqp::unbox_i($int) == 1, 'got the right value for int');


if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('method_not_found is not implemented on the JVM', 12);
} else {
    my $method_not_found_called;
    my $missing_on_object;
    my $method_not_found;

    nqp::sethllconfig('nqp', nqp::hash('method_not_found_error', -> $obj, $name {
        $missing_on_object := $obj;
        $method_not_found := $name;
        $method_not_found_called := $method_not_found_called + 1;
        nqp::die("We don't have $name!");
    }));

    my class Foo {
        method exists() {
        }
    }

    my $instance := Foo.new;

    my sub test($desc, $instance) {

        $method_not_found_called := 0;
        $missing_on_object := NQPMu;
        $method_not_found := NQPMu;

        $instance.exists;

        is($method_not_found_called, 0, "$desc - method_not_found not called when method exists");

        my $caught_exception;
        {
            $instance.does_not_exist;
            CATCH {
                $caught_exception := $!;
            }
        }

        ok(nqp::defined($caught_exception), "$desc - method_not_found throws and exception");
        is(nqp::getmessage($caught_exception), "We don't have does_not_exist!", "$desc - the thrown exception has correct message");

        is($method_not_found_called, 1, "$desc - method_not_found handler called once");
        is($method_not_found, 'does_not_exist', "$desc - correct method name");
        ok($missing_on_object =:= $instance, "$desc - correct obj passed to handler");
    }


    class TestHOW {
        method new_type() {
            nqp::newtype(self, 'P6opaque');
        }

        method find_method($obj, $name, :$no_fallback = 0, :$no_trace = 0) {
            if $name eq 'exists' {
                method () { "found" }
            } else {
                nqp::null();
            }
        }
    }

    test('method cache', Foo);
    test('find_method', TestHOW.new.new_type);
}
