use QAST;

plan(149);

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
sub is_qast_args($qast, @args, $value, $desc) {
    try {
        my $code := compile_qast($qast);
        is($code(|@args), $value, $desc);
        CATCH { ok(0, 'Exception in is_qast_arg: ' ~ $! ~ ", test: $desc") }
    }
}
sub test_qast_result($qast, $tester) {
    try {
        my $code := compile_qast($qast);
        $tester($code());
        CATCH { ok(0, 'Compilation failure in test_qast_result: ' ~ $!) }
    }
};

# Couple of handly classes, which we may want to refer as WVals in tests.
class A { method m() { 'a' } }
class B { method m() { 'b' } }
class C { method add($a, $b) { $a + $b } }
class D { method m() { 206 } }
class E { has int $!x; }
class F { method greet(:$greeting, :$name) { "$greeting $name" } }

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

my $block := QAST::Block.new( QAST::IVal.new( :value(666) ) );
is_qast(
    QAST::Block.new(
        $block,
        QAST::Op.new(
            :op('call'),
            QAST::BVal.new( :value($block) )
        )
    ),
    666,
    'BVal node');

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

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('hash'),
            QAST::SVal.new(:value('a')),
            QAST::WVal.new(:value(A)),
            QAST::SVal.new(:value('b')),
            QAST::WVal.new(:value(B))
        )
    ),
    -> $r {
        ok($r{'a'}.m eq 'a', 'op hash works (a keyed elem)');
        ok($r{'b'}.m eq 'b', 'op hash works (b keyed elem)');
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

is_qast(
    QAST::Block.new(
        QAST::Var.new( :name('not_set'), :scope('local'), :decl('var') ),
        QAST::Op.new(
            :op('isnull'),
            QAST::Var.new(:name('not_set'), :scope('local'))
        )
    ),
    1,
    'local has a null default');

is_qast(
    QAST::Block.new(
        QAST::Var.new( :name('not_set'), :scope('local'), :decl('var'), :returns(int) ),
        QAST::Var.new(:name('not_set'), :scope('local'))
    ),
    0,
    'int local has a zero default');

is_qast(
    QAST::Block.new(
        QAST::Var.new( :name('not_set'), :scope('local'), :decl('var'), :returns(str) ),
        QAST::Op.new(
            :op('isnull_s'),
            QAST::Var.new(:name('not_set'), :scope('local'))
        )
    ),
    1,
    'str local has a null_s default');

is_qast(
    QAST::Block.new(
        QAST::Var.new( :name('not_set'), :scope('local'), :decl('var'), :returns(num) ),
        QAST::Var.new(:name('not_set'), :scope('local'))
    ),
    0,
    'num local has a zero default');

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
    'two local int args declared, then used');

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
    'two local int args declared/used simultaneously');

is_qast_args(
    QAST::Block.new(
        QAST::Var.new( :name('$a'), :scope('lexical'), :decl('param'), :returns(int) ),
        QAST::Var.new( :name('$b'), :scope('lexical'), :decl('param'), :returns(int) ),
        QAST::Op.new(
            :op('add_i'),
            QAST::Var.new( :name('$a'), :scope('lexical') ),
            QAST::Var.new( :name('$b'), :scope('lexical') )
        )
    ),
    [10, 19],
    29,
    'two lexical int args declared, then used');

is_qast_args(
    QAST::Block.new(
        QAST::Op.new(
            :op('add_i'),
            QAST::Var.new( :name('$a'), :scope('lexical'), :decl('param'), :returns(int) ),
            QAST::Var.new( :name('$b'), :scope('lexical'), :decl('param'), :returns(int) )
        )
    ),
    [16, 22],
    38,
    'two lexical int args declared/used simultaneously');

is_qast(
    QAST::Block.new(
        QAST::Block.new(
            :blocktype('immediate'),
            QAST::IVal.new( :value(2000) )
        )
    ),
    2000,
    'immediate blocktype');

is_qast_args(
    QAST::Block.new(
        QAST::Op.new(
            :op('atkey'),
            QAST::Var.new( :name('$a'), :scope('lexical'), :decl('param') ),
            QAST::SVal.new(:value("coconuts"))
        )
    ),
    [nqp::hash('coconuts', 42)],
    42,
    'atkey operation (int)');

is_qast_args(
    QAST::Block.new(
        QAST::Op.new(
            :op('atkey'),
            QAST::Var.new( :name('$a'), :scope('lexical'), :decl('param') ),
            QAST::SVal.new(:value("papayas"))
        )
    ),
    [nqp::hash('papayas', 'OH HAI')],
    'OH HAI',
    'atkey operation (str)');

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('hash'), :scope('local'), :decl('var') ),
            QAST::Op.new( :op('hash') ),
        ),
        QAST::Op.new(
            :op('bindkey'),
            QAST::Var.new( :name('hash'), :scope('local') ),
            QAST::SVal.new(:value("pineapples")),
            QAST::WVal.new(:value(D))
        ),
        QAST::Var.new( :name('hash'), :scope('local') )
    ),
    -> $r {
        ok($r<pineapples>.m == 206, 'bindkey operation (int)');
    });

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('hash'), :scope('local'), :decl('var') ),
            QAST::Op.new( :op('hash') ),
        ),
        QAST::Op.new(
            :op('bindkey'),
            QAST::Var.new( :name('hash'), :scope('local') ),
            QAST::SVal.new(:value("bananas")),
            QAST::WVal.new(:value(A))
        ),
        QAST::Var.new( :name('hash'), :scope('local') )
    ),
    -> $r {
        ok($r<bananas>.m eq 'a', 'bindkey operation (str)');
    });

is_qast_args(
    QAST::Block.new(
        QAST::Op.new(
            :op('atpos'),
            QAST::Var.new( :name('$a'), :scope('lexical'), :decl('param') ),
            QAST::IVal.new(:value(1))
        )
    ),
    [nqp::list(1, 2, 3)],
    2,
    'atkey operation (int)');

is_qast_args(
    QAST::Block.new(
        QAST::Op.new(
            :op('atpos'),
            QAST::Var.new( :name('$a'), :scope('lexical'), :decl('param') ),
            QAST::IVal.new(:value(2))
        )
    ),
    [nqp::list('huey', 'dewey', 'louie')],
    'louie',
    'atkey operation (str)');

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('list'), :scope('local'), :decl('var') ),
            QAST::Op.new( :op('list') ),
        ),
        QAST::Op.new(
            :op('bindpos'),
            QAST::Var.new( :name('list'), :scope('local') ),
            QAST::IVal.new(:value(0)),
            QAST::WVal.new(:value(D))
        ),
        QAST::Var.new( :name('list'), :scope('local') )
    ),
    -> $r {
        ok($r[0].m == 206, 'bindkey operation (int)');
    });

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('list'), :scope('local'), :decl('var') ),
            QAST::Op.new( :op('list') ),
        ),
        QAST::Op.new(
            :op('bindpos'),
            QAST::Var.new( :name('list'), :scope('local') ),
            QAST::IVal.new(:value(3)),
            QAST::WVal.new(:value(A))
        ),
        QAST::Var.new( :name('list'), :scope('local') )
    ),
    -> $r {
        ok($r[3].m eq 'a', 'bindkey operation (str)');
    });

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('call'),
            QAST::Block.new(
                :blocktype('declaration'),
                QAST::IVal.new( :value(2012) )
            )
        )
    ),
    2012,
    'declaration blocktype directly inside a call op');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('callmethod'), :name('m'),
            QAST::WVal.new( :value(A) )
        )
    ),
    'a',
    'callmethod with no args');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('callmethod'), :name('add'),
            QAST::WVal.new( :value(C) ),
            QAST::IVal.new( :value(2) ),
            QAST::IVal.new( :value(300) )
        )
    ),
    302,
    'callmethod with two args');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('callmethod'),
            QAST::WVal.new( :value(C) ),
            QAST::SVal.new( :value('add') ),
            QAST::IVal.new( :value(2) ),
            QAST::IVal.new( :value(300) )
        )
    ),
    302,
    'callmethod with two args, name is string value node');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('callmethod'),
            QAST::WVal.new( :value(C) ),
            QAST::Op.new(
                :op('concat'),
                QAST::SVal.new( :value('ad') ),
                QAST::SVal.new( :value('d') )
            ),
            QAST::IVal.new( :value(2) ),
            QAST::IVal.new( :value(300) )
        )
    ),
    302,
    'callmethod with two args, name is computed');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('$x'), :scope('lexical'), :decl('var') ),
            QAST::WVal.new( :value(B) )
        ),
        QAST::Block.new(
            :blocktype('immediate'),
            QAST::Op.new(
                :op('callmethod'), :name('m'),
                QAST::Var.new( :name('$x'), :scope('lexical') )
            )
        )
    ),
    'b',
    'lexical lookup in a nested block');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('$x'), :scope('lexical'), :decl('var') ),
            QAST::WVal.new( :value(B) )
        ),
        QAST::Block.new(
            :blocktype('immediate'),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('$x'), :scope('lexical') ),
                QAST::WVal.new( :value(A) )
            )
        ),
        QAST::Op.new(
            :op('callmethod'), :name('m'),
            QAST::Var.new( :name('$x'), :scope('lexical') )
        )
    ),
    'a',
    'lexical binding in a nested block');

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('foo'), :scope('local'), :decl('var') ),
            QAST::Op.new(
                :op('create'),
                QAST::WVal.new( :value(E) )
            )
        ),
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new(
                :scope('attribute'), :name('$!x'), :returns(int),
                QAST::Var.new( :name('foo'), :scope('local') ),
                QAST::WVal.new( :value(E) )
            ),
            QAST::IVal.new( :value(99) )
        ),
        QAST::Var.new( :name('foo'), :scope('local') )
    ),
    -> $r {
        ok(nqp::getattr_i($r, E, '$!x') == 99, 'attribute binding works');
    });
    
my $test_obj := nqp::create(E);
nqp::bindattr_i($test_obj, E, '$!x', 199);
is_qast_args(
    QAST::Block.new(
        QAST::Var.new( :name('foo'), :scope('local'), :decl('param') ),
        QAST::Var.new(
            :scope('attribute'), :name('$!x'), :returns(int),
            QAST::Var.new( :name('foo'), :scope('local') ),
            QAST::WVal.new( :value(E) )
        )
    ),
    [$test_obj],
    199,
    'attribute lookup works');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('$i'), :scope('lexical'), :decl('var'), :returns(int) ),
            QAST::IVal.new( :value(5) )
        ),
        QAST::Op.new(
            :op('while'),
            QAST::Var.new( :name('$i'), :scope('lexical') ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('$i'), :scope('lexical') ),
                QAST::Op.new(
                    :op('sub_i'),
                    QAST::Var.new( :name('$i'), :scope('lexical') ),
                    QAST::IVal.new( :value(1) )
                )
            ),
        ),
        QAST::Var.new( :name('$i'), :scope('lexical') ),
    ),
    0,
    'while loop works');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('$i'), :scope('lexical'), :decl('var'), :returns(int) ),
            QAST::IVal.new( :value(5) )
        ),
        QAST::Op.new(
            :op('until'),
            QAST::Op.new(
                :op('islt_i'),
                QAST::Var.new( :name('$i'), :scope('lexical') ),
                QAST::IVal.new( :value(3) )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('$i'), :scope('lexical') ),
                QAST::Op.new(
                    :op('sub_i'),
                    QAST::Var.new( :name('$i'), :scope('lexical') ),
                    QAST::IVal.new( :value(1) )
                )
            ),
        ),
        QAST::Var.new( :name('$i'), :scope('lexical') ),
    ),
    2,
    'until loop works');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('$i'), :scope('lexical'), :decl('var'), :returns(int) ),
            QAST::IVal.new( :value(5) )
        ),
        QAST::Op.new(
            :op('repeat_while'),
            QAST::Op.new(
                :op('islt_i'),
                QAST::Var.new( :name('$i'), :scope('lexical') ),
                QAST::IVal.new( :value(3) )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('$i'), :scope('lexical') ),
                QAST::Op.new(
                    :op('sub_i'),
                    QAST::Var.new( :name('$i'), :scope('lexical') ),
                    QAST::IVal.new( :value(1) )
                )
            ),
        ),
        QAST::Var.new( :name('$i'), :scope('lexical') ),
    ),
    4,
    'repeat_while loop works');

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('$i'), :scope('lexical'), :decl('var'), :returns(int) ),
            QAST::IVal.new( :value(0) )
        ),
        QAST::Op.new(
            :op('repeat_until'),
            QAST::Op.new(
                :op('islt_i'),
                QAST::Var.new( :name('$i'), :scope('lexical') ),
                QAST::IVal.new( :value(3) )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('$i'), :scope('lexical') ),
                QAST::Op.new(
                    :op('add_i'),
                    QAST::Var.new( :name('$i'), :scope('lexical') ),
                    QAST::IVal.new( :value(1) )
                )
            ),
        ),
        QAST::Var.new( :name('$i'), :scope('lexical') ),
    ),
    1,
    'repeat_until loop works');

{
    my $block := QAST::Block.new();
    $block.symbol('rhinoceros', food => 'pizza', mood => 'giddy');
    my %hash := $block.symbol('rhinoceros');
    ok(%hash<food> eq 'pizza', 'QAST::Block.symbol getter/setter works I');
    ok(%hash<mood> eq 'giddy', 'QAST::Block.symbol getter/setter works II');
}

{
    my $block := QAST::Block.new();
    $block.symbol('slug', food => 'cheeseburger');
    $block.symbol('slug', mood => 'laconic');
    my %hash := $block.symbol('slug');
    ok(%hash<food> eq 'cheeseburger', 'QAST::Block.symbol existing attributes don\'t disappear');
}

{
    my $block := QAST::Block.new();
    my $missing := $block.symbol('sabre-toothed tiger');
    ok(!$missing, 'QAST::Block.symbol on a nonexistent key returns a false value');
}

{
    my $greeter := QAST::Block.new(
        QAST::Var.new( :name('greeting'), :named('greeting'), :scope('local'), :decl('param'), :returns(str) ),
        QAST::Var.new( :name('name'), :named('name'), :scope('local'), :decl('param'), :returns(str) ),
        QAST::Op.new(
            :op('concat'),
            QAST::Op.new(
                :op('concat'),
                QAST::Var.new( :name('greeting'), :scope('local') ),
                QAST::SVal.new( :value(' ') ),
            ),
            QAST::Var.new( :name('name'), :scope('local') )
        ),
    );

    is_qast(
        QAST::Block.new(
            $greeter,
            QAST::Op.new(
                :op('call'),
                QAST::BVal.new( :value($greeter) ),
                QAST::SVal.new( :named('name'), :value('kathy') ),
                QAST::SVal.new( :named('greeting'), :value('OH HAI') ),
            )
        ),
        'OH HAI kathy',
        'call with named arguments works');
}

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('passing a list as :named to a QAST::Var with param is NYI on the JVM', 1);
}
else {
    my $quote := QAST::Block.new(
        QAST::Var.new( :name('arg'), :named(nqp::list('foo', 'bar')), :scope('local'), :decl('param'), :returns(str) ),
        QAST::Var.new( :name('quote'), :named('quote'), :scope('local'), :decl('param'), :returns(str) ),
        QAST::Op.new(
            :op('concat'),
            QAST::Var.new( :name('quote'), :scope('local') ),
            QAST::Op.new(
                :op('concat'),
                QAST::Var.new( :name('arg'), :scope('local') ),
                QAST::Var.new( :name('quote'), :scope('local') ),
            ),
        )
    );

    is_qast(
        QAST::Block.new(
            $quote,
            QAST::Op.new(
                :op('concat'),
                QAST::Op.new(
                    :op('call'),
                    QAST::BVal.new( :value($quote) ),
                    QAST::SVal.new( :named('foo'), :value('Hello') ),
                    QAST::SVal.new( :named('quote'), :value('"') ),
                ),
                QAST::Op.new(
                    :op('concat'),
                    QAST::SVal.new( :value(' ') ),
                    QAST::Op.new(
                        :op('call'),
                        QAST::BVal.new( :value($quote) ),
                        QAST::SVal.new( :named('bar'), :value('World') ),
                        QAST::SVal.new( :named('quote'), :value("'") ),
                    )
               )
           )
        ),
        '"Hello" \'World\'',
        'declaring and using a param with multiple names works');
}

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op('callmethod'), :name('greet'),
            QAST::WVal.new( :value(F) ),
            QAST::SVal.new( :named('name'), :value('greg') ),
            QAST::SVal.new( :named('greeting'), :value('DDD,') ),
        )
    ),
    'DDD, greg',
    'callmethod with named arguments works');

{
    my $elems := QAST::Block.new(
        QAST::Var.new( :name('array'), :slurpy, :scope('local'), :decl('param') ),
        QAST::Op.new(
            :op('elems'),
            QAST::Var.new( :name('array'), :scope('local') ),
        ),
    );

    is_qast(
        QAST::Block.new(
            $elems,
            QAST::Op.new(
                :op('call'),
                QAST::BVal.new( :value($elems) ),
                QAST::IVal.new( :value(1) ),
                QAST::IVal.new( :value(2) ),
                QAST::IVal.new( :value(3) ),
                QAST::IVal.new( :value(4) ),
            )
        ),
        4,
        'call to block with slurpy parameter works');
}

{
    my $third := QAST::Block.new(
        QAST::Var.new( :name('a'), :scope('local'), :decl('param') ),
        QAST::Var.new( :name('b'), :scope('local'), :decl('param') ),
        QAST::Var.new( :name('c'), :scope('local'), :decl('param') ),
        QAST::Var.new( :name('c'), :scope('local') ),
    );

    is_qast(
        QAST::Block.new(
            $third,
            QAST::Op.new(
                :op('call'),
                QAST::BVal.new( :value($third) ),
                QAST::Op.new(
                    :op('list_i'),
                    QAST::IVal.new( :value(40) ),
                    QAST::IVal.new( :value(41) ),
                    QAST::IVal.new( :value(42) ),
                    :flat,
                )
            )
        ),
        42,
        'call with flattened argument works');
}

{
    my $greeter := QAST::Block.new(
        QAST::Var.new( :name('greeting'), :named('greeting'), :scope('local'), :decl('param') ),
        QAST::Var.new( :name('name'), :named('name'), :scope('local'), :decl('param') ),
        QAST::Op.new(
            :op('concat'),
            QAST::Op.new(
                :op('callmethod'), :name('m'),
                QAST::Var.new( :name('greeting'), :scope('local') ),
                :returns(str)
            ),
            QAST::Op.new(
                :op('callmethod'), :name('m'),
                QAST::Var.new( :name('name'), :scope('local') ),
                :returns(str)
            )
        ),
    );

    is_qast(
        QAST::Block.new(
            $greeter,
            QAST::Op.new(
                :op('call'),
                QAST::BVal.new( :value($greeter) ),
                QAST::Op.new(
                    :op('hash'),
                    QAST::SVal.new( :value('name') ),
                    QAST::WVal.new( :value(A) ),
                    QAST::SVal.new( :value('greeting') ),
                    QAST::WVal.new( :value(B) ),
                    :flat,
                    :named,
                )
            )
        ),
        'ba',
        'call with named flattened argument works');
}


{
    my sub wrap(int $value, int $thunk, $content) {
        my $block := QAST::Block.new(
            :blocktype('immediate'),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name('a'), :scope('lexical'), :decl('var')),
                QAST::IVal.new( :value($value) )
            ),
            $content
        );
        $block.is_thunk($thunk);
        $block;
    }

    test_qast_result(
        QAST::Block.new(
            QAST::Op.new(:op<takeclosure>, # needed for JVM
                QAST::Block.new(
                    wrap(100, 0,
                        wrap(200, 0,
                            wrap(300, 1,
                                wrap(400, 1,
                                    wrap(500, 1,
                                        QAST::Op.new(:op<ctx>)
                                    )
                                )
                            )
                        )
                   )
                )
            )
        ),
        -> $r {
            my $ctx := nqp::ctxouterskipthunks($r());
            is($ctx<a>, 200, 'nqp::ctxouterskipthunks returns the correct context');
        });
}

{
    my sub block($name, $is_thunk, $value, $content) {
        my $block := QAST::Block.new(
            QAST::Op.new(
                :op<bind>,
                 QAST::Var.new( :name('value'), :decl('var'), :scope('lexical')),
                 QAST::IVal.new( :value($value) )
            ),
            $content
        );

        $block.is_thunk($is_thunk);

        QAST::Op.new(
            :op<bind>,
            QAST::Var.new( :name($name), :decl('var'), :scope('lexical')),
            QAST::Op.new(:op<takeclosure>, # needed for JVM
                $block
            )
        )
    }

    test_qast_result(
        QAST::Block.new(
            block('a', 0, 500, QAST::Op.new(:op<ctx>)),
            block('b', 1, 400, QAST::Op.new(:op<call>, :name<a>)),
            block('c', 1, 300, QAST::Op.new(:op<call>, :name<b>)),
            block('d', 0, 200, QAST::Op.new(:op<call>, :name<c>)),
            block('e', 0, 100, QAST::Op.new(:op<call>, :name<d>)),
            QAST::Var.new(
                :name('e'),
                :scope('lexical')
            )
        ),
        -> $e {
            my $ctx := nqp::ctxcallerskipthunks($e());
            is($ctx<value>, 200, 'nqp::ctxouterskipthunks return the correct context');
        }
    );
}

is_qast(
    QAST::CompUnit.new(
        QAST::Block.new(
            QAST::SVal.new( :value('La Trappe') )
        )
    ),
    'La Trappe',
    'QAST::CompUnit compiles the top level block inside of it');

class SCTest {
    my $pre := 0;
    my $post := 0;
    my $main := 0;
    method set_pre() { $pre := 1; }
    method set_post() { if $pre { $post := 1; } }
    method set_main() { if $pre && $post { $main := 1 } }
    method pre() { $pre }
    method post() { $post }
    method main() { $main }
}
test_qast_result(
    QAST::CompUnit.new(
        :pre_deserialize([
            QAST::Op.new( :op('callmethod'), :name('set_pre'), QAST::WVal.new( :value(SCTest) ) )
        ]),
        :post_deserialize([
            QAST::Op.new( :op('callmethod'), :name('set_post'), QAST::WVal.new( :value(SCTest) ) )
        ]),
        QAST::Block.new(
            QAST::Op.new( :op('callmethod'), :name('set_main'), QAST::WVal.new( :value(SCTest) ) )
        )
    ),
    -> $r {
        ok(SCTest.pre, 'pre-deserialize OK');
        ok(SCTest.post, 'post-deserialize OK');
        ok(SCTest.main, 'mainline OK');
    });

is_qast(
    QAST::Block.new(
        QAST::Stmts.new(
            :resultchild(0),
            QAST::IVal.new( :value(1) ),
            QAST::IVal.new( :value(2) )
        )
    ),
    1,
    'resultchild works on QAST::Stmts');

is_qast(
    QAST::Block.new(
        QAST::Stmt.new(
            :resultchild(1),
            QAST::IVal.new( :value(3) ),
            QAST::IVal.new( :value(4) ),
            QAST::IVal.new( :value(5) )
        )
    ),
    4,
    'resultchild works on QAST::Stmt');

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('handle'),
            QAST::WVal.new( :value(A) ),
            'CATCH', QAST::WVal.new( :value(B) )
        )
    ),
    -> $r {
        ok($r.m eq 'a', 'handles op with no exception evaluates to protected code');
    });

test_qast_result(
    QAST::Block.new(
        QAST::Op.new(
            :op('handle'),
            QAST::Stmt.new(
                QAST::Op.new( :op('die_s'), QAST::SVal.new( :value('omg') ) ),
                QAST::WVal.new( :value(A) )
            ),
            'CATCH', QAST::WVal.new( :value(B) )
        )
    ),
    -> $r {
        ok($r.m eq 'b', 'handles op runs exception handler and evaluates to its result');
    });

test_qast_result(
    QAST::Block.new(
        QAST::Op.new( :op('stmts'),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('hash'), :scope('local'), :decl('var') ),
                QAST::Op.new( :op('hash') ),
            ),
            QAST::Op.new(
                :op('bindkey'),
                QAST::Var.new( :name('hash'), :scope('local') ),
                QAST::SVal.new(:value("pineapples")),
                QAST::WVal.new(:value(D))
            ),
            QAST::Var.new( :name('hash'), :scope('local') )
        )
    ),
    -> $r {
        ok($r<pineapples>.m == 206, 'bindkey operation (int)');
    });

class G {
    has $!attr;
    method plus() {
        $!attr := $!attr+1;
        $!attr
    }
}

my $g1 := G.new(attr=>100);

my $sc := nqp::createsc('exampleHandle');

nqp::scsetobj($sc, 0, $g1);
nqp::setobjsc($g1, $sc);

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    todo('contvar tests need work on JVM', 2);
    ok(0);
    ok(0);
} else {
    is_qast(
        QAST::Block.new(
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<$i>, :scope<lexical>, :decl<var>, :returns(int) ),
                QAST::IVal.new( :value(3) )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<$total>, :scope<lexical>, :decl<var>, :returns(int) ),
                QAST::IVal.new( :value(0) )
            ),
            QAST::Op.new(
                :op<while>,
                QAST::Var.new( :name<$i>, :scope<lexical> ),
                QAST::Block.new(:blocktype<immediate>,
    #                QAST::Op.new(:op('say'), QAST::Var.new(:name('$total'), :scope<lexical>)),
                    QAST::Var.new( :name<$x>, :scope<lexical>, :decl<contvar>, :value($g1) ),
                    QAST::Op.new(
                        :op<bind>,
                        QAST::Var.new( :name<$i>, :scope<lexical> ),
                        QAST::Op.new(
                            :op<sub_i>,
                            QAST::Var.new( :name<$i>, :scope<lexical> ),
                            QAST::IVal.new( :value(1) )
                        )
                    ),
                    QAST::Op.new(
                        :op<bind>,
                        QAST::Var.new( :name<$total>, :scope<lexical>, :returns(int) ),
                        QAST::Op.new(:op<add_i>,
                            QAST::Op.new(
                                :op<callmethod>, :name<plus>,
                                QAST::Var.new( :name<$x>, :scope<lexical> )
                            ),
                            QAST::Var.new(:scope<lexical>, :name<$total>)
                        )
                    ),
                )
            ),
            QAST::Var.new(:scope<lexical>, :name<$total>)
        ),
        303,
        'contvar');

    is_qast(
        QAST::Block.new(
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<$i>, :scope<lexical>, :decl<var>, :returns(int) ),
                QAST::IVal.new( :value(3) )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<$total>, :scope<lexical>, :decl<var>, :returns(int) ),
                QAST::IVal.new( :value(0) )
            ),
            QAST::Op.new(
                :op<while>,
                QAST::Var.new( :name<$i>, :scope<lexical> ),
                QAST::Block.new(:blocktype<immediate>,
                    QAST::Var.new( :name<$x>, :scope<local>, :decl<contvar>, :value($g1) ),
                    QAST::Op.new(
                        :op<bind>,
                        QAST::Var.new( :name<$i>, :scope<lexical> ),
                        QAST::Op.new(
                            :op<sub_i>,
                            QAST::Var.new( :name<$i>, :scope<lexical> ),
                            QAST::IVal.new( :value(1) )
                        )
                    ),
                    QAST::Op.new(
                        :op<bind>,
                        QAST::Var.new( :name<$total>, :scope<lexical>, :returns(int) ),
                        QAST::Op.new(:op<add_i>,
                            QAST::Op.new(
                                :op<callmethod>, :name<plus>,
                                QAST::Var.new( :name<$x>, :scope<local> )
                            ),
                            QAST::Var.new(:scope<lexical>, :name<$total>)
                        )
                    ),
                )
            ),
            QAST::Var.new(:scope<lexical>, :name<$total>)
        ),
        303,
        'contvar local')

}

is_qast(
    QAST::CompUnit.new(
        :hll<funnylang>,
        QAST::Block.new(
            QAST::Op.new(:op<sethllconfig>, QAST::SVal.new(:value<funnylang>),
                QAST::Op.new(:op<hash>,
                    QAST::SVal.new(:value<null_value>),
                    QAST::SVal.new(:value<hilarious>)
                )
            ),
            QAST::Op.new(:op<hllize>, QAST::Op.new(:op<null>)),
        )

    ),
    'hilarious',
    'hllize');

test_qast_result(
    QAST::CompUnit.new(
        :hll<foo>,
        QAST::Block.new(
            QAST::Op.new(:op<bindcurhllsym>,
                QAST::SVal.new(:value<key1>),
               QAST::IVal.new(:value(100))
            ),
             QAST::Op.new(:op<bindhllsym>,
                 QAST::SVal.new(:value<bar>),
                 QAST::SVal.new(:value<key1>),
                 QAST::IVal.new(:value(200))
             ),
             QAST::Op.new(:op<bindhllsym>,
                 QAST::SVal.new(:value<foo>),
                 QAST::SVal.new(:value<key2>),
                 QAST::IVal.new(:value(300))
             ),
             QAST::Op.new(
                 :op('list'),
                 QAST::Op.new(:op<gethllsym>, QAST::SVal.new(:value<foo>), QAST::SVal.new(:value<key1>)),
                 QAST::Op.new(:op<getcurhllsym>, QAST::SVal.new(:value<key2>))
             )
       )
    ),

    -> $r {
        ok($r[0] == 100, 'bindcurhllsym/gethllsym');
        ok($r[1] == 300, 'bindhllsym/getcurhllsym');
    }
);

my $dont_call;
my class Ops {
    method op1() {
        my sub ($a, $b) {
            nqp::list('+', $a, $b);
        }
    }
    method op2() {
        my sub ($a, $b) {
            nqp::list('-', $a, $b);
        }
    }
    method op3() {
        my sub ($a, $b) {
            0;
        }
    }
    method is_called() {
        $dont_call := 1;
    }
}


sub stringy($op) {
    if nqp::islist($op) {
        '(' ~ stringy($op[1]) ~ ' ' ~ $op[0] ~ ' ' ~ $op[2] ~ ')';
    }
    else {
        $op;
    }
}

sub op($name) {
    QAST::Op.new(
        :op<bind>,
        QAST::Var.new( :$name, :scope<lexical>, :decl<var>),
        QAST::Op.new(
           :op<callmethod>, :$name,
           QAST::WVal.new( :value(Ops) )
        ),
    )
}

sub sval($value) {
    QAST::SVal.new(:$value);
}

test_qast_result(
    QAST::Block.new(
        op('op1'),
        op('op2'),
        op('op3'),
        QAST::Op.new(
            :op<list>,
            QAST::Op.new( :op<chain>, :name<op1>, sval('a'), sval('b')),
            QAST::Op.new( :op<chain>, :name<op1>,
                QAST::Op.new( :op<chain>, :name<op2>,
                    QAST::Op.new( :op<chain>, :name<op2>, sval('A'), sval('B')
                    ),
                    sval('C')
                ),
                sval('D')
           ),
           QAST::Op.new( :op<chain>, :name<op1>, 
               QAST::Op.new( :op<chain>, :name<op2>,
                   QAST::Op.new( :op<chain>, :name<op3>, 
                       QAST::Op.new( :op<chain>, :name<op2>, sval('A'), sval('B')),
                       sval('E')
                   ),
                   sval('C')
               ),
               QAST::Op.new( :op<callmethod>, :name('is_called'), QAST::WVal.new( :value(Ops) )),
           ),
       )
    ),
    -> $r {
        ok(stringy($r[0]) eq '(a + b)', 'nqp::chain - just to arguments');
        ok(stringy($r[1]) eq '(C + D)', 'nqp::chain - all return true');
        ok(stringy($r[2]) eq '0', 'nqp::chain - we have falsehood');
        ok(!$dont_call, 'nqp::chain shortcircuits');
    }
);

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("with/without are broken on the jvm", 4);
} else {
    my class IsDefined {
        has int $!defined;
        has $!left;
        has $!right;
        method new($defined, $left, $right) {
            my $obj := nqp::create(self);
            $obj.BUILD($defined, $left, $right);
            $obj;
        }
        method BUILD($defined, $left, $right) {
            $!defined := $defined;
            $!left := $left;
            $!right := $right;
        }
        method defined() {
            $!defined;
        }
        method left() {
            $!left;
        }
        method right() {
            $!right;
        }
    }

    my sub with_arity($arity, $block) {
        $block.arity($arity);
        $block;
    }

    my $test := -> $op {
        QAST::Block.new(
            QAST::Var.new( :name<arg>, :scope<local>, :decl<param>),
            QAST::Op.new(
                :op($op),
                QAST::Var.new(:name<arg>, :scope<local>),
                with_arity(1, QAST::Block.new(
                    :blocktype<immediate>,
                    QAST::Op.new(
                        :op<callmethod>,
                        :name<left>,
                        QAST::Var.new(:name<b>, :scope<local>, :decl<param>)
                    )
                )),
                with_arity(1, QAST::Block.new(
                    :blocktype<immediate>,
                    QAST::Op.new(
                        :op<callmethod>,
                        :name<right>,
                        QAST::Var.new(:name<b>, :scope<local>, :decl<param>)
                    )
                ))
             )
        );
    };

    is_qast_args($test('with'), [IsDefined.new(1, 'good', 'bad')], 'good', 'with op - defined');
    is_qast_args($test('with'), [IsDefined.new(0, 'good', 'bad')], 'bad', 'with op - not defined');
    is_qast_args($test('without'), [IsDefined.new(1, 'bad', 'good')], 'good', 'without op - defined');
    is_qast_args($test('without'), [IsDefined.new(0, 'bad', 'good')], 'bad', 'without op - not defined');
}

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('children of a QAST::Var with a "param" decl are not implemented', 6);
}
else {
    is_qast_args(
        QAST::Block.new(
            QAST::Var.new( :name('other'), :scope('local'), :decl('var')),
            QAST::Var.new( :name('arg'), :scope('local'), :decl('param'), :returns(str),
                QAST::Op.new( :op('bind'),
                    QAST::Var.new( :name('other'), :scope('local')),
                    QAST::Op.new(:op<concat>,
                        QAST::SVal.new(:value<Mmmmm...>),
                        QAST::Var.new( :name('arg'), :scope('local')),
                    )
                )
            ),
            QAST::Var.new( :name('other'), :scope('local'))
        ),
        ['Highland Park!'],
        'Mmmmm...Highland Park!',
        'a QAST::Var with a param decl can have children which are executed');

    is_qast_args(
        QAST::Block.new(
            QAST::Var.new( :name('other'), :scope('lexical'), :decl('var')),
            QAST::Var.new( :name('arg'), :scope('lexical'), :decl('param'), :returns(str),
                QAST::Op.new( :op('bind'),
                    QAST::Var.new( :name('other'), :scope('lexical')),
                    QAST::Op.new(:op<concat>,
                        QAST::SVal.new(:value<Mmmmm...>),
                        QAST::Var.new( :name('arg'), :scope('lexical')),
                    )
                )
            ),
            QAST::Var.new( :name('other'), :scope('lexical'))
        ),
        ['Highland Park!'],
        'Mmmmm...Highland Park!',
        'a QAST::Var with a param decl can have children which are executed - lexicals');

    is_qast_args(
        QAST::Block.new(
            QAST::Var.new( :name('other'), :scope('lexical'), :decl('var')),
            QAST::Var.new( :name('param1'), :scope('lexical'), :decl('param'), :returns(str),
                QAST::Op.new( :op('bind'),
                    QAST::Var.new( :name('other'), :scope('lexical')),
                    QAST::Op.new(:op<concat>,
                        QAST::SVal.new(:value("Highland ")),
                        QAST::Var.new( :name('param1'), :scope('lexical')),
                    )
                )
            ),
            QAST::Var.new( :name('param2'), :scope('lexical'), :decl('param'), :returns(str),
                :default(
                    QAST::Op.new(:op<concat>,
                        QAST::SVal.new(:value("Hmmmm...")),
                        QAST::Var.new( :name('other'), :scope('lexical'))
                    )
                )
            ),
            QAST::Var.new( :name('param2'), :scope('lexical'))
        ),
        ['Park!'],
        'Hmmmm...Highland Park!',
        'a QAST::Var with children interacts with defaults properly');

    my $log;
    class Log {
        method add($thing) {
            $log := $log ~ $thing ~ "\n";
        }
        method get() {
            $log;
        }
    }

    is_qast_args(
        QAST::Block.new(
            QAST::Var.new( :name<out>, :scope<local>, :decl<var> ),
            QAST::Var.new( :name<args>, :scope<local>, :decl<param>, :slurpy(1),
                QAST::Op.new(
                    :op<bind>,
                    QAST::Var.new( :name<out>, :scope<local>),
                    QAST::Op.new(
                        :op<join>,
                        QAST::SVal.new( :value<,> ),
                        QAST::Var.new( :name<args>, :scope<local>),
                    )
                )
            ),
            QAST::Var.new( :name<out>, :scope<local> ),
        ),
        ["1", "2", "3", "4", "5"],
        "1,2,3,4,5",
        'a slurpy QAST::Var with children');

    is_qast_args(
        QAST::Block.new(
            QAST::Var.new( :name('log'), :scope('local'), :decl('contvar'), :value(Log) ),
            QAST::Op.new(
                :op('callmethod'), :name('add'),
               QAST::Var.new( :name('log'), :scope('local')),
               QAST::SVal.new(:value<#2>),
            ),
            QAST::Var.new( :name('arg'), :scope('local'), :decl('param'), :returns(str),
                QAST::Op.new(
                    :op('callmethod'), :name('add'),
                   QAST::Var.new( :name('log'), :scope('local')),
                   QAST::Var.new( :name('arg'), :scope('local'))
                ),
            ),
            QAST::Op.new(
                :op('callmethod'), :name('get'),
                QAST::Var.new( :name('log'), :scope('local'))
            )
        ),
        ['#1'],
        "#1\n#2\n",
        'mixing a QAST::Var with children with a contvar');

    $log := '';

    is_qast_args(
        QAST::Block.new(
            QAST::Var.new( :name('log'), :scope('lexical'), :decl('contvar'), :value(Log) ),
            QAST::Op.new(
                :op('callmethod'), :name('add'),
               QAST::Var.new( :name('log'), :scope('lexical')),
               QAST::SVal.new(:value<#2>),
            ),
            QAST::Var.new( :name('arg'), :scope('lexical'), :decl('param'), :returns(str),
                QAST::Op.new(
                    :op('callmethod'), :name('add'),
                   QAST::Var.new( :name('log'), :scope('lexical')),
                   QAST::Var.new( :name('arg'), :scope('lexical'))
                ),
            ),
            QAST::Op.new(
                :op('callmethod'), :name('get'),
                QAST::Var.new( :name('log'), :scope('lexical'))
            )
        ),
        ['#1'],
        "#1\n#2\n",
        'mixing a QAST::Var with children with a contvar - lexicals');
}

{
    my $log := '';

    my $got_pos;
    my $got_named;
    my $got_flat_pos;
    my $got_flat_named;

    my class TestFlat {
        method test_flat($pos0, $pos1, :$bar, :$baz) {
            $got_named := $baz;
            $got_flat_named := $bar;
            $got_pos := $pos0;
            $got_flat_pos := $pos1;
            $log := $log ~ "call;";
        }
        method flat_pos() {
            $log := $log ~ "flat_pos;";
            nqp::list(456);
        }
        method flat_named() {
            $log := $log ~ "flat_named;";
            nqp::hash('bar', 123);
        }
        method pos() {
            $log := $log ~ "pos;";
            "normal pos";
        }

        method named() {
            $log := $log ~ "named;";
            "normal named";
        }
    }

    my $with_flat_named := QAST::Op.new(
        :op('callmethod'), :name('flat_named'),
        QAST::Var.new( :name('log'), :scope('lexical')),
    );
    $with_flat_named.named(1);
    $with_flat_named.flat(1);

    my $with_named := QAST::Op.new(
        :op('callmethod'), :name('named'),
        QAST::Var.new( :name('log'), :scope('lexical')),
    );
    $with_named.named('baz');

    my $with_pos := QAST::Op.new(
        :op('callmethod'), :name('pos'),
        QAST::Var.new( :name('log'), :scope('lexical')),
    );

    my $with_flat_pos := QAST::Op.new(
        :op('callmethod'), :name('flat_pos'),
        QAST::Var.new( :name('log'), :scope('lexical')),
    );
    $with_flat_pos.flat(1);


    test_qast_result(
        QAST::Block.new(
            QAST::Var.new( :name('log'), :scope('lexical'), :decl('static'), :value(TestFlat) ),

            QAST::Op.new(
                :op('callmethod'), :name('test_flat'),
                QAST::Var.new( :name('log'), :scope('lexical')),
                $with_pos,
                $with_flat_pos,
                $with_named,
                $with_flat_named
            )
        ),
        -> $r {
            is($got_named, 'normal named', 'passing nameds works');
            is($got_flat_named, 123, 'passing flat nameds works');
            is($got_pos, 'normal pos', 'passing positionals works');
            is($got_flat_pos, 456, 'passing flat positionals works');
            is($log, 'pos;flat_pos;named;flat_named;call;', 'correct order of evaluation of arguments');
        });
}

test_qast_result(
    QAST::Block.new(
        QAST::Var.new( :name('before'), :scope('local'), :decl('var')),
        QAST::Var.new( :name('after'), :scope('local'), :decl('var')),
        QAST::Var.new( :name('foo'), :scope('lexical'), :decl('static'), :value(A)),
        QAST::Op.new( :op('bind'),
            QAST::Var.new( :name('before'), :scope('local')),
            QAST::Op.new(
                :op('callmethod'), :name('m'),
               QAST::Var.new( :name('foo'), :scope('lexical')),
            )
        ),
        QAST::Op.new( :op('bind'),
            QAST::Var.new( :name('foo'), :scope('lexical')),
            QAST::WVal.new(:value(B))
        ),
        QAST::Op.new( :op('bind'),
            QAST::Var.new( :name('after'), :scope('local')),
            QAST::Op.new(
                :op('callmethod'), :name('m'),
               QAST::Var.new( :name('foo'), :scope('lexical')),
            )
        ),
        QAST::Op.new(
            :op<list>,
            QAST::Var.new( :name('before'), :scope('local')),
            QAST::Var.new( :name('after'), :scope('local'))
        )
    ),
    -> $r {
       ok($r[0] eq 'a', 'a static QAST::Var before binding to it contains a correct value');
       ok($r[1] eq 'b', 'a static QAST::Var after binding to it contains a correct value');
    }
);


{
    my class Counter {
        has $!count;
        method inc() {
            $!count := $!count + 1;
        }
        method get() {
            $!count;
        }
    }
    my $counter := Counter.new(count=>100);
    my $sc := nqp::createsc('exampleHandle');
    nqp::scsetobj($sc, 0, $counter);
    nqp::setobjsc($counter, $sc);

    test_qast_result(
        QAST::Block.new(
            QAST::Block.new(
                QAST::Op.new(:op<takeclosure>, # needed for JVM
                    QAST::Block.new(
                        QAST::Var.new( :name('counter'), :scope('lexical') , :decl('statevar'), :value($counter)),
                        QAST::Var.new( :name('counter'), :scope('lexical'))
                    )
                )
           )
        ),
        -> $factory {
            my $closure1 := $factory();
            my $closure2 := $factory();
            $closure1().inc;
            $closure1().inc;
            $closure1().inc;
            is($closure1().get, '103', "statevar is shared between calls to a closures");
            is($closure2().get, '100', "a new closure gets it's own copy of the statevar");
            $closure2().inc;
            is($closure2().get, '101', "...that get preserved across calls");
            is($closure1().get, '103', "...and is independent from the first closure");

            my $closure3 := $factory();
            $closure3().inc;
            my $closure4 := nqp::clone($closure3);
            is($closure4().get, '100', 'a clone of a closure gets fresh statevars');
            $closure4().inc;
            $closure4().inc;
            $closure4().inc;
            $closure4().inc;
            is($closure3().get, '101', "...and they are not shared with the one it's cloned from");
            my $closure5 := nqp::clone($closure4);
            is($closure5().get, '100', 'a clone of a clone gets fresh statevars');
        }
    );

    my class Orginal {
    }
    my class New {
    }

    test_qast_result(
        QAST::Block.new(
            QAST::Block.new(
                QAST::Var.new( :name('value'), :scope('lexical') , :decl('var')),
                QAST::Var.new( :name('state'), :scope('lexical') , :decl('statevar'), :value(Orginal)),
                QAST::Op.new( :op<bind>,
                    QAST::Var.new( :name<value>, :scope<lexical>),
                    QAST::Var.new( :name<state>, :scope<lexical>),
                ),
                QAST::Op.new( :op<bind>,
                    QAST::Var.new( :name<state>, :scope<lexical>),
                    QAST::WVal.new( :value(New))
                ),
                QAST::Var.new( :name<value>, :scope<lexical>),
            )
        ),
        -> $closure {
            my $new := $closure();
            my $old := $closure();
            ok(nqp::istype($new, Orginal), "an object is passed in a statevar");
            ok(nqp::istype($new, Orginal), "after rebinding a statevar it's restored in the next invocation");
        }
    );

}

{
    use nqpmo;
    my $int_boxer := NQPClassHOW.new_type(:name('boxed_int'), :repr('P6opaque'));
    $int_boxer.HOW.add_attribute($int_boxer, NQPAttribute.new(
        :name('$!value'), :type(int), :box_target(1)
    ));
    $int_boxer.HOW.add_parent($int_boxer, NQPMu);
    $int_boxer.HOW.add_method($int_boxer, 'twice', method () {~(nqp::getattr_i(self, $int_boxer, '$!value')*2)});
    $int_boxer.HOW.compose($int_boxer);

    my $num_boxer := NQPClassHOW.new_type(:name('boxing_num'), :repr('P6opaque'));
    $num_boxer.HOW.add_attribute($num_boxer, NQPAttribute.new(
        :name('$!value'), :type(num), :box_target(1)
    ));
    $num_boxer.HOW.add_parent($num_boxer, NQPMu);
    $num_boxer.HOW.add_method($num_boxer, 'twice', method () {~(nqp::getattr_n(self, $num_boxer, '$!value')*2)});
    $num_boxer.HOW.compose($num_boxer);

    my $str_boxer := NQPClassHOW.new_type(:name('boxing_str'), :repr('P6opaque'));
    $str_boxer.HOW.add_attribute($str_boxer, NQPAttribute.new(
        :name('$!value'), :type(str), :box_target(1)
    ));
    $str_boxer.HOW.add_parent($str_boxer, NQPMu);
    $str_boxer.HOW.add_method($str_boxer, 'twice', method () {
        nqp::getattr_s(self, $str_boxer, '$!value') * 2;
    });
    $str_boxer.HOW.compose($str_boxer);


    nqp::sethllconfig('foo', nqp::hash(
        'int_box', $int_boxer,
        'num_box', $num_boxer,
        'str_box', $str_boxer
    ));

    test_qast_result(
        QAST::CompUnit.new(
            :hll<foo>,
            QAST::Block.new(
                QAST::Var.new(:decl<var>, :scope<local>, :name<$foo>),
                QAST::Op.new(:op<bind>,
                    QAST::Var.new(:name<$foo>, :scope<local>),
                    QAST::IVal.new(value => 123)
                ),
                QAST::Var.new(:name<$foo>, :scope<local>)
            )
        ),
        -> $r {
            ok(nqp::istype($r, $int_boxer), 'an automatically boxed int is of the correct type');
            ok($r.twice eq '246', '...and it has the correct value');
        }
    );

    test_qast_result(
        QAST::CompUnit.new(
            :hll<foo>,
            QAST::Block.new(
                QAST::Var.new(:decl<var>, :scope<local>, :name<$foo>),
                QAST::Op.new(:op<bind>,
                    QAST::Var.new(:name<$foo>, :scope<local>),
                    QAST::NVal.new(value => 122.5)
                ),
                QAST::Var.new(:name<$foo>, :scope<local>)
            )
        ),
        -> $r {
            ok(nqp::istype($r, $num_boxer), 'an automatically boxed num is of the correct type');
            ok($r.twice eq '245', '...and it has the correct value');
        }
    );

    test_qast_result(
        QAST::CompUnit.new(
            :hll<foo>,
            QAST::Block.new(
                QAST::Var.new(:decl<var>, :scope<local>, :name<$foo>),
                QAST::Op.new(:op<bind>,
                    QAST::Var.new(:name<$foo>, :scope<local>),
                    QAST::SVal.new(value => 122)
                ),
                QAST::Var.new(:name<$foo>, :scope<local>)
            )
        ),
        -> $r {
            ok(nqp::istype($r, $str_boxer), 'an automatically boxed str is of the correct type');
            ok($r.twice eq '244', '...and it has the correct value');
        }
    );
}

test_qast_result(
    QAST::CompUnit.new(
        :hll<foo>,
        QAST::Block.new(
            QAST::Op.new(:op<split>,
                QAST::SVal.new(value => ':'),
                QAST::SVal.new(value => 'abc:def')
            )
        )
    ),
    -> $r {
        ok(nqp::islist($r), "split returns a list when the hll doesn't define slurpyArray");
        ok(nqp::atpos($r, 0) eq 'abc' && nqp::atpos($r, 1) eq 'def', "...and it contains the right elements");
    }
);

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("QAST::ParamTypeCheck is not implemented on the JVM", 7);
}
else {
    my $in_bind_error := 0;
    my $wrongly_bound_capture;
    my $throw_exception := 0;
    my $used_caller;

    nqp::sethllconfig('hll_with_bind_error_handler', nqp::hash(
        'bind_error', -> $capture {
            $in_bind_error := $in_bind_error + 1;
            $wrongly_bound_capture := $capture;
            if $throw_exception {
                my $exception := nqp::newexception();
                nqp::setpayload($exception, nqp::captureposarg($capture, 0));
                nqp::throw($exception);
            }
            else {
                my $caller := nqp::callercode();
                $used_caller := $caller(6);
                1000;
            }
         }
    ));

    test_qast_result(
       QAST::CompUnit.new(
           :hll<hll_with_bind_error_handler>,
            QAST::Block.new(
                QAST::Block.new(
                    QAST::Var.new(
                        :name('a'), :scope('lexical'), :decl('param'), :returns(int),
                        QAST::ParamTypeCheck.new(
                            QAST::Op.new(
                                :op<islt_i>,
                                QAST::Var.new( :name('a'), :scope('lexical')),
                                QAST::IVal.new( :value(10))
                            )
                        )
                    ),
                    QAST::Op.new(
                        :op<add_i>,
                        QAST::Var.new( :name('a'), :scope('lexical')),
                        QAST::IVal.new( :value(100))
                    )
                )
            )
        ),
        -> $r {
            is($r(7), 107, 'calling a block when QAST::ParamTypeCheck passes');
            is($in_bind_error, 0, 'the bind_error handler is not called');
            $r(207);
            is($in_bind_error, 1, "the bind_error handler is called when the type check doesn't pass");
            ok(nqp::captureposelems($wrongly_bound_capture) == 1 && nqp::captureposarg($wrongly_bound_capture, 0) == 207, 'correct capture passed to bind_error handler');

            $throw_exception := 1;

            my $exception_thrown := 0;
            {
                $r(307);
                CATCH {
                    $exception_thrown := nqp::getpayload($!);
                }
            }
            is($exception_thrown, 307, 'throwing an exception from bind_error handler works');

            $throw_exception := 0;

            my $result := $r(666);
            is($result, 1000, "bind error can return a value");
            is($used_caller, 106, 'we can get the proper caller from bind_error');
        }
    );
};

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op<bind>,
            QAST::Var.new( :name('$i'), :scope<lexical>, :decl<var>, :returns(int) ),
            QAST::IVal.new( :value(5) )
        ),
        QAST::Op.new(
            :op<while>,
            QAST::Var.new( :name('$i'), :scope<lexical> ),
            QAST::Stmts.new(
                QAST::Op.new(
                    :op<bind>,
                    QAST::Var.new( :name('$i'), :scope<lexical> ),
                    QAST::Op.new(
                        :op<sub_i>,
                        QAST::Var.new( :name('$i'), :scope<lexical> ),
                        QAST::IVal.new( :value(1) )
                    )
                ),
                QAST::Op.new(
                    :op<bind>,
                    QAST::Var.new( :name('$j'), :scope<lexical>, :decl<var>, :returns(int) ),
                    QAST::Var.new( :name('$i'), :scope<lexical> ),
                ),
                QAST::Op.new(
                    :op<while>,
                    QAST::IVal.new( :value(1), :named('nohandler') ),
                    QAST::Op.new(
                        :op<iseq_i>,
                        QAST::Var.new( :name('$j'), :scope<lexical> ),
                        QAST::IVal.new( :value(3) )
                    ),
                    QAST::Stmts.new(
                        QAST::Op.new(
                            :op<bind>,
                            QAST::Var.new( :name('$j'), :scope<lexical> ),
                            QAST::Op.new(
                                :op<sub_i>,
                                QAST::Var.new( :name('$j'), :scope<lexical> ),
                                QAST::IVal.new( :value(1) )
                            )
                        ),
                        QAST::Op.new( :op<control>, :name<last> )
                    )
                )
            )
        ),
        QAST::Var.new( :name('$i'), :scope('lexical') ),
    ),
    3,
    'while loop nohandler');

{
    my sub with_arity($arity, $block) {
        $block.arity($arity);
        $block;
    }

    is_qast(
        QAST::Block.new(
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name('$i'), :scope<lexical>, :decl<var>, :returns(int) ),
                QAST::IVal.new( :value(10) )
            ),
            QAST::Op.new(
                :op<while>,
                QAST::Var.new( :name('$i'), :scope<lexical> ),
                QAST::Stmts.new(
                    QAST::Op.new(
                        :op<bind>,
                        QAST::Var.new( :name('$i'), :scope<lexical> ),
                        QAST::Op.new(
                            :op<sub_i>,
                            QAST::Var.new( :name('$i'), :scope<lexical> ),
                            QAST::IVal.new( :value(1) )
                        )
                    ),
                    QAST::Op.new(
                        :op<for>,
                        QAST::IVal.new( :value(1), :named('nohandler') ),
                        QAST::Op.new(
                            :op<list>,
                            QAST::IVal.new( :value(3) ),
                            QAST::IVal.new( :value(7) ),
                            QAST::IVal.new( :value(20) )
                        ),
                        with_arity(1, QAST::Block.new(
                            :blocktype<immediate>,
                            QAST::Op.new(
                                :op<if>, 
                                QAST::Op.new(
                                    :op<iseq_i>,
                                    QAST::Var.new( :name('$j'), :scope<lexical>, :decl<param> ),
                                    QAST::Var.new( :name('$i'), :scope<lexical> )
                                ),
                                QAST::Op.new( :op<control>, :name<last> )
                            ),
                            QAST::Op.new(:op<null>)
                        ))
                    )
                )
            ),
            QAST::Var.new( :name('$i'), :scope('lexical') ),
        ),
        7,
        'for loop nohandler');

}

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op<add_i>,
            QAST::IVal.new( :value(0) ),
            QAST::Want.new(
                QAST::IVal.new( :value(100) ),
                'N',
                QAST::NVal.new( :value(200) ),
                'I',
                QAST::IVal.new( :value(300) ),
                'S',
                QAST::SVal.new( :value('400') ),
            )
         )
    ), 300, 'QAST::Want - choosing int'
);

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op<add_n>,
            QAST::NVal.new( :value(0) ),
            QAST::Want.new(
                QAST::IVal.new( :value(100) ),
                'N',
                QAST::NVal.new( :value(200) ),
                'I',
                QAST::IVal.new( :value(300) ),
                'S',
                QAST::SVal.new( :value('400') ),
            )
         )
    ), 200, 'QAST::Want - choosing num'
);

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op<concat>,
            QAST::SVal.new( :value('') ),
            QAST::Want.new(
                QAST::IVal.new( :value(100) ),
                'N',
                QAST::NVal.new( :value(200) ),
                'I',
                QAST::IVal.new( :value(300) ),
                'S',
                QAST::SVal.new( :value('400') ),
            )
         )
    ), '400', 'QAST::Want - choosing str'
);

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op<clone>,
            QAST::Want.new(
                QAST::IVal.new( :value(100) ),
                'N',
                QAST::NVal.new( :value(200) ),
                'I',
                QAST::IVal.new( :value(300) ),
                'S',
                QAST::SVal.new( :value('400') ),
            )
         )
    ), 100, 'QAST::Want - choose first for objects'
);

is_qast(
    QAST::Block.new(
        QAST::Op.new(
            :op<concat>,
            QAST::SVal.new( :value('x') ),
            QAST::Want.new(
                QAST::IVal.new( :value(100) ),
                'N',
                QAST::NVal.new( :value(200) ),
                'I',
                QAST::IVal.new( :value(300) ),
            )
         )
    ), 'x100', 'QAST::Want - choose first when no match'
);


{
    my class BlockCodeObject {
    }

    my class Inner {
        method from() {'inside the sub'}
    }
    my class Caller {
        method from() {'caller of the sub'}
    }
    my class Outer {
        method from() {'outside of the sub'}
    }

    my $called_exit_handler := 0;
    my $exit_handler_return_value;
    my $exit_handler_coderef;
    my $caller;

    nqp::sethllconfig('exit_handler_lang', nqp::hash(
        'exit_handler', -> $coderef, $resultish {
            $called_exit_handler := $called_exit_handler + 1;
            $exit_handler_return_value := $resultish;
            $exit_handler_coderef := $coderef;
            $caller := nqp::ctxcaller(nqp::ctx());
        }
    ));


    my $with_handler := QAST::Block.new(
        QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name('$*DYNAMIC_VAR'), :scope('lexical'), :decl('var')),
            QAST::WVal.new( :value(Inner) )
        ),
        QAST::SVal.new( :value('block return value') )
    );
    $with_handler.has_exit_handler(1);

    is_qast(
        QAST::CompUnit.new(
            :hll<exit_handler_lang>,
            QAST::Block.new(
                $with_handler,
                QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name('$*DYNAMIC_VAR'), :scope('lexical'), :decl('var')),
                    QAST::WVal.new( :value(Outer) )
                ),
                QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name('$block'), :scope('local'), :decl('var')),
                    QAST::BVal.new( :value($with_handler) )
                ),
                QAST::Op.new(
                    :op('setcodeobj'),
                    QAST::Var.new( :name('$block'), :scope('local')),
                    QAST::WVal.new( :value(BlockCodeObject))
                ),
                QAST::Op.new(
                    :op('call'),
                    QAST::Var.new( :name('$block'), :scope('local')),
                )
            )
        ),
        'block return value',
        'we survive running a CompUnit with a has_exit_handler Block');


    is($caller<$*DYNAMIC_VAR>.from, 'inside the sub', 'the exit_handler get the sub as the caller');

    is($called_exit_handler, 1, 'we have called the exit_handler');
    is($exit_handler_return_value, 'block return value', 'the exit_handler gets correct return value');

    ok(nqp::istype(nqp::getcodeobj($exit_handler_coderef), BlockCodeObject) , 'got the correct code ref to exit handler');
    is($exit_handler_coderef(), 'block return value', 'the code ref when called returns correct value');

    my $throws_exception := QAST::Block.new(
        QAST::Op.new(
            :op('die'),
            QAST::SVal.new( :value('planned emergency') )
        )
    );
    $throws_exception.has_exit_handler(1);

    $called_exit_handler := 0;
    $exit_handler_return_value := NQPMu;
    $exit_handler_coderef := NQPMu;

    is_qast(
        QAST::CompUnit.new(
            :hll<exit_handler_lang>,
            QAST::Block.new(
                $throws_exception,
                QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name('$block'), :scope('local'), :decl('var')),
                    QAST::BVal.new( :value($throws_exception) )
                ),
                QAST::Op.new(
                    :op('handle'),
                    QAST::Op.new(
                        :op('call'),
                        QAST::Var.new( :name('$block'), :scope('local')),
                    ),
                    'CATCH', QAST::SVal.new( :value('caught') )
                )
            )
        ),
        'caught',
        'we survive running a CompUnit with a has_exit_handler Block and throws an exception');

    is($called_exit_handler, 1, 'we have called the exit_handler');
    ok(nqp::isnull($exit_handler_return_value), 'the exit_handler gets a null return value when throwing an exception');
}

{
    my $throw;
    my $called := 0;
    my $got_cat;
    nqp::sethllconfig('handler_not_found_lang', nqp::hash(
        'lexical_handler_not_found_error', -> int $cat, int $out_of_dyn_scope {
            $called := $called + 1;
            $got_cat := $cat;
            nqp::die('throwing from lexical_handler_not_found_error') if $throw;
        }
    ));

    my $returns := QAST::Block.new(
        QAST::Op.new(
            :op('throwpayloadlexcaller'),
            QAST::Op.new( :op('const'), :name('CONTROL_RETURN') ),
            QAST::SVal.new( :value('failed return') )
        ),
        QAST::SVal.new( :value('survived') )
    );

    is_qast(
        QAST::CompUnit.new(
            :hll<handler_not_found_lang>,
            QAST::Block.new(
                QAST::Op.new(
                    :op('call'),
                    QAST::Op.new(:op<takeclosure>, # needed for JVM
                        $returns,
                    )
                ),
            )
        ),
        'survived',
        'we survived a throwpayloadlexcaller with a lexical_handler_not_found_error');

    is($called, '1', 'called the lexical_handler_not_found_error handler - with throwpayloadlexcaller');
    is($got_cat, nqp::const::CONTROL_RETURN, '...got right category of handler');

    $called := 0;
    $got_cat := NQPMu;

    $throw := 1;

    is_qast(
        QAST::CompUnit.new(
            :hll<handler_not_found_lang>,
            QAST::Block.new(
                QAST::Op.new(
                    :op('handle'),
                    QAST::Op.new(
                        :op('throwpayloadlexcaller'),
                        QAST::Op.new( :op('const'), :name('CONTROL_RETURN') ),
                        QAST::SVal.new( :value('failed return') )
                    ),
                    'CATCH', QAST::Op.new(
                        :op('getmessage'),
                        QAST::Op.new( :op('exception') )
                    )
                )
            )
        ),
        'throwing from lexical_handler_not_found_error',
        'throwing from a  lexical_handler_not_found_error cause by throwpayloadlexcaller');

    is($called, '1', 'called the lexical_handler_not_found_error handler - with throwpayloadlex');
    is($got_cat, nqp::const::CONTROL_RETURN, '...got right category of handler');
}

{
    my $no_custom_args := QAST::Block.new(
        QAST::Var.new( :name('arg1'), :scope('lexical'), :decl('param')),
        QAST::SVal.new( :value('survived') )
    );

    my $custom_args := QAST::Block.new(
        QAST::SVal.new( :value('survived') )
    );

    $custom_args.custom_args(1);

    is_qast(
        QAST::CompUnit.new(
            QAST::Block.new(
              QAST::Op.new(
                :op('handle'),
                QAST::Op.new(
                    :op('call'),
                    QAST::Op.new(:op<takeclosure>, # needed for JVM
                        $no_custom_args,
                    ),
                ),
                'CATCH', QAST::SVal.new( :value('died') )
              )
            )
        ),
        'died', 'wrong number of arguments dies without custom_args');

    is_qast(
        QAST::CompUnit.new(
            QAST::Block.new(
              QAST::Op.new(
                :op('handle'),
                QAST::Op.new(
                    :op('call'),
                    QAST::Op.new(:op<takeclosure>, # needed for JVM
                        $custom_args,
                    ),
                    QAST::SVal.new( :value('arg') )
                ),
                'CATCH', QAST::SVal.new( :value('died') )
              )
            )
        ),
        'survived', 'wrong number of arguments lives with custom_args');
}
