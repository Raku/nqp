grammar Regex::P6Grammar::Grammar is Regex::P6Regex::Grammar;

    token TOP {
        <grammar_stmt> 
        <regex_stmt>* 
        [ $ || <.panic: 'Confused'> ]
    }

    token name { <.ident> ** '::' }

    token longname {
        [
        | <.ident> [ ':sym<' <-[>]>* '>' ]?
        ]
    }

    rule grammar_stmt { grammar <name> [ is <base=name> ]? ';' }

    rule regex_stmt {
        $<sym>=[regex|token|rule]
        <longname>
        {*} #= open
        '{'<nibbler>'}'
    }

