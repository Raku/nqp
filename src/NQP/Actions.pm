class NQP::Actions is HLL::Actions;

# These will eventually go in NQP::Grammar.
NQP::Grammar.O(':prec<y=>, :assoc<unary>', '%methodop');
NQP::Grammar.O(':prec<x=>, :assoc<unary>', '%autoincrement');
NQP::Grammar.O(':prec<w=>, :assoc<left>',  '%exponentiation');
NQP::Grammar.O(':prec<v=>, :assoc<unary>', '%symbolic_unary');
NQP::Grammar.O(':prec<u=>, :assoc<left>',  '%multiplicative');
NQP::Grammar.O(':prec<t=>, :assoc<left>',  '%additive');
NQP::Grammar.O(':prec<i=>, :assoc<right>',  '%assignment');

method TOP($/) { make $<EXPR>.ast; }

method term:sym<value>($/) { make $<value>.ast; }

method circumfix:sym<( )>($/) { make $<EXPR>.ast; }

method postcircumfix:sym<[ ]>($/) {
    make PAST::Var.new( 0, $<EXPR>.ast , :scope('keyed_int') );
}

method value($/) {
    my $past := PAST::Val.new( 
                    :value($<integer> 
                      ?? $<integer>.ast 
                      !! $<quote_delimited>.ast
                      )
                );
    make $past;
}

