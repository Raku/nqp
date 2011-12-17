grammar NQP::Grammar is HLL::Grammar {
    method TOP() {
        # Language braids.
        my %*LANG;
        %*LANG<Regex>         := NQP::Regex;
        %*LANG<Regex-actions> := NQP::RegexActions;
        %*LANG<MAIN>          := NQP::Grammar;
        %*LANG<MAIN-actions>  := NQP::Actions;

        # Package declarator to meta-package mapping. Note that there is
        # one universal KnowHOW from the 6model core, and an attribute
        # meta-object to go with it.
        my %*HOW;
        %*HOW<knowhow>      := pir::get_knowhow__P();
        %*HOW<knowhow-attr> := pir::get_knowhow_attribute__P();
        
        # Serialization context builder - keeps track of objects that
        # cross the compile-time/run-time boundary that are associated
        # with this compilation unit.
        my $file := pir::find_caller_lex__ps('$?FILES');
        my $*SC := pir::isnull($file) ??
            NQP::World.new(:handle(~pir::time__N())) !!
            NQP::World.new(:handle(~pir::time__N()), :description($file));

        my $*SCOPE       := '';
        my $*MULTINESS   := '';
        my $*PKGDECL     := '';
        my $*INVOCANT_OK := 0;
        my $*RETURN_USED := 0;
        self.comp_unit;
    }

    ## Lexer stuff

    token identifier { <.ident> [ <[\-']> <.ident> ]* }

    token name { <identifier> ** '::' }

    token deflongname {
        <identifier> <colonpair>?
    }

    token ENDSTMT {
        [ 
        | \h* $$ <.ws> <?MARKER('endstmt')>
        | <.unv>? $$ <.ws> <?MARKER('endstmt')>
        ]?
    }

    token ws {
        ||  <?MARKED('ws')>
        ||  <!ww>
            [ \v+
            | '#' \N*
            | ^^ <.pod_comment>
            | \h+
            ]*
            <?MARKER('ws')>
    }

    token unv {
        # :dba('horizontal whitespace')
        [
        | ^^ <?before \h* '=' [ \w | '\\'] > <.pod_comment>
        | \h* '#' \N*
        | \h+
        ]
    }

    token pod_comment {
        ^^ \h* '='
        [
        | 'begin' \h+ 'END' >>
            [ .*? \n \h* '=' 'end' \h+ 'END' » \N* || .* ]
        | 'begin' \h+ <identifier>
            [
            ||  .*? \n \h* '=' 'end' \h+ $<identifier> » \N*
            ||  <.panic: '=begin without matching =end'>
            ]
        | 'begin' » \h*
            [ $$ || '#' || <.panic: 'Unrecognized token after =begin'> ]
            [
            || .*? \n \h* '=' 'end' » \N*
            || <.panic: '=begin without matching =end'>
            ]
        | <identifier>
            .*? ^^ <?before \h* [ 
                '='
                [ 'cut' »
                  <.panic: 'Obsolete pod format, please use =begin/=end instead'> ]?
              | \n ]>
        |
            [ \s || <.panic: 'Illegal pod directive'> ]
            \N*
        ]
    }


    ## Top-level rules

    token comp_unit {
        :my $*IN_DECL := '';

        :my $*HAS_YOU_ARE_HERE := 0;
        :my $*MAIN_SUB;
        <.newpad>
        
        :my $*PACKAGE;
        :my $*GLOBALish;
        <.GLOBALish>
        
        <.outerctx>
        
        <statementlist>
        [ $ || <.panic: 'Confused'> ]
    }

    rule statementlist {
        | $
        | [<statement><.eat_terminator> ]*
    }

    token statement {
        <!before <[\])}]> | $ >
        [
        | <statement_control>
        | <EXPR> <.ws>
            [
            || <?MARKED('endstmt')>
            || <statement_mod_cond> <statement_mod_loop>?
            || <statement_mod_loop>
            ]?
        ]
    }

    token eat_terminator {
        | ';'
        | <?MARKED('endstmt')>
        | <?terminator>
        | $
    }

    token xblock {
        <EXPR> <.ws> <pblock>
    }

    token pblock {
        | <.lambda>
            <.newpad>
            <signature>
            <blockoid>
        | <?[{]>
            <.newpad>
            <blockoid>
        | <.panic: 'Missing block'>
    }

    token lambda { '->' | '<->' }

    token block {
        [ <?[{]> || <.panic: 'Missing block'> ]
        <.newpad>
        <blockoid>
    }

    token blockoid {
        <.finishpad>
        [
        || '{YOU_ARE_HERE}' <you_are_here>
        || '{' ~ '}' <statementlist>
        ]
        <?ENDSTMT>
    }

    token newpad { <?> }
    token outerctx { <?> }
    token GLOBALish { <?> }
    token finishpad { <?> }
    token you_are_here { <?> }

    proto token terminator { <...> }

    token terminator:sym<;> { <?[;]> }
    token terminator:sym<}> { <?[}]> }

    ## Statement control

    proto token statement_control { <...> }

    token statement_control:sym<use> {
        <sym> \s :s <name>
    }

    token statement_control:sym<if> {
        <sym> \s :s
        <xblock>
        [ 'elsif'\s <xblock> ]*
        [ 'else'\s <else=.pblock> ]?
    }

    token statement_control:sym<unless> {
        <sym> \s :s
        <xblock>
        [ <!before 'else'> || <.panic: 'unless does not take "else", please rewrite using "if"'> ]
    }

    token statement_control:sym<while> {
        $<sym>=[while|until] \s :s
        <xblock>
    }

    token statement_control:sym<repeat> {
        <sym> \s :s
        [
        | $<wu>=[while|until]\s <xblock>
        | <pblock> $<wu>=[while|until]\s <EXPR>
        ]
    }

    token statement_control:sym<for> {
        <sym> \s :s
        <xblock>
    }

    token statement_control:sym<CATCH> {
        <sym> \s :s
        <block>
    }

    token statement_control:sym<CONTROL> {
        <sym> \s :s
        <block>
    }

    proto token statement_prefix { <...> }
    token statement_prefix:sym<INIT> { <sym> <blorst> }

    token statement_prefix:sym<try> {
        <sym>
        <blorst>
    }

    token blorst {
        \s <.ws> [ <?[{]> <block> | <statement> ]
    }

    ## Statement modifiers

    proto token statement_mod_cond { <...> }

    token statement_mod_cond:sym<if>     { <sym> :s <cond=.EXPR> }
    token statement_mod_cond:sym<unless> { <sym> :s <cond=.EXPR> }

    proto token statement_mod_loop { <...> }

    token statement_mod_loop:sym<while>     { <sym> :s <cond=.EXPR> }
    token statement_mod_loop:sym<until>     { <sym> :s <cond=.EXPR> }
    token statement_mod_loop:sym<for>       { <sym> :s <cond=.EXPR> }

    ## Terms

    token term:sym<fatarrow>           { <fatarrow> }
    token term:sym<colonpair>          { <colonpair> }
    token term:sym<variable>           { <variable> }
    token term:sym<package_declarator> { <package_declarator> }
    token term:sym<scope_declarator>   { <scope_declarator> }
    token term:sym<routine_declarator> { <routine_declarator> }
    token term:sym<multi_declarator>   {
        <?before 'multi'|'proto'|'only'>
        <!before 'proto' <.ws> ['regex'|'token'|'rule']>
        <multi_declarator>
    }
    token term:sym<regex_declarator>   { <regex_declarator> }
    token term:sym<statement_prefix>   { <statement_prefix> }
    token term:sym<lambda>             { <?lambda> <pblock> }

    token fatarrow {
        <key=.identifier> \h* '=>' <.ws> <val=.EXPR('i=')>
    }

    token colonpair {
        ':'
        [
        | $<not>='!' <identifier>
        | <identifier> <circumfix>?
        | <circumfix>
        ]
    }

    token variable {
        | <sigil> <twigil>? <desigilname=.name>
        | <sigil> <?[<[]> <postcircumfix>
        | $<sigil>=['$'] $<desigilname>=[<[/_!]>]
    }

    token sigil { <[$@%&]> }

    token twigil { <[*!?]> }

    proto token package_declarator { <...> }
    token package_declarator:sym<module> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'module';
        <sym> <package_def> 
    }
    token package_declarator:sym<knowhow> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'knowhow';
        <sym> <package_def>
    }
    token package_declarator:sym<class> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'class';
        <sym> <package_def>
    }
    token package_declarator:sym<grammar> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'grammar';
        <sym> <package_def>
    }
    token package_declarator:sym<role> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'role';
        <sym> <package_def>
    }
    token package_declarator:sym<native> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'native';
        <sym> <package_def>
    }
    rule package_declarator:sym<stub> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'stub';
        <sym> <name>
        'metaclass' <metaclass=.name>
        '{' '...' '}'
    }

    rule package_def {
        :my $*PACKAGE;     # The type object for this package.
        
        <name>
        [ 'is' 'repr(' <repr=.quote_EXPR> ')' ]?
        
        {
            # Construct meta-object for this package, adding it to the
            # serialization context for this compilation unit.
            my %args;
            %args<name> := ~$<name>;
            if $<repr> {
                %args<repr> := ~$<repr>[0]<quote_delimited><quote_atom>[0];
            }
            $*PACKAGE := $*SC.pkg_create_mo(%*HOW{$*PKGDECL}, |%args);
            
            # Install it in the current package or current lexpad as needed.
            if $*SCOPE eq 'our' || $*SCOPE eq '' {
                $*SC.install_package_symbol($*OUTERPACKAGE, $<name><identifier>, $*PACKAGE);
                if +$<name><identifier> == 1 {
                    $*SC.install_lexical_symbol(@NQP::Actions::BLOCK[0], $<name><identifier>[0], $*PACKAGE);
                }
            }
            elsif $*SCOPE eq 'my' {
                if +$<name><identifier> != 1 {
                    $<name>.CURSOR.panic("A my scoped package cannot have a multi-part name yet");
                }
                $*SC.install_lexical_symbol(@NQP::Actions::BLOCK[0], $<name><identifier>[0], $*PACKAGE);
            }
            else {
                $/.CURSOR.panic("$*SCOPE scoped packages are not supported");
            }
        }
        
        [ 'is' <parent=.name> ]?
        [ 'does' <role=.name> ]*
        [
        || ';' <comp_unit>
        || <?[{]> <block>
        || <.panic: 'Malformed package declaration'>
        ]
    }

    proto token scope_declarator { <...> }
    token scope_declarator:sym<my>  { <sym> <scoped('my')> }
    token scope_declarator:sym<our> { <sym> <scoped('our')> }
    token scope_declarator:sym<has> { <sym> <scoped('has')> }

    rule scoped($*SCOPE) {
        | <declarator>
        | <multi_declarator>
        | <package_declarator>
    }

    token typename {
        <name>
        <?{ $*ACTIONS.known_sym($/, $<name><identifier>) }>
    }

    token declarator {
        | <variable_declarator>
        | <routine_declarator>
    }

    rule variable_declarator {
        <typename>?
        :my $*IN_DECL := 'variable';
        <variable>
        { $*IN_DECL := 0; }
        <trait>*
    }

    proto token routine_declarator { <...> }
    token routine_declarator:sym<sub>    { <sym> <routine_def> }
    token routine_declarator:sym<method> { <sym> <method_def> }

    rule routine_def {
        :my $*RETURN_USED := 0;
        [ $<sigil>=['&'?]<deflongname> ]?
        <.newpad>
        [ '(' <signature> ')'
            || <.panic: 'Routine declaration requires a signature'> ]
        <trait>*
        [
        | <onlystar>
        | <blockoid>
        ]
    }

    rule method_def {
        :my $*RETURN_USED := 0;
        :my $*INVOCANT_OK := 1;
        $<private>=['!'?]
        <deflongname>?
        <.newpad>
        [ '(' <signature> ')'
            || <.panic: 'Routine declaration requires a signature'> ]
        { $*INVOCANT_OK := 0; }
        <trait>*
        [
        | <onlystar>
        | <blockoid>
        ]
    }

    token onlystar {
        <?{ $*MULTINESS eq 'proto' }>
        '{' <.ws> '*' <.ws> '}'
        <?ENDSTMT>
        <.finishpad>
    }

    proto token multi_declarator { <...> }
    token multi_declarator:sym<multi> {
        :my $*MULTINESS := 'multi';
        <sym>
        <.ws> [ <declarator> || <routine_def> || <.panic: 'Malformed multi'> ]
    }
    token multi_declarator:sym<proto> {
        :my $*MULTINESS := 'proto';
        <sym>
        <.ws> [ <declarator> || <routine_def> || <.panic: 'Malformed proto'> ]
    }
    token multi_declarator:sym<null> {
        :my $*MULTINESS := '';
        <declarator>
    }

    token signature {
        [ <?{ $*INVOCANT_OK }> <.ws><invocant=.parameter><.ws> ':' ]?
        [ [<.ws><parameter><.ws>] ** ',' ]?
    }

    token parameter {
        [ <typename> [ ':' $<definedness>=<[_DU]> ]? <.ws> ]*      # <type_constraint>
        [
        | $<quant>=['*'] <param_var>
        | [ <param_var> | <named_param> ] $<quant>=['?'|'!'|<?>]
        ]
        <default_value>?
    }

    token param_var {
        <sigil> <twigil>?
        [ <name=.ident> | $<name>=[<[/!]>] ]
    }

    token named_param {
        ':' <param_var>
    }

    rule default_value { '=' <EXPR('i=')> }

    rule trait { <trait_mod> }

    proto token trait_mod { <...> }
    token trait_mod:sym<is> { <sym>:s <longname=.deflongname><circumfix>? }

    rule regex_declarator {
        [
        | $<proto>=[proto] [regex|token|rule]
          <deflongname>
          [ 
          || '{' '<...>' '}'<?ENDSTMT>
          || '{' '<*>' '}'<?ENDSTMT>
          || <.panic: "Proto regex body must be <*> (or <...>, which is deprecated)">
          ]
        | $<sym>=[regex|token|rule]
          <deflongname>
          <.newpad>
          [ '(' <signature> ')' ]?
          {*} #= open
          '{'<p6regex=.LANG('Regex','nibbler')>'}'<?ENDSTMT>
        ]
    }

    token dotty {
        '.' 
        [ <longname=deflongname>
        | <?['"]> <quote> 
            [ <?[(]> || <.panic: "Quoted method name requires parenthesized arguments"> ]
        ]

        [
        | <?[(]> <args>
        | ':' \s <args=.arglist>
        ]?
    }


    proto token term { <...> }

    token term:sym<self> { <sym> » }

    token term:sym<identifier> {
        <deflongname> <?[(]> <args>
    }

    token term:sym<name> {
        <name> <args>?
    }

    token term:sym<pir::op> {
        'pir::' $<op>=[\w+] <args>?
    }

    token term:sym<pir::const> {
        'pir::const::' $<const>=[\w+]
    }

    token term:sym<nqp::op> {
        'nqp::' $<op>=[\w+] <args>?
    }

    token term:sym<onlystar> {
        '{*}' <?ENDSTMT>
        [ <?{ $*MULTINESS eq 'proto' }> || <.panic: '{*} may only appear in proto'> ]
    }

    token args {
        | '(' <arglist> ')'
    }

    token arglist {
        <.ws>
        [
        | <EXPR('f=')>
        | <?>
        ]
    }


    token term:sym<value> { <value> }

    token value {
        | <quote>
        | <number>
    }

    token number {
        $<sign>=[<[+\-]>?]
        [ <dec_number> | <integer> ]
    }

    proto token quote { <...> }
    token quote:sym<apos> { <?[']>            <quote_EXPR: ':q'>  }
    token quote:sym<dblq> { <?["]>            <quote_EXPR: ':qq'> }
    token quote:sym<q>    { <sym> >> <![(]> <.ws> <quote_EXPR: ':q'>  }
    token quote:sym<qq>   { <sym> >> <![(]> <.ws> <quote_EXPR: ':qq'> }
    token quote:sym<Q>    { <sym> >>  <![(]> <.ws> <quote_EXPR> }
    token quote:sym<Q:PIR> { <sym> <.ws> <quote_EXPR> }
    token quote:sym</ />  {
        '/'
        <.newpad>
        {*} #= open
        <p6regex=.LANG('Regex','nibbler')>
        '/'
    }

    token quote_escape:sym<$>   { <?[$]> <?quotemod_check('s')> <variable> }
    token quote_escape:sym<{ }> { <?[{]> <?quotemod_check('c')> <block> }
    token quote_escape:sym<esc> { \\ e <?quotemod_check('b')> }

    token circumfix:sym<( )> { '(' <.ws> <EXPR>? ')' }
    token circumfix:sym<[ ]> { '[' <.ws> <EXPR>? ']' }
    token circumfix:sym<ang> { <?[<]>  <quote_EXPR: ':q', ':w'>  }
    token circumfix:sym<« »> { <?[«]>  <quote_EXPR: ':qq', ':w'>  }
    token circumfix:sym<{ }> { <?[{]> <pblock> }
    token circumfix:sym<sigil> { <sigil> '(' ~ ')' <semilist> }

    rule semilist { <statement> }

    ## Operators

    INIT {
        NQP::Grammar.O(':prec<y=>, :assoc<unary>', '%methodop');
        NQP::Grammar.O(':prec<x=>, :assoc<unary>', '%autoincrement');
        NQP::Grammar.O(':prec<w=>, :assoc<left>',  '%exponentiation');
        NQP::Grammar.O(':prec<v=>, :assoc<unary>', '%symbolic_unary');
        NQP::Grammar.O(':prec<u=>, :assoc<left>',  '%multiplicative');
        NQP::Grammar.O(':prec<t=>, :assoc<left>',  '%additive');
        NQP::Grammar.O(':prec<r=>, :assoc<left>',  '%concatenation');
        NQP::Grammar.O(':prec<m=>, :assoc<left>',  '%relational');
        NQP::Grammar.O(':prec<l=>, :assoc<left>',  '%tight_and');
        NQP::Grammar.O(':prec<k=>, :assoc<left>',  '%tight_or');
        NQP::Grammar.O(':prec<j=>, :assoc<right>', '%conditional');
        NQP::Grammar.O(':prec<i=>, :assoc<right>', '%assignment');
        NQP::Grammar.O(':prec<g=>, :assoc<list>, :nextterm<nulltermish>',  '%comma');
        NQP::Grammar.O(':prec<f=>, :assoc<list>',  '%list_infix');
        NQP::Grammar.O(':prec<e=>, :assoc<unary>', '%list_prefix');
    }


    token infixish { <!infixstopper> <OPER=infix> }
    token infixstopper { <?lambda> }

    token postcircumfix:sym<[ ]> {
        '[' <.ws> <EXPR> ']'
        <O('%methodop')>
    }

    token postcircumfix:sym<{ }> {
        '{' <.ws> <EXPR> '}'
        <O('%methodop')>
    }

    token postcircumfix:sym<ang> {
        <?[<]> <quote_EXPR: ':q'>
        <O('%methodop')>
    }

    token postcircumfix:sym<( )> {
        '(' <.ws> <arglist> ')'
        <O('%methodop')>
    }

    token postfix:sym<.>  { <dotty> <O('%methodop')> }

    token prefix:sym<++>  { <sym>  <O('%autoincrement, :pirop<inc>')> }
    token prefix:sym<-->  { <sym>  <O('%autoincrement, :pirop<dec>')> }

    # see Actions.pm for postfix:<++> and postfix:<-->
    token postfix:sym<++> { <sym>  <O('%autoincrement')> }
    token postfix:sym<--> { <sym>  <O('%autoincrement')> }

    token infix:sym<**>   { <sym>  <O('%exponentiation, :pirop<pow__NNN>')> }

    token prefix:sym<+>   { <sym>  <O('%symbolic_unary, :pirop<set N*>')> }
    token prefix:sym<~>   { <sym>  <O('%symbolic_unary, :pirop<set S*>')> }
    token prefix:sym<->   { <sym>  <![>]> <!number> <O('%symbolic_unary, :pirop<neg>')> }
    token prefix:sym<?>   { <sym>  <O('%symbolic_unary, :pirop<istrue>')> }
    token prefix:sym<!>   { <sym>  <O('%symbolic_unary, :pirop<isfalse>')> }
    token prefix:sym<|>   { <sym>  <O('%symbolic_unary')> }

    token infix:sym<*>    { <sym>  <O('%multiplicative, :pirop<mul>')> }
    token infix:sym</>    { <sym>  <O('%multiplicative, :pirop<div>')> }
    token infix:sym<%>    { <sym>  <O('%multiplicative, :pirop<mod>')> }
    token infix:sym<+&>   { <sym>  <O('%multiplicative, :pirop<band III>')> }

    token infix:sym<+>    { <sym>  <O('%additive, :pirop<add>')> }
    token infix:sym<->    { <sym>  <O('%additive, :pirop<sub>')> }
    token infix:sym<+|>   { <sym>  <O('%additive, :pirop<bor III>')> }
    token infix:sym<+^>   { <sym>  <O('%additive, :pirop<bxor III>')> }

    token infix:sym<~>    { <sym>  <O('%concatenation , :pirop<concat>')> }

    token infix:sym«==»   { <sym>  <O('%relational, :pirop<iseq INn>')> }
    token infix:sym«!=»   { <sym>  <O('%relational, :pirop<isne INn>')> }
    token infix:sym«<=»   { <sym>  <O('%relational, :pirop<isle INn>')> }
    token infix:sym«>=»   { <sym>  <O('%relational, :pirop<isge INn>')> }
    token infix:sym«<»    { <sym>  <O('%relational, :pirop<islt INn>')> }
    token infix:sym«>»    { <sym>  <O('%relational, :pirop<isgt INn>')> }
    token infix:sym«eq»   { <sym>  <O('%relational, :pirop<iseq ISs>')> }
    token infix:sym«ne»   { <sym>  <O('%relational, :pirop<isne ISs>')> }
    token infix:sym«le»   { <sym>  <O('%relational, :pirop<isle ISs>')> }
    token infix:sym«ge»   { <sym>  <O('%relational, :pirop<isge ISs>')> }
    token infix:sym«lt»   { <sym>  <O('%relational, :pirop<islt ISs>')> }
    token infix:sym«gt»   { <sym>  <O('%relational, :pirop<isgt ISs>')> }
    token infix:sym«=:=»  { <sym>  <O('%relational, :pirop<issame>')> }
    token infix:sym<~~>   { <sym>  <O('%relational, :reducecheck<smartmatch>')> }

    token infix:sym<&&>   { <sym>  <O('%tight_and, :pasttype<if>')> }

    token infix:sym<||>   { <sym>  <O('%tight_or, :pasttype<unless>')> }
    token infix:sym<//>   { <sym>  <O('%tight_or, :pasttype<def_or>')> }

    token infix:sym<?? !!> {
        '??'
        <.ws>
        <EXPR('i=')>
        '!!'
        <O('%conditional, :reducecheck<ternary>, :pasttype<if>')>
    }

    token infix:sym<=>    {
        <sym> <.panic: 'Assignment ("=") not supported in NQP, use ":=" instead'>
    }
    token infix:sym<:=>   { <sym>  <O('%assignment, :pasttype<bind_6model>')> }
    token infix:sym<::=>  { <sym>  <O('%assignment, :pasttype<bind_6model>')> }

    token infix:sym<,>    { <sym>  <O('%comma, :pasttype<list>')> }

    token prefix:sym<return> { <sym> \s <O('%list_prefix, :pasttype<return>')> { $*RETURN_USED := 1 } }
    token prefix:sym<make>   { <sym> \s <O('%list_prefix')> }
    token term:sym<last>     { <sym> }
    token term:sym<next>     { <sym> }
    token term:sym<redo>     { <sym> }

    method smartmatch($/) {
        # swap rhs into invocant position
        my $t := $/[0]; $/[0] := $/[1]; $/[1] := $t;
    }
}

grammar NQP::Regex is Regex::P6Regex::Grammar {
    token metachar:sym<:my> {
        ':' <?before 'my'> <statement=.LANG('MAIN', 'statement')> <.ws> ';'
    }

    token metachar:sym<{ }> {
        <?[{]> <codeblock>
    }

    token metachar:sym<nqpvar> {
        <?[$@]> <?before .\w> <var=.LANG('MAIN', 'variable')>
    }

    token assertion:sym<{ }> {
        <?[{]> <codeblock>
    }

    token assertion:sym<?{ }> {
        $<zw>=[ <[?!]> <?before '{'> ] <codeblock>
    }

    token assertion:sym<name> {
        <longname=.identifier>
            [
            | <?before '>'>
            | '=' <assertion>
            | ':' <arglist>
            | '(' <arglist=.LANG('MAIN','arglist')> ')'
            | <.normspace> <nibbler>
            ]?
    }

    token assertion:sym<var> {
        <?[$@]> <var=.LANG('MAIN', 'variable')>
    }

    token codeblock {
        <block=.LANG('MAIN','pblock')>
    }
}

