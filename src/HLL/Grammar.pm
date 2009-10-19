grammar HLL::Grammar;

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

