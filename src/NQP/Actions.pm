class NQP::Actions is HLL::Actions;

# These will eventually go in NQP::Grammar.
NQP::Grammar.O(':prec<y=>, :assoc<unary>', '%methodop');
NQP::Grammar.O(':prec<x=>, :assoc<unary>', '%autoincrement');
NQP::Grammar.O(':prec<w=>, :assoc<left>',  '%exponentiation');
NQP::Grammar.O(':prec<v=>, :assoc<unary>', '%symbolic_unary');
NQP::Grammar.O(':prec<u=>, :assoc<left>',  '%multiplicative');
NQP::Grammar.O(':prec<t=>, :assoc<left>',  '%additive');
NQP::Grammar.O(':prec<r=>, :assoc<list>',  '%concatenation'); 
NQP::Grammar.O(':prec<i=>, :assoc<right>', '%assignment');
NQP::Grammar.O(':prec<g=>, :assoc<list>, :nextterm<nulltermish>',  '%comma');

method TOP($/) { make $<EXPR>.ast; }

method term:sym<value>($/) { make $<value>.ast; }

method circumfix:sym<( )>($/) { make $<EXPR>.ast; }

method postcircumfix:sym<[ ]>($/) {
    make PAST::Var.new( $<EXPR>.ast , :scope('keyed_int') );
}

method value($/) {
    my $past := $<quote>
                ?? $<quote>.ast
                !! PAST::Val.new( :value($<integer>.ast) );
    make $past;
}

method nulltermish($/) {
    make $<noun> ?? $<noun>.ast !! 0;
}

method quote:sym<apos>($/) { make $<quote_EXPR>.ast; }
method quote:sym<dblq>($/) { make $<quote_EXPR>.ast; }
method quote:sym<qq>($/)   { make $<quote_EXPR>.ast; }
method quote:sym<q>($/)    { make $<quote_EXPR>.ast; }
method quote:sym<Q>($/)    { make $<quote_EXPR>.ast; }

