plan(12);
my $match := 'abcdef' ~~ / c(.)<alpha> /;
is( $match, 'cde', "simple match" );
for $match.list {
  is($_, 'd','correct numbered capture');
}
for $match.hash {
  is($_.key, 'alpha','the named capture is named correctly');
  is($_.value, 'e','...and it contains the right things');
}
ok( $match.from == 2, ".from works" );
ok( $match.to == 5, ".to works");
is( $match.orig, "abcdef", ".orig works");
ok( $match.chars == 3, ".chars works");

ok( nqp::existskey($match, 'alpha'), 'existskey on match' );
ok( !nqp::existskey($match, 'beta'), 'existskey on match with missing key' );

is($match."!dump_str"('mob'), "mob: cde @ 2\nmob[0]: d @ 3\nmob<alpha>: e @ 4\n",".\"!dump_str\" works correctly");

grammar ABC {
    token TOP { (o)(k) ' ' <integer> }
    token integer { \d+ }
}

$match := ABC.parse('ok 123');
is($match.dump, "- 0: o\n- 1: k\n- integer: 123\n",".dump works correctly");
