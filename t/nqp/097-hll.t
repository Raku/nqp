plan(26);

ok(nqp::bindhllsym("blabla", "key1", "value1") eq 'value1', 'nqp::bindhllsym');
nqp::bindhllsym("blabla", "key2", "value2");
nqp::bindhllsym("blabla2", "key2", "value3");

ok(nqp::gethllsym("blabla", "key1") eq 'value1', 'nqp::gethllsym');
ok(nqp::gethllsym("blabla", "key2") eq 'value2', 'different keys are separate');
ok(nqp::gethllsym("blabla2", "key2") eq 'value3', 'different languages are separate');

ok(nqp::isnull(nqp::gethllsym("no_such_lang", "bla")), "nqp::gethllsym with unknown language");
ok(nqp::isnull(nqp::gethllsym("blabla", "no_such_key")), "nqp::gethllsym with unknown key");

ok(nqp::bindcurhllsym("key3", "value4"), 'nqp::bindcurhllsym');
ok(nqp::getcurhllsym("key3") eq "value4", 'nqp::getcurhllsym');

ok(nqp::gethllsym("nqp", "key3") eq "value4", 'nqp::bindcurhllsym/nqp::gethllsym combo');

nqp::bindhllsym("nqp", "key4", "value5");

ok(nqp::getcurhllsym("key4") eq "value5", 'nqp::bindhllsym/nqp::getcurhllsym combo');

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

ok(nqp::hllizefor(nqp::hash('key', 'value1'), 'foobar') eq 'HASH:value1', 'hllizefor with hash');
ok(nqp::hllizefor(nqp::list('the 0th one', 'the 1st one', 'the 2nd'), 'foobar') eq 'ARRAY:the 2nd', 'hllizefor with nqp::list');
my $sub := nqp::hllizefor(sub ($value) {$value+2}, 'foobar');
ok($sub(5) == 70, 'hllizerfor with coderef');
ok(nqp::hllizefor(nqp::null(), 'foobar') eq 'fearsome *NULL*', 'hllizerfor with null');

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
ok(nqp::hllizefor($foobar-array, "baz") eq 'ARRAY:bazified array', "converting custom array");

ok(nqp::eqaddr(nqp::hllizefor($foobar-code, "foobar"), $foobar-code), "code in correct language");
ok(nqp::hllizefor($foobar-code, "baz") eq 'CODE:bazified code', "converting custom code");

ok(nqp::eqaddr(nqp::hllizefor($foobar-hash, "foobar"), $foobar-hash), "hash in correct language");
ok(nqp::hllizefor($foobar-hash, "baz") eq 'HASH:bazified hash', "converting custom hash");

ok(nqp::eqaddr(nqp::hllizefor($foobar-other, "foobar"), $foobar-other), "other stuff doesn't get transformed");
ok(nqp::eqaddr(nqp::hllizefor($foobar-other, "baz"), $foobar-other), "other stuff doesn't get transformed");
