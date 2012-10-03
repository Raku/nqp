use QRegex;
use NQPHLL;
use QAST;

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
        <alternation>
    }
    
    token alternation {
        <sequence>+ % '|'
    }
    
    token sequence {
        <.ws>  # XXX assuming old /x here?
        <quantified_atom>*
    }
    
    token quantified_atom {
        <![|)}/]>
        <atom>
        [ <.ws> <quantifier=p5quantifier> ]?
        <.ws>
    }
    
    token atom {
        [
        | \w
        | <metachar=p5metachar>
        | {} \W
        ]
    }

    proto token p5metachar { <...> }
    
    token p5metachar:sym<quant> {
        <quantifier=p5quantifier>
        <.panic: "quantifier quantifies nothing">
    }
    token p5metachar:sym<bs> { \\ <backslash=p5backslash> }
    token p5metachar:sym<.>  { <sym> }
    token p5metachar:sym<^>  { <sym> }
    token p5metachar:sym<$>  {
        '$' <?before \W | $>
    }
    token p5metachar:sym<(? )> {
        '(?' {} <assertion=p5assertion>
        [ ')' || <.panic: "Perl 5 regex assertion not terminated by parenthesis"> ]
    }
    token p5metachar:sym<( )> { '(' {} <nibbler> ')' }
    token p5metachar:sym<[ ]> { <?before '['> <cclass> }
    
    token cclass {
        :my $pastfirst := 0;
        '['
        $<sign>=['^'|<?>]
        [
        || $<charspec>=(
               \s* ( '\\' <backslash=p5backslash> || (<?{ $pastfirst == 0 }> <-[\\]> || <-[\]\\]>) )
               [
                   \s* '-' \s*
                   ( '\\' <backslash=p5backslash> || (<-[\]\\]>) )
               ]?
               { $pastfirst++ }
           )+
           \s* ']'
        || <.panic: "failed to parse character class; unescaped ']'?">
        ]
    }

    proto token p5backslash { <...> }
    
    token p5backslash:sym<b> { $<sym>=[<[bB]>] }
    token p5backslash:sym<s> { $<sym>=[<[dDnNsSwW]>] }
    token p5backslash:sym<misc> { $<litchar>=(\W) | $<number>=(\d+) }
    token p5backslash:sym<oops> { <.panic: "Unrecognized Perl 5 regex backslash sequence"> }

    proto token p5assertion { <...> }
    
    token p5mod  { <[imox]>* }
    token p5mods { <on=p5mod> [ '-' <off=p5mod> ]? }
    token p5assertion:sym<mod> {
        :my %*OLDRX := pir::find_dynamic_lex__Ps('%*RX');
        :my %*RX;
        {
            for %*OLDRX { %*RX{$_.key} := $_.value; }
        }
        <mods=p5mods>
        [
        | ':' <nibbler>?
        | <?before ')' >
        ]
    }

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
    token metachar:sym<'> { <?[']> <quote_EXPR: ':q'> }
    token metachar:sym<"> { <?["]> <quote_EXPR: ':qq'> }
    token metachar:sym<lwb> { $<sym>=['<<'|'«'] }
    token metachar:sym<rwb> { $<sym>=['>>'|'»'] }
    token metachar:sym<from> { '<(' }
    token metachar:sym<to>   { ')>' }
    token metachar:sym<mod> { <mod_internal> }

    token metachar:sym<var> {
        [
        | '$<' $<name>=[<-[>]>+] '>'
        | '$' $<pos>=[\d+]
        ]

        [ <.ws> '=' <.ws> <quantified_atom> ]?
    }

    proto token backslash { <...> }
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

    proto token assertion { <...> }

    token assertion:sym<?> { '?' [ <?before '>' > | <assertion> ] }
    token assertion:sym<!> { '!' [ <?before '>' > | <assertion> ] }

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
