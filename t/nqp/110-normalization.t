plan(13);

my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    $buf
}

my $buf32 := create_buf(uint32);
my $input := nqp::create($buf32);
my $output := nqp::create($buf32);

nqp::push_i($input, 0x1E0A);
nqp::push_i($input, 0x0323);

my $ret := nqp::normalizecodes($input, nqp::const::NORMALIZE_NFC, $output);
ok(nqp::eqaddr($output, $ret), 'nqp::normalizecodes returns the output buffer');
is(nqp::elems($output), 2, '1E0A 0323 -> NFC -> 1E0C 0307 # right amount of code points');
is(nqp::atpos_i($output, 0), 0x1E0C, '1E0A 0323 -> NFC -> 1E0C 0307 # first code point');
is(nqp::atpos_i($output, 1), 0x0307, '1E0A 0323 -> NFC -> 1E0C 0307 # second code point');


my $hi := nqp::create(create_buf(uint32));

nqp::push_i($hi, 104);
nqp::push_i($hi, 105);

is(nqp::strfromcodes($hi), 'hi', 'nqp::strfromcodes');

my $codes := nqp::create(create_buf(uint32));

nqp::strtocodes('hi', nqp::const::NORMALIZE_NFC, $codes);


is(nqp::elems($codes), 2, 'nqp::strtocodes - right amount of code points');
is(nqp::atpos_i($codes, 0), 104, 'nqp::strtocodes - first code point');
is(nqp::atpos_i($codes, 1), 105, 'nqp::strtocodes - second code point');

my $normalized_codes := nqp::create(create_buf(uint32));
nqp::strtocodes(nqp::strfromcodes($input), nqp::const::NORMALIZE_NFC, $normalized_codes);

is(nqp::elems($normalized_codes), 2, 'nqp::strtocode & nqp::strfromcodes: 1E0A 0323 -> NFC -> 1E0C 0307 # right amount of code points');
is(nqp::atpos_i($normalized_codes, 0), 0x1E0C, 'nqp::strtocode & nqp::strfromcodes: 1E0A 0323 -> NFC -> 1E0C 0307 # first code point');
is(nqp::atpos_i($normalized_codes, 1), 0x0307, 'nqp::strtocode & nqp::strfromcodes: 1E0A 0323 -> NFC -> 1E0C 0307 # second code point');

my $three_codes_grapheme := nqp::create(create_buf(uint32));
nqp::push_i($three_codes_grapheme, 0x0071);
nqp::push_i($three_codes_grapheme, 0x0323);
nqp::push_i($three_codes_grapheme, 0x0307);
is(nqp::codes(nqp::strfromcodes($three_codes_grapheme)), 3, 'nqp::codes with a 3 codes grapheme');

my $two_codes_grapheme := nqp::create(create_buf(uint32));
nqp::push_i($two_codes_grapheme, 0x1E0B);
nqp::push_i($two_codes_grapheme, 0x0323);
is(nqp::codes(nqp::strfromcodes($two_codes_grapheme)), 2, 'nqp::codes with a 2 codes grapheme');
