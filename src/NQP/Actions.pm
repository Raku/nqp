class NQP::Actions is HLL::Actions;

our @BLOCK := Q:PIR { %r = new ['ResizablePMCArray'] };

method TOP($/) { make $<comp_unit>.ast; }

method comp_unit($/) {
    my $past := $<statementlist>.ast;
    my $BLOCK := @BLOCK.shift;
    $BLOCK.push($past);
    $BLOCK.node($/);
    make $BLOCK;
}

method statementlist($/) {
    my $past := PAST::Stmts.new( :node($/) );
    if $<statement> {
        for $<statement> { 
            my $ast := $_.ast;
            if $ast.isa(PAST::Block) && !$ast.blocktype {
                $ast.blocktype('immediate');
            }
            $past.push( $ast ); 
        }
    }
    make $past;
}

method statement($/) { 
    my $past;
    if $<EXPR> { $past := $<EXPR>.ast; }
    elsif $<statement_control> { $past := $<statement_control>.ast; }
    else { $past := 0; }
    make $past;
}

method xblock($/) {
    my $pblock := $<pblock>.ast;
    $pblock.blocktype('immediate');
    make PAST::Op.new( $<EXPR>.ast, $pblock, :pasttype('if'), :node($/) );
}

method pblock($/) {
    make $<blockoid>.ast;
}

method blockoid($/) {
    my $past := $<statementlist>.ast;
    my $BLOCK := @BLOCK.shift;
    $BLOCK.push($past);
    $BLOCK.node($/);
    make $BLOCK;
}

method newpad($/) {
    our @BLOCK;
    @BLOCK.unshift( PAST::Block.new( PAST::Stmts.new() ) );
}

## Statement control

method statement_control:sym<if>($/) {
    my $count := +$<xblock> - 1;
    my $past := $<xblock>[$count].ast;
    if $<else> {
        my $else := $<else>[0].ast;
        $else.blocktype('immediate');
        $past.push($else);
    }
    # build if/then/elsif structure
    while $count > 0 {
        $count--;
        my $else := $past;
        $past := $<xblock>[$count].ast;
        $past.push($else);
    }
    make $past;
}

method statement_control:sym<unless>($/) {
    my $past := $<xblock>.ast;
    $past.pasttype('unless');
    make $past;
}

## Terms

method noun:sym<variable>($/) { make $<variable>.ast; }
method noun:sym<scope_declarator>($/) { make $<scope_declarator>.ast; }
method noun:sym<routine_declarator>($/) { make $<routine_declarator>.ast; }

method variable($/) {
    make PAST::Var.new( :name(~$/) );
}

method scope_declarator:sym<my>($/) { make $<scoped>.ast; }
method scope_declarator:sym<our>($/) {
    my $past := $<scoped>.ast;
    @BLOCK[0].symbol( $past.name, :scope('package') );
    $past.scope('package');

    # If we're modifying the scope of a block, then eliminate the
    # variable assignment and just return the (named) block itself.
    if $past<XXXroutine> {
        $past := $past.viviself;
        $past.nsentry($past.name);
    }

    make $past;
}

method scoped($/) {
    make $<routine_declarator>
         ?? $<routine_declarator>.ast
         !! $<variable_declarator>.ast;
}

method variable_declarator($/) {
    my $past := $<variable>.ast;
    my $name := $past.name;
    if @BLOCK[0].symbol($name) {
        $/.CURSOR.panic("Redeclaration of symbol ", $name);
    }
    $past.scope('lexical');
    $past.isdecl(1);
    $past.viviself('Undef');
    @BLOCK[0].symbol( $name, :scope('lexical') );
    make $past;
}

method routine_declarator:sym<sub>($/) { make $<routine_def>.ast; }

method routine_def($/) {
    my $past := $<blockoid>.ast;
    $past.blocktype('declaration');
    if $<deflongname> {
        my $name := ~$<deflongname>[0];
        $past.name($name);
        $past.nsentry('');
        $past := PAST::Var.new( :name($name), :isdecl(1), :viviself($past),
                     :scope('lexical') );
        $past<XXXroutine> := 1;
        @BLOCK[0].symbol( $name, :scope('lexical') );
    }
    make $past;
}

method signature($/) {
    my $BLOCKINIT := @BLOCK[0][0];
    for $<parameter> { $BLOCKINIT.push($_.ast); }
}

method parameter($/) { make $<param_var>.ast; }

method param_var($/) {
    my $past := $<variable>.ast;
    $past.isdecl(1);
    $past.scope('parameter');
    @BLOCK[0].symbol($past.name, :scope('lexical') );
    make $past;
}

method term:sym<identifier>($/) {
    my $past := $<args>.ast;
    $past.name(~$<identifier>);
    make $past;
}

method args($/) { make $<arglist>.ast; }

method arglist($/) {
    my $past := PAST::Op.new( :pasttype('call'), :node($/) );
    if $<EXPR> {
        my $expr := $<EXPR>.ast;
        if $expr.name eq 'infix:<,>' {
            for $expr.list { $past.push($_); }
        }
        else { $past.push($expr); }
    }
    make $past;
}


method term:sym<value>($/) { make $<value>.ast; }

method circumfix:sym<( )>($/) { make $<EXPR>.ast; }

method circumfix:sym<ang>($/) { make $<quote_EXPR>.ast; }

method circumfix:sym<{ }>($/) { make $<pblock>.ast; }

method postcircumfix:sym<[ ]>($/) {
    make PAST::Var.new( $<EXPR>.ast , :scope('keyed_int') );
}

method value($/) {
    my $past := $<quote>
                ?? $<quote>.ast
                !! PAST::Val.new( :value($<integer>.ast) );
    make $past;
}


method quote:sym<apos>($/) { make $<quote_EXPR>.ast; }
method quote:sym<dblq>($/) { make $<quote_EXPR>.ast; }
method quote:sym<qq>($/)   { make $<quote_EXPR>.ast; }
method quote:sym<q>($/)    { make $<quote_EXPR>.ast; }
method quote:sym<Q>($/)    { make $<quote_EXPR>.ast; }

## Operators

# These will eventually go in NQP::Grammar.
NQP::Grammar.O(':prec<y=>, :assoc<unary>', '%methodop');
NQP::Grammar.O(':prec<x=>, :assoc<unary>', '%autoincrement');
NQP::Grammar.O(':prec<w=>, :assoc<left>',  '%exponentiation');
NQP::Grammar.O(':prec<v=>, :assoc<unary>', '%symbolic_unary');
NQP::Grammar.O(':prec<u=>, :assoc<left>',  '%multiplicative');
NQP::Grammar.O(':prec<t=>, :assoc<left>',  '%additive');
NQP::Grammar.O(':prec<r=>, :assoc<list>',  '%concatenation'); 
NQP::Grammar.O(':prec<m=>, :assoc<left>',  '%relational');
NQP::Grammar.O(':prec<l=>, :assoc<left>',  '%tight_and');
NQP::Grammar.O(':prec<k=>, :assoc<left>',  '%tight_or');
NQP::Grammar.O(':prec<i=>, :assoc<right>', '%assignment');
NQP::Grammar.O(':prec<g=>, :assoc<list>, :nextterm<nulltermish>',  '%comma');
NQP::Grammar.O(':prec<f=>, :assoc<list>',  '%list_infix');

method nulltermish($/) {
    make $<noun> ?? $<noun>.ast !! 0;
}

method postfix:sym<++>($/) {
    make PAST::Op.new( :name('postfix:<++>'),
                       :inline('    clone %r, %0', '    inc %0'),
                       :pasttype('inline') );
}

method postfix:sym<-->($/) {
    make PAST::Op.new( :name('postfix:<-->'),
                       :inline('    clone %r, %0', '    dec %0'),
                       :pasttype('inline') );
}
