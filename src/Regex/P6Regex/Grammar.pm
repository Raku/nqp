grammar Regex::P6Regex::Grammar is HLL::Grammar;

    method obs ($old, $new, $when = 'in Perl 6') {
        self.panic('Obsolete use of ' ~ ~$old ~ ';' 
                   ~ ~$when ~ ' please use ' ~ ~$new ~ 'instead');
    }

    token ws { [ \s+ | '#' \N* ]* }

    token normspace { <?before \s | '#' > <.ws> }

    token quote { \' $<val>=[<-[']>*] \' }

    token arg { 
        [
        | <quote>
        | $<value>=[\d+]
        ]
    }

    rule arglist { <arg> [ ',' <arg> ]* }

    token TOP {
        <nibbler>
        [ $ || <.panic: 'Confused'> ]
    }

    token nibbler {
        {*} #= open
        [ <.ws> ['||'|'|'|'&&'|'&'] ]?
        <termish> 
        [ ['||'|'|'] 
          [ <termish> || <.panic: 'Null pattern not allowed'> ]
        ]*
    }

    token termish {
        <noun=quantified_atom>+
    }

    token quantified_atom {
        <atom> [ <.ws> [ <quantifier> | <?before ':'> <backmod> <!alpha> ] ]?
    }

    token atom {
        # :dba('regex atom')
        [
        | \w [ \w+! <?before \w> ]?
        | <metachar>
        ]
    }

    proto token quantifier { <...> }
    token quantifier:sym<*> { <sym> <backmod> }
    token quantifier:sym<+> { <sym> <backmod> }
    token quantifier:sym<?> { <sym> <backmod> }
    token quantifier:sym<**> { 
        <sym> \s* <backmod> \s*
        [
        || $<min>=[\d+] [ '..' $<max>=[\d+|'*'] ]?
        || <quantified_atom>
        ]
    }

    token backmod { ':'? [ '?' | '!' | <!before ':'> ] }

    proto token metachar { <...> }
    token metachar:sym<ws> { <.normspace> }
    token metachar:sym<[ ]> { '[' <nibbler> ']' }
    token metachar:sym<( )> { '(' <nibbler> ')' }
    token metachar:sym<'> { <quote> }
    token metachar:sym<.> { <sym> }
    token metachar:sym<^> { <sym> }
    token metachar:sym<^^> { <sym> }
    token metachar:sym<$> { <sym> }
    token metachar:sym<$$> { <sym> }
    token metachar:sym<:::> { <sym> }
    token metachar:sym<::> { <sym> }
    token metachar:sym<lwb> { $<sym>=['<<'|'«'] }
    token metachar:sym<rwb> { $<sym>=['>>'|'»'] }
    token metachar:sym<bs> { \\ <backslash> }
    token metachar:sym<mod> { <mod_internal> }

    ## we cheat here, really should be regex_infix:sym<~>
    token metachar:sym<~> { 
        <sym> 
        <.ws> <GOAL=quantified_atom> 
        <.ws> <EXPR=quantified_atom>
    }

    token metachar:sym<{*}> { 
        <sym> 
        [ \h* '#= ' \h* $<key>=[\S+ [\h+ \S+]*] ]?
    }
    token metachar:sym<assert> { 
        '<' <assertion> 
        [ '>' || <.panic: 'regex assertion not terminated by angle bracket'> ]
    }

    token metachar:sym<var> {
        [ 
        | '$<' $<name>=[<-[>]>+] '>' 
        | '$' $<pos>=[\d+]
        ]

        [ <.ws> '=' <.ws> <quantified_atom> ]?
    }

    token metachar:sym<PIR> {
        ':PIR{{' $<pir>=[.*?] '}}'
    }

    proto token backslash { <...> }
    token backslash:sym<w> { $<sym>=[<[dswnDSWN]>] }
    token backslash:sym<b> { $<sym>=[<[bB]>] }
    token backslash:sym<e> { $<sym>=[<[eE]>] }
    token backslash:sym<f> { $<sym>=[<[fF]>] }
    token backslash:sym<h> { $<sym>=[<[hH]>] }
    token backslash:sym<r> { $<sym>=[<[rR]>] }
    token backslash:sym<t> { $<sym>=[<[tT]>] }
    token backslash:sym<v> { $<sym>=[<[vV]>] }
    token backslash:sym<x> { $<sym>=[<[xX]>] [ <hexint> | '[' <hexints> ']' ] }
    token backslash:sym<A> { 'A' <.obs: '\\A as beginning-of-string matcher', '^'> }
    token backslash:sym<z> { 'z' <.obs: '\\z as end-of-string matcher', '$'> }
    token backslash:sym<Z> { 'Z' <.obs: '\\Z as end-of-string matcher', '\\n?$'> }
    token backslash:sym<Q> { 'Q' <.obs: '\\Q as quotemeta', 'quotes or literal variable match'> }
    token backslash:sym<misc> { \W }

    proto token assertion { <...> }

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
            | ':' <arglist>
            | '(' <arglist> ')'
            | <.normspace> <nibbler>
            ]?
    }

    token assertion:sym<[> { <?before '['|'+'|'-'> <cclass_elem>+ }

    token cclass_elem {
        $<sign>=['+'|'-'|<?>]
        <.normspace>?
        [
        | '[' $<charspec>=(
                  | \s* '-' <.obs: 'hyphen in enumerated character class','..'>
                  | \s* [ \\ (.) | (<-[\]\\]>) ] [ \s* '..' \s* (.) ]?
              )*
          \s* ']'
        | $<name>=[\w+]
        ]
        <.normspace>?
    }

    token mod_internal { 
        [
        | ':' $<n>=('!' | \d+)**1  <mod_ident> » 
        | ':' <mod_ident> [ '(' $<n>=[\d+] ')' ]?
        ]
    }

    proto token mod_ident { <...> }
    token mod_ident:sym<ignorecase> { $<sym>=[i] 'gnorecase'? }
    token mod_ident:sym<ratchet>    { $<sym>=[r] 'atchet'? }
    token mod_ident:sym<sigspace>   { $<sym>=[s] 'igspace'? }
