use QAST;

plan(5);

# Following a test infrastructure.
sub compile_qast($qast) {
    my $*QAST_BLOCK_NO_CLOSE := 1;
    nqp::getcomp('nqp').compile($qast, :from('ast'));
}
sub is_qast($qast, $value, $desc) {
    try {
        my $code := compile_qast($qast);
        ok($code() eq $value, $desc);
        CATCH { ok(0, $desc) }
    }
}

is_qast(
    QAST::Block.new(
        QAST::VM.new(
            parrot => QAST::IVal.new( :value(42) ),
            unknown => QAST::IVal.new( :value(69) )
        )
    ),
    42,
    'QAST::VM picks parrot alternative and ignores others');

is_qast(
    QAST::Block.new(
        QAST::VM.new(
            pir => ".return ('Leffe')",
        ),
        QAST::SVal.new( :value('Fosters') )
    ),
    'Leffe',
    'QAST::VM with pir works');

is_qast(
    QAST::Block.new(
        QAST::VM.new(
            pir => "%r = box 'set'",
        )
    ),
    'set',
    'QAST::VM with pir and %r works');

is_qast(
    QAST::Block.new(
        QAST::VM.new(
            pirop => 'add__Iii',
            QAST::IVal.new( :value(15) ),
            QAST::IVal.new( :value(10) )
        )
    ),
    25,
    'QAST::VM with pirop and signature after __');

is_qast(
    QAST::Block.new(
        QAST::VM.new(
            pirop => 'add Iii',
            QAST::IVal.new( :value(15) ),
            QAST::IVal.new( :value(100) )
        )
    ),
    115,
    'QAST::VM with pirop and signature after a space');
