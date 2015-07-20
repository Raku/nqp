use QRegex;
use NQPHLL;
use QAST;

class QRegex::P6Regex::World is HLL::World {
    method create_code($ast, $name) {
        # Create a fresh stub code, and set its name.
        my $dummy := nqp::freshcoderef(-> { nqp::die("Uncompiled code executed") });
        nqp::setcodename($dummy, $name);

        # Tag it as a static code ref and add it to the root code refs set.
        nqp::markcodestatic($dummy);
        self.add_root_code_ref($dummy, $ast);
        
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
            QAST::BVal.new( :value($ast) )
        ));
        $fixups.push(QAST::Op.new(
            :op('setcodeobj'),
            QAST::BVal.new( :value($ast) ),
            QAST::WVal.new( :value($code_obj) )
        ));
        self.add_fixup_task(:fixup_ast($fixups));

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

    method throw_malformed_range() {
        self.panic('Malformed range.');
    }

    method throw_confused() {
        self.panic('Confused.');
    }

    method throw_unspace($char) {
        self.panic: "No unspace allowed in regex; " ~ 
            " if you meant to match the literal character," ~ 
            " please enclose in single quotes ('" 
            ~ $char ~ "') or use a backslashed form like \\x" 
            ~ nqp::sprintf('%02x', [nqp::ord($char)]);
    }

    method throw_regex_not_terminated() {
        self.panic('Regex not terminated.');
    }

    method throw_spaces_in_bare_range() {
        self.panic('Spaces not allowed in bare range.');
    }

    method throw_solitary_quantifier() {
        self.panic('Quantifier quantifies nothing.');
    }

    method throw_solitary_backtrack_control() {
        self.panic("Backtrack control ':' does not seem to have a preceding atom to control");
    }

    method throw_null_pattern() {
        self.panic('Null regex not allowed');
    }

    method worry(*@args) {
        nqp::printfh(nqp::getstderr(), nqp::join('', @args) ~ "\n");
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
        [ $ || <.throw_confused> ]
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
          <!rxstopper>
          [
          |  '||' { $*SEQ := 1; }
          |  '|'
          |  '&&'
          |  '&'
          ] <.ws>
        ]?
        <termseq>
        [
        || <?infixstopper>
        || $$ <.throw_regex_not_terminated>
        || (\W) { self.throw_unrecognized_metachar: ~$/[0] }
        || <.throw_regex_not_terminated>
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

    # XXX Eventually squish termseq and termish and
    # get < || && | & > infixes using by EXPR in nibbler
    token termseq {
        <termaltseq>
    }

    token termaltseq {
        <termconjseq>
        [ <!infixstopper> '||' <.ws> { $*SEQ := 1; } <termconjseq> ]*
    }

    token termconjseq {
        <termalt>
        [ <!infixstopper> '&&' <.ws> { $*SEQ := 0; } <termalt> ]*
    }

    token termalt {
        <termconj>
        [ <!infixstopper> '|' <![|]> <.ws> { $*SEQ := 0; } <termconj> ]*
    }

    token termconj {
        <termish>
        [ <!infixstopper> '&' <![&]> <.ws> { $*SEQ := 0; } <termish> ]*
    }

    token termish {
        :my $*SIGOK  := 0;
        :my $*VARDEF := 0;
        [
        || <noun=.quantified_atom>+
        || <?before <rxstopper> | <[&|~]> > <.throw_null_pattern>
        || <?before <infixstopper> > <.throw_null_pattern> # XXX Check if unmatched bracket
        || $$ <.throw_regex_not_terminated>
        || (\W) { self.throw_unrecognized_metachar: ~$/[0] }
        || <.throw_regex_not_terminated>
        ]
    }

    method SIGOK() { $*SIGOK := %*RX<s>; self }

    token quantified_atom {
        <!rxstopper>
        <atom>
        [
        ||  <sigmaybe>?
            [
            | <!rxstopper> <quantifier>
            | <?[:]> <backmod> <!alnum>
            ]
            [ <!{$*VARDEF}> <.SIGOK> <sigfinal=.sigmaybe> ]?
            [ <.ws> <separator> ]?
        ||  [ <!{$*VARDEF}> <sigfinal=.sigmaybe> ]?
        ]
        { $*SIGOK := 0 }
    }

    rule separator {
        $<septype>=['%''%'?]
        :my $*VARDEF := 0;
        :my $*SIGOK  := 0;
        <quantified_atom>
    }
    
    token atom {
        # :dba('regex atom')
        [
        | \w
          [ <?before ' ' \w> <!{ %*RX<s> || $*HAS_GOAL }> <.worry("Space is not significant here; please use quotes or :s (:sigspace) modifier (or, to suppress this warning, omit the space, or otherwise change the spacing)")> ]?
          <.SIGOK>
        | <metachar>
        ]
    }

    proto token sigmaybe { <...> }

    token sigmaybe:sym<normspace> {
        <!{$*SIGOK}> <normspace>
    }

    token sigmaybe:sym<sigwhite> {
        <?{$*SIGOK}> <normspace>
    }

    proto token quantifier { <...> }
    token quantifier:sym<%> {
	('%''%'?) {
	    $/.CURSOR.panic("Missing quantifier on the left argument of " ~ $/[0]);
	}
    }
    token quantifier:sym<*> { <sym> <backmod> }
    token quantifier:sym<+> { <sym> <backmod> }
    token quantifier:sym<?> { <sym> <backmod> }
    token quantifier:sym<{N,M}> { {} '{' (\d+) (','?) (\d*) '}'
        <.obs: '{N,M} as general quantifier', '** N..M (or ** N..*)'>
    }
    token quantifier:sym<**> {
        <sym> <.normspace>? <backmod> <.normspace>?
        [
        | <min=.integer> \s+ '..' <.throw_spaces_in_bare_range>
        | <min=.integer>
          [ '..'
            [
            | <max=.integer> {
                $/.CURSOR.panic("Negative numbers are not allowed as quantifiers") if $<max>.Str < 0;
              }
            | $<max>=['*']
            | <.throw_malformed_range>
            ]
          ]?
          { $/.CURSOR.panic("Negative numbers are not allowed as quantifiers") if $<min>.Str < 0 }
        | <?[{]> <codeblock>
        ]
    }

    token codeblock {
        <block=.LANG('MAIN','pblock')>
    }

    token backmod { ':'? [ '?' | '!' | <!before ':'> ] }

    proto token metachar { <...> }
    token metachar:sym<[ ]> { '[' ~ ']' <nibbler> <.SIGOK> }
    token metachar:sym<( )> { '(' ~ ')' <nibbler> <.SIGOK> }
    token metachar:sym<'> { <?['‘‚]> <quote_EXPR: ':q'>  <.SIGOK> }
    token metachar:sym<"> { <?["“„]> <quote_EXPR: ':qq'> <.SIGOK> }
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
        <!rxstopper> <quantifier> <.throw_solitary_quantifier>
    }

    ## we cheat here, really should be regex_infix:sym<~>
    token metachar:sym<~> {
	:my $*HAS_GOAL := 1;
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

        [
            <.ws> '=' <.ws>
            { $*VARDEF := 1 }
            <quantified_atom>
            { $*VARDEF := 0 }
        ]**0..1
        <.SIGOK>
    }

    token metachar:sym<:> {
        <sym> <?before \s> <.throw_solitary_backtrack_control>
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
    token backslash:sym<0> { $<sym>=['0'] }
    token backslash:sym<A> { 'A' <.obs: '\\A as beginning-of-string matcher', '^'> }
    token backslash:sym<z> { 'z' <.obs: '\\z as end-of-string matcher', '$'> }
    token backslash:sym<Z> { 'Z' <.obs: '\\Z as end-of-string matcher', '\\n?$'> }
    token backslash:sym<Q> { 'Q' <.obs: '\\Q as quotemeta', 'quotes or literal variable match'> }
    token backslash:sym<unrec> { {} (\w) { self.throw_unrecog_backslash_seq: $/[0].Str } }
    token backslash:sym<unsp> {
        \s {}
        <.throw_unspace(~$/)>
    }
    token backslash:sym<misc> { \W }

    proto token cclass_backslash { <...> }
    token cclass_backslash:sym<s> { $<sym>=[<[dDnNsSwW]>] }
    token cclass_backslash:sym<b> { $<sym>=[<[bB]>] }
    token cclass_backslash:sym<e> { $<sym>=[<[eE]>] }
    token cclass_backslash:sym<f> { $<sym>=[<[fF]>] }
    token cclass_backslash:sym<h> { $<sym>=[<[hH]>] }
    token cclass_backslash:sym<n> { $<sym>=[<[nN]>] }
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
            ]?
    }

    token assertion:sym<[> { <?before '['|'+'|'-'|':'> <cclass_elem>+ }

    token cclass_elem {
        :my $*key;
        $<sign>=['+'|'-'|<?>]
        <.normspace>?
        [
        | '[' $<charspec>=(
                  || [ <!after '[' > \s* '-' <!before \s* ']'> ] <.obs: '- as character range','.. for range, for explicit - in character class, escape it or place it as the first or last thing'>
                  || \s* ( '\\' <cclass_backslash> || (<-[\]\\]>) )
                     [
                         \s* '..' \s*
                         ( '\\' <cclass_backslash> || (<-[\]\\]>) )
                     ]**0..1
              )*
              {
                  my %seen;
                  for $<charspec> {
                      %seen{$_[0][0]} := (%seen{$_[0][0]} // 0) + 1 if nqp::defined($_[0][0]);
                      %seen{$_[1][0]} := (%seen{$_[1][0]} // 0) + 1 if nqp::defined($_[1][0]);
                  }
                  for %seen {
                      next if $_.value < 2;
                      self.worry("Quotes are not metacharacters in character classes") if $_.key eq '"' || $_.key eq "'";
                      self.worry("Repeated character (" ~ $_.key ~ ") unexpectedly found in character class");
                  }
              }
          \s* ']'
        | $<name>=[\w+]
        | ':' $<invert>=['!'|<?>] <identifier> { $*key := $<identifier>.Str }
            [
            || <coloncircumfix=.LANG('MAIN','coloncircumfix', $*key)>
            || <?>
            ]
        ]
        <.normspace>?
    }

    token mod_internal {
	':'
        [
        | <?before '!'> $<n>=('!')**1  <mod_ident> »
        | <?before \d>  $<n>=(\d+)**1  <mod_ident> »
        | <mod_ident>
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
    token mod_ident:sym<ignoremark> {
        [
        | $<sym>=[m]
        | 'ignore' $<sym>=[m] 'ark'
        ] »
    }
    token mod_ident:sym<ratchet>    { $<sym>=[r] 'atchet'? » }
    token mod_ident:sym<sigspace>   { $<sym>=[s] 'igspace'? » }
    token mod_ident:sym<dba>        { <sym> » }
    token mod_ident:sym<oops>       { {} (\D+) { $/.CURSOR.panic('Unrecognized regex modifier :' ~ $/[0].Str) } }
}
