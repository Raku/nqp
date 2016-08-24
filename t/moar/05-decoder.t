plan(8);

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
