use QAST;

plan(78);

# Following a test infrastructure.
sub compile_qast($qast) {
    my $*QAST_BLOCK_NO_CLOSE := 1;
    # Turn off the optimizer as it can only handle things things nqp generates
    nqp::getcomp('nqp').compile($qast, :from('ast'), :optimize('off'));
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
        CATCH { ok(0, 'Compilation failure in test_qast_result: ' ~ $!) }
    }
}

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
    skip('children of a QAST::Var with a "param" decl are not implemented');
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
}
