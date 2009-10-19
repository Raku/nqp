class NQP::Actions is HLL::Actions;

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

