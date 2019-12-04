plan(36*(6 + 3) + 3 + 7);

sub test_radix($radix,$str,$pos,$flags,$value,$mult,$offset,$desc) {
    my $result := nqp::radix($radix,$str,$pos,$flags);
    is($result[0], $value,"radix: $desc - correct converted value");
    ok(nqp::isint($result[0]), 'radix - returned value is an int');
    ok(nqp::isint($result[1]), 'radix - radix ** (number of digits converted) is int');
    ok(nqp::isint($result[2]), 'radix - offset is int');
    is($result[1], $mult,"radix: $desc - correct radix ** (number of digits converted)");
    is($result[2], $offset,"radix: $desc - correct offset");
}

my $knowhow := nqp::knowhow();
my $bi_type := $knowhow.new_type(:name('TestBigInt'), :repr('P6bigint'));
$bi_type.HOW.compose($bi_type);
sub str($x) { nqp::tostr_I($x) };

sub test_radix_I($radix,$str,$pos,$flags,$value,$mult,$offset,$desc) {
    my $result := nqp::radix_I($radix,$str,$pos,$flags,$bi_type);
    is(str($result[0]), $value,"radix_I: $desc - correct converted value");
    is(str($result[1]), $mult,"radix_I: $desc - correct radix ** (number of digits converted)");
    is($result[2], $offset,"radix_I: $desc - correct offset");
}

sub test_radix_both(*@args) {
    test_radix(|@args);
    test_radix_I(|@args);
}

test_radix_both(10,"123",0,2,  123,1000,3, "base-10 radix call with no flags" );
test_radix_both(10,"+123",0,2,  123,1000,4, "base-10 radix call with flag 2 and +" );
test_radix_both(10,"-123",0,2,  -123,1000,4, "base-10 radix call with flag 2 and -" );
test_radix_both(10,"−123",0,2,  -123,1000,4, "base-10 radix call with flag 2 and −" );
test_radix_both(10,"-10",0,0,  0,1,-1,  "no digits consumed when we get - without flag");
test_radix_both(10,"+10",0,0,  0,1,-1,  "no digits consumed when we get + without flag");

test_radix_both(10, "123", 0, 1, -123, 1000, 3, "base-10 radix with flag 1");

test_radix_both(10, "12000", 0, 4, 12, 100, 5, "base-10 radix with flags 4");
test_radix_both(10, "12000", 0, 5, -12, 100, 5, "base-10 radix with flags 4 and 1");
test_radix_both(10, "-12000", 0, 6, -12, 100, 6, "base-10 radix with flags 4 and 2 with -");
test_radix_both(10, "−12000", 0, 6, -12, 100, 6, "base-10 radix with flags 4 and 2 with −");

test_radix_both(10,"123",0,2,  123,1000,3,  "basic base-10 radix call");
test_radix_both(10,"123",1,2,  23,100,3, "basic base-10 radix call with pos" );
test_radix_both(2,"100",0,2,  4,8,3, "basic base-2 radix call" );
test_radix_both(15,"1a",0,2,  25,225,2, "base 15 call with lower case" );
test_radix_both(15,"1B",0,2,  26,225,2, "base 15 call with upper case" );
test_radix_both(16,"1a",0,2,  26,256,2, "base 16 call with lower case" );
test_radix_both(16,"1B",0,2,  27,256,2, "base 16 call with upper case" );
test_radix_both(15,"-1B",0,2,  -26,225,3, "base 15 call with upper case and negation with -" );
test_radix_both(15,"−1B",0,2,  -26,225,3, "base 15 call with upper case and negation with −" );
test_radix_both(10,"000123",0,2,  123,1000000,6,  "base-10 with zeros at the front");
test_radix_both(10,"1_2_3",0,2,  123,1000,5,  "base-10 with underscores");
test_radix_both(10,"not_a_number",0,2,  0,1,-1,  "no digits consumed");

test_radix_I(10,"9883481620585741369158_914214988194663201633129_26952423791023078876139",0,2,
        "988348162058574136915891421498819466320163312926952423791023078876139",
        "1000000000000000000000000000000000000000000000000000000000000000000000",
        71,  "converting a huge number with radix_I");

test_radix_both(3,"3",0,2, 0,1,-1, "no digits consumed with digit outside radix");
test_radix_both(3,"۳",0,2, 0,1,-1, "no digits consumed with unicode digit outside radix");

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("radix can't yet handle fancy unicode stuff on the jvm", 4*(6 + 3));
} else {
    test_radix_both(10,"۳",0,2, 3,10,1, "extended arabic-indic digit three");
    test_radix_both(10,"۳۳",0,2, 33,100,2, "extended arabic-indic digit three");

    my $full_width_capital := "\c[FULLWIDTH LATIN CAPITAL LETTER C]\c[FULLWIDTH LATIN CAPITAL LETTER A]\c[FULLWIDTH LATIN CAPITAL LETTER F]\c[FULLWIDTH LATIN CAPITAL LETTER E]";

    my $full_width_small := "\c[FULLWIDTH LATIN SMALL LETTER C]\c[FULLWIDTH LATIN SMALL LETTER A]\c[FULLWIDTH LATIN SMALL LETTER F]\c[FULLWIDTH LATIN SMALL LETTER E]";

    test_radix_both(16,$full_width_capital,0,2, 51966,65536,4, "fullwidth capital letters");
    test_radix_both(16,$full_width_small,0,2, 51966,65536,4, "fullwidth small letters");
}

test_radix_both(8,"8238321",0,2, 0,1,-1, "all digits outside of radix");
test_radix_both(8,"1838321",0,2, 1,8,1, "all but one digits outside of radix");

test_radix_both(10,"123foobar",0,2, 123,1000,3, "no digits consumed with digit outside radix");
test_radix_both(8,"1238321",0,2, 83,512,3, "no digits consumed with digit outside radix");
test_radix_both(8,"-1238321",1,2, 83,512,4, "no digits consumed with digit outside radix");

test_radix_both(10,'⁰',0,0, 0,1,-1, 'unsupported by radix');

# Putting the number in nqp doesn't work since it may store it as a num in between
# so use coerce_si to test coerce_is
my @strings := ('92233', '0', '-1', '1', '-92233');

if nqp::backendconfig(){"intvalsize"} < 8 {
  skip("skipping coerce_is/coerce_si test with 64bit int on a 32bit backend", 2);
}
else {
  nqp::unshift(@strings, '9223372036854775807');
  nqp::push(@strings, '-9223372036854775808');
}

for @strings {
    is(nqp::coerce_is(nqp::coerce_si($_)), $_, "coerce_si and coerce_is round trip '$_'");
}

test_radix_both(10,'-1.0',3,5 ,0,1,4, 'bug when negating nothing');
