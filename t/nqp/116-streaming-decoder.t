plan(55);

sub dies-ok(&code, $message) {
    my int $died := 0;
    try { code(); CATCH { $died := 1; } }
    ok($died, $message);
}

my class VMDecoder is repr('Decoder') {}
my $buf_type := nqp::newtype(nqp::knowhow(), 'VMArray');
nqp::composetype($buf_type, nqp::hash('array', nqp::hash('type', uint8)));

{
    my $unconfigured := nqp::create(VMDecoder);
    dies-ok({ nqp::decodersetlineseps($unconfigured, nqp::list_s('x')) },
        'Cannot decodersetlineseps on unconfigured decoder');
    dies-ok({ nqp::decoderaddbytes($unconfigured, nqp::create($buf_type)) },
        'Cannot decoderaddbytes on unconfigured decoder');
    dies-ok({ nqp::decodertakechars($unconfigured, 1) },
        'Cannot decodertakechars on unconfigured decoder');
    dies-ok({ nqp::decodertakeallchars($unconfigured) },
        'Cannot decodertakeallchars on unconfigured decoder');
    dies-ok({ nqp::decodertakeline($unconfigured, 0, 0) },
        'Cannot decodertakeline on unconfigured decoder');
    dies-ok({ nqp::decoderbytesavailable($unconfigured) },
        'Cannot decoderbytesavailable on unconfigured decoder');
    dies-ok({ nqp::decodertakebytes($unconfigured, $buf_type, 1) },
        'Cannot decodertakebytes on unconfigured decoder');
    dies-ok({ nqp::decoderempty($unconfigured) },
        'Cannot decoderempty on unconfigured decoder');
}

{
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    ok(1, 'Configured the decoder for utf8');
    dies-ok({ nqp::decoderconfigure($dec, 'utf8', nqp::hash()); },
        'Cannot configure a decoder twice');
}

{
    my $dec := nqp::create(VMDecoder);
    dies-ok({ nqp::decoderconfigure($dec, 'wtf8', nqp::hash()); },
        'Cannot configure a decoder with an unknown encoding');
}

{
    my $testbuf1 := nqp::encode('omgw', 'ascii', nqp::create($buf_type));
    my $testbuf2 := nqp::encode('tfbbq', 'ascii', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'ascii', nqp::hash());
    ok(nqp::decoderempty($dec), 'Decoder starts out empty');
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(!nqp::decoderempty($dec), 'Not empty after adding a buffer');
    nqp::decoderaddbytes($dec, $testbuf2);
    ok(!nqp::decoderempty($dec), 'Not empty after adding a second');
    ok(nqp::decodertakeallchars($dec) eq 'omgwtfbbq', 'Can take all chars');
    ok(nqp::decoderempty($dec), 'Empty again after taking all chars');
}

{
    my $testbuf1 := nqp::create($buf_type);
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'ascii', nqp::hash());
    nqp::bindpos_i($testbuf1, 0, 0x6E); # 'n'
    nqp::bindpos_i($testbuf1, 1, 0x71); # 'q'
    nqp::bindpos_i($testbuf1, 2, 0x70); # 'p'
    nqp::decoderaddbytes($dec, $testbuf1);
    nqp::bindpos_i($testbuf1, 0, 0x78); # 'x'
    nqp::bindpos_i($testbuf1, 1, 0x78); # 'x'
    nqp::bindpos_i($testbuf1, 2, 0x78); # 'x'
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(nqp::decodertakeallchars($dec) eq 'nqpxxx',
        'internal buffer of decoder gets its own copy of the added bytes');
}

{
    my $testbuf1 := nqp::encode('подво', 'utf8', nqp::create($buf_type));
    my $testbuf2 := nqp::encode('дка', 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(nqp::decodertakechars($dec, 3) eq 'под', 'Can read a number of chars');
    nqp::decoderaddbytes($dec, $testbuf2);
    ok(nqp::isnull_s(nqp::decodertakechars($dec, 100)),
        'Trying to read more than is available gets a null');
    ok(nqp::decodertakeavailablechars($dec) eq 'водк',
        'Can correctly take the remaining available chars ("а" held by normalization")');
    ok(!nqp::decoderempty($dec), 'Not empty when something left in normalization buffer');
    ok(nqp::decodertakeallchars($dec) eq 'а',
        'Taking all chars indicates EOF, so we get the final char');
    ok(nqp::decoderempty($dec), 'Empty after taking all chars');
}

{
    my $testbuf1 := nqp::encode('подводка', 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(nqp::decodertakechars($dec, 3) eq 'под', 'Can read first 3 chars of 8');
    ok(nqp::decodertakechars($dec, 3) eq 'вод', 'Can read another 3 chars of 8 (4-6)');
    ok(nqp::decodertakechars($dec, 1) eq 'к', 'Can read one more char of 8 (7)');
    ok(nqp::isnull_s(nqp::decodertakechars($dec, 1)),
        'Cannot take last char this way as there may be another after it that combines');
    ok(nqp::decodertakeallchars($dec) eq 'а',
        'Taking all chars indicates EOF, so we get the final char');
}

{
    my $testbuf1 := nqp::encode("line 1\nli", 'utf8', nqp::create($buf_type));
    my $testbuf2 := nqp::encode("ne 2\nline 3", 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(nqp::decodertakeline($dec, 1, 0) eq 'line 1', 'read 1 line, chomped');
    ok(nqp::isnull_s(nqp::decodertakeline($dec, 1, 0)), 'cannot lead a complete line now');
    nqp::decoderaddbytes($dec, $testbuf2);
    ok(nqp::decodertakeline($dec, 0, 0) eq "line 2\n", 'read line 2, not chomped');
    ok(nqp::isnull_s(nqp::decodertakeline($dec, 1, 0)), 'cannot lead a complete line now');
    ok(nqp::decodertakeline($dec, 1, 1) eq "line 3", 'with incomplete flag, read final line');
}

{
    my $testbuf1 := nqp::encode("line 1AAli", 'utf8', nqp::create($buf_type));
    my $testbuf2 := nqp::encode("ne 2BBline 3", 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decodersetlineseps($dec, nqp::list_s('AA', 'BB'));
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(nqp::decodertakeline($dec, 1, 0) eq 'line 1', 'read 1 line, chomped (custom seps)');
    ok(nqp::isnull_s(nqp::decodertakeline($dec, 1, 0)), 'cannot lead a complete line now (custom seps)');
    nqp::decoderaddbytes($dec, $testbuf2);
    ok(nqp::decodertakeline($dec, 0, 0) eq "line 2BB", 'read line 2, not chomped (custom seps)');
    ok(nqp::isnull_s(nqp::decodertakeline($dec, 1, 0)), 'cannot lead a complete line now (custom seps)');
    ok(nqp::decodertakeline($dec, 1, 1) eq "line 3", 'with incomplete flag, read final line (custom seps)');
}

{
    my $testbuf1 := nqp::encode("над\nп", 'utf8', nqp::create($buf_type));
    my $testbuf2 := nqp::encode('од', 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(nqp::decoderbytesavailable($dec) == 9, 'Can get number of bytes available');
    ok(nqp::decodertakechars($dec, 4) eq "над\n", 'Read 4 chars OK');
    ok(nqp::decoderbytesavailable($dec) == 2, 'Correct bytes available afterwards');
    nqp::decoderaddbytes($dec, $testbuf2);
    ok(nqp::decoderbytesavailable($dec) == 6, 'Adding more bytes is tracked');
    ok(nqp::isnull(nqp::decodertakebytes($dec, $buf_type, 60)),
        'Trying to take more bytes than are available gives back null');
    my $bytes := nqp::decodertakebytes($dec, $buf_type, 6);
    ok(nqp::elems($bytes), 'Could take 6 bytes as byte array');
    ok(nqp::atpos_i($bytes, 0) == 0xd0, 'Byte 1 correct');
    ok(nqp::atpos_i($bytes, 1) == 0xbf, 'Byte 2 correct');
    ok(nqp::atpos_i($bytes, 2) == 0xd0, 'Byte 3 correct');
    ok(nqp::atpos_i($bytes, 3) == 0xbe, 'Byte 4 correct');
    ok(nqp::atpos_i($bytes, 4) == 0xd0, 'Byte 5 correct');
    ok(nqp::atpos_i($bytes, 5) == 0xb4, 'Byte 6 correct');
    ok(nqp::decoderbytesavailable($dec) == 0, 'Now no bytes available');
    ok(nqp::decoderempty($dec), 'And so the decoder is empty');
}

{
    my $testbuf1 := nqp::encode("one\ntwo\r\nthree\r\n", 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash('translate_newlines', 1));
    nqp::decoderaddbytes($dec, $testbuf1);
    my $got := nqp::decodertakeallchars($dec);
    if nqp::getcomp('nqp').backend.name eq 'jvm' {
        skip('translate_newline option does not work on the jvm', 1);
    }
    else {
        is($got, "one\ntwo\nthree\n", 'Newlines get translated if the options is passed');
    }
}

{
    my $testbuf1 := nqp::encode("one\ntwo\r\n", 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $testbuf1);
    my $got := nqp::decodertakeallchars($dec);
    is($got, "one\ntwo\r\n", "Newlines don't get translated if the options is not passed");
}

{
    my $emptybuf := nqp::encode('', 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $emptybuf);
    ok(nqp::decoderempty($dec), 'Decoder is still empty after adding an empty buffer');
}
