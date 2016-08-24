plan(20);

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
    my $testbuf1 := nqp::encode('подво', 'utf8', nqp::create($buf_type));
    my $testbuf2 := nqp::encode('дка', 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $testbuf1);
    ok(nqp::decodertakechars($dec, 3) eq 'под', 'Can read a number of chars');
    nqp::decoderaddbytes($dec, $testbuf2);
    ok(nqp::isnull_s(nqp::decodertakechars($dec, 100)),
        'Trying to read more than is available gets a null');
    ok(nqp::decodertakeallchars($dec) eq 'водка',
        'Can correctly take the rest');
    ok(nqp::decoderempty($dec), 'Empty after taking all chars');
}
