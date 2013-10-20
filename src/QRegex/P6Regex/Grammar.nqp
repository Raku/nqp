use QRegex;
use NQPHLL;
use QAST;

class QRegex::P6Regex::World is HLL::World {
    method create_code($past, $name) {
        # Create a fresh stub code, and set its name.
        my $dummy := nqp::freshcoderef(-> { nqp::die("Uncompiled code executed") });
        nqp::setcodename($dummy, $name);

        # Tag it as a static code ref and add it to the root code refs set.
        nqp::markcodestatic($dummy);
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

    # errors are reported through methods, so that subclasses like Rakudo's
    # Perl6::RegexGrammar can override them, and throw language-specific
    # exceptions
    method throw_unrecognized_metachar ($char) {
        self.panic('Unrecognized regex metacharacter ' ~ $char ~ ' (must be quoted to match literally)');
    }

    method throw_null_pattern() {
        self.panic('Null regex not allowed');
    }

    token ws { [ \s+ | '#' \N* ]* }

    token normspace { <?[\s#]> <.ws> }

    token identifier { <.ident> [ <[\-']> <.ident> ]* }

    token arg {
        [
        | <?[']> <quote_EXPR: ':q'>
        | <?["]> <quote_EXPR: ':qq'>
        | $<val>=[\d+]
        ]
    }

    rule arglist { '' <arg> +% [',' ] }

    my $cur_handle := 0;
    token TOP {
        :my %*RX;
        :my $handle := '__QREGEX_P6REGEX__' ~ $cur_handle++;
        :my $*W := QRegex::P6Regex::World.new(:$handle);
        <nibbler>
        [ $ || <.panic: 'Confused'> ]
    }

    token nibbler {
        :my $OLDRX := nqp::getlexdyn('%*RX');
        :my %*RX;
        :my $*SEQ := 0;
        {
            for $OLDRX { %*RX{$_.key} := $_.value; }
        }
        <.ws>
        [
          [
          |  '||' { $*SEQ := 1; }
          |  '|'
          |  '&&'
          |  '&'
          ] <.ws>
        ]?
        <termaltseq>
        [
        || <?infixstopper>
        || $$ <.panic: "Regex not terminated">
        || (\W) { self.throw_unrecognized_metachar: ~$/[0] }
        || <.panic: "Regex not terminated">
        ]
    }
    
    regex infixstopper {
        :dba('infix stopper')
        [
        | <?before <[\) \} \]]> >
        | <?before '>' <-[>]> >
        | <?rxstopper>
        ]
    }
    
    token rxstopper { $ }

    token termaltseq {
        <termconjseq>
        [ '||' <.ws> [  { $*SEQ := 1; } <termconjseq> || <.throw_null_pattern> ] ]*
    }

    token termconjseq {
        <termalt>
        [ '&&' <.ws> [ { $*SEQ := 0; } <termalt> || <.throw_null_pattern> ] ]*
    }

    token termalt {
        <termconj>
        [ <!rxstopper> '|' <![|]> <.ws> [ { $*SEQ := 0; } <termconj> || <.throw_null_pattern> ] ]*
    }

    token termconj {
        <termish>
        [ <!rxstopper> '&' <![&]> <.ws> [ { $*SEQ := 0; } <termish> || <.throw_null_pattern> ] ]*
    }

    token termish {
        :my $*SIGOK := 0;
        [
        || <noun=.quantified_atom>+
        || <?before <stopper> | <[&|~]> > <.throw_null_pattern>
        ]
    }

    method SIGOK() { $*SIGOK := %*RX<s>; self }

    token quantified_atom {
        <!rxstopper>
        <atom> <sigmaybe>
        [
            [
            | <!rxstopper> <quantifier> <sigfinal=.sigmaybe>
            | <?before ':'> <backmod> <!alpha>
            ]
            [ <separator> ]**0..1
        ]**0..1
    }

    token separator {
        $<septype>=['%''%'?] <normspace>**0..1 <quantified_atom>
    }
    
    token atom {
        # :dba('regex atom')
        [
        | \w [ \w+! <?before \w> ]? <.SIGOK>
        | <metachar>
        ]
    }

    proto token sigmaybe { <...> }

    token sigmaybe:sym<normspace> {
        <!{$*SIGOK}> <normspace>
    }

    token sigmaybe:sym<sigwhite> {
        <?{$*SIGOK}> <normspace>
        { $*SIGOK := 0 }
    }

    token sigmaybe:sym<nosp> { <?[\S]> }

    proto token quantifier { <...> }
    token quantifier:sym<*> { <sym> <backmod> }
    token quantifier:sym<+> { <sym> <backmod> }
    token quantifier:sym<?> { <sym> <backmod> }
    token quantifier:sym<{N,M}> { {} '{' (\d+) (','?) (\d*) '}'
        <.obs: '{N,M} as general quantifier', '** N..M (or ** N..*)'>
    }
    token quantifier:sym<**> {
        <sym> <normspace>**0..1 <backmod> <normspace>**0..1
        [
        | <.decint> \s+ '..' <.panic: "Spaces not allowed in bare range">
        | <min=.decint>
          [ '..'
            [
            | <max=.decint> {
                $/.CURSOR.panic("Negative numbers are not allowed as quantifiers") if $<max>.Str < 0;
              }
            | $<max>=['*']
            | <.panic: "Malformed range">
            ]
          ]?
          { $/.CURSOR.panic("Negative numbers are not allowed as quantifiers") if $<min>.Str < 0 }
        | <?[{]> { $/.CURSOR.panic("Block case of ** quantifier not yet implemented") }
        ]
    }

    token backmod { ':'? [ '?' | '!' | <!before ':'> ] }

    proto token metachar { <...> }
    token metachar:sym<[ ]> { '[' ~ ']' <nibbler> <.SIGOK> }
    token metachar:sym<( )> { '(' ~ ')' <nibbler> <.SIGOK> }
    token metachar:sym<'> { <?[']> <quote_EXPR: ':q'>  <.SIGOK> }
    token metachar:sym<"> { <?["]> <quote_EXPR: ':qq'> <.SIGOK> }
    token metachar:sym<.> { <sym> <.SIGOK> }
    token metachar:sym<^> { <sym> <.SIGOK> }
    token metachar:sym<^^> { <sym> <.SIGOK> }
    token metachar:sym<$> { <sym> <.SIGOK> }
    token metachar:sym<$$> { <sym> <.SIGOK> }
    token metachar:sym<:::> { <sym> <.panic: '::: not yet implemented'> }
    token metachar:sym<::> { <sym> <.panic: ':: not yet implemented'> }
    token metachar:sym<lwb> { $<sym>=['<<'|'«'] <.SIGOK> }
    token metachar:sym<rwb> { $<sym>=['>>'|'»'] <.SIGOK> }
    token metachar:sym<from> { '<(' <.SIGOK> }
    token metachar:sym<to>   { ')>' <.SIGOK> }
    token metachar:sym<bs> { \\ <backslash> <.SIGOK> }
    token metachar:sym<mod> { <mod_internal> }
    token metachar:sym<quantifier> {
        <!rxstopper> <quantifier> <.panic: 'Quantifier quantifies nothing'>
    }

    ## we cheat here, really should be regex_infix:sym<~>
    token metachar:sym<~> {
        <sym>
        <.ws> <GOAL=.quantified_atom>
        <.ws> <EXPR=.quantified_atom>
    }

    token metachar:sym<{*}> {
        <sym>
        [ \h* '#= ' \h* $<key>=[\S+ [\h+ \S+]*] ]**0..1
    }
    token metachar:sym<assert> {
        '<' ~ '>' <assertion> <.SIGOK>
    }

    token sigil { <[$@%&]> }

    token metachar:sym<var> {
        [
        | '$<' $<name>=[<-[>]>+] '>'
        | '$' $<pos>=[\d+]
        ]

        [ <.ws> '=' <.ws> <quantified_atom> ]**0..1
        <.SIGOK>
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
    token backslash:sym<unrec> { {} (\w) { self.throw_unrecog_backslash_seq: $/[0].Str } }
    token backslash:sym<unsp> { [\s|'#'] <.panic: 'Unspace not allowed in regex'> }
    token backslash:sym<misc> { \W }

    proto token cclass_backslash { <...> }
    token cclass_backslash:sym<s> { $<sym>=[<[dDnNsSwW]>] }
    token cclass_backslash:sym<b> { $<sym>=[<[bB]>] }
    token cclass_backslash:sym<e> { $<sym>=[<[eE]>] }
    token cclass_backslash:sym<f> { $<sym>=[<[fF]>] }
    token cclass_backslash:sym<h> { $<sym>=[<[hH]>] }
    token cclass_backslash:sym<r> { $<sym>=[<[rR]>] }
    token cclass_backslash:sym<t> { $<sym>=[<[tT]>] }
    token cclass_backslash:sym<v> { $<sym>=[<[vV]>] }
    token cclass_backslash:sym<o> { $<sym>=[<[oO]>] [ <octint> | '[' <octints> ']' ] }
    token cclass_backslash:sym<x> { $<sym>=[<[xX]>] [ <hexint> | '[' <hexints> ']' ] }
    token cclass_backslash:sym<c> { $<sym>=[<[cC]>] <charspec> }
    token cclass_backslash:sym<any> { . }

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
            ]**0..1
    }

    token assertion:sym<[> { <?before '['|'+'|'-'|':'> <cclass_elem>+ }

    token cclass_elem {
        $<sign>=['+'|'-'|<?>]
        <.normspace>?
        [
        | '[' $<charspec>=(
                  || \s* '-' <!before \s* ']'> <.obs: '- as character range','.. for range, for explicit - in character class, escape it or place as last thing'>
                  || \s* ( '\\' <cclass_backslash> || (<-[\]\\]>) )
                     [
                         \s* '..' \s*
                         ( '\\' <cclass_backslash> || (<-[\]\\]>) )
                     ]**0..1
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
            ]**0..1
        ]
        {
            if !$<quote_EXPR> {
                my $n := $<n>[0] gt '' ?? +$<n>[0] !! 1;
                %*RX{ ~$<mod_ident><sym> } := $n;
            }
        }
    }

    proto token mod_ident { <...> }
    token mod_ident:sym<ignorecase> { $<sym>=[i] 'gnorecase'? » }
    token mod_ident:sym<ratchet>    { $<sym>=[r] 'atchet'? » }
    token mod_ident:sym<sigspace>   { $<sym>=[s] 'igspace'? » }
    token mod_ident:sym<dba>        { <sym> » }
    token mod_ident:sym<oops>       { {} (\w+) { $/.CURSOR.panic('Unrecognized regex modifier :' ~ $/[0].Str) } }
}
