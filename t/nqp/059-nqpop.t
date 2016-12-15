#! nqp

# Test nqp::op pseudo-functions.

plan(286);

ok( nqp::add_i(5,2) == 7, 'nqp::add_i');
ok( nqp::sub_i(5,2) == 3, 'nqp::sub_i');
ok( nqp::mul_i(5,2) == 10, 'nqp::mul_i');
ok( nqp::div_i(5,2) == 2, 'nqp::div_i');
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

ok( nqp::add_n(5,2) == 7, 'nqp::add_n');
ok( nqp::sub_n(5,2) == 3, 'nqp::sub_n');
ok( nqp::mul_n(5,2) == 10, 'nqp::mul_n');
ok( nqp::div_n(5,2) == 2.5e0, 'nqp::div_n');

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

ok( nqp::pow_n(2.0, 4) == 16.0, 'nqp::pow_n');
ok( nqp::neg_i(5) == -5, 'nqp::neg_i');
ok( nqp::neg_i(-10) == 10, 'nqp::neg_i');
ok( nqp::neg_n(5.2) == -5.2, 'nqp::neg_n');
ok( nqp::neg_n(-10.3) == 10.3, 'nqp::neg_n');
ok( nqp::abs_i(5) == 5, 'nqp::abs_i');
ok( nqp::abs_i(-10) == 10, 'nqp::abs_i');
ok( nqp::abs_n(5.2) == 5.2, 'nqp::abs_n');
ok( nqp::abs_n(-10.3) == 10.3, 'nqp::abs_n');

ok( nqp::ceil_n(5.2) == 6.0, 'nqp::ceil_n');
ok( nqp::ceil_n(-5.2) == -5.0, 'nqp::ceil_n');
ok( nqp::ceil_n(5.0) == 5.0, 'nqp::ceil_n');
ok( nqp::ceil_n(-5.0) == -5.0, 'nqp::ceil_n');
ok( nqp::floor_n(5.2) == 5.0, 'nqp::floor_n');
ok( nqp::floor_n(-5.2) == -6.0, 'nqp::floor_n');
ok( nqp::floor_n(5.0) == 5.0, 'nqp::floor_n');
ok( nqp::floor_n(-5.0) == -5.0, 'nqp::floor_n');

ok( nqp::sqrt_n(6.25) == 2.5, 'nqp::sqrt_n');

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
ok( nqp::atpos($list,0) == 'zero', 'nqp::unshift the correct element');

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

sub test_splice_with_return() {
    my @children := [1, 2, 3];
    if 1 { return nqp::splice(@children, [], 1, 1); }
    @children
}
ok(nqp::elems(test_splice_with_return()) == 2, 'splice works as a return value');
ok(!nqp::isnull_s("foo"), 'test for isnull_s with a normal string');
ok(nqp::isnull_s(nqp::null_s()), 'test for isnull_s with a null_s');

ok(nqp::isnull_s(nqp::decont(nqp::null_s())), 'null_s survives nqp::decont');

ok(nqp::time_n() != 0, 'time_n is not zero');
ok(nqp::time_i() != 0, 'time_i is not zero');

my $time_a := nqp::time_i();
my $time_b := nqp::time_n();
ok($time_b >= $time_a, "time_n >= time_i");

ok(nqp::eqat("foobar","foo", 0) == 1, "eqat with needle argument that matches at 0");
ok(nqp::eqat("foobar","oob", 1) == 1, "eqat with needle argument that matches at 1");
ok(nqp::eqat("foobar","foo", 1) == 0, "eqat with needle argument that matches");
ok(nqp::eqat("foobar","bar", -3) == 1, "eqat with a negative offset argument");
ok(nqp::eqat("foobar","foo", -9001) == 1, "eqat with a gigantic offset argument");
ok(nqp::eqat("foobar","foobarbaz", 0) == 0, "eqat with needle argument longer than haystack");

{
    my $source := nqp::list("100", "200", "300");
    my $a := nqp::list("1", "2", "3");
    nqp::splice($a, $source, 0, 0);
    is(nqp::join(",", $a), '100,200,300,1,2,3', "splice");

    my $b := nqp::list("1", "2", "3", "4");
    nqp::splice($b, $source, 1, 2);
    is(nqp::join(",", $b), '1,100,200,300,4', "splice");
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

ok(nqp::isgt_i(10, 10) == 0, "isge_i =");
ok(nqp::isgt_i(9, 10) == 0, "isge_i <");
ok(nqp::isgt_i(11, 10) == 1, "isge_i >");

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

ok(nqp::isle_s('aaa', 'aab'), 'nqp::isle');
ok(nqp::isle_s('a', 'aa'), 'nqp::isle');
ok(nqp::isle_s('abcdaz', 'abcdbzefg'), 'nqp::isle');
ok(nqp::isle_s('abc', 'abc'), 'nqp::isle - both string equal');
ok(!nqp::isle_s('abcdbzefg', 'abcdaz'), 'nqp::isle left string greater');

ok(nqp::isge_s('aab', 'aaa', ), 'nqp::isge');
ok(nqp::isge_s('aa', 'a'), 'nqp::isge');
ok(nqp::isge_s('abcdbzefg', 'abcdaz',), 'nqp::isge');
ok(nqp::isge_s('abc', 'abc'), 'nqp::isge - both string equal');
ok(!nqp::isge_s('abcdaz', 'abcdbzefg'), 'nqp::isge left string greater');

ok(nqp::islt_s('aaa', 'aab'), 'nqp::isle');
ok(nqp::islt_s('a', 'aa'), 'nqp::isle');
ok(nqp::islt_s('abcdaz', 'abcdbzefg'), 'nqp::isle');
ok(!nqp::islt_s('abc', 'abc'), 'nqp::isle - both string equal');
ok(!nqp::islt_s('abcdbzefg', 'abcdaz'), 'nqp::isle left string greater');

ok(nqp::isgt_s('aab', 'aaa', ), 'nqp::isge');
ok(nqp::isgt_s('aa', 'a'), 'nqp::isge');
ok(nqp::isgt_s('abcdbzefg', 'abcdaz',), 'nqp::isge');
ok(!nqp::isgt_s('abc', 'abc'), 'nqp::isge - both string equal');
ok(!nqp::isgt_s('abcdaz', 'abcdbzefg'), 'nqp::isge left string greater');

ok((1.1 != 1) == 1, '!= between floating point numbers (not equal)');
ok((1.1 != 1.1) == 0,'!= between floating point numbers (equal)'); 

ok(12.5 % 5 == 2.5, '% test');
ok(3 % 2.5 == 0.5, '% test');
ok(-12.5 % 5 == 2.5, '% test');
ok(12.5 % -5 == -2.5, '% test');
ok(-12.5 % -5 == -2.5, '% test');
ok(20 % 7 == 6, '% with integer arguments');

is(nqp::sha1("Hello World"), '0A4D55A8D778E5022FAB701977C5D840BBC486D0', "sha1");
is( nqp::sha1("ab\x[0]c"), "DBDD4F85D8A56500AA5C9C8A0D456F96280C92E5", "nqp::sha1 null bytes");

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
    ok(nqp::elems($a) == 1, 'nqp::shit_i reduces the number of elements correctly');

    ok(nqp::unshift_i($a, 100) == 100, "unshift_i");

    ok(nqp::elems($a) == 2, 'nqp::unshift_i increases the number of elements correctly');
    ok(nqp::shift_i($a) == 100, 'the element get placed at the start');

    my $b := nqp::list_i(1,2,30.4);
    ok(nqp::atpos_i($b,2) == 30, 'atpos_i');

    ok(nqp::atpos_i($b, -2) == 2, 'atpos_i with negative index');

    ok(nqp::atpos_i($b, 100) == 0, 'nqp::atpos_i ouside of array');


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
    ok(nqp::elems($a) == 1, 'nqp::shit_s reduces the number of elements correctly');

    is(nqp::unshift_s($a, "X"), "X", "unshift_s");

    ok(nqp::elems($a) == 2, 'nqp::unshift_s increases the number of elements correctly');
    ok(nqp::shift_s($a) == "X", 'the element get placed at the start');

    my $b := nqp::list_s("A","B","C");
    ok(nqp::bindpos_s($b, 2, "D"), 'nqp::bindpos_s');
    is(nqp::atpos_s($b,2), "D", 'nqp::atpos_s');
    is(nqp::atpos_s($b, -2), "B", 'nqp::atpos_s with negative index');
    ok(nqp::isnull_s(nqp::atpos_s($a, 10)), 'nqp::atpos_s with element outside of array');
}

{
    my $a := nqp::list_n();
    nqp::push_n($a, 10.4);
    nqp::push_n($a, 11);
    nqp::push_n($a, 12);
    ok(nqp::elems($a) == 3, 'nqp::elems/nqp::push_n');
    ok(nqp::pop_n($a) == 12, 'nqp::pop_n');
    ok(nqp::elems($a) == 2, 'nqp::pop_n reduces the number of elements correctly');
    ok(nqp::islist($a) == 1, 'nqp::islist(nqp::list_n())');

    my $b := nqp::list_n(1,2,30.4);
    ok(nqp::atpos_n($b,2) == 30.4, 'atpos_n');


    my $c := nqp::list_n();
    nqp::bindpos_n($c, 1, 102);
    nqp::bindpos_n($c, 1, 103.5);
    nqp::bindpos_n($c, 0, 101);
    ok(nqp::atpos_n($c, 1) == 103.5, 'bindpos_n works');
    ok(nqp::atpos_n($c, -1) == 103.5, 'nqp::atpos_n with negative index');
    ok(nqp::atpos_n($c, 10) == 0.0, 'atpos_n with element outside of the array');

}

{
    my $a := nqp::list();
    nqp::bindpos($a, 1, "Hello World");
    is($a[1], 'Hello World', 'nqp::bindpos')
}

ok(nqp::isnanorinf(nqp::nan()) == 1, "nqp::isnanorinf - nan");
ok(nqp::isnanorinf(nqp::inf()) == 1, "nqp::isnanorinf - inf");
ok(nqp::isnanorinf(nqp::neginf()) == 1, "nqp::isnanorinf - inf");
ok(nqp::isnanorinf(123.5) == 0, "nqp::isnanorinf - normal number");

ok(nqp::inf() == nqp::inf(), "nqp::inf() equals itself");
ok(nqp::nan() != nqp::nan(), "nqp::nan() doesn't equal itself");
ok(nqp::neginf() < 0, "nqp::neginf() is negative");
ok(nqp::inf() > 0, "nqp::inf() is positive");
ok(nqp::inf()+123 == nqp::inf()-123, "nqp::neginf() doesn't change after adding or substracting");
ok(nqp::neginf()+123 == nqp::neginf()-123, "nqp::neginf() doesn't change after adding or substracting");
ok(nqp::neginf() == -nqp::inf(), "nqp::neginf() is negated nqp::inf()");

my $n := nqp::rand_n(4);
ok($n >= 0 && $n < 4, "generating number before calling srand");
nqp::srand(100);
my $a1 := nqp::rand_n(4);
my $b1 := nqp::rand_n(4);
nqp::srand(100);
ok($a1 >= 0 && $a1 < 4, "the generated number is in the wanted range");
my $a2 := nqp::rand_n(4);
my $b2 := nqp::rand_n(4);
ok($a1 == $a2, "after calling srand the first generated number is the same");
ok($b1 == $b2, "after calling srand the second generated number is the same");

is(nqp::replace("0123456789", 2, 4, "abc"), "01abc6789", "nqp::replace");

# TODO higher unicode values
is(nqp::bitand_s('blabla12$#@', '9$dfa23219'), ' $`b` 12 !', "nqp::bitand_s");
is(nqp::bitor_s('blabla12$#@', '9$dfa23219'), '{lefms325;@', "nqp::bitor_s");
is(nqp::bitxor_s(nqp::chr(1146) ~ nqp::chr(120), nqp::chr(1152)),nqp::chr(250) ~ nqp::chr(120), "nqp::bitxor_s");

is(nqp::unbox_s("hello"), "hello", "nqp::unbox_s on a string");

my $value_say := nqp::say("#comment from say");
my $value_print := nqp::print("#comment from print\n");

is($value_say, "#comment from say", "nqp::say returns correct value");
is($value_print, "#comment from print\n", "nqp::say returns correct value");

is(nqp::indexingoptimized("foobar"), "foobar", "nqp::indexingoptimized result is equal to it's argument");
ok(nqp::isstr(nqp::indexingoptimized(123)), "nqp::indexingoptimized returns a string");

ok(!nqp::isnull(nqp::null_s()), "null_s isn't null");
ok(!nqp::isnull_s(nqp::null()), "null isn't null_s");
ok(nqp::isstr(nqp::null_s()), "null_s is still a str");
ok(nqp::null() eq '', "null_s is and empty str");
{
    my $var := nqp::null_s();
    ok(nqp::isnull_s($var), "null_s can be stuck into a var and stays null_s");
}
ok(nqp::istrue(nqp::null_s()) == 0, "null_s isn't true");


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
