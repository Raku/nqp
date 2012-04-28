use QRegex;

plan(8);

# Following a test infrastructure.
sub compile_qast($qast) {
    my $post := QAST::Compiler.as_post($qast);
    my $pir := QAST::Compiler.pir($post);
    QAST::Compiler.evalpmc($pir);
}
sub is_qast($qast, $value, $desc) {
    try {
        my $code := compile_qast($qast);
        ok($code() eq $value, $desc);
        CATCH { ok(0, $desc) }
    }
}
sub test_qast_result($qast, $tester) {
    try {
        my $code := compile_qast($qast);
        $tester($code());
        CATCH { ok(0, 'Compilation failure in test_qast_result') }
    }
}

# Couple of handly classes, which we may want to refer as WVals in tests.
class A { method m() { 'a' } }
class B { method m() { 'b' } }

is_qast(
    QAST::Block.new(
        QAST::IVal.new( :value(42) )
    ),
    42,
    'IVal node');

is_qast(
    QAST::Block.new(
        QAST::NVal.new( :value(6.9) )
    ),
    6.9,
    'NVal node');

is_qast(
    QAST::Block.new(
        QAST::SVal.new( :value('Gorillas just love pizza') )
    ),
    'Gorillas just love pizza',
    'SVal node');

test_qast_result(
    QAST::Block.new(
        QAST::WVal.new(:value(A))
    ),
    -> $r {
        ok($r.m eq 'a', 'WVal node');
    });

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('add_i'),
            QAST::IVal.new(:value(10)),
            QAST::IVal.new(:value(95))
        )
    ),
    105,
    'add_i operation with two IVal nodes');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('add_i'),
            QAST::IVal.new(:value(10)),
            QAST::Op.new(
                :op('add_i'),
                QAST::IVal.new(:value(20)),
                QAST::IVal.new(:value(30))
            )
        )
    ),
    60,
    'an add_i op inside an add_i op');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('neg_i'),
            QAST::IVal.new(:value(206))
        )
    ),
    -206,
    'neg_i operation with one IVal node');

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('list'),
            QAST::WVal.new(:value(A)),
            QAST::WVal.new(:value(B))
        )
    ),
    -> $r {
        ok($r[0].m eq 'a', 'op list works (first elem)');
        ok($r[1].m eq 'b', 'op list works (second elem)');
    });
