plan(11*3*2 + 3);

sub test_radix($radix,$str,$pos,$flags,$value,$mult,$offset,$desc) {
    my $result := nqp::radix($radix,$str,$pos,$flags);
    ok($result[0] == $value,"radix: $desc - correct converted value");
    ok($result[1] == $mult,"radix: $desc - correct radix ** (number of digits converted)");
    ok($result[2] == $offset,"radix: $desc - correct offset");
}

my $knowhow := nqp::knowhow();
my $bi_type := $knowhow.new_type(:name('TestBigInt'), :repr('P6bigint'));
$bi_type.HOW.compose($bi_type);
sub str($x) { nqp::tostr_I($x) };

sub test_radix_I($radix,$str,$pos,$flags,$value,$mult,$offset,$desc) {
    my $result := nqp::radix_I($radix,$str,$pos,$flags,$bi_type);
    ok(str($result[0]) eq $value,"radix_I: $desc - correct converted value");
    ok(str($result[1]) eq $mult,"radix_I: $desc - correct radix ** (number of digits converted)");
    ok($result[2] == $offset,"radix_I: $desc - correct offset");
}

sub test_radix_both(*@args) {
    test_radix(|@args);
    test_radix_I(|@args);
}

test_radix_both(10,"123",0,2,  123,1000,3,  "basic base-10 radix call");
test_radix_both(10,"123",1,2,  23,100,3, "basic base-10 radix call with pos" );
test_radix_both(2,"100",0,2,  4,8,3, "basic base-2 radix call" );
test_radix_both(15,"1a",0,2,  25,225,2, "base 15 call with lower case" );
test_radix_both(15,"1B",0,2,  26,225,2, "base 15 call with upper case" );
test_radix_both(16,"1a",0,2,  26,256,2, "base 16 call with lower case" );
test_radix_both(16,"1B",0,2,  27,256,2, "base 16 call with upper case" );
test_radix_both(15,"-1B",0,2,  -26,225,3, "base 15 call with upper case and negation" );
test_radix_both(10,"000123",0,2,  123,1000000,6,  "base-10 with zeros at the front");
test_radix_both(10,"1_2_3",0,2,  123,1000,5,  "base-10 with underscores");
test_radix_both(10,"not_a_number",0,2,  0,1,-1,  "no digits consumed");

test_radix_I(10,"9883481620585741369158_914214988194663201633129_26952423791023078876139",0,2, 
        "988348162058574136915891421498819466320163312926952423791023078876139",
        "1000000000000000000000000000000000000000000000000000000000000000000000",
        71,  "converting a huge number with radix_I");

