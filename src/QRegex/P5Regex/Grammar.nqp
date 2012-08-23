use QRegex;
use NQPHLL;
use QAST;
use PASTRegex;

grammar QRegex::P5Regex::Grammar is HLL::Grammar {
    token TOP {
        :my %*RX;
        <nibbler>
        [ $ || <.panic: 'Confused'> ]
    }

    token nibbler {
        :my $OLDRX := pir::find_dynamic_lex__Ps('%*RX');
        :my %*RX;
        {
            for $OLDRX { %*RX{$_.key} := $_.value; }
        }
        [ <.ws> ['||'|'|'|'&&'|'&'] ]?
        <termaltseq>
    }
    
    token termaltseq {
        <termish>
        [ '|' <![|]> [ <termish> || <.panic: 'Null pattern not allowed'> ] ]*
    }
    
    token termish {
        <.ws>  # XXX assuming old /x here?
        <noun=.quantified_atom>+
    }
    
    token quantified_atom {
        <atom>
        [ <.ws> <quantifier=p5quantifier> ]?
        <.ws>
    }
    
    token atom {
        [
        | \w
        | <metachar=p5metachar>
        | '\\' {} $<esc>=.
        ]
    }

    proto token p5metachar { <...> }
    
    token p5metachar:sym<quant> {
        <quantifier=p5quantifier>
        <.panic: "quantifier quantifies nothing">
    }
    token p5metachar:sym<bs> { <sym> <backslash=p5backslash> }
    token p5metachar:sym<.>  { <sym> }
    token p5metachar:sym<^>  { <sym> }
    token p5metachar:sym<$>  {
        '$' <?before \W | $>
    }
    token p5metachar:sym<[ ]> { <?before '['> <cclass> }
    
    token cclass {
        '['
        $<sign>=['^'|<?>]
        $<charspec>=(
            \s* ( '\\' <backslash> || (<-[\]\\]>) )
            [
                \s* '-' \s*
                ( '\\' <backslash> || (<-[\]\\]>) )
            ]?
        )*
        \s* ']'
    }

    proto token p5backslash { <...> }

    proto token p5assertion { <...> }

    proto token p5quantifier { <...> }
    
    token p5quantifier:sym<*>  { <sym> <quantmod> }
    token p5quantifier:sym<+>  { <sym> <quantmod> }
    token p5quantifier:sym<?>  { <sym> <quantmod> }
    token p5quantifier:sym<{ }> {
        '{' 
        $<start>=[\d+] 
        [ $<comma>=',' $<end>=[\d*] ]?
        '}' <quantmod>
    }
    
    token quantmod { [ '?' | '+' ]? }

    proto token p5mod_internal { <...> }

    token ws { [ \s+ | '#' \N* ]* }

    # XXX Below here is straight from P6Regex and unreviewed.

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

    proto token metachar { <...> }
    token metachar:sym<ws> { <.normspace> }
    token metachar:sym<[ ]> { '[' <nibbler> ']' }
    token metachar:sym<( )> { '(' <nibbler> ')' }
    token metachar:sym<'> { <?[']> <quote_EXPR: ':q'> }
    token metachar:sym<"> { <?["]> <quote_EXPR: ':qq'> }
    token metachar:sym<lwb> { $<sym>=['<<'|'«'] }
    token metachar:sym<rwb> { $<sym>=['>>'|'»'] }
    token metachar:sym<from> { '<(' }
    token metachar:sym<to>   { ')>' }
    token metachar:sym<mod> { <mod_internal> }

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
