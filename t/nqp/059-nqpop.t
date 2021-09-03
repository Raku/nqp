# Test nqp::op pseudo-functions.

plan(371);

ok( nqp::add_i(5,2) == 7, 'nqp::add_i');
ok( nqp::sub_i(5,2) == 3, 'nqp::sub_i');
ok( nqp::mul_i(5,2) == 10, 'nqp::mul_i');
ok( nqp::div_i(5,2) == 2, 'nqp::div_i');
is(nqp::div_i(-8, 3), -3, 'nqp::div_i - with a negative number');
is(nqp::div_i(9, -4), -3, 'nqp::div_i rounds down');
dies-ok({nqp::div_i(1, 0)}, 'division by zero is not allowed');

ok( nqp::mod_i(5,2) == 1, 'nqp::mod_i');
ok( nqp::pow_i(6, 4) == 1296, 'nqp::pow_i');
ok( nqp::gcd_i(8, 12) == 4, 'nqp::gcd_i');
ok( nqp::lcm_i(6, 8) == 24, 'nqp::lcm_i');

ok(nqp::bitshiftl_i(1, 30) == 1073741824, 'nqp::bitshiftl_i');
ok(nqp::bitshiftl_i(131, 3) == 1048, 'nqp::bitshiftl_i');

ok(nqp::bitshiftr_i(1073741824, 30) == 1, 'nqp::bitshiftr_i');
ok(nqp::bitshiftr_i(1048, 3) == 131, 'nqp::bitshiftr_i');
ok(nqp::bitshiftr_i(111, 2) == 27, 'nqp::bitshiftr_i');
ok(nqp::bitshiftr_i(111, 8) == 0, 'nqp::bitshiftr_i');

ok(nqp::bitand_i(0xdead, 0xbeef) == 0x9ead, 'nqp::bitand_i');
ok(nqp::bitor_i(0xdead, 0xbeef) == 0xfeef, 'nqp::bitor_i');
ok(nqp::bitxor_i(0xdead, 0xbeef) == 0x6042, 'nqp::bitxor_i');

ok(nqp::bitand_i(nqp::bitneg_i(0xdead), 0xffff) == 0x2152, 'nqp::bitneg_i');

ok( nqp::iseq_n(nqp::add_n(5.0, 2.0), 7.0), 'nqp::add_n');
ok( nqp::iseq_n(nqp::sub_n(5.0, 2.0), 3.0), 'nqp::sub_n');
ok( nqp::iseq_n(nqp::mul_n(5.0, 2.0), 10.0), 'nqp::mul_n');
ok( nqp::iseq_n(nqp::div_n(5.0, 2.0), 2.5), 'nqp::div_n');

ok( nqp::chars('hello') == 5, 'nqp::chars');
is( nqp::concat('hello ', 'world'), 'hello world', 'nqp::concat');
is( nqp::join(' ', ('abc', 'def', 'ghi')), 'abc def ghi', 'nqp::join');

ok( nqp::index('rakudo', 'do') == 4, 'nqp::index found');
ok( nqp::index('rakudo', 'dont') == -1, 'nqp::index not found');
ok( nqp::index('rakudo', 'do', 3) == 4, 'nqp::index with third argument');
ok( nqp::index('rakudo', 'do', 5) == -1, 'nqp::index with third argument not found');
ok( nqp::index('Hello World', 'l', 0) == 2, 'nqp::index with third argument, first match (1)');
ok( nqp::index('Hello World', 'l', 2) == 2, 'nqp::index with third argument, first match (2)');
ok( nqp::index('Hello World', 'l', 3) == 3, 'nqp::index with third argument, second match');
ok( nqp::index('Hello World', 'l', 4) == 9, 'nqp::index with third argument, third match');
ok( nqp::index('Hello World', '') == 0, 'nqp::index with empty match returns 0');
ok( nqp::index('Hello World', '', 1) == 1, 'nqp::index with empty match at offset returns offset');
ok( nqp::index('Hello World', '', 11) == 11, 'nqp::index with empty match at end returns length');
ok( nqp::index('Hello World', '', 100) == -1, 'nqp::index with empty match at offset outside string returns -1');

ok( nqp::rindex('rakudo', 'do') == 4, 'nqp::rindex found');
ok( nqp::rindex('rakudo', 'dont') == -1, 'nqp::rindex not found');
ok( nqp::rindex('rakudo', 'do', 5) == 4, 'nqp::rindex with third argument');
ok( nqp::rindex('rakudo', 'do', 3) == -1, 'nqp::rindex with third argument not found');
ok( nqp::rindex('Hello World', 'l', 10) == 9, 'nqp::rindex with third argument, first match (1)');
ok( nqp::rindex('Hello World', 'l', 9) == 9, 'nqp::rindex with third argument, first match (2)');
ok( nqp::rindex('Hello World', 'l', 8) == 3, 'nqp::rindex with third argument, second match');
ok( nqp::rindex('Hello World', 'l', 2) == 2, 'nqp::rindex with third argument, third match');
ok( nqp::rindex('Hello World', '') == 11, 'nqp::rindex with empty match returns length');
ok( nqp::rindex('Hello World', '', 1) == 1, 'nqp::rindex with empty match at offset returns offset');
ok( nqp::rindex('Hello World', '', 11) == 11, 'nqp::rindex with empty match at end returns length');
ok( nqp::rindex('Hello World', '', 100) == -1, 'nqp::rindex with empty match at offset outside string returns -1');

# Empty string tests
ok(nqp::rindex('hi', '', 2) == 2, 'nqp::rindex finds empty string after last index');
ok(nqp::rindex('hi', '', 0) == 0, 'nqp::rindex finds empty string at start');
ok(nqp::rindex('hi', '', 1) == 1, 'nqp::rindex finds empty string in the middle');
ok(nqp::rindex('hi', '', 3) == -1, 'nqp::rindex does not find empty string at graphs + 1');
ok(nqp::index('hi', '', 2) == 2, 'nqp::index finds empty string after last index');
ok(nqp::index('hi', '', 0) == 0, 'nqp::index finds empty string at start');
ok(nqp::index('hi', '', 1) == 1, 'nqp::index finds empty string in the middle');
ok(nqp::index('hi', '', 3) == -1, 'nqp::index does not find empty string at graphs + 1');

is( nqp::chr(120), 'x', 'nqp::chr');
is( nqp::ord('xyz'),120, 'nqp::ord');
is( nqp::ord('xyz',2),122, '2 argument nqp::ord');
is( nqp::ordat('xyz',2),122, 'nqp::ordat');
is( nqp::lc('Hello World'), 'hello world', 'nqp::lc');
is( nqp::uc("Don't Panic"), "DON'T PANIC", 'nqp::uc');
is( nqp::flip("foo"), "oof", "nqp::flip");

my @items := nqp::split(' ', 'a little lamb');
ok( nqp::elems(@items) == 3 && @items[0] eq 'a' && @items[1] eq 'little' && @items[2] eq 'lamb', 'nqp::split');
ok( nqp::elems(nqp::split(' ', '')) == 0, 'nqp::split zero length string');
ok( nqp::elems(nqp::split('\\s', 'Mary had a little lamb')) == 1, 'nqp::split no match');
@items := nqp::split('', 'a man a plan');
ok( nqp::elems(@items) == 12, 'nqp::split zero length delimiter');
@items := nqp::split('a', 'a man a plan a canal panama');
ok( nqp::elems(@items) == 11 && @items[0] eq '' && @items[10] eq '', 'nqp::split delimiter at ends');
@items := nqp::split('', 'a little lamb');
is( nqp::join('|', @items), 'a| |l|i|t|t|l|e| |l|a|m|b', 'nqp::split("", ...)');


ok( nqp::cmp_i(2, 0) ==  1, 'nqp::cmp_i');
ok( nqp::cmp_i(2, 2) ==  0, 'nqp::cmp_i');
ok( nqp::cmp_i(2, 5) == -1, 'nqp::cmp_i');

ok( nqp::cmp_n(10.0, nqp::nan) ==  0, 'nqp::cmp_n with nan as left argument');
ok( nqp::cmp_n(nqp::nan, 10.0) ==  0, 'nqp::cmp_n with nan as right argument');

ok( nqp::cmp_n(2.5, 0.5) ==  1, 'nqp::cmp_n');
ok( nqp::cmp_n(2.5, 2.5) ==  0, 'nqp::cmp_n');
ok( nqp::cmp_n(2.5, 5.0) == -1, 'nqp::cmp_n');

ok( nqp::cmp_s("c", "a") ==  1, 'nqp::cmp_s');
ok( nqp::cmp_s("c", "c") ==  0, 'nqp::cmp_s');
ok( nqp::cmp_s("c", "e") == -1, 'nqp::cmp_s');

my @array := ['zero', 'one', 'two'];
ok( nqp::elems(@array) == 3, 'nqp::elems');

is( nqp::if(0, 'true', 'false'), 'false', 'nqp::if(false)');
is( nqp::if(1, 'true', 'false'), 'true',  'nqp::if(true)');
is( nqp::unless(0, 'true', 'false'), 'true', 'nqp::unless(false)');
is( nqp::unless(1, 'true', 'false'), 'false',  'nqp::unless(true)');

my $a := 10;

ok( nqp::if(0, ($a++), ($a--)) == 10, 'nqp::if shortcircuit');
ok( $a == 9, 'nqp::if shortcircuit');

ok( nqp::iseq_n(nqp::pow_n(1.0, nqp::nan), 1.0), 'nqp::pow_n(1.0, nqp::nan)');
ok( nqp::iseq_n(nqp::pow_n(1.0, nqp::inf), 1.0), 'nqp::pow_n(1.0, nqp::inf)');
ok( nqp::iseq_n(nqp::pow_n(1.0, nqp::neginf), 1.0), 'nqp::pow_n(1.0, nqp::neginf)');
ok( nqp::iseq_n(nqp::pow_n(2.0, 4.0), 16.0), 'nqp::pow_n');

ok( nqp::neg_i(5) == -5, 'nqp::neg_i');
ok( nqp::neg_i(-10) == 10, 'nqp::neg_i');
ok( nqp::iseq_n(nqp::neg_n(5.2), -5.2), 'nqp::neg_n');
ok( nqp::iseq_n(nqp::neg_n(-10.3), 10.3), 'nqp::neg_n');
ok( nqp::abs_i(5) == 5, 'nqp::abs_i');
ok( nqp::abs_i(-10) == 10, 'nqp::abs_i');
ok( nqp::iseq_n(nqp::abs_n(5.2), 5.2), 'nqp::abs_n');
ok( nqp::iseq_n(nqp::abs_n(-10.3), 10.3), 'nqp::abs_n');

ok( nqp::iseq_n(nqp::ceil_n(5.2), 6.0), 'nqp::ceil_n');
ok( nqp::iseq_n(nqp::ceil_n(-5.2), -5.0), 'nqp::ceil_n');
ok( nqp::iseq_n(nqp::ceil_n(5.0), 5.0), 'nqp::ceil_n');
ok( nqp::iseq_n(nqp::ceil_n(-5.0), -5.0), 'nqp::ceil_n');
ok( nqp::iseq_n(nqp::floor_n(5.2), 5.0), 'nqp::floor_n');
ok( nqp::iseq_n(nqp::floor_n(-5.2), -6.0), 'nqp::floor_n');
ok( nqp::iseq_n(nqp::floor_n(5.0), 5.0), 'nqp::floor_n');
ok( nqp::iseq_n(nqp::floor_n(-5.0), -5.0), 'nqp::floor_n');

ok( nqp::iseq_n(nqp::sqrt_n(6.25), 2.5), 'nqp::sqrt_n');

is( nqp::substr('rakudo', 1, 3), 'aku', 'nqp::substr');
is( nqp::substr('rakudo', 1), 'akudo', 'nqp::substr');
is( nqp::substr('rakudo', 6, 3), '', 'nqp::substr');
is( nqp::substr('rakudo', 6), '', 'nqp::substr');
is( nqp::substr('rakudo', 0, 4), 'raku', 'nqp::substr');
is( nqp::substr('rakudo', 0), 'rakudo', 'nqp::substr');

is( nqp::x('abc', 5), 'abcabcabcabcabc', 'nqp::x');
is( nqp::x('abc', 0), '', 'nqp::x');

ok( nqp::not_i(0) == 1, 'nqp::not_i');
ok( nqp::not_i(1) == 0, 'nqp::not_i');
ok( nqp::not_i(-1) == 0, 'nqp::not_i');

is(nqp::escape("\b \n \r \f \t \" \r\n \\ \e foo"), '\\b \\n \\r \\f \\t \\" \\r\\n \\\\ \e foo','nqp::escape');
my $var := 'foo';
is(nqp::escape($var), 'foo','nqp::escape works with literal');

ok( nqp::isnull(nqp::null()) == 1, 'nqp::isnull/nqp::null' );
ok( nqp::isnull("hello") == 0, '!nqp::isnull(string)' );
ok( nqp::isnull(13232) == 0, 'nqp::isnull(number)' );

ok( nqp::istrue(nqp::nan) == 1, 'nqp::istrue on NaN');
ok( nqp::istrue(0) == 0, 'nqp::istrue');
ok( nqp::istrue(1) == 1, 'nqp::istrue');
ok( nqp::istrue('') == 0, 'nqp::istrue');
ok( nqp::istrue('0') == 1, 'nqp::istrue');
ok( nqp::istrue('no') == 1, 'nqp::istrue');
ok( nqp::istrue(0.0) == 0, 'nqp::istrue');
ok( nqp::istrue(0.1) == 1, 'nqp::istrue');
ok( nqp::istrue(nqp::null()) == 0, 'nqp::istrue on nqp::null');
ok( nqp::istrue(nqp::list()) == 0, 'nqp::istrue on empty list');
ok( nqp::istrue(nqp::list(1,2,3)) == 1, 'nqp::istrue on nonempty list');

ok( nqp::isfalse(0) == 1, 'nqp::isfalse');
ok( nqp::isfalse(1) == 0, 'nqp::isfalse');
ok( nqp::isfalse('') == 1, 'nqp::isfalse');
ok( nqp::isfalse('0') == 0, 'nqp::isfalse');
ok( nqp::isfalse('no') == 0, 'nqp::isfalse');
ok( nqp::isfalse(0.0) == 1, 'nqp::isfalse');
ok( nqp::isfalse(0.1) == 0, 'nqp::isfalse');
ok( nqp::isfalse(nqp::null()) == 1, 'nqp::isfalse on nqp::null');
ok( nqp::isfalse(nqp::list()) == 1, 'nqp::isfalse on empty list');
ok( nqp::isfalse(nqp::list(1,2,3)) == 0, 'nqp::isfalse on nonempty list');

my $list := nqp::list(0, 'a', 'b', 3.0);
ok( nqp::elems($list) == 4, 'nqp::elems');
ok( nqp::atpos($list, 0) == 0, 'nqp::atpos');
is( nqp::atpos($list, 2), 'b', 'nqp::atpos');
nqp::push($list, 'four');
is( nqp::atpos($list, -1), 'four', 'nqp::atpos with -1 index');
ok( nqp::atpos($list, -2) == 3.0, 'nqp::atpos with -2 index');
ok( nqp::elems($list) == 5, 'nqp::push');
ok( nqp::shift($list) == 0, 'nqp::shift');
is( nqp::pop($list), 'four', 'nqp::pop');
my $iter := nqp::iterator($list);
is( nqp::shift($iter), 'a', 'nqp::iterator');
is( nqp::shift($iter), 'b', 'nqp::iterator');
ok( nqp::shift($iter) == 3.0, 'nqp::iterator');
ok( nqp::elems($list) == 3, "iterator doesn't modify list");
ok( nqp::islist($list), "nqp::islist works");
is( nqp::unshift($list,'zero'), 'zero', "nqp::unshift");
ok( nqp::elems($list) == 4, 'nqp::unshift adds 1 element');
ok( nqp::atpos($list,0) eq 'zero', 'nqp::unshift the correct element');

my $list_i := nqp::list_i(1, 2);
my $iter_i := nqp::iterator($list_i);
is(nqp::shift($iter_i), 1);
is(nqp::shift($iter_i), 2);

my $list_n := nqp::list_n(1.0, 2.0);
my $iter_n := nqp::iterator($list_n);
is(nqp::shift($iter_n), 1);
is(nqp::shift($iter_n), 2);

my $list_s := nqp::list_s('a', 'b');
my $iter_s := nqp::iterator($list_s);
is(nqp::shift($iter_s), 'a');
is(nqp::shift($iter_s), 'b');

my %hash;
%hash<foo> := 1;
%hash<baz> := 2;
%hash<foobaz> := 3;
ok( nqp::existskey(%hash,"foo"),"nqp::existskey with existing key");
ok( !nqp::existskey(%hash,"bar"),"nqp::existskey with missing key");
nqp::deletekey(%hash, "bar");
ok(nqp::elems(%hash) == 3,"nqp::deletekey with missing key doesn't remove anything");
nqp::deletekey(%hash, "baz");
ok( !nqp::existskey(%hash,"baz"),"nqp::deletekey deletes correct key");

my @arr;
@arr[1] := 3;
ok(!nqp::existspos(@arr, 0), 'existspos with missing pos');
ok(nqp::existspos(@arr, 1), 'existspos with existing pos');
ok(!nqp::existspos(@arr, 2), 'existspos with missing pos');
ok(nqp::existspos(@arr, -1), 'existspos with existing pos');
ok(!nqp::existspos(@arr, -2), 'existspos with missing pos');
ok(!nqp::existspos(@arr, -100), 'existspos with absurd values');
@arr[1] := NQPMu;
ok(nqp::existspos(@arr, 1), 'existspos with still existing pos');
@arr[1] := nqp::null;
ok(!nqp::existspos(@arr, 1), 'existspos is 0 for array elements containing null');

sub test_splice_with_return() {
    my @children := [1, 2, 3];
    if 1 { return nqp::splice(@children, [], 1, 1); }
    @children
}
ok(nqp::elems(test_splice_with_return()) == 2, 'splice works as a return value');
ok(!nqp::isnull_s("foo"), 'test for isnull_s with a normal string');
ok(nqp::isnull_s(nqp::null_s()), 'test for isnull_s with a null_s');

ok(nqp::isnull_s(nqp::decont(nqp::null_s())), 'null_s survives nqp::decont');

ok(nqp::time() != 0, 'time is not zero');

ok(nqp::eqat("foobar","foo", 0) == 1, "eqat with needle argument that matches at 0");
ok(nqp::eqat("foobar","oob", 1) == 1, "eqat with needle argument that matches at 1");
ok(nqp::eqat("foobar","foo", 1) == 0, "eqat with needle argument that matches");
ok(nqp::eqat("foobar","bar", -3) == 1, "eqat with a negative offset argument");
ok(nqp::eqat("foobar","foo", -9001) == 1, "eqat with a gigantic offset argument");
ok(nqp::eqat("foobar","foobarbaz", 0) == 0, "eqat with needle argument longer than haystack");

ok(nqp::eqat("Foobar","foO", 0) == 0, "eqat doesn't match with wrong case");
ok(nqp::eqat("fOobar","oOb", 1) == 0, "eqat doesn't match with wrong case");
ok(nqp::eqat("fooBar","baR", -3) == 0, "eqat doesn't match with wrong case");

ok(nqp::eqatic("foobar","foo", 0) == 1, "eqatic with needle argument that matches at 0");
ok(nqp::eqatic("foobar","oob", 1) == 1, "eqatic with needle argument that matches at 1");
ok(nqp::eqatic("foobar","foo", 1) == 0, "eqatic with needle argument that matches");
ok(nqp::eqatic("foobar","bar", -3) == 1, "eqatic with a negative offset argument");
ok(nqp::eqatic("foobar","foo", -9001) == 1, "eqatic with a gigantic offset argument");
ok(nqp::eqatic("foobar","foobarbaz", 0) == 0, "eqatic with needle argument longer than haystack");

ok(nqp::eqatic("Foobar","foO", 0) == 1, "eqatic with needle argument that matches at 0");
ok(nqp::eqatic("fOobar","oOb", 1) == 1, "eqatic with needle argument that matches at 1");
ok(nqp::eqatic("fooBar","baR", -3) == 1, "eqatic with a negative offset argument");

{
    my $source := nqp::list("100", "200", "300");
    my $a := nqp::list("1", "2", "3");
    nqp::splice($a, $source, 0, 0);
    is(nqp::join(",", $a), '100,200,300,1,2,3', "splice");

    my $b := nqp::list("1", "2", "3", "4");
    nqp::splice($b, $source, 1, 2);
    is(nqp::join(",", $b), '1,100,200,300,4', "splice");

    my $c := nqp::list("1", "2", "3", "4");

    nqp::splice($c, $source, 1, 200);

    is(nqp::join(",", $c), '1,100,200,300', "splice with removing past the end of array");
}

{
    my $list := nqp::list("1","2","3","4","5");
    my $ret := nqp::setelems($list, 3);
    is(nqp::join(",", $list), '1,2,3', 'nqp::setelems reduces list length properly');
    is(nqp::join(",", $ret), '1,2,3', 'nqp::setelems return value');
}

ok(nqp::isge_i(10, 10) == 1, "isge_i =");
ok(nqp::isge_i(9, 10) == 0, "isge_i <");
ok(nqp::isge_i(11, 10) == 1, "isge_i >");

ok(nqp::isgt_i(10, 10) == 0, "isgt_i =");
ok(nqp::isgt_i(9, 10) == 0, "isgt_i <");
ok(nqp::isgt_i(11, 10) == 1, "isgt_i >");

ok(nqp::islt_i(10, 10) == 0, "islt_i =");
ok(nqp::islt_i(9, 10) == 1, "islt_i <");
ok(nqp::islt_i(11, 10) == 0, "islt_i >");

ok(nqp::isle_i(10, 10) == 1, "isle_i =");
ok(nqp::isle_i(9, 10) == 1, "isle_i <");
ok(nqp::isle_i(11, 10) == 0, "isle_i >");

ok(nqp::isne_i(10, 10) == 0, "isne_i =");
ok(nqp::isne_i(9, 10) == 1, "isne_i <");
ok(nqp::isne_i(11, 10) == 1, "isne_i >");

ok(nqp::iseq_i(10, 10) == 1, "iseq_i =");
ok(nqp::iseq_i(9, 10) == 0, "iseq_i <");
ok(nqp::iseq_i(11, 10) == 0, "iseq_i >");

ok(nqp::isle_s('aaa', 'aab'), 'nqp::isle_s');
ok(nqp::isle_s('a', 'aa'), 'nqp::isle_s');
ok(nqp::isle_s('abcdaz', 'abcdbzefg'), 'nqp::isle_s');
ok(nqp::isle_s('abc', 'abc'), 'nqp::isle_s - both string equal');
ok(!nqp::isle_s('abcdbzefg', 'abcdaz'), 'nqp::isle_s left string greater');

ok(nqp::isge_s('aab', 'aaa', ), 'nqp::isge_s');
ok(nqp::isge_s('aa', 'a'), 'nqp::isge_s');
ok(nqp::isge_s('abcdbzefg', 'abcdaz',), 'nqp::isge_s');
ok(nqp::isge_s('abc', 'abc'), 'nqp::isge_s - both string equal');
ok(!nqp::isge_s('abcdaz', 'abcdbzefg'), 'nqp::isge_s left string greater');

ok(nqp::islt_s('aaa', 'aab'), 'nqp::islt_s');
ok(nqp::islt_s('a', 'aa'), 'nqp::islt_s');
ok(nqp::islt_s('abcdaz', 'abcdbzefg'), 'nqp::islt_s');
ok(!nqp::islt_s('abc', 'abc'), 'nqp::islt_s - both string equal');
ok(!nqp::islt_s('abcdbzefg', 'abcdaz'), 'nqp::islt_s left string greater');

ok(nqp::isgt_s('aab', 'aaa', ), 'nqp::isgt_s');
ok(nqp::isgt_s('aa', 'a'), 'nqp::isgt_s');
ok(nqp::isgt_s('abcdbzefg', 'abcdaz',), 'nqp::isgt_s');
ok(!nqp::isgt_s('abc', 'abc'), 'nqp::isgt_s - both string equal');
ok(!nqp::isgt_s('abcdaz', 'abcdbzefg'), 'nqp::isgt_s left string greater');

ok(nqp::isne_n(1.1, 1) == 1, '!= between floating point numbers (not equal)');
ok(nqp::isne_n(1.1, 1.1) == 0,'!= between floating point numbers (equal)');

ok(nqp::iseq_n(nqp::mod_n(12.5, 5.0), 2.5), '% test');
ok(nqp::iseq_n(nqp::mod_n(3.0, 2.5), 0.5), '% test');
ok(nqp::iseq_n(nqp::mod_n(-12.5, 5.0), 2.5), '% test');
ok(nqp::iseq_n(nqp::mod_n(12.5, -5.0), -2.5), '% test');
ok(nqp::iseq_n(nqp::mod_n(-12.5, -5.0), -2.5), '% test');
ok(20 % 7 == 6, '% with integer arguments');

is(nqp::sha1("Hello World"), '0A4D55A8D778E5022FAB701977C5D840BBC486D0', "sha1");
is(nqp::sha1("ab\x[0]c"), "DBDD4F85D8A56500AA5C9C8A0D456F96280C92E5", "nqp::sha1 null bytes");

nqp::bindcomp("noSuchLanguageEver1", nqp::list("compiler1"));
is(nqp::bindcomp("noSuchLanguageEver2", "compiler2"), "compiler2", "correct return value for bindcomp");

is(nqp::getcomp("noSuchLanguageEver1")[0], "compiler1", "nqp::getcomp");

ok(nqp::isnull(nqp::getcomp("no_SuchLanguageNo_or_ever")), "nqp::getcomp for a missing language returns null");

{
    my $a := nqp::list_i();
    nqp::push_i($a, 10.4);
    nqp::push_i($a, 11);
    nqp::push_i($a, 12);
    ok(nqp::elems($a) == 3, 'nqp::elems/nqp::push_i');
    ok(nqp::pop_i($a) == 12, 'nqp::pop_i');
    ok(nqp::elems($a) == 2, 'nqp::pop_i reduces the number of elements correctly');
    ok(nqp::islist($a) == 1, 'nqp::islist(nqp::list_i())');


    ok(nqp::shift_i($a) == 10, "shift_i");
    ok(nqp::elems($a) == 1, 'nqp::shift_i reduces the number of elements correctly');

    ok(nqp::unshift_i($a, 100) == 100, "unshift_i");

    ok(nqp::elems($a) == 2, 'nqp::unshift_i increases the number of elements correctly');
    ok(nqp::shift_i($a) == 100, 'the element get placed at the start');

    my $b := nqp::list_i(1,2,30.4);
    ok(nqp::atpos_i($b,2) == 30, 'atpos_i');

    ok(nqp::atpos_i($b, -2) == 2, 'atpos_i with negative index');

    ok(nqp::atpos_i($b, 100) == 0, 'nqp::atpos_i outside of array');


    my $c := nqp::list_i();
    nqp::bindpos_i($c, 1, 102);
    nqp::bindpos_i($c, 1, 103);
    nqp::bindpos_i($c, 0, 101);
    ok(nqp::atpos_i($c, 1) == 103, 'bindpos_i works');
}

{
    my $a := nqp::list_s();
    nqp::push_s($a, "A");
    nqp::push_s($a, "B");
    nqp::push_s($a, "C");
    ok(nqp::elems($a) == 3, 'nqp::elems/nqp::push_s');
    is(nqp::pop_s($a), "C", 'nqp::pop_s');
    ok(nqp::elems($a) == 2, 'nqp::pop_s reduces the number of elements correctly');
    ok(nqp::islist($a) == 1, 'nqp::islist(nqp::list_s())');

    is(nqp::shift_s($a), "A", "shift_s");
    ok(nqp::elems($a) == 1, 'nqp::shift_s reduces the number of elements correctly');

    is(nqp::unshift_s($a, "X"), "X", "unshift_s");

    ok(nqp::elems($a) == 2, 'nqp::unshift_s increases the number of elements correctly');
    ok(nqp::shift_s($a) eq "X", 'the element get placed at the start');

    my $b := nqp::list_s("A","B","C");
    ok(nqp::bindpos_s($b, 2, "D"), 'nqp::bindpos_s');
    is(nqp::atpos_s($b,2), "D", 'nqp::atpos_s');
    is(nqp::atpos_s($b, -2), "B", 'nqp::atpos_s with negative index');
    ok(nqp::isnull_s(nqp::atpos_s($a, 10)), 'nqp::atpos_s with element outside of array');
}

{
    my $a := nqp::list_n();
    nqp::push_n($a, 10.4);
    nqp::push_n($a, 11.0);
    nqp::push_n($a, 12.0);
    ok(nqp::elems($a) == 3, 'nqp::elems/nqp::push_n');
    ok(nqp::iseq_n(nqp::pop_n($a), 12.0), 'nqp::pop_n');
    ok(nqp::elems($a) == 2, 'nqp::pop_n reduces the number of elements correctly');
    ok(nqp::islist($a) == 1, 'nqp::islist(nqp::list_n())');

    my $b := nqp::list_n(1.0, 2.0, 30.4);
    ok(nqp::iseq_n(nqp::atpos_n($b,2), 30.4), 'atpos_n');


    my $c := nqp::list_n();
    nqp::bindpos_n($c, 1, 102.0);
    nqp::bindpos_n($c, 1, 103.5);
    nqp::bindpos_n($c, 0, 101.0);
    ok(nqp::iseq_n(nqp::atpos_n($c, 1), 103.5), 'bindpos_n works');
    ok(nqp::iseq_n(nqp::atpos_n($c, -1), 103.5), 'nqp::atpos_n with negative index');
    ok(nqp::iseq_n(nqp::atpos_n($c, 10), 0.0), 'atpos_n with element outside of the array');

}

{
    my $a := nqp::list();
    nqp::bindpos($a, 1, "Hello World");
    is($a[1], 'Hello World', 'nqp::bindpos')
}

ok(nqp::isnanorinf(nqp::nan()) == 1, "nqp::isnanorinf - nan");
ok(nqp::isnanorinf(nqp::inf()) == 1, "nqp::isnanorinf - inf");
ok(nqp::isnanorinf(nqp::neginf()) == 1, "nqp::isnanorinf - neginf");
ok(nqp::isnanorinf(123.5) == 0, "nqp::isnanorinf - normal number");

ok(nqp::iseq_n(nqp::inf(), nqp::inf()), "nqp::inf() equals itself");
ok(nqp::isne_n(nqp::nan(), nqp::nan()), "nqp::nan() doesn't equal itself");
ok(nqp::islt_n(nqp::neginf(), 0.0), "nqp::neginf() is negative");
ok(nqp::isgt_n(nqp::inf(), 0.0), "nqp::inf() is positive");
ok(nqp::iseq_n(nqp::add_n(nqp::inf(), 123.0), nqp::sub_n(nqp::inf(), 123.0)), "nqp::inf() doesn't change after adding or substracting");
ok(nqp::iseq_n(nqp::add_n(nqp::neginf(), 123.0), nqp::sub_n(nqp::neginf(), 123.0)), "nqp::neginf() doesn't change after adding or substracting");
ok(nqp::iseq_n(nqp::neginf(), nqp::neg_n(nqp::inf())), "nqp::neginf() is negated nqp::inf()");

my $n := nqp::rand_n(4.0);
ok(nqp::isge_n($n, 0.0) && nqp::islt_n($n, 4.0), "generating number before calling srand");
nqp::srand(100);
my $a1 := nqp::rand_n(4.0);
my $b1 := nqp::rand_n(4.0);
nqp::srand(100);
ok(nqp::isge_n($a1, 0.0) && nqp::islt_n($a1, 4.0), "the generated number is in the wanted range");
my $a2 := nqp::rand_n(4.0);
my $b2 := nqp::rand_n(4.0);
ok(nqp::iseq_n($a1, $a2), "after calling srand the first generated number is the same");
ok(nqp::iseq_n($b1, $b2), "after calling srand the second generated number is the same");

is(nqp::replace("0123456789", 2, 4, "abc"), "01abc6789", "nqp::replace");

# TODO higher unicode values
is(nqp::bitand_s('blabla12$#@', '9$dfa23219'), ' $`b` 12 !', "nqp::bitand_s");
is(nqp::bitor_s('blabla12$#@', '9$dfa23219'), '{lefms325;@', "nqp::bitor_s");
is(nqp::bitxor_s(nqp::chr(1146) ~ nqp::chr(120), nqp::chr(1152)),nqp::chr(250) ~ nqp::chr(120), "nqp::bitxor_s");

is(nqp::unbox_s("hello"), "hello", "nqp::unbox_s on a string");

my $value_say := nqp::say("#comment from say");
my $value_print := nqp::print("#comment from print\n");

is($value_say, "#comment from say", "nqp::say returns correct value");
is($value_print, "#comment from print\n", "nqp::print returns correct value");

is(nqp::indexingoptimized("foobar"), "foobar", "nqp::indexingoptimized result is equal to it's argument");
ok(nqp::isstr(nqp::indexingoptimized(123)), "nqp::indexingoptimized returns a string");

ok(!nqp::isnull(nqp::null_s()), "null_s isn't null");
ok(!nqp::isnull_s(nqp::null()), "null isn't null_s");
ok(nqp::isstr(nqp::null_s()), "null_s is still a str");
ok(nqp::null() eq '', "null is an empty str");
{
    my $var := nqp::null_s();
    ok(nqp::isnull_s($var), "null_s can be stuck into a var and stays null_s");
}
ok(nqp::istrue(nqp::null_s()) == 0, "null_s isn't true");
ok(nqp::istrue(nqp::atpos(nqp::list(nqp::null_s()), 0)) == 0, "null_s isn't true");


if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("with/without are broken on the jvm", 4);
} else {
    my class Defined {
        method defined() { 1 }
    }
    my class NotDefined {
        method defined() { 0 }
    }
    is(nqp::with(Defined.new, "good", "bad"), "good");
    is(nqp::with(NotDefined.new, "good", "bad"), "bad");

    is(nqp::without(Defined.new, "good", "bad"), "bad");
    is(nqp::without(NotDefined.new, "good", "bad"), "good");
}

is(nqp::tclc('aBcD'), 'Abcd', 'tclc sub form on mixed-case latin string');
is(nqp::tclc('ßß'), 'Ssß', 'tclc and German sharp s');
is(nqp::tclc('ǉenčariti'), 'ǈenčariti', 'lj => Lj (in one character)');
is(nqp::tclc('Ångstrom'), 'Ångstrom', 'Å remains Å');
is(nqp::tclc("\x1044E TEST"), "\x10426 test", 'tclc works on codepoints greater than 0xffff');

is(nqp::tc("hello world"), "HELLO WORLD", "simple");
is(nqp::tc(""), "", "empty string");
is(nqp::tc("ü"), "Ü", "umlaut");
is(nqp::tc("ó"), "Ó", "accented chars");
is(nqp::tc('ß'), 'Ss', 'sharp s => Ss');
is(nqp::tc('$'), '$', "character that don't have title case remain unchanged");
is(nqp::tc("\x1044E"), "\x10426", 'tc works on codepoints greater than 0xffff');

{
    class Stringish is repr('P6str') {
    };
    my $a := nqp::box_s('a', Stringish);
    my $b := nqp::box_s('b', Stringish);
    my $c := 'c';
    is(nqp::join(",", nqp::list($a, $b, $c)), 'a,b,c', 'nqp::join supports boxed elements in the array');
}

{
    my sub create_buf($type) {
        my $buf := nqp::newtype(nqp::null(), 'VMArray');
        nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
        $buf
    }

    sub buf_dump($buf) {
      my @parts;
      my $i := 0;
      while $i < nqp::elems($buf) {
        @parts.push(nqp::sprintf("0x%X", [nqp::atpos_i($buf, $i)]));
        $i := $i + 1;
      }
      nqp::join(" ", @parts);
    };

    my $buf := nqp::encode(nqp::chr(0x28B81), 'utf8', nqp::create(create_buf(uint8)));
    is(buf_dump($buf), "0xF0 0xA8 0xAE 0x81", 'nqp::chr with 0x28B81 works properly');
}

is(
  nqp::join(',', nqp::splice(nqp::split(',', '0,1,2,3,4,5,6,7,8,9'), nqp::split(',', 'a,b,c'), 4, 0)),
  '0,1,2,3,a,b,c,4,5,6,7,8,9', 'nqp::splice test');

is(
  nqp::join(',', nqp::splice(nqp::split(',', '0,1,2,3,4,5,6,7,8,9'), [], 4, 3)),
  '0,1,2,3,7,8,9', 'nqp::splice test');

is(
  nqp::join(',', nqp::splice(nqp::split(',', '0,1,2,3,4,5,6,7,8,9'), nqp::split(',', 'a,b,c'), 4, 1)),
  '0,1,2,3,a,b,c,5,6,7,8,9', 'nqp::splice test');

is(nqp::codes('hello'), 5, 'nqp::codes with ascii');
is(nqp::codes(nqp::chr(0x10426) ~ nqp::chr(0x10427)), 2, 'nqp::codes with chars bigger than a single code unit');

{
  my @a := nqp::decodelocaltime(nqp::div_i(nqp::time(),1000000000));

  ok(nqp::elems(@a) == 6 || nqp::elems(@a) == 9, 'nqp::decodelocaltime returns correct around of elements');
  my @b := nqp::decodelocaltime(0);
  my $year := nqp::atpos_i(@b, 5);

  ok($year == 1970 || $year == 1969, 'the epoch starts in either 1970 or 1969 localtime'); # timezone offset
}

# Test nqp::slice op
{
    my @l := 0, 1, 2, 3, 4;

    my &to-str := -> @a {
        my @strs := ();
        @strs.push(~$_) for @a;
        nqp::join(',', @strs);
    };

    is( &to-str( nqp::slice(@l,  2,  3  )), '2,3', 'nqp::slice some values' );
    is( &to-str( nqp::slice(@l, -3, -2  )), '2,3', 'nqp::slice some values relative to end' );
    is( &to-str( nqp::slice(@l,  2, -2  )), '2,3', 'nqp::slice some values relative to end (mixed)');
    is( &to-str( nqp::slice(@l,  0,  3  )), '0,1,2,3', 'nqp::slice from beginning');
    is( &to-str( nqp::slice(@l,  2, -1  )), '2,3,4', 'nqp::slice until end');
    is( &to-str( nqp::slice(@l,  0, -1  )), '0,1,2,3,4', 'nqp::slice from beginning until end');
    is( &to-str( nqp::slice(@l,  2,  2  )), '2', 'nqp::slice one elem');
    is( &to-str( nqp::slice(@l,  2, -3  )), '2', 'nqp::slice one elem (mixed)');
    is( &to-str( nqp::slice(@l,  0,  0  )), '0', 'nqp::slice one elem at beginning');
    is( &to-str( nqp::slice(@l, -1, -1  )), '4', 'nqp::slice one elem at end');

    # Test slice exceptions
    for ( 3,   2, 'nqp::slice dies; start pos greater than end pos'),
        ( 8,   2, 'nqp::slice dies; start pos out of bounds'),
        ( 2,   8, 'nqp::slice dies; end pos out of bounds'),
        (-2,  -3, 'nqp::slice dies; start pos greater than end pos (relative to end)'),
        (-8,   2, 'nqp::slice dies; start pos out of bounds (relative to end)'),
        ( 2,  -8, 'nqp::slice dies; end pos out of bounds (relative to end)'),
        (-8,   8, 'nqp::slice dies; both out of bounds'),
        ( 2, +@l, 'nqp::slice dies; using ".elems" is out of bounds')
    {
        my $start := $_.shift;
        my $end   := $_.shift;
        my $msg   := $_.shift;

        my $died := 0;
        {   nqp::slice(@l, $start, $end);
            CATCH { $died := 1 }
        }
        ok($died == 1, $msg);
    }
}
