use QRegex;

plan(23);

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
sub is_qast_args($qast, @args, $value, $desc) {
    try {
        my $code := compile_qast($qast);
        ok($code(|@args) eq $value, $desc);
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

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('if'),
            QAST::IVal.new(:value(1)),
            QAST::IVal.new(:value(2)),
            QAST::IVal.new(:value(3))
        )
    ),
    2,
    'if with IVal, 3-operand');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('if'),
            QAST::IVal.new(:value(0)),
            QAST::IVal.new(:value(2)),
            QAST::IVal.new(:value(3))
        )
    ),
    3,
    'if with IVal, 3-operand');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('if'),
            QAST::IVal.new(:value(1)),
            QAST::IVal.new(:value(2))
        )
    ),
    2,
    'if with IVal, 2-operand');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('if'),
            QAST::IVal.new(:value(0)),
            QAST::IVal.new(:value(2))
        )
    ),
    0,
    'if with IVal, 2-operand');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('unless'),
            QAST::IVal.new(:value(1)),
            QAST::IVal.new(:value(2))
        )
    ),
    1,
    'unless with IVal');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('unless'),
            QAST::IVal.new(:value(0)),
            QAST::IVal.new(:value(2))
        )
    ),
    2,
    'unless with IVal');

class MyBigInt is repr('P6bigint') { }

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('fromstr_I'),
            QAST::SVal.new(:value('-42')),
            QAST::WVal.new(:value(MyBigInt))
        )
    ),
    -> $r {
        ok(nqp::unbox_i($r) == -42, 'bigint conversion roundtrips');
    });

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('lol'), :scope('local'), :decl('var'), :returns(int) ),
            QAST::IVal.new(:value(42))
        )
    ),
    42,
    'local with type int');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('omg'), :scope('local'), :decl('var'), :returns(num) ),
            QAST::NVal.new(:value(6.9))
        )
    ),
    6.9,
    'local with type num');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('wtf'), :scope('local'), :decl('var'), :returns(str) ),
            QAST::SVal.new(:value("Is cabbage what you pay the taxi driver?"))
        )
    ),
    "Is cabbage what you pay the taxi driver?",
    'local with type str');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('a'), :scope('local'), :decl('var'), :returns(int) ),
            QAST::IVal.new(:value(12))
        ),
        QAST::Op.new(
            :op('add_i'),
            QAST::Var.new( :name('a'), :scope('local') ),
            QAST::IVal.new(:value(13))
        )
    ),
    25,
    'local int bound to a value then used in addition');

is_qast_args(
    QAST::Block.new(
        QAST::Var.new( :name('arg'), :scope('local'), :decl('param'), :returns(str) ),
    ),
    ['Mmmmm...Highland Park!'],
    'Mmmmm...Highland Park!',
    'local param being returned immediately');

is_qast_args(
    QAST::Block.new(
        QAST::Var.new( :name('a'), :scope('local'), :decl('param'), :returns(int) ),
        QAST::Var.new( :name('b'), :scope('local'), :decl('param'), :returns(int) ),
        QAST::Op.new(
            :op('add_i'),
            QAST::Var.new( :name('a'), :scope('local') ),
            QAST::Var.new( :name('b'), :scope('local') )
        )
    ),
    [9, 18],
    27,
    'two int args declared, then used');

is_qast_args(
    QAST::Block.new(
        QAST::Op.new(
            :op('add_i'),
            QAST::Var.new( :name('a'), :scope('local'), :decl('param'), :returns(int) ),
            QAST::Var.new( :name('b'), :scope('local'), :decl('param'), :returns(int) )
        )
    ),
    [14, 20],
    34,
    'two int args declared/used simultaneously');
