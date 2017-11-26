plan(31);
is(nqp::getstrfromname('FULL STOP'), '.', 'getstrfromname works');
is(nqp::codepointfromname('FULL STOP'), nqp::ord('.'), 'codepointfromname works');
is(nqp::getstrfromname('super fake not real name'), '', 'getstrfromname returns empty string for nonexistant codepoint names');

is(nqp::getstrfromname('LATIN CAPITAL LETTER A'), 'A', 'nqp::getstrfromname with existing character');

is(nqp::getstrfromname('LaTiN CaPiTaL LeTTeR A'), 'A', 'nqp::getstrfromname is case insensitive');

is(nqp::getstrfromname('LINE FEED'), nqp::chr(10), 'nqp::getstrfromname with aliased character');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("aliases NYI on the JVM");
}
else {
  is(nqp::getstrfromname('NL'), nqp::chr(10), 'nqp::getstrfromname accepts aliases');
}

is(nqp::getstrfromname('BELL'), nqp::chr(0x1F514), 'nqp::getstrfromname with BELL');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("named sequences broken on the JVM");
}
else {
  is(nqp::getstrfromname('LATIN SMALL LETTER E WITH OGONEK AND TILDE'), 'ę̃', 'nqp::getstrfromname with a Unicode Named Sequence');
}
is(nqp::getstrfromname('BOY'), nqp::chr(0x1F466), 'nqp::getstrfromname with an emoji');
if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("Emoji broken on the JVM", 3);
}
else {
  is(nqp::getstrfromname('PLACE OF WORSHIP'), nqp::chr(0x1F6D0), 'nqp::getstrfromname with an emoji');
  is(nqp::getstrfromname('woman gesturing OK'), nqp::chr(0x1F646) ~ nqp::chr(0x200D) ~ nqp::chr(0x2640) ~ nqp::chr(0xFE0F), 'nqp::getstrfromaname with an Emoji ZWJ Sequences');
  is(nqp::getstrfromname('princess: light skin tone'), nqp::chr(0x1F478) ~ nqp::chr(0x1F3FB), 'nqp::getstrfromaname wih an Emoji Sequences');

}

is(nqp::codepointfromname('NULL'), 0, 'nqp::codepointfromname with NULL');
is(nqp::getstrfromname('NULL'), "\0", 'nqp::getstrfromname with NULL');

is(nqp::codepointfromname('LATIN CAPITAL LETTER A'), 65, 'nqp::codepointfromname');

is(nqp::codepointfromname('NO SUCH NAME IN UNICODE WHATSOEVER'), -1, 'nqp::codepointfromname with missing unicode character name');
is(nqp::codepointfromname('LaTiN CaPiTaL LeTTeR A'), -1, 'nqp::codepointfromname is case sensitive');
is(nqp::codepointfromname('LINE FEED'), 10, 'nqp::codepointfromname accepts aliases');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("aliases NYI on the JVM");
}
else {
  is(nqp::codepointfromname('NL'), 10, 'nqp::codepointfromname accepts aliases');
}
is(nqp::codepointfromname('LATIN SMALL LETTER E WITH OGONEK AND TILDE'), -1, 'nqp::codepointfromname doesn\'t accept sequences');

is(nqp::getuniname(104), 'LATIN SMALL LETTER H', 'nqp::getuniname');
is(nqp::getuniname(0x0), '<control-0000>', 'nqp::getuniname for controls');
is(nqp::getuniname(0x1F), '<control-001F>', 'nqp::getuniname for controls');
is(nqp::getuniname(0x20), 'SPACE', 'nqp::getuniname for SPACE');
is(nqp::getuniname(0x7E), 'TILDE', 'nqp::getuniname for TILDE');
is(nqp::getuniname(0x7F), '<control-007F>', 'nqp::getuniname for controls');
is(nqp::getuniname(0x9F), '<control-009F>', 'nqp::getuniname for controls');
is(nqp::getuniname(0xA0), 'NO-BREAK SPACE', 'nqp::getuniname for controls');
is(nqp::getuniname(0x1F514), "BELL", 'nqp::getuniname for U+1F514 BELL');
is(nqp::getuniname(0x10FFFF), "<noncharacter-10FFFF>", 'nqp::getuniname for U+10FFFF is a noncharacter');
