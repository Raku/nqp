use QRegex;
use NQPHLL;
use QAST;

class QRegex::P6Regex::World is HLL::World {
    method create_code($past, $name) {
        # Create a fresh stub code, and set its name.
        my $dummy := pir::nqp_fresh_stub__PP(-> { nqp::die("Uncompiled code executed") });
        pir::assign__vPS($dummy, $name);

        # Tag it as a static code ref and add it to the root code refs set.
        pir::setprop__vPsP($dummy, 'STATIC_CODE_REF', $dummy);
        self.add_root_code_ref($dummy, $past);
        
        # Create code object.
        my $code_obj := nqp::create(NQPRegex);
        nqp::bindattr($code_obj, NQPRegex, '$!do', $dummy);
        my $slot := self.add_object($code_obj);
            
        # Add fixup of the code object and the $!do attribute.
        my $fixups := QAST::Stmt.new();
        $fixups.push(QAST::Op.new(
            :op('bindattr'),
            QAST::WVal.new( :value($code_obj) ),
            QAST::WVal.new( :value(NQPRegex) ),
            QAST::SVal.new( :value('$!do') ),
            QAST::BVal.new( :value($past) )
        ));
        $fixups.push(QAST::Op.new(
            :op('setcodeobj'),
            QAST::BVal.new( :value($past) ),
            QAST::WVal.new( :value($code_obj) )
        ));
        self.add_fixup_task(:fixup_past($fixups));

        $code_obj
    }
}

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
        :my $*W := QRegex::P6Regex::World.new(:handle(nqp::sha1(self.target)));
        <nibbler>
        [ $ || <.panic: 'Confused'> ]
    }

    token nibbler {
        :my $OLDRX := nqp::getlexdyn('%*RX');
        :my %*RX;
        {
            for $OLDRX { %*RX{$_.key} := $_.value; }
        }
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
        || (\W) {
            my $char := ~$/[0];
            $/.CURSOR.panic("Unrecognized regex metacharacter $char (must be quoted to match literally)")
            }
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
    token metachar:sym<from> { '<(' }
    token metachar:sym<to>   { ')>' }
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
        | ':' <mod_ident>
            [
            '('
                [
                | $<n>=[\d+]
                | <?[']> <quote_EXPR: ':q'>
                | <?["]> <quote_EXPR: ':qq'>
                ]
                ')'
            ]?
        ]
    }

    proto token mod_ident { <...> }
    token mod_ident:sym<ignorecase> { $<sym>=[i] 'gnorecase'? » }
    token mod_ident:sym<ratchet>    { $<sym>=[r] 'atchet'? » }
    token mod_ident:sym<sigspace>   { $<sym>=[s] 'igspace'? » }
    token mod_ident:sym<dba>        { <sym> » }
    token mod_ident:sym<oops>       { {} (\w+) { $/.CURSOR.panic('Unrecognized regex modifier :' ~ $/[0].Str) } }
}
