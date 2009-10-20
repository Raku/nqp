grammar HLL::Grammar;

    # method EXPR is in src/cheats/hll-grammar.pir

    token termish {
        <prefixish>*
        <noun>
        <postfixish>*
    }

    proto token noun { <...> }
    proto token infix { <...> }
    proto token prefix { <...> }
    proto token postfix { <...> }
    proto token circumfix { <...> }
    proto token postcircumfix { <...> }

    token noun:sym<term> { <term> }
    token noun:sym<circumfix> { <circumfix> }

    token infixish { <OPER=infix=infix> }
    token prefixish { <OPER=prefix=prefix> }
    token postfixish { 
        | <OPER=postfix=postfix> 
        | <OPER=postcircumfix=postcircumfix>
    }

    # token quote_EXPR is in src/cheats/hll-grammar.pir
    token quote_delimited {
        <starter> <quote_atom>* <stopper>
    }

    token quote_atom {
        <!stopper>
        [
        | <escape>
        | [ <-escape-stopper> ]+
        ]
    }

    token hexint { [<[ 0..9 a..f A..F ]>+] ** '_' }
    token hexints { [<.ws><hexint><.ws>] ** ',' }

    token octint { [<[ 0..7 ]>+] ** '_' }
    token octints { [<.ws><octint><.ws>] ** ',' }

    token integer {
        [
        | 0 [ b $<binint>=[[<[01]>+] ** '_']
            | o <octint>
            | x <hexint>
            | d $<decint>=[[\d+] ** '_']
            ]
        | $<decint>=[\d+ [_\d+]*]
        ]
    }

    proto token escape { <...> }
    token escape:sym<backslash> { \\ \\ }
    token escape:sym<bs> { \\ b }
    token escape:sym<oct> { \\ o [ <octint> | '[' <octints> ']' ] }
    token escape:sym<hex> { \\ x [ <hexint> | '[' <hexints> ']' ] }
    token escape:sym<chr> { \\ c <charspec> }
    token escape:sym<nl> { \\ n }
    token escape:sym<cr> { \\ r }
    token escape:sym<tab> { \\ t }

    token charname {
        || <integer>
        || <[a..z A..Z]> <-[ \] , # ]>*? <[a..z A..Z ) ]> 
           <?before \s* <[ \] , # ]> >
    }
    token charnames { [<.ws><charname><.ws>] ** ',' }
    token charspec {
        [
        | '[' <charnames> ']'
        | \d+ [ _ \d+]*
        | <[ ?..Z ]>
        | <.panic: 'Unrecognized \\c character'>
        ]
    }

