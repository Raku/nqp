plan(2);

sub dies-ok(&code, $message) {
    my int $died := 0;
    try { code(); CATCH { $died := 1; } }
    ok($died, $message);
}

my class VMDecoder is repr('Decoder') {}
my $buf_type := nqp::newtype(nqp::knowhow(), 'VMArray');
nqp::composetype($buf_type, nqp::hash('array', nqp::hash('type', uint8)));

{
    my $testbuf1 := nqp::encode("one\ntwo\r\nthree\r\n", 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash('translate_newlines', 1));
    nqp::decoderaddbytes($dec, $testbuf1);
    my $got := nqp::decodertakeallchars($dec);
    is($got, "one\ntwo\nthree\n", 'Newlines get translated if the options is passed');
}

{
    my $testbuf1 := nqp::encode("one\ntwo\r\n", 'utf8', nqp::create($buf_type));
    my $dec := nqp::create(VMDecoder);
    nqp::decoderconfigure($dec, 'utf8', nqp::hash());
    nqp::decoderaddbytes($dec, $testbuf1);
    my $got := nqp::decodertakeallchars($dec);
    is($got, "one\ntwo\r\n", "Newlines don't get translated if the options is not passed");
}
