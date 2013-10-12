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
        %*HOW<knowhow>      := nqp::knowhow();
        %*HOW<knowhow-attr> := nqp::knowhowattr();
        
        # Serialization context builder - keeps track of objects that
        # cross the compile-time/run-time boundary that are associated
        # with this compilation unit.
        my $file := nqp::getlexdyn('$?FILES');
        my $source_id := nqp::sha1(self.target()) ~
            (%*COMPILING<%?OPTIONS><stable-sc> ?? '' !! '-' ~ ~nqp::time_n());
        my $*W := nqp::isnull($file) ??
            NQP::World.new(:handle($source_id)) !!
            NQP::World.new(:handle($source_id), :description($file));

        my $*SCOPE        := '';
        my $*MULTINESS    := '';
        my $*PKGDECL      := '';
        my $*INVOCANT_OK  := 0;
        my $*RETURN_USED  := 0;
        my $*CONTROL_USED := 0;
        my %*HANDLERS;
        self.comp_unit;
    }

    ## Lexer stuff

    token identifier { <.ident> [ <[\-']> <.ident> ]* }

    token name { <identifier> ['::'<identifier>]* }

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
        | <identifier> {}
            .*? \n <?before \h* [ 
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
        :my $*UNIT := $*W.push_lexpad($/);
        
        # Create GLOBALish - the current GLOBAL view, created fresh
        # for each compilation unit so we get separate compilation.
        :my $*GLOBALish := $*W.pkg_create_mo(%*HOW<knowhow>, :name('GLOBALish'));
        {
            $*GLOBALish.HOW.compose($*GLOBALish);
            $*W.install_lexical_symbol($*UNIT, 'GLOBALish', $*GLOBALish);
        }
        
        # This is also the starting package.
        :my $*PACKAGE := $*GLOBALish;
        { $*W.install_lexical_symbol($*UNIT, '$?PACKAGE', $*PACKAGE); }
        
        # Create EXPORT::DEFAULT.
        :my $*EXPORT;
        {
            unless %*COMPILING<%?OPTIONS><setting> eq 'NULL' {
                $*EXPORT := $*W.pkg_create_mo(%*HOW<knowhow>, :name('EXPORT'));
                $*EXPORT.HOW.compose($*EXPORT);
                $*W.install_lexical_symbol($*UNIT, 'EXPORT', $*EXPORT);
                my $DEFAULT := $*W.pkg_create_mo(%*HOW<knowhow>, :name('DEFAULT'));
                $DEFAULT.HOW.compose($DEFAULT);
                ($*EXPORT.WHO)<DEFAULT> := $DEFAULT;
            }
        }
        
        { $*W.add_initializations(); }
        
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
        || ';'
        || <?MARKED('endstmt')>
        || <?terminator>
        || $
    }

    token xblock {
        <EXPR> <.ws> <pblock>
    }

    token pblock {
        | <.lambda>
            <.newpad>
            <signature> <.ws>
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
        :my %*HANDLERS;
        <.finishpad>
        [
        || '{YOU_ARE_HERE}' <you_are_here>
        || '{' ~ '}' <statementlist>
        ]
        <?ENDSTMT>
    }

    token newpad { <?> }
    token outerctx { <?> }
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
        :my $*CONTROL_USED := 0;
        $<sym>=[while|until] \s :s
        <xblock>
    }

    token statement_control:sym<repeat> {
        :my $*CONTROL_USED := 0;
        <sym> \s :s
        [
        | $<wu>=[while|until]\s <xblock>
        | <pblock> $<wu>=[while|until]\s <EXPR>
        ]
    }

    token statement_control:sym<for> {
        :my $*CONTROL_USED := 0;
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
    token statement_prefix:sym<BEGIN> { <sym> <blorst> }
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
    token term:sym<last>               { <sym> <!identifier> { $*CONTROL_USED := 1 } }
    token term:sym<next>               { <sym> <!identifier> { $*CONTROL_USED := 1 } }
    token term:sym<redo>               { <sym> <!identifier> { $*CONTROL_USED := 1 } }

    token fatarrow {
        <key=.identifier> \h* '=>' <.ws> <val=.EXPR('i=')>
    }

    token colonpair {
        ':'
        [
        | $<not>='!' <identifier>
        | <identifier> <circumfix>?
        | <circumfix>
        | <variable>
        ]
    }

    token variable {
        | <sigil> <twigil>? <desigilname=.name>
        | <sigil> <?[<]> <postcircumfix>
        | <sigil> '(' ~ ')' <semilist>
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
    token package_declarator:sym<stub> {
        :my $*OUTERPACKAGE := $*PACKAGE;
        :my $*PKGDECL := 'stub';
        <sym> :s <name>
        'metaclass' <metaclass=.name>
        '{' '...' '}'
    }

    rule package_def {
        :my $*PACKAGE;     # The type object for this package.
        :my $OUTER := $*W.cur_lexpad();
        
        <name>
        <.newpad>
        [ <?{ $*PKGDECL eq 'role' }> '[' ~ ']' <role_params> ]?
        [ 'is' 'repr(' <repr=.quote_EXPR> ')' ]?
        
        {
            # Construct meta-object for this package, adding it to the
            # serialization context for this compilation unit.
            my %args;
            %args<name> := ~$<name>;
            if $<repr> {
                %args<repr> := ~$<repr><quote_delimited><quote_atom>[0];
            }
            my $how := %*HOW{$*PKGDECL};
            my $INNER := $*W.cur_lexpad();
            $*PACKAGE := $*W.pkg_create_mo($how, |%args);

            # these need to be installed early so that they may be referenced from subs in the block
            if nqp::can($how, 'parametric') && $how.parametric($how) {
                $*W.install_lexical_symbol($INNER, '$?PACKAGE', $*PACKAGE);
                $*W.install_lexical_symbol($INNER, '$?ROLE', $*PACKAGE);
            }
            else {
                $*W.install_lexical_symbol($INNER, '$?PACKAGE', $*PACKAGE);
                $*W.install_lexical_symbol($INNER, '$?CLASS', $*PACKAGE);
            }

            # Install it in the current package or current lexpad as needed.
            if $*SCOPE eq 'our' || $*SCOPE eq '' {
                $*W.install_package_symbol($*OUTERPACKAGE, $<name><identifier>, $*PACKAGE);
                if +$<name><identifier> == 1 {
                    $*W.install_lexical_symbol($OUTER, $<name><identifier>[0], $*PACKAGE);
                }
            }
            elsif $*SCOPE eq 'my' {
                if +$<name><identifier> != 1 {
                    $<name>.CURSOR.panic("A my scoped package cannot have a multi-part name yet");
                }
                $*W.install_lexical_symbol($OUTER, $<name><identifier>[0], $*PACKAGE);
            }
            else {
                $/.CURSOR.panic("$*SCOPE scoped packages are not supported");
            }
        }
        
        [ $<export>=['is export'] ]?
        [ 'is' <parent=.name> ]?
        [ 'does' <role=.name> ]*
        [
        || ';' <statementlist> [ $ || <.panic: 'Confused'> ]
        || <?[{]> <blockoid>
        || <.panic: 'Malformed package declaration'>
        ]
    }
    
    rule role_params {
        :my $*SCOPE   := 'my';
        :my $*IN_DECL := 'variable';
        [ <variable> ]+ % [ ',' ]
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
        <?{ $*W.known_sym($/, $<name><identifier>) }>
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
        [
        || '::(' <latename=variable> ')'
        || $<private>=['!'?] <deflongname>?
        ]
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
        [ [<.ws><parameter><.ws> [',' | <before \s* [')' | '{']>]]* ]?
    }

    token parameter {
        [ <typename> [ ':' $<definedness>=<[_DU]> ]**0..1 <.ws> ]*      # <type_constraint>
        [
        | $<quant>=['*'] <param_var>
        | [ <param_var> | <named_param> ] $<quant>=['?'|'!'|<?>]
        ]
        <default_value>**0..1
    }

    token param_var {
        <sigil> <twigil>?
        [ <name=.identifier> | $<name>=[<[/!]>] ]
    }

    token named_param {
        ':' <param_var>
    }

    rule default_value { '=' <EXPR('i=')> }

    rule trait { <trait_mod> }

    proto token trait_mod { <...> }
    token trait_mod:sym<is> { <sym>:s <longname=.deflongname><circumfix>**0..1 }

    token regex_declarator {
        [
        | $<proto>=[proto] :s [regex|token|rule]
          [
          || '::(' <latename=variable> ')'
          || <deflongname>
          ]
          [ 
          || '{*}'<?ENDSTMT>
          || '{' '<...>' '}'<?ENDSTMT>
          || '{' '<*>' '}'<?ENDSTMT>
          || <.panic: "Proto regex body must be \{*\} (or <*> or <...>, which are deprecated)">
          ] :!s
        | $<sym>=[regex|token|rule] :s
          [
          || '::(' <latename=variable> ')'
          || <deflongname>
          ]
          <.newpad>
          [ '(' <signature> ')' ]**0..1
          :my %*RX;
          {   
              %*RX<s>    := $<sym> eq 'rule'; 
              %*RX<r>    := $<sym> eq 'token' || $<sym> eq 'rule'; 
              %*RX<name> := $<deflongname> ?? $<deflongname>.ast !! "!!LATENAME!!" ~ ~$<latename>;
              %*RX<code> := $*W.create_code($*W.cur_lexpad(), %*RX<name>, 0, :code_type_name<NQPRegex>);
          }
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
        | <args>
        | ':' \s <args=.arglist>
        ]**0..1
    }

    token term:sym<self> { <sym> » }

    token term:sym<identifier> {
        <deflongname> <args>
    }

    token term:sym<pir::op> {
        'pir::' $<op>=[\w+] <args>**0..1
    }

    token term:sym<pir::const> {
        'pir::const::' $<const>=[\w+]
    }

    token term:sym<nqp::op> {
        'nqp::' $<op>=[\w+] <args>**0..1
    }

    token term:sym<nqp::const> {
        'nqp::const::' $<const>=[\w+]
    }

    token term:sym<onlystar> {
        '{*}' <?ENDSTMT>
        [ <?{ $*MULTINESS eq 'proto' }> || <.panic: '{*} may only appear in proto'> ]
    }
    
    token term:sym<name> {
        <name> <args>**0..1
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
        :my %*RX;
        <p6regex=.LANG('Regex','nibbler')>
        '/'
    }

    token quote_escape:sym<$>   { <?[$]> <?quotemod_check('s')> <variable> }
    token quote_escape:sym<{ }> { <?[{]> <?quotemod_check('c')> <block> }
    token quote_escape:sym<esc> { \\ e <?quotemod_check('b')> }

    token circumfix:sym<( )> { '(' <.ws> <EXPR>**0..1 ')' }
    token circumfix:sym<[ ]> { '[' <.ws> <EXPR>**0..1 ']' }
    token circumfix:sym<ang> { <?[<]>  <quote_EXPR: ':q', ':w'>  }
    token circumfix:sym<« »> { <?[«]>  <quote_EXPR: ':qq', ':w'>  }
    token circumfix:sym<{ }> { <?[{]> <pblock> }

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
        NQP::Grammar.O(':prec<m=>, :assoc<non>',   '%relational');
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

    token prefix:sym<++>  { <sym>  <O('%autoincrement, :op<preinc>')> }
    token prefix:sym<-->  { <sym>  <O('%autoincrement, :op<predec>')> }

    token postfix:sym<++> { <sym>  <O('%autoincrement, :op<postinc>')> }
    token postfix:sym<--> { <sym>  <O('%autoincrement, :op<postdec>')> }

    token infix:sym<**>   { <sym>  <O('%exponentiation, :op<pow_n>')> }

    token prefix:sym<+>   { <sym>  <O('%symbolic_unary, :op<numify>')> }
    token prefix:sym<~>   { <sym>  <O('%symbolic_unary, :op<stringify>')> }
    token prefix:sym<->   { <sym>  <![>]> <!number> <O('%symbolic_unary, :op<neg_n>')> }
    token prefix:sym<?>   { <sym>  <O('%symbolic_unary, :op<istrue>')> }
    token prefix:sym<!>   { <sym>  <O('%symbolic_unary, :op<falsey>')> }
    token prefix:sym<|>   { <sym>  <O('%symbolic_unary')> }

    token infix:sym<*>    { <sym>  <O('%multiplicative, :op<mul_n>')> }
    token infix:sym</>    { <sym>  <O('%multiplicative, :op<div_n>')> }
    token infix:sym<%>    { <sym>  <O('%multiplicative, :op<mod_n>')> }
    token infix:sym<+&>   { <sym>  <O('%multiplicative, :op<bitand_i>')> }

    token infix:sym<+>    { <sym>  <O('%additive, :op<add_n>')> }
    token infix:sym<->    { <sym>  <O('%additive, :op<sub_n>')> }
    token infix:sym<+|>   { <sym>  <O('%additive, :op<bitor_i>')> }
    token infix:sym<+^>   { <sym>  <O('%additive, :op<bitxor_i>')> }

    token infix:sym<~>    { <sym>  <O('%concatenation , :op<concat>')> }

    token infix:sym«==»   { <sym>  <O('%relational, :op<iseq_n>')> }
    token infix:sym«!=»   { <sym>  <O('%relational, :op<isne_n>')> }
    token infix:sym«<=»   { <sym>  <O('%relational, :op<isle_n>')> }
    token infix:sym«>=»   { <sym>  <O('%relational, :op<isge_n>')> }
    token infix:sym«<»    { <sym>  <O('%relational, :op<islt_n>')> }
    token infix:sym«>»    { <sym>  <O('%relational, :op<isgt_n>')> }
    token infix:sym«eq»   { <sym>  <O('%relational, :op<iseq_s>')> }
    token infix:sym«ne»   { <sym>  <O('%relational, :op<isne_s>')> }
    token infix:sym«le»   { <sym>  <O('%relational, :op<isle_s>')> }
    token infix:sym«ge»   { <sym>  <O('%relational, :op<isge_s>')> }
    token infix:sym«lt»   { <sym>  <O('%relational, :op<islt_s>')> }
    token infix:sym«gt»   { <sym>  <O('%relational, :op<isgt_s>')> }
    token infix:sym«=:=»  { <sym>  <O('%relational, :op<eqaddr>')> }
    token infix:sym<~~>   { <sym>  <O('%relational, :reducecheck<smartmatch>')> }

    token infix:sym<&&>   { <sym>  <O('%tight_and, :op<if>')> }

    token infix:sym<||>   { <sym>  <O('%tight_or, :op<unless>')> }
    token infix:sym<//>   { <sym>  <O('%tight_or, :op<defor>')> }

    token infix:sym<?? !!> {
        '??'
        <.ws>
        <EXPR('i=')>
        '!!'
        <O('%conditional, :reducecheck<ternary>, :op<if>')>
    }

    token infix:sym<=>    {
        <sym> <.panic: 'Assignment ("=") not supported in NQP, use ":=" instead'>
    }
    token infix:sym<:=>   { <sym>  <O('%assignment, :op<bind>')> }
    token infix:sym<::=>  { <sym>  <O('%assignment, :op<bind>')> }

    token infix:sym<,>    { <sym>  <O('%comma, :op<list>')> }

    token prefix:sym<return> { <sym> \s <O('%list_prefix')> { $*RETURN_USED := 1 } }
    token prefix:sym<make>   { <sym> \s <O('%list_prefix')> }

    method smartmatch($/) {
        # swap rhs into invocant position
        my $t := $/[0]; $/[0] := $/[1]; $/[1] := $t;
    }
}

grammar NQP::Regex is QRegex::P6Regex::Grammar {
    token rxstopper {
        <[ } / ]>
    }
    
    token metachar:sym<:my> {
        ':' <?before 'my'> <statement=.LANG('MAIN', 'statement')> <.ws> ';'
    }

    token metachar:sym<{ }> {
        <?[{]> <codeblock>
    }

    token metachar:sym<nqpvar> {
        <?before <sigil> [\W\w | \w]> <var=.LANG('MAIN', 'variable')>
    }

    token assertion:sym<{ }> {
        <?[{]> <codeblock>
    }
    
    token assertion:sym<?> { '?' [ <?[>]> | <![{]> <assertion> ] }
    token assertion:sym<!> { '!' [ <?[>]> | <![{]> <assertion> ] }

    token assertion:sym<?{ }> {
        $<zw>=[ <[?!]> <?[{]> ] <codeblock>
    }

    token assertion:sym<name> {
        <longname=.identifier>
            [
            | <?[>]>
            | '=' <assertion>
            | ':' <arglist>
            | '(' <arglist=.LANG('MAIN','arglist')> ')'
            | <.normspace> <nibbler>
            ]**0..1
    }

    token assertion:sym<var> {
        <?[$@]> <var=.LANG('MAIN', 'variable')>
    }

    token codeblock {
        <block=.LANG('MAIN','pblock')>
    }
    
    token arg {
        <quote_EXPR=.LANG('MAIN','quote_EXPR')>
    }
}

