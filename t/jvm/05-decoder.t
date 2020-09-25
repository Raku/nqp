plan(5);

sub dies-ok(&code, $message) {
    my int $died := 0;
    try { code(); CATCH { $died := 1; } }
    ok($died, $message);
}

my class VMDecoder is repr('Decoder') {}
my $buf_type := nqp::newtype(nqp::knowhow(), 'VMArray');
nqp::composetype($buf_type, nqp::hash('array', nqp::hash('type', uint8)));

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
