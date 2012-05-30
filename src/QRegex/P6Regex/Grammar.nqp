use QRegex;
use NQPHLL;
use QAST;
use PASTRegex;

grammar QRegex::P6Regex::Grammar is HLL::Grammar {

    method obs ($old, $new, $when = ' in Perl 6') {
        self.panic('Unsupported use of ' ~ ~$old ~ ';'
                   ~ ~$when ~ ' please use ' ~ ~$new);
    }

    token ws { [ \s+ | '#' \N* ]* }

    token normspace { <?before \s | '#' > <.ws> }

    token identifier { <.ident> [ <[\-']> <.ident> ]* }

    token arg {
        [
        | <?[']> <quote_EXPR: ':q'>
        | <?["]> <quote_EXPR: ':qq'>
        | $<val>=[\d+]
        ]
    }

    rule arglist { <arg> [ ',' <arg>]* }

    token TOP {
        :my %*RX;
        <nibbler>
        [ $ || <.panic: 'Confused'> ]
    }

    token nibbler {
        :my %*RX := nqp::clone(pir::find_dynamic_lex__Ps('%*RX'));
        [ <.ws> ['||'|'|'|'&&'|'&'] ]?
        <termaltseq>
    }

    token termaltseq {
        <termconjseq>
        [ '||' [ <termconjseq> || <.panic: 'Null pattern not allowed'> ] ]*
    }

    token termconjseq {
        <termalt>
        [ '&&' [ <termalt> || <.panic: 'Null pattern not allowed'> ] ]*
    }

    token termalt {
        <termconj>
        [ '|' <![|]> [ <termconj> || <.panic: 'Null pattern not allowed'> ] ]*
    }

    token termconj {
        <termish>
        [ '&' <![&]> [ <termish> || <.panic: 'Null pattern not allowed'> ] ]*
    }

    token termish {
        || <noun=.quantified_atom>+
        || (\W) <.panic: "Unrecognized regex metacharacter (must be quoted to match literally)">
    }

    token quantified_atom {
        <atom>
        [
            <.ws> [ <quantifier> | <?before ':'> <backmod> <!alpha> ]
            [ <.ws> <separator> ]?
        ]?
    }

    token separator {
        $<septype>=['%''%'?] <normspace>? <quantified_atom>
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
    token quantifier:sym<{N,M}> { {} '{' (\d+) (','?) (\d*) '}'
        <.obs: '{N,M} as general quantifier', '** N..M (or ** N..*)'>
    }
    token quantifier:sym<**> {
        <sym> <normspace>? <backmod> <normspace>?
        [
        ||  $<min>=[\d+] 
            [   '..' 
                $<max>=[ 
                       || \d+ 
                       || '*' 
                       || <.panic: "Only integers or '*' allowed as range quantifier endpoint"> 
                       ] 
            ]?
        ]
    }

    token backmod { ':'? [ '?' | '!' | <!before ':'> ] }

    proto token metachar { <...> }
    token metachar:sym<ws> { <.normspace> }
    token metachar:sym<[ ]> { '[' <nibbler> ']' }
    token metachar:sym<( )> { '(' <nibbler> ')' }
    token metachar:sym<'> { <?[']> <quote_EXPR: ':q'> }
    token metachar:sym<"> { <?["]> <quote_EXPR: ':qq'> }
    token metachar:sym<.> { <sym> }
    token metachar:sym<^> { <sym> }
    token metachar:sym<^^> { <sym> }
    token metachar:sym<$> { <sym> }
    token metachar:sym<$$> { <sym> }
    token metachar:sym<:::> { <sym> <.panic: '::: not yet implemented'> }
    token metachar:sym<::> { <sym> <.panic: ':: not yet implemented'> }
    token metachar:sym<lwb> { $<sym>=['<<'|'«'] }
    token metachar:sym<rwb> { $<sym>=['>>'|'»'] }
    token metachar:sym<bs> { \\ <backslash> }
    token metachar:sym<mod> { <mod_internal> }
    token metachar:sym<quantifier> {
        <quantifier> <.panic: 'Quantifier quantifies nothing'>
    }

    ## we cheat here, really should be regex_infix:sym<~>
    token metachar:sym<~> {
        <sym>
        <.ws> <GOAL=.quantified_atom>
        <.ws> <EXPR=.quantified_atom>
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
    token backslash:sym<s> { $<sym>=[<[dDnNsSwW]>] }
    token backslash:sym<b> { $<sym>=[<[bB]>] }
    token backslash:sym<e> { $<sym>=[<[eE]>] }
    token backslash:sym<f> { $<sym>=[<[fF]>] }
    token backslash:sym<h> { $<sym>=[<[hH]>] }
    token backslash:sym<r> { $<sym>=[<[rR]>] }
    token backslash:sym<t> { $<sym>=[<[tT]>] }
    token backslash:sym<v> { $<sym>=[<[vV]>] }
    token backslash:sym<o> { $<sym>=[<[oO]>] [ <octint> | '[' <octints> ']' ] }
    token backslash:sym<x> { $<sym>=[<[xX]>] [ <hexint> | '[' <hexints> ']' ] }
    token backslash:sym<c> { $<sym>=[<[cC]>] <charspec> }
    token backslash:sym<A> { 'A' <.obs: '\\A as beginning-of-string matcher', '^'> }
    token backslash:sym<z> { 'z' <.obs: '\\z as end-of-string matcher', '$'> }
    token backslash:sym<Z> { 'Z' <.obs: '\\Z as end-of-string matcher', '\\n?$'> }
    token backslash:sym<Q> { 'Q' <.obs: '\\Q as quotemeta', 'quotes or literal variable match'> }
    token backslash:sym<unrec> { {} \w <.panic: 'Unrecognized backslash sequence'> }
    token backslash:sym<misc> { \W }

    proto token assertion { <...> }

    token assertion:sym<?> { '?' [ <?before '>' > | <assertion> ] }
    token assertion:sym<!> { '!' [ <?before '>' > | <assertion> ] }
    token assertion:sym<|> { '|' <identifier> }

    token assertion:sym<method> {
        '.' <assertion>
    }

    token assertion:sym<name> {
        <longname=.identifier>
            [
            | <?before '>'>
            | '=' <assertion>
            | ':' <arglist>
            | '(' <arglist> ')'
            | <.normspace> <nibbler>
            ]?
    }

    token assertion:sym<[> { <?before '['|'+'|'-'|':'> <cclass_elem>+ }

    token cclass_elem {
        $<sign>=['+'|'-'|<?>]
        <.normspace>?
        [
        | '[' $<charspec>=(
                  || \s* '-' <!before \s* ']'> <.obs: '- as character range','.. for range, for explicit - in character class, escape it or place as last thing'>
                  || \s* ( '\\' <backslash> || (<-[\]\\]>) )
                     [
                         \s* '..' \s*
                         ( '\\' <backslash> || (<-[\]\\]>) )
                     ]?
              )*
          \s* ']'
        | $<name>=[\w+]
        | ':' $<invert>=['!'|<?>] $<uniprop>=[\w+]
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
}
