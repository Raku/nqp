use QAST;
use nqpmo;

plan(48);

# Following a test infrastructure.
sub compile_qast($qast) {
    my $*QAST_BLOCK_NO_CLOSE := 1;
    nqp::getcomp('nqp').compile($qast, :from('ast'));
}
sub is_qast($qast, $value, $desc) {
    try {
        my $code := compile_qast($qast);
        my $result := $code();
        ok($result eq $value, $desc);
        CATCH { ok(0, $desc ~ ': ' ~ $!) }
    }
}

##
## If you want to inspect the generated code, use this version of
## is_qast and use MVM_SPESH_LOG=foo.txt - the loop will cause spesh
## to run it and it'll show up in the log.
##
#
#sub is_qast($qast, $value, $desc) {
    #try {
        #my $code := compile_qast($qast);
        #my int $count := 0;
        #my $result;
        #while $count < 200 {
            #try {
                #$result := $code();
            #}
            #$count := $count + 1;
        #}
        #$result := $code();
        #ok($result eq $value, $desc);
        #CATCH { ok(0, $desc ~ $!) }
    #}
    #my $code := compile_qast($qast);
    #$code();
#}

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

sub make_ref_type($name, $kind, :$ref_kind = 'lexical') {
    my $class := nqp::newtype(NQPMu, 'NativeRef');
    my $info  := nqp::hash();
    $info<nativeref> := nqp::hash();
    $info<nativeref><type> := $kind;
    $info<nativeref><refkind> := $ref_kind;
    nqp::composetype($class, $info);
    nqp::setcontspec($class, 'native_ref', nqp::null());
    return $class;
}
my $hllconfig := nqp::hash();

my $int_boxer := NQPClassHOW.new_type(:name('boxing_int'), :repr('P6opaque'));
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

$hllconfig<int_lex_ref> := make_ref_type('StubIntLexRef', int);
$hllconfig<num_lex_ref> := make_ref_type('StubNumLexRef', num);
$hllconfig<str_lex_ref> := make_ref_type('StubStrLexRef', str);

$hllconfig<int_attr_ref> := make_ref_type('StubIntAttrRef', int, :ref_kind<attribute>);
$hllconfig<num_attr_ref> := make_ref_type('StubNumAttrRef', num, :ref_kind<attribute>);
$hllconfig<str_attr_ref> := make_ref_type('StubStrAttrRef', str, :ref_kind<attribute>);

nqp::sethllconfig('nqp', $hllconfig);

my $hllconfig_boxing := nqp::hash();
$hllconfig_boxing<int_box> := $int_boxer;
$hllconfig_boxing<num_box> := $num_boxer;
$hllconfig_boxing<int_lex_ref> := make_ref_type('StubIntLexRef', int);
$hllconfig_boxing<num_lex_ref> := make_ref_type('StubNumLexRef', num);
$hllconfig_boxing<str_lex_ref> := make_ref_type('StubStrLexRef', str);
nqp::sethllconfig('boxedLang', $hllconfig_boxing);

my $hllconfig_boxing_str := nqp::hash();
$hllconfig_boxing_str<str_lex_ref> := make_ref_type('StubStrLexRef', str);
nqp::sethllconfig('boxedStr-outer', $hllconfig_boxing_str);

my $hllconfig_boxing_str_owner := nqp::hash();
$hllconfig_boxing_str_owner<str_box> := $str_boxer;
nqp::sethllconfig('boxedStr-owner', $hllconfig_boxing_str_owner);

nqp::settypehll($hllconfig_boxing_str<str_lex_ref>, 'boxedStr-owner');

# Tests for lexicalref

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<intloc>, :scope<lexical>, :decl<var>, :returns(int) ),
            QAST::Op.new(
                :op<assign_i>,
                QAST::Var.new( :name<intloc>, :scope<lexicalref> ),
                QAST::IVal.new( :value(23) )
            ),
            QAST::Var.new( :name<intloc>, :scope<lexical> )
        )
    ),
    23,
    'lexicalref of type int with value 23 assigned to it (nqp::assign_i)'
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<numloc>, :scope<lexical>, :decl<var>, :returns(num) ),
            QAST::Op.new(
                :op<assign_n>,
                QAST::Var.new( :name<numloc>, :scope<lexicalref> ),
                QAST::NVal.new( :value(99e2) )
            ),
            QAST::Var.new( :name<numloc>, :scope<lexical> )
        )
    ),
    99e2,
    'lexicalref of type num with value 99e2 assigned to it (nqp::assign_n)'
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<strloc>, :scope<lexical>, :decl<var>, :returns(str) ),
            QAST::Op.new(
                :op<assign_s>,
                QAST::Var.new( :name<strloc>, :scope<lexicalref> ),
                QAST::SVal.new( :value('What do we have here?') )
            ),
            QAST::Var.new( :name<strloc>, :scope<lexical> )
        )
    ),
    'What do we have here?',
    'lexicalref of type str with a value assigned to it (assign_s)'
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<intloc>, :scope<lexical>, :decl<var>, :returns(int) ),
            QAST::Op.new(
                :op<assign>,
                QAST::Var.new( :name<intloc>, :scope<lexicalref> ),
                QAST::IVal.new( :value(23) )
            ),
            QAST::Var.new( :name<intloc>, :scope<lexical> )
        )
    ),
    23,
    'lexicalref of type int with value 23 assigned to it (nqp::assign)'
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<numloc>, :scope<lexical>, :decl<var>, :returns(num) ),
            QAST::Op.new(
                :op<assign>,
                QAST::Var.new( :name<numloc>, :scope<lexicalref> ),
                QAST::NVal.new( :value(99e2) )
            ),
            QAST::Var.new( :name<numloc>, :scope<lexical> )
        )
    ),
    99e2,
    'lexicalref of type num with value 99e2 assigned to it (nqp::assign)'
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<strloc>, :scope<lexical>, :decl<var>, :returns(str) ),
            QAST::Op.new(
                :op<assign>,
                QAST::Var.new( :name<strloc>, :scope<lexicalref> ),
                QAST::SVal.new( :value('What do we have here?') )
            ),
            QAST::Var.new( :name<strloc>, :scope<lexical> )
        )
    ),
    'What do we have here?',
    'lexicalref of type str with a value assigned to it (nqp::assign)'
);


is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<strloc>, :scope<lexical>, :decl<var>, :returns(str) ),
            QAST::Var.new( :name<strref>, :scope<lexicalref>, :decl<var>, :returns(str) ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<strref>, :scope<lexicalref> ),
                QAST::Var.new( :name<strloc>, :scope<lexicalref> )
            ),
            QAST::Op.new(
                :op<assign_s>,
                QAST::Var.new( :name<strref>, :scope<lexicalref> ),
                QAST::SVal.new( :value("hooray") )
            ),
            QAST::Op.new(
                :op<join>,
                QAST::SVal.new( :value(', ') ),
                QAST::Op.new(
                    :op<list_s>,
                    QAST::Var.new( :name<strloc>, :scope<lexical> ),
                    QAST::Var.new( :name<strref>, :scope<lexical> )
                )
            )
        )
    ),
    "hooray, hooray",
    "a lexicalref'd var can have a lexical ref'd thing bound to it and accessed (str)"
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<intloc>, :scope<lexical>, :decl<var>, :returns(int) ),
            QAST::Var.new( :name<intref>, :scope<lexicalref>, :decl<var>, :returns(int) ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<intref>, :scope<lexicalref> ),
                QAST::Var.new( :name<intloc>, :scope<lexicalref> )
            ),
            QAST::Op.new(
                :op<assign_i>,
                QAST::Var.new( :name<intref>, :scope<lexicalref> ),
                QAST::IVal.new( :value(42) )
            ),
            QAST::Op.new(
                :op<join>,
                QAST::SVal.new( :value(', ') ),
                QAST::Op.new(
                    :op<list>,
                    QAST::Op.new( :op<stringify>, QAST::Var.new( :name<intloc>, :scope<lexical> ) ),
                    QAST::Op.new( :op<stringify>, QAST::Var.new( :name<intref>, :scope<lexical> ) ),
                )
            )
        )
    ),
    "42, 42",
    "a lexicalref'd var can have a lexical ref'd thing bound to it and accessed (int)"
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<intloc>, :scope<lexical>, :decl<var>, :returns(num) ),
            QAST::Var.new( :name<intref>, :scope<lexicalref>, :decl<var>, :returns(num)  ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<intref>, :scope<lexicalref> ),
                QAST::Var.new( :name<intloc>, :scope<lexicalref> )
            ),
            QAST::Op.new(
                :op<assign_n>,
                QAST::Var.new( :name<intref>, :scope<lexicalref> ),
                QAST::NVal.new( :value(99.9) )
            ),
            QAST::Op.new(
                :op<join>,
                QAST::SVal.new( :value(', ') ),
                QAST::Op.new(
                    :op<list>,
                    QAST::Op.new( :op<stringify>, QAST::Var.new( :name<intloc>, :scope<lexical> ) ),
                    QAST::Op.new( :op<stringify>, QAST::Var.new( :name<intref>, :scope<lexical> ) ),
                )
            )
        )
    ),
    "99.9, 99.9",
    "a lexicalref'd var can have a lexical ref'd thing bound to it and accessed (num)"
);

is_qast(
    QAST::CompUnit.new( :hll<boxedLang>,
        QAST::Block.new(
            QAST::Var.new( :name<intloc>, :scope<lexical>, :decl<var>, :returns(int) ),
            QAST::Var.new( :name<intref>, :scope<lexicalref>, :decl<var>, :returns(int) ),
            QAST::Var.new( :name<boxedint>, :scope<lexical>, :decl<var> ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<intref>, :scope<lexicalref> ),
                QAST::Var.new( :name<intloc>, :scope<lexicalref> )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<intloc>, :scope<lexical> ),
                QAST::IVal.new( :value(42) )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<boxedint>, :scope<lexical> ),
                QAST::Op.new( :op<decont>, QAST::Var.new( :name<intloc>, :scope<lexicalref> ))
            ),
            QAST::Op.new(
                :op<callmethod>,
                :name<twice>,
                QAST::Var.new( :name<boxedint>, :scope<lexical> )
            )
        )
    ),
    "84",
    "we get a properly boxed thing from a lexicalref (int)"
);

is_qast(
    QAST::CompUnit.new( :hll<boxedLang>,
        QAST::Block.new(
            QAST::Var.new( :name<numloc>, :scope<lexical>, :decl<var>, :returns(num) ),
            QAST::Var.new( :name<numref>, :scope<lexicalref>, :decl<var>, :returns(num) ),
            QAST::Var.new( :name<boxednum>, :scope<lexical>, :decl<var> ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<numref>, :scope<lexicalref> ),
                QAST::Var.new( :name<numloc>, :scope<lexicalref> )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<numloc>, :scope<lexical> ),
                QAST::NVal.new( :value(41.5) )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<boxednum>, :scope<lexical> ),
                QAST::Op.new( :op<decont>, QAST::Var.new( :name<numloc>, :scope<lexicalref> ))
            ),
            QAST::Op.new(
                :op<callmethod>,
                :name<twice>,
                QAST::Var.new( :name<boxednum>, :scope<lexical> )
            )
        )
    ),
    "83",
    "we get a properly boxed thing from a lexicalref (num)"
);


is_qast(
    QAST::CompUnit.new( :hll<boxedStr-outer>,
        QAST::Block.new(
            QAST::Var.new( :name<strloc>, :scope<lexical>, :decl<var>, :returns(str) ),
            QAST::Var.new( :name<strref>, :scope<lexicalref>, :decl<var>, :returns(str) ),
            QAST::Var.new( :name<boxedstr>, :scope<lexical>, :decl<var> ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<strref>, :scope<lexicalref> ),
                QAST::Var.new( :name<strloc>, :scope<lexicalref> )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<strloc>, :scope<lexical> ),
                QAST::SVal.new( :value('43') )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<boxedstr>, :scope<lexical> ),
                QAST::Op.new( :op<decont>, QAST::Var.new( :name<strloc>, :scope<lexicalref> ))
            ),
            QAST::Op.new(
                :op<callmethod>,
                :name<twice>,
                QAST::Var.new( :name<boxedstr>, :scope<lexical> )
            )
        )
    ),
    "86",
    "we get a properly boxed thing from a lexicalref using hll owner (str)"
);

test_qast_result(
    QAST::CompUnit.new( :hll<boxedLang>,
        QAST::Block.new(
            QAST::Var.new( :name<intloc>, :scope<lexical>, :decl<var>, :returns(int) ),
            QAST::Var.new( :name<intref>, :scope<lexicalref>, :decl<var>, :returns(int) ),
            QAST::Var.new( :name<numloc>, :scope<lexical>, :decl<var>, :returns(num) ),
            QAST::Var.new( :name<numref>, :scope<lexicalref>, :decl<var>, :returns(num) ),
            QAST::Var.new( :name<strloc>, :scope<lexical>, :decl<var>, :returns(str) ),
            QAST::Var.new( :name<strref>, :scope<lexicalref>, :decl<var>, :returns(str) ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<intloc>, :scope<lexical> ),
                QAST::IVal.new( :value(7) )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<numloc>, :scope<lexical> ),
                QAST::NVal.new( :value(3.14) )
            ),
            QAST::Op.new(
                :op<bind>,
                QAST::Var.new( :name<strloc>, :scope<lexical> ),
                QAST::SVal.new( :value('6 cute') )
            ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<numref>, :scope<lexicalref> ),
                QAST::Var.new( :name<numloc>, :scope<lexicalref> )
            ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<intref>, :scope<lexicalref> ),
                QAST::Var.new( :name<intloc>, :scope<lexicalref> )
            ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<strref>, :scope<lexicalref> ),
                QAST::Var.new( :name<strloc>, :scope<lexicalref> )
            ),
            QAST::Op.new( :op<list>,
                QAST::Var.new( :name<intref>, :scope<lexicalref> ),
                QAST::Var.new( :name<numref>, :scope<lexicalref> ),
                QAST::Var.new( :name<strref>, :scope<lexicalref> ),
            )
        )
    ),
    -> $r {
        ok(nqp::iscont(nqp::atpos($r, 0)) == 1, 'iscont on int lexicalref');
        ok(nqp::iscont_i(nqp::atpos($r, 0)) == 1, 'iscont_i on int lexicalref');
        ok(nqp::iscont_n(nqp::atpos($r, 0)) == 0, 'iscont_n on int lexicalref');
        ok(nqp::iscont_s(nqp::atpos($r, 0)) == 0, 'iscont_s on int lexicalref');

        ok(nqp::iscont_i(nqp::atpos($r, 1)) == 0, 'iscont_i on num lexicalref');
        ok(nqp::iscont_n(nqp::atpos($r, 1)) == 1, 'iscont_n on num lexicalref');
        ok(nqp::iscont_s(nqp::atpos($r, 1)) == 0, 'iscont_s on num lexicalref');
        ok(nqp::iscont(nqp::atpos($r, 1)) == 1, 'iscont on num lexicalref');


        ok(nqp::iscont(nqp::atpos($r, 2)) == 1, 'iscont on num lexicalref');
        ok(nqp::iscont_i(nqp::atpos($r, 2)) == 0, 'iscont_i on str lexicalref');
        ok(nqp::iscont_n(nqp::atpos($r, 2)) == 0, 'iscont_n on str lexicalref');
        ok(nqp::iscont_s(nqp::atpos($r, 2)) == 1, 'iscont_s on str lexicalref');

        ok(nqp::iseq_i(nqp::atpos($r, 0), 7), 'can use int lexicalref as int');
        ok(nqp::iseq_i(nqp::atpos($r, 1), 3), 'can use num lexicalref as int');
        ok(nqp::iseq_i(nqp::atpos($r, 2), 6), 'can use str lexicalref as int');

        ok(nqp::atpos($r, 0) == 7, 'can use int lexicalref as num');
        ok(nqp::atpos($r, 1) == 3.14, 'can use num lexicalref as num');
        ok(nqp::atpos($r, 2) == 6, 'can use str lexicalref as num');

        ok(nqp::atpos($r, 0) eq '7', 'can use int lexicalref as str');
        ok(nqp::atpos($r, 1) eq '3.14', 'can use num lexicalref as str');
        ok(nqp::atpos($r, 2) eq '6 cute', 'can use str lexicalref as str');
    }
);

# Tests for attributeref

class E {
    has int $!x;
    has num $!y;
    has str $!z;
}

test_qast_result(
    QAST::CompUnit.new( :hll<nqp>,
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
                QAST::Var.new( :name('ref_to_x'), :scope('local'), :decl('var') ),
                QAST::Var.new(
                    :scope('attributeref'), :name('$!x'), :returns(int),
                    QAST::Var.new( :name('foo'), :scope('local') ),
                    QAST::WVal.new( :value(E) )
                )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('ref_to_y'), :scope('local'), :decl('var') ),
                QAST::Var.new(
                    :scope('attributeref'), :name('$!y'), :returns(num),
                    QAST::Var.new( :name('foo'), :scope('local') ),
                    QAST::WVal.new( :value(E) )
                )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('ref_to_z'), :scope('local'), :decl('var') ),
                QAST::Var.new(
                    :scope('attributeref'), :name('$!z'), :returns(str),
                    QAST::Var.new( :name('foo'), :scope('local') ),
                    QAST::WVal.new( :value(E) )
                )
            ),
            QAST::Op.new(
                :op('assign_i'),
                QAST::Var.new(
                    :scope('local'), :name('ref_to_x')
                ),
                QAST::IVal.new( :value(99) )
            ),
            QAST::Op.new(
                :op('assign_n'),
                QAST::Var.new(
                    :scope('local'), :name('ref_to_y')
                ),
                QAST::NVal.new( :value(3.14) )
            ),
            QAST::Op.new(
                :op('assign_s'),
                QAST::Var.new(
                    :scope('local'), :name('ref_to_z')
                ),
                QAST::SVal.new( :value("funny") )
            ),
            QAST::Op.new(
                :op('list'),
                QAST::Var.new( :name('foo'), :scope('local') ),
                QAST::Var.new( :name('ref_to_x'), :scope('local') ),
                QAST::Var.new( :name('ref_to_y'), :scope('local') ),
                QAST::Var.new( :name('ref_to_z'), :scope('local') )
            )
        )
    ),
    -> $r {
        my $foo := nqp::atpos($r, 0);
        ok(nqp::getattr_i($foo, E, '$!x') == 99, 'attributeref works (int)');
        ok(nqp::getattr_n($foo, E, '$!y') == 3.14, 'attributeref works (num)');
        ok(nqp::getattr_s($foo, E, '$!z') eq 'funny', 'attributeref works (str)');

        ok(nqp::iscont(nqp::atpos($r, 1)) == 1, 'iscont on int attributref');
        ok(nqp::iscont_i(nqp::atpos($r, 1)) == 1, 'iscont_i on int attributref');
        ok(nqp::iscont_n(nqp::atpos($r, 1)) == 0, 'iscont_n on int attributref');
        ok(nqp::iscont_s(nqp::atpos($r, 1)) == 0, 'iscont_s on int attributref');

        ok(nqp::iscont_i(nqp::atpos($r, 2)) == 0, 'iscont_i on num attributref');
        ok(nqp::iscont_n(nqp::atpos($r, 2)) == 1, 'iscont_n on num attributref');
        ok(nqp::iscont_s(nqp::atpos($r, 2)) == 0, 'iscont_s on num attributref');
        ok(nqp::iscont(nqp::atpos($r, 2)) == 1, 'iscont on num attributref');


        ok(nqp::iscont(nqp::atpos($r, 3)) == 1, 'iscont on num attributref');
        ok(nqp::iscont_i(nqp::atpos($r, 3)) == 0, 'iscont_i on str attributref');
        ok(nqp::iscont_n(nqp::atpos($r, 3)) == 0, 'iscont_n on str attributref');
        ok(nqp::iscont_s(nqp::atpos($r, 3)) == 1, 'iscont_s on str attributref');
    });
