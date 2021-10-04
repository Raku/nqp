use QAST;

plan(1);

# Following a test infrastructure.
sub compile_qast($qast) {
    my $*QAST_BLOCK_NO_CLOSE := 1;
    # Turn off the optimizer as it can only handle things things nqp generates
    nqp::getcomp('nqp').compile($qast, :from('ast'), :optimize('off'));
}
sub is_qast($qast, $value, $desc) {
    try {
        my $code := compile_qast($qast);
        is($code(), $value, $desc);
        CATCH { ok(0, 'Exception in is_qast: ' ~ $! ~ ", test: $desc") }
    }
}

{
    nqp::dispatch('boot-syscall', 'dispatcher-register', 'funnylang-hllize', -> $capture {
        nqp::dispatch('boot-syscall', 'dispatcher-delegate', 'boot-constant',
            nqp::dispatch('boot-syscall', 'dispatcher-insert-arg-literal-str',
                nqp::dispatch('boot-syscall', 'dispatcher-drop-arg', $capture, 0),
                0, 'hilarious'
            )
        );
    });

    is_qast(
        QAST::CompUnit.new(
            :hll<funnylang>,
            QAST::Block.new(
                QAST::Op.new(:op<sethllconfig>, QAST::SVal.new(:value<funnylang>),
                    QAST::Op.new(:op<hash>,
                        QAST::SVal.new(:value<null_value>),
                        QAST::SVal.new(:value<hilarious>),
                        QAST::SVal.new(:value<hllize_dispatcher>),
                        QAST::SVal.new(:value<funnylang-hllize>),
                    )
                ),
                QAST::Op.new(:op<hllize>, QAST::Op.new(:op<null>)),
            )

        ),
        'hilarious',
        'hllize');
}
