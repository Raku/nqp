grammar Regex::P6Regex::Grammar is PCT::Grammar;

    token ws { [ \s+ | '#' \N*\n ]* }

    token TOP {
        <nibbler>
        [ <.ws> $ || <.panic: "Syntax error"> ]
        {*}
    }

    rule nibbler {
        ['||'|'|'|'&&'|'&']?
        <termish> 
        [ ['||'|'|'] 
          [ <termish> || <.panic: "Null pattern not allowed"> ]
        ]*
        {*}
    }

    token termish {
        <.ws>
        <noun=quantified_atom>+
        {*}
    }

    token quantified_atom {
        <atom>
	<.ws>
        [ <quantifier> <.ws> ]?
        {*}
    }

    token atom {
        :dba('regex atom')
        [
        | \w [ \w+! <?before \w> ]?
        | <metachar>
        ]
        {*}
    }

    # proto token quantifier { <...> }
    token quantifier:sym<*> { $<sym>=['*'] <quantmod> {*} }
    token quantifier:sym<+> { $<sym>=['+'] <quantmod> {*} }
    token quantifier:sym<?> { $<sym>=['?'] <quantmod> {*} }

    token quantmod { ':'? [ '?' | '!' | '+' ]? {*} }

    # proto token metachar { <...> }
    token metachar:sym<[ ]> { '[' <nibbler> ']' {*} }
    token metachar:sym<.> { $<sym>=['.'] {*} }
    token metachar:sym<^> { $<sym>=['^'] {*} }
    token metachar:sym<^^> { $<sym>=['^^'] {*} }
    token metachar:sym<$> { $<sym>=['$'] {*} }
    token metachar:sym<$$> { $<sym>=['$$'] {*} }
    token metachar:sym<lwb> { $<sym>=['<<'|'«'] {*} }
    token metachar:sym<rwb> { $<sym>=['>>'|'»'] {*} }
    token metachar:sym<bs> { \\ <backslash> {*} }
    token metachar:sym<assert> { 
        '<' <assertion> 
        [ '>' || <.panic: "regex assertion not terminated by angle bracket"> ]
        {*}
    }

    # proto token backslash { <...> }
    token backslash:sym<w> { $<sym>=[<[dswnDSWN]>] {*} }
    token backslash:sym<b> { $<sym>=[<[bB]>] {*} }
    token backslash:sym<e> { $<sym>=[<[eE]>] {*} }
    token backslash:sym<f> { $<sym>=[<[fF]>] {*} }
    token backslash:sym<h> { $<sym>=[<[hH]>] {*} }
    token backslash:sym<r> { $<sym>=[<[rR]>] {*} }
    token backslash:sym<t> { $<sym>=[<[tT]>] {*} }
    token backslash:sym<v> { $<sym>=[<[vV]>] {*} }
    token backslash:sym<A> { 'A' <.obs: '\\A as beginning-of-string matcher;^'> }
    token backslash:sym<z> { 'z' <.obs: '\\z as end-of-string matcher;$'> }
    token backslash:sym<Z> { 'Z' <.obs: '\\Z as end-of-string matcher;\\n?$'> }
    token backslash:sym<Q> { 'Q' <.obs: '\\Q as quotemeta;quotes or literal variable match'> }
    token backslash:sym<misc> { \W {*} }

    # proto token assertion { <...> }

    token assertion:sym<?> { '?' [ <?before '>' > | <assertion> ] }
    token assertion:sym<!> { '!' [ <?before '>' > | <assertion> ] }

    token assertion:sym<method> {
        '.' <assertion>
    }

    token assertion:sym<name> {
        $<longname>=[\w+]
            [
            | <?before '>'>
            | '=' <assertion>
            ]?
        {*}
    }

    token assertion:sym<[> { <?before '['|'+'|'-'> <cclass_elem>+ {*} }

    token cclass_elem {
        $<sign>=['+'|'-'|<?>]
        [
        | '[' $<charspec>=(
                  | '-' <.obs: "hyphen in enumerated character class;..">
                  | [ \\ (.) | (<-[\]]>) ] [ '..' (.) ]?
              )*
          ']'
        | $<name>=[\w+]
        ]
        {*}
    }

