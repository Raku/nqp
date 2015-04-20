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
        my int $count := 0;
        my $result;
        while $count < 200 {
            try {
                $result := $code();
            }
            $count := $count + 1;
        }
        $result := $code();
        ok($result eq $value, $desc);
        CATCH { ok(0, $desc ~ $!) }
    }
    my $code := compile_qast($qast);
    $code();
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

sub make_ref_type($name, $kind) {
    my $class := nqp::newtype(NQPMu, 'NativeRef');
    my $info  := nqp::hash();
    $info<nativeref> := nqp::hash();
    $info<nativeref><type> := $kind;
    $info<nativeref><refkind> := 'lexical';
    nqp::composetype($class, $info);
    nqp::setcontspec($class, 'native_ref', nqp::null());
    return $class;
}
my $hllconfig := nqp::hash();

$hllconfig<int_lex_ref> := make_ref_type('StubIntLexRef', int);
$hllconfig<num_lex_ref> := make_ref_type('StubNumLexRef', num);
$hllconfig<str_lex_ref> := make_ref_type('StubStrLexRef', str);

nqp::sethllconfig('nqp', $hllconfig);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<intloc>, :scope<local>, :decl<var>, :returns(int) ),
            QAST::Op.new(
                :op<assign_i>,
                QAST::Var.new( :name<intloc>, :scope<localref> ),
                QAST::IVal.new( :value(23) )
            ),
            QAST::Var.new( :name<intloc>, :scope<local> )
        )
    ),
    23,
    'localref of type int with value 23 assigned to it'
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<numloc>, :scope<local>, :decl<var>, :returns(num) ),
            QAST::Op.new(
                :op<assign_n>,
                QAST::Var.new( :name<numloc>, :scope<localref> ),
                QAST::NVal.new( :value(99e2) )
            ),
            QAST::Var.new( :name<numloc>, :scope<local> )
        )
    ),
    99e2,
    'localref of type num with value 99e2 assigned to it'
);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<strloc>, :scope<local>, :decl<var>, :returns(str) ),
            QAST::Op.new(
                :op<assign_s>,
                QAST::Var.new( :name<strloc>, :scope<localref> ),
                QAST::SVal.new( :value('What do we have here?') )
            ),
            QAST::Var.new( :name<strloc>, :scope<local> )
        )
    ),
    'What do we have here?',
    'localref of type str with a value assigned to it'
);

#is_qast(
    #QAST::CompUnit.new( :hll<nqp>,
        #QAST::Block.new(
            #QAST::Var.new( :name<intloc>, :scope<local>, :decl<var>, :returns(int) ),
            #QAST::Var.new( :name<intref>, :scope<localref>, :decl<var> ),
            #QAST::Op.new( :op<bind>,
                #QAST::Var.new( :name<intref>, :scope<localref> ),
                #QAST::Var.new( :name<intloc>, :scope<localref> )
            #),
            #QAST::Op.new(
                #:op<assign_i>,
                #QAST::Var.new( :name<intref>, :scope<local> ),
                #QAST::IVal.new( :value(123) )
            #),
            #QAST::Op.new(
                #:op<list_i>,
                #QAST::Var.new( :name<intloc>, :scope<local> ),
                #QAST::Var.new( :name<intref>, :scope<local> )
            #)
        #)
    #),
    #nqp::list_i(23, 23),
    #"a localref'd var can have a local ref'd thing bound to it and accessed (int)"
#);

is_qast(
    QAST::CompUnit.new( :hll<nqp>,
        QAST::Block.new(
            QAST::Var.new( :name<strloc>, :scope<local>, :decl<var>, :returns(str) ),
            QAST::Var.new( :name<strref>, :scope<localref>, :decl<var>, :returns(str) ),
            QAST::Op.new( :op<bind>,
                QAST::Var.new( :name<strref>, :scope<localref> ),
                QAST::Var.new( :name<strloc>, :scope<localref> )
            ),
            QAST::Op.new(
                :op<assign_s>,
                QAST::Var.new( :name<strref>, :scope<local> ),
                QAST::SVal.new( :value("hooray") )
            ),
            QAST::Op.new(
                :op<list_s>,
                QAST::Var.new( :name<strloc>, :scope<local> ),
                QAST::Var.new( :name<strref>, :scope<local> )
            )
        )
    ),
    nqp::list_s("hooray", "hooray"),
    "a localref'd var can have a local ref'd thing bound to it and accessed (str)"
);
