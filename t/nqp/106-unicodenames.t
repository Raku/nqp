plan(40);
is(nqp::strfromname('FULL STOP'), '.', 'strfromname works');
is(nqp::codepointfromname('FULL STOP'), nqp::ord('.'), 'codepointfromname works');
is(nqp::strfromname('super fake not real name'), '',
  'strfromname returns empty string for nonexistant codepoint names');

is(nqp::strfromname('LATIN CAPITAL LETTER A'), 'A', 'nqp::strfromname with existing character');

is(nqp::strfromname('LaTiN CaPiTaL LeTTeR A'), 'A', 'nqp::strfromname is case insensitive');

is(nqp::strfromname('LINE FEED'), nqp::chr(10), 'nqp::strfromname with aliased character');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("aliases NYI on the JVM");
}
else {
  is(nqp::strfromname('NL'), nqp::chr(10), 'nqp::strfromname accepts aliases');
}

is(nqp::strfromname('BELL'), nqp::chr(0x1F514), 'nqp::strfromname with BELL');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("named sequences broken on the JVM");
}
else {
  is(nqp::strfromname('LATIN SMALL LETTER E WITH OGONEK AND TILDE'), 'ę̃',
    'nqp::strfromname with a Unicode Named Sequence');
}
is(nqp::strfromname('BOY'), nqp::chr(0x1F466), 'nqp::strfromname with an emoji');
if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("Emoji broken on the JVM", 3);
}
else {
  is(nqp::strfromname('PLACE OF WORSHIP'), nqp::chr(0x1F6D0), 'nqp::strfromname with an emoji');
  my $woman-gesturing-OK := nqp::chr(0x1F646) ~ nqp::chr(0x200D) ~ nqp::chr(0x2640)
    ~ nqp::chr(0xFE0F);
  is(nqp::strfromname('woman gesturing OK'), $woman-gesturing-OK,
    'nqp::getstrfromaname with an Emoji ZWJ Sequences');
  is(nqp::strfromname('princess: light skin tone'), nqp::chr(0x1F478) ~ nqp::chr(0x1F3FB),
    'nqp::getstrfromaname wih an Emoji Sequence');

}

is(nqp::codepointfromname('NULL'), 0, 'nqp::codepointfromname with NULL');
is(nqp::strfromname('NULL'), "\0", 'nqp::strfromname with NULL');

is(nqp::codepointfromname('LATIN CAPITAL LETTER A'), 65, 'nqp::codepointfromname');

is(nqp::codepointfromname('NO SUCH NAME IN UNICODE WHATSOEVER'), -1,
  'nqp::codepointfromname with missing unicode character name');
is(nqp::codepointfromname('LaTiN CaPiTaL LeTTeR A'), -1, 'nqp::codepointfromname is case sensitive');
is(nqp::codepointfromname('LINE FEED'), 10, 'nqp::codepointfromname accepts aliases');

if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("aliases NYI on the JVM");
}
else {
  is(nqp::codepointfromname('NL'), 10, 'nqp::codepointfromname accepts aliases');
}
is(nqp::codepointfromname('LATIN SMALL LETTER E WITH OGONEK AND TILDE'), -1,
  'nqp::codepointfromname doesn\'t accept sequences');

is(nqp::getuniname(104), 'LATIN SMALL LETTER H', 'nqp::getuniname');
is(nqp::getuniname(0x0), '<control-0000>', 'nqp::getuniname for controls');
is(nqp::getuniname(0x1F), '<control-001F>', 'nqp::getuniname for controls');
is(nqp::getuniname(0x20), 'SPACE', 'nqp::getuniname for SPACE');
is(nqp::getuniname(0x7E), 'TILDE', 'nqp::getuniname for TILDE');
is(nqp::getuniname(0x7F), '<control-007F>', 'nqp::getuniname for controls');
is(nqp::getuniname(0x9F), '<control-009F>', 'nqp::getuniname for controls');
is(nqp::getuniname(0xA0), 'NO-BREAK SPACE', 'nqp::getuniname for controls');
is(nqp::getuniname(0x1F514), "BELL", 'nqp::getuniname for U+1F514 BELL');
is(nqp::getuniname(0x10FFFF), "<noncharacter-10FFFF>",
  'nqp::getuniname for U+10FFFF is a noncharacter');
is(nqp::getuniname(0xF901), "CJK COMPATIBILITY IDEOGRAPH-F901", "nqp::getuniname for CJK COMPATIBILITY IDEOGRAPH");
is(nqp::getuniname(0xF8E4), "<private-use-F8E4>", "nqp::getuniname for Private use characters return <private-use-XXXX>");
is(nqp::getuniname(0xDFFD), "<surrogate-DFFD>", "nqp::getuniname for Low Surrogates returns <surrogate-XXXX>");
is(nqp::getuniname(0xDBFF), "<surrogate-DBFF>", "nqp::getuniname for Private Use High Surrogates returns <surrogate-XXXX>");
is(nqp::getuniname(0xDB7F), "<surrogate-DB7F>", "nqp::getuniname for Non Private Use High Surrogates returns <surrogate-XXXX>");
if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("Tangut, Nushu characters not in JVM yet / CJK has 'extension b'", 3);
}
else {
  is(nqp::getuniname(0x20001), "CJK UNIFIED IDEOGRAPH-20001",
    "nqp::getuniname for U+20001 CJK UNIFIED IDEOGRAPH");
  is(nqp::getuniname(0x17000), "TANGUT IDEOGRAPH-17000", "Tangut ideograph nqp::uniname");
  is(nqp::getuniname(0x1B170), "NUSHU CHARACTER-1B170", "Nushu character nqp::uniname");
}
if nqp::getcomp('nqp').backend.name eq 'jvm' {
  skip("Hangul Syllables give incorrect result", 1);
}
else {
  is(nqp::getuniname(0xAC00), "HANGUL SYLLABLE GA", "U+AC00 returns HANGUL SYLLABLE GA");
}
