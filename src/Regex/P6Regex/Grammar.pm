grammar Regex::P6Regex::Grammar is PCT::Grammar;

    token TOP {
        <nibbler>
        [ <.ws> $ || <.panic: "Syntax error"> ]
        {*}
    }

    token nibbler {
        <termish> [ <.ws> [ '||' | '|' ] <termish> ]*
        {*}
    }

    token termish {
        <.ws>
        <noun=quantified_atom>+
        {*}
    }

    token quantified_atom {
        <atom>
        <quantifier>?
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
    token quantifier:sym<*> { $<sym>:=['*'] <quantmod> {*} }
    token quantifier:sym<+> { $<sym>:=['+'] <quantmod> {*} }
    token quantifier:sym<?> { $<sym>:=['?'] <quantmod> {*} }

    token quantmod { ':'? [ '?' | '!' | '+' ]? {*} }

    # proto token metachar { <...> }
    token metachar:sym<[ ]> { '[' <nibbler> ']' {*} }
    token metachar:sym<.> { $<sym>:=['.'] {*} }
    token metachar:sym<^> { $<sym>:=['^'] {*} }
    token metachar:sym<^^> { $<sym>:=['^^'] {*} }
    token metachar:sym<$> { $<sym>:=['$'] {*} }
    token metachar:sym<$$> { $<sym>:=['$$'] {*} }
    token metachar:sym<bs> { \\ <backslash> {*} }

    # proto token backslash { <...> }
    token backslash:sym<w> { :i w {*} }
