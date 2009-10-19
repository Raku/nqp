class NQP::Actions is HLL::Actions;

# These will eventually go in NQP::Grammar.
NQP::Grammar.O(':prec<w=>, :assoc<left>', '%exponentiation');
NQP::Grammar.O(':prec<u=>, :assoc<left>', '%multiplicative');
NQP::Grammar.O(':prec<t=>, :assoc<left>', '%additive');

method TOP($/) { make $<EXPR>.ast; }

method term:sym<value>($/) { make $<value>.ast; }

method value($/) {
    my $past := PAST::Val.new( 
                    :value($<integer> 
                      ?? $<integer>.ast 
                      !! $<quote_delimited>.ast
                      )
                );
    make $past;
}

