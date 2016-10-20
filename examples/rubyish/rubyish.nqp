use NQPHLL;

# Ruby subset extended from the `rubyish` example, as introduced in the
# Edument Rakudo and NQP internals course.

my %CLASSES;

class RubyishClassHOW {
    has $!name;
    has $!isa;
    has %!methods;

    #| define a new class
    method new_type(:$name!, :$isa?) {
        nqp::die("duplicate class definition: $name")
            if %CLASSES{ $name };

        my $obj := self.new(:$name, :$isa);
        %CLASSES{ $name } := [$obj];

        nqp::newtype($obj, 'HashAttrStore');
    }

    #| add a named method to a class
    method add_method($obj, $name, $code) {
        nqp::die("This class already has a method named " ~ $name)
            if nqp::existskey(%!methods, $name);

        %!methods{$name} := $code;
    }

    #| find a named method in a class or its parents
    #| a '^' prefix, skips the current class, starting at the parent
    method find_method($obj, $name) {
        my $method;

        if nqp::substr($name, 0, 1) eq '^' {
            $name := nqp::substr($name, 1);
        }
        else {
           $method := %!methods{$name};
        }

        if !$method && $!isa {
            my $super := %CLASSES{ $!isa };
            nqp::die("unresolved super-class: " ~ $!isa)
                unless $super;
            $method := $super[0].find_method( $obj, $name);
        }

        $method // nqp::null();
    }
}

grammar Rubyish::Grammar is HLL::Grammar {

    token TOP {
        :my $*CUR_BLOCK   := QAST::Block.new(QAST::Stmts.new());
        :my $*TOP_BLOCK   := $*CUR_BLOCK; # global top-level block
        :my $*CLASS_BLOCK := $*CUR_BLOCK; # out class block
        :my $*IN_TEMPLATE := 0;           # true, if in a template
        :my $*IN_PARENS   := 0;           # true, if in a parentheised list (signature etc)
        :my %*SYM;                # symbols in current scope
        :my %*SYM-GBL;            # globals and package variables
        :my %*SYM-CLASS;          # class-inherited methods

        ^ ~ $ <stmtlist>
            || <.panic('Syntax error')>
    }

    rule separator       { ';' | \n <!after continuation> }
    token continuation   { \\ \n }

    #| a list of statements and/or template expressions
    rule stmtlist {
        [ <stmt=.stmtish>? ] *%% [<.separator>|<stmt=.template-chunk>]
    }

    #| a single statement, plus optional modifier
    token stmtish {:s<hs>
        <stmt> [ <modifier> <EXPR>]?
    }

    token modifier {if|unless|while|until}

    proto token stmt {*}

    #| function, or method definition
    token stmt:sym<def> {:s
        :my %*inner-sym := nqp::clone(%*SYM);
        :my $*DEF;

        'def' ~ 'end' <defbody> {
            %*SYM{$*DEF} := %*inner-sym{$*DEF};
        }
    }

    rule defbody {
        :my %*SYM := %*inner-sym;
        :my $*CUR_BLOCK := QAST::Block.new(QAST::Stmts.new());
        <operation> {
            $*DEF := ~$<operation>;
            if $*IN_CLASS {
                # if we're in a class, we're defining a method ...
                %*SYM{$*DEF} := 'method';
                %*SYM<self> := 'var';
            }
            else {
                # ... otherwise it's a function
                %*SYM{$*DEF} := 'func';
            }
        }
        ['(' ~ ')' <signature>?]? <separator>?
        <stmtlist>
    }

    rule comma { [','|'=>'] }

    #| a signature; for a method, function or closure
    rule signature {
        :my $*IN_PARENS := 1;
        [ <param> | '*' <slurpy=.param> | '&' <func=.param> ] +% ','
    }

    token param {:s<hs>
        <ident> [ $<named>=':' <EXPR>? | '=' <EXPR> ]? {
            %*SYM{~$<ident>} := 'var'
        }
    }

    #| a class definition
    token stmt:sym<class> {
        :my $*IN_CLASS := 1;
        :my @*METHODS;
        :my %*inner-sym := nqp::clone(%*SYM);

        [<sym> \h+] ~ [\h* 'end'] <classbody>
    }

    rule classbody {
        :my %*SYM := %*inner-sym;
        :my $*CUR_BLOCK   := QAST::Block.new(QAST::Stmts.new());
        :my $*CLASS_BLOCK := $*CUR_BLOCK;

        <ident> { $*CLASS_BLOCK.name(~$<ident>) }
        [ '<' <super=.ident> { inherit-syms(~$<super>) } ]?
        <separator>
        <stmtlist> {
            %*SYM-CLASS{~$<ident>} := %*SYM;
        }
    }

    token stmt:sym<EXPR> { <EXPR> }
    token term:sym<infix=> {:s<hs> <var> <OPER=infix> '=' <EXPR> }

    token code-block {:s<hs>
        :my $*CUR_BLOCK := QAST::Block.new(QAST::Stmts.new());
        <closure>
    }

    our %builtins; #| functions that map directly to nqp ops
    BEGIN {
        %builtins := nqp::hash(
            'abort',  'die',
            'exit',   'exit',
            'key',    'iterkey_s',
            'delete', 'deletekey',
            'value',  'iterval',
            'print',  'print',
            'puts',   'say',
            'sleep',  'sleep',
            );
    }

    #| a call to a function or method
    token term:sym<call> {
        <!keyword>
        <operation> ['(' ~ ')' <call-args=.paren-args>? <code-block>?
                    |:s<hs> <?{callable(~$<operation>)}> <call-args>?
                    ]
    }

    #| a call to the super-method (aka callsame)
    token term:sym<super> {
        'super' ['(' ~ ')' <call-args=.paren-args>? <code-block>?
                |:s <call-args>?
                ]
        [
          <?{$*IN_CLASS && $*DEF}>
          || <.panic("'super' call outside of method")>
        ]
    }

    #| call to an nqp operation
    token term:sym<nqp-op> {
        'nqp::'<ident> ['(' ~ ')' <call-args=.paren-args>? | <call-args>? ]
    }

    #| quoted words, e.g.: %w<a b c>
    token term:sym<quote-words> {
        \%w <?before [.]> <quote_EXPR: ':q', ':w'>
    }

    token call-args  {:s<hs>
         [ <arg> ] +% ','
    }

    proto token arg {*}

    token arg:sym<expr>  {:s <EXPR> <!before ['=>'|':']> }
    token arg:sym<func>  { '&' <EXPR> }
    token arg:sym<keyw>  { <ident> ':' <EXPR> }
    token arg:sym<hash>  {:s [ <EXPR> '=>' <EXPR> ]+ % ',' }

    token paren-args {:my $*IN_PARENS := 1; <call-args> }

    token operation  {<ident>[\!|\?]?}

    token term:sym<new> {
        ['new' \h+ <ident> | <ident> '.' 'new'] ['(' ~ ')' <call-args=.paren-args>?]?
    }

    # process a variable name, e.g.: localvar $global @attr Pkg::Var
    # the first reference to a local or global variable must be an assignment
    token var {
        :my $*MAYBE_DECL := 0;
        \+?
        $<var>=[  $<sigil>=[ \$ | \@ ] <ident>
               |  [ <pkg=.ident>? '::' ]? <?before <[A..Z]>> <const=ident>
               || <!keyword> <ident> <!before [ \! | \? | <hs>\( ]>
               ]
        [  <?before <hs> <bind-op> { $*MAYBE_DECL := 1 }>
        || <?{ variable(~$<var>) || ~$<sigil> eq '@' }>
        || <!{ callable(~$<var>) }> <.panic("unknown variable or method: $<var>")>
        ]
    }

    token term:sym<var>   { <var> }

    token term:sym<value> { \+? <value> }

    proto token value {*}
    token value:sym<string>  {<strings>}
    token strings            {:s<hs> <string> <strings>? }
    token string             { <?[']> <quote_EXPR: ':q'>               # 'non-interpolating'
                             | <?["]> <quote_EXPR: ':qq'>              # "interpolating#{42}"
                             | \%[ q <?before [.]> <quote_EXPR: ':q'>  # %q<non-interpolating>
                                 | Q <?before [.]> <quote_EXPR: ':qq'> # %Q<interpolating#{42}>
                                 ]
                             }

    token value:sym<heredoc> {'<<'<heredoc>}

    proto token heredoc {*}
    #| non-interpolating heredoc: <<'MARKER' ... MARKER  
    token heredoc:sym<literal>  {[$<marker>=<.ident> | \' $<marker>=.+? \' ]\n
                                     $<text>=.*?
                                 \n$<marker>$$
    }

    #| interpolating heredoc: <<"MARKER" ... MARKER  
    token heredoc:sym<interp> {\" $<marker>=.+? \" \n
                                   [<text=.interp> | <text=.heredoc-line> ]*?
                               \n$<marker>$$
    }
    token heredoc-line       {\n? [<!before ['#{']> \N]+ | \n }

    #| Interpolation
    token interp      { '#{' ~ '}' [ [:s<hs> <stmtlist> ]
                                    || <panic('string interpolation error')> ]
                       }
    token quote_escape:sym<#{ }> { <?quotemod_check('s')> <interp>  }

    token paren-list {
         :my $*IN_PARENS := 1;
         <EXPR> *%% <comma>
    }

    token value:sym<integer> { \d+ }
    token value:sym<float>   { \d* '.' \d+ }
    token value:sym<array>   {'[' ~ ']' <paren-list> }
    token value:sym<hash>    {'{' ~ '}' <paren-list> }
    token value:sym<nil>     { <sym> }
    token value:sym<true>    { <sym> }
    token value:sym<false>   { <sym> }

    # Reserved words.
    token keyword {
        [ BEGIN     | class     | ensure    | nil       | new       | when
        | END       | def       | false     | not       | super     | while
        | alias     | defined   | for       | or        | then      | yield
        | and       | do        | if        | redo      | true
        | begin     | else      | in        | rescue    | undef
        | break     | elsif     | module    | retry     | unless
        | case      | end       | next      | return    | until
        | eq | ne   | lt | gt   | le | ge   | cmp
        ] <!ww>
    }

    ## Operator precedence levels
    #  -- see http://www.tutorialspoint.com/ruby/ruby_operators.htmw
    my %methodop       := nqp::hash('prec', 'y=', 'assoc', 'unary');
    # y: **
    my %exponentiation := nqp::hash('prec', 'y=', 'assoc', 'left');
    # x: ! ~ + - (unary)
    my %unary          := nqp::hash('prec', 'x=', 'assoc', 'unary');
    # w: * / %
    my %multiplicative := nqp::hash('prec', 'w=', 'assoc', 'left');
    # u: + -
    my %additive       := nqp::hash('prec', 'u=', 'assoc', 'left');
    # t: >> <<
    my %bitshift       := nqp::hash('prec', 't=', 'assoc', 'left');
    # s: &
    my %bitand         := nqp::hash('prec', 's=', 'assoc', 'left');
    # r: ^ |
    my %bitor          := nqp::hash('prec', 'r=', 'assoc', 'left');
    # q: <= < > >= le lt gt ge
    my %comparison     := nqp::hash('prec', 'q=', 'assoc', 'left');
    # n: <=> == === != =~ !~ eq ne cmp
     my %equality      := nqp::hash('prec', 'n=', 'assoc', 'left'); 
    # l: &&
     my %logical_and   := nqp::hash('prec', 'l=', 'assoc', 'left'); 
    # k: ||
     my %logical_or    := nqp::hash('prec', 'k=', 'assoc', 'left'); 
    # q: ?:
     my %conditional   := nqp::hash('prec', 'g=', 'assoc', 'right');
    # f: = %= { /= -= += |= &= >>= <<= *= &&= ||= **=
     my %assignment    := nqp::hash('prec', 'f=', 'assoc', 'right');
    # e: not (unary)
     my %loose_not     := nqp::hash('prec', 'e=', 'assoc', 'unary');
    # c: or and
     my %loose_logical :=  nqp::hash('prec', 'c=', 'assoc', 'left');

    # Operators - mostly stolen from NQP
    token infix:sym<**>   { <sym>       <O(|%exponentiation, :op<pow_n>)> }

    token prefix:sym<->   { <sym><![>]> <O(|%unary, :op<neg_n>)> }
    token prefix:sym<!>   { <sym>       <O(|%unary, :op<not_i>)> }

    token infix:sym<*>    { <sym>       <O(|%multiplicative, :op<mul_n>)> }
    token infix:sym</>    { <sym>       <O(|%multiplicative, :op<div_n>)> }
    token infix:sym<%>    { <sym><![>]> <O(|%multiplicative, :op<mod_n>)> }

    token infix:sym<+>    { <sym>       <O(|%additive,       :op<add_n>)> }
    token infix:sym<->    { <sym>       <O(|%additive, :op<sub_n>)> }
    token infix:sym<~>    { <sym>       <O(|%additive, :op<concat>)> }

    token infix:sym«<<»   { <sym>       <O(|%bitshift, :op<bitshiftl_i>)> }
    token infix:sym«>>»   { <sym>       <O(|%bitshift, :op<bitshiftr_i>)> }

    token infix:sym<&>    { <sym>       <O(|%bitand, :op<bitand_i>)> }
    token infix:sym<|>    { <sym>       <O(|%bitor,  :op<bitor_i>)> }
    token infix:sym<^>    { <sym>       <O(|%bitor,  :op<bitxor_i>)> }

    token infix:sym«<=»   { <sym><![>]> <O(|%comparison, :op<isle_n>)> }
    token infix:sym«>=»   { <sym>       <O(|%comparison, :op<isge_n>)> }
    token infix:sym«<»    { <sym>       <O(|%comparison, :op<islt_n>)> }
    token infix:sym«>»    { <sym>       <O(|%comparison, :op<isgt_n>)> }
    token infix:sym«le»   { <sym>       <O(|%comparison, :op<isle_s>)> }
    token infix:sym«ge»   { <sym>       <O(|%comparison, :op<isge_s>)> }
    token infix:sym«lt»   { <sym>       <O(|%comparison, :op<islt_s>)> }
    token infix:sym«gt»   { <sym>       <O(|%comparison, :op<isgt_s>)> }

    token infix:sym«==»   { <sym>       <O(|%equality, :op<iseq_n>)> }
    token infix:sym«!=»   { <sym>       <O(|%equality, :op<isne_n>)> }
    token infix:sym«<=>»  { <sym>       <O(|%equality, :op<cmp_n>)> }
    token infix:sym«eq»   { <sym>       <O(|%equality, :op<iseq_s>)> }
    token infix:sym«ne»   { <sym>       <O(|%equality, :op<isne_s>)> }
    token infix:sym«cmp»  { <sym>       <O(|%equality, :op<cmp_s>)> }

    token infix:sym<&&>   { <sym>       <O(|%logical_and, :op<if>)> }
    token infix:sym<||>   { <sym>       <O(|%logical_or,  :op<unless>)> }

    token infix:sym<? :>  {:s '?' <EXPR('i=')>
                              ':' <O(|%conditional, :reducecheck<ternary>, :op<if>)>
    }

    token bind-op       {'='<![>=]>}
    token infix:sym<=>  { <.bind-op> <O(|%assignment, :op<bind>)> }

    token prefix:sym<not> { <sym>  <O(|%loose_not,     :op<not_i>)> }
    token infix:sym<and>  { <sym>  <O(|%loose_logical, :op<if>)> }
    token infix:sym<or>   { <sym>  <O(|%loose_logical, :op<unless>)> }

    # Parenthesis
    token circumfix:sym<( )> { :my $*IN_PARENS := 1;
                               '(' ~ ')' <EXPR> <O(|%methodop)> }

    # Method call
    token postfix:sym<.>  {
        '.' <operation> [ '(' ~ ')' <call-args=.paren-args>? ]?
        <O(|%methodop)>
    }

    # Array and hash indices
    token postcircumfix:sym<[ ]> { '[' ~ ']' [ <EXPR> ] <O(|%methodop)> }
    token postcircumfix:sym<{ }> { '{' ~ '}' [ <EXPR> ] <O(|%methodop)> }
    token postcircumfix:sym<ang> {
        <?[<]> <quote_EXPR: ':q'>
        <O(|%methodop)>
    }

    # Statement control
    rule xblock {:s<hs>
        <EXPR> [ <separator> 'then'? | 'then' | <?before <tmpl-unesc>>] <stmtlist>
    }

    token stmt:sym<cond> {:s
        $<op>=[if|unless] ~ 'end' [ <xblock> [<else=.elsif>|<else>]? ]
    }

    token elsif {:s
        'elsif' ~ [<else=.elsif>|<else>]? <xblock>
    }

    token else {:s
         'else' <stmtlist>
    }

    token stmt:sym<loop> {:s
        $<op>=[while|until] <EXPR> <do-block>
    }

    token stmt:sym<for> {:s
        <sym> <ident> 'in' <EXPR> {
            %*SYM{~$<ident>} := 'var'
        }
        <do-block>
    }

    token do-block { <do> ~ 'end' <stmtlist> }

    token do {:s<hs>
        <separator> 'do'? | 'do' | <?before <tmpl-unesc>>
    }

    token term:sym<code> {
        'begin' ~ 'end' <stmtlist>
    }

    token closure  {:s ['{'  ['|' ~ '|' <signature>?]? ]  ~ '}'   <stmtlist>
                   |:s ['do' ['|' ~ '|' <signature>?]? ]  ~ 'end' <stmtlist> }
    token closure2 {:s ['(' ~ ')' <signature>? ]? '{' ~ '}' <stmtlist> }

    token term:sym<lambda> {:s
        :my $*CUR_BLOCK := QAST::Block.new(QAST::Stmts.new());
        ['lambda' <closure>
        | '->' <closure=.closure2>
        ]
    }

    # Comments and whitespace
    proto token comment {*}
    token comment:sym<line>   { '#' [<?{!$*IN_TEMPLATE}> \N* || [<!before <tmpl-unesc>>\N]*] }
    token comment:sym<podish> {[^^'=begin'\n] [ .*? [^^'=end'[\n|$]] || <.panic('missing ^^=end at eof')>] }
    token ws { <!ww> [\h | <.continuation> | <.comment> | <?{$*IN_PARENS}> \n]* }
    token hs { <!ww> [\h | <.continuation> ]* }

    # Templates
    token template-chunk { [<tmpl-unesc>|<tmpl-hdr>] ~ [<tmpl-esc>|$] <template-nibble>* }
    proto token template-nibble {*}
    token template-nibble:sym<interp>     { <interp> }
    token template-nibble:sym<stray-tag>  { [<.tmpl-unesc>|<.tmpl-hdr>] <.panic("Stray tag, e.g. '%>' or '<?rbi?>'")> }
    token template-nibble:sym<literal> { [<!before [<tmpl-esc>|'#{'|$]> .]+ }

    token tmpl-hdr   {'<?rbi?>' \h* \n? {$*IN_TEMPLATE := 1} }
    token tmpl-esc   {\h* '<%'
                     [<?{$*IN_TEMPLATE}> || <.panic('Template directive precedes "<?rbi?>"')>]
    }
    token tmpl-unesc { '%>' \h* \n?
                     [<?{$*IN_TEMPLATE}> || <.panic('Template directive precedes "<?rbi?>"')>]
    }

    # Functions
    sub callable($op) {
       my $type := %*SYM{$op} // (%builtins{$op} && 'func');

       $type && ($type eq 'func' || $type eq 'method');
    }

    sub variable($op) {
       my $type := %*SYM{$op} // %*SYM-GBL{$op};

       $type && ($type eq 'var');
    }

    sub inherit-syms($class) {
        if my %syms := %*SYM-CLASS{$class} {
            %*SYM{$_} := %syms{$_}
                for %syms;
        }
    }
}

class Rubyish::Actions is HLL::Actions {

    method TOP($/) {
        $*CUR_BLOCK.push($<stmtlist>.ast);
        make QAST::CompUnit.new( $*CUR_BLOCK );
    }

    method stmtlist($/) {
        my $stmts := QAST::Stmts.new( :node($/) );

        $stmts.push($_.ast)
            for @<stmt>;

        make $stmts;
    }

    method stmtish($/) {
        make $<modifier>
            ?? QAST::Op.new( $<EXPR>.ast, $<stmt>.ast,
                             :op(~$<modifier>), :node($/) )
            !! $<stmt>.ast;
    }

    method term:sym<value>($/) { make $<value>.ast; }

    method code-block($/) { make $<closure>.ast }

    method term:sym<call>($/) {
        my $name  := ~$<operation>;
        my $op    := %Rubyish::Grammar::builtins{$name};

        my $call;

        if $op {
            $call := QAST::Op.new( :op($op) )
        }
        elsif %*SYM{$name} eq 'method' && $*DEF {
            $call := QAST::Op.new( :op('callmethod'),
                                   QAST::Var.new( :name('self'), :scope('lexical')),
                                   QAST::SVal.new( :value($name) ),
                );
        }
        else {
            $call := QAST::Op.new( :op('call'), :name($name) );
        }

        if $<call-args> {
            $call.push($_)
                for $<call-args>.ast;
        }

        $call.push( $<code-block>.ast )
            if $<code-block>;

        make $call;
    }

    method term:sym<super>($/) {
        my $name  := ~$*DEF;

        my $call := QAST::Op.new( :op('callmethod'),
                                  QAST::Var.new( :name('self'), :scope('lexical')),
                                  QAST::SVal.new( :value('^' ~ $name) ),
            );

        if $<call-args> {
            $call.push($_)
                for $<call-args>.ast;
        }

        $call.push( $<code-block>.ast )
            if $<code-block>;

        make $call;
    }

    method term:sym<nqp-op>($/) {
        my $op := ~$<ident>;
        my $call := QAST::Op.new( :op($op) );

        if $<call-args> {
            $call.push($_)
                for $<call-args>.ast;
        }

        make $call;
    }

    method call-args($/) {
        my @args;
        @args.push($_.ast) for $<arg>;
        make @args;
    }

    method arg:sym<expr>($/) {
        make $<EXPR>.ast
    }

    method arg:sym<func>($/) {
        make $<EXPR>.ast
    }

    method arg:sym<keyw>($/) {
        my $arg := $<EXPR>.ast;
        $arg.named( ~$<ident> );
        make $arg;
    }

    method arg:sym<hash>($/) {
        my $args := QAST::Op.new( :op<hash> );

        $args.push( $_.ast )
            for $<EXPR>;

        make $args;
    }

    method paren-args($/) {
        make $<call-args>.ast;
    }

    method term:sym<new>($/) {

        my $tmp-obj := '$new-obj$';

        my $init-call := QAST::Op.new( :op<callmethod>,
                                       :name<initialize>,
                                       QAST::Var.new( :name($tmp-obj), :scope<lexical> )
            );

        if $<call-args> {
            $init-call.push($_)
                for $<call-args>.ast;
        }

        my $init-block := QAST::Block.new( QAST::Stmts.new(

            # pseudo-code:
            #
            # def new(*call-args)
            #     $new-obj = Class.new;
            #     if call-args then
            #        # always try to call initialize, when new has arguments
            #        $new-obj.initialize(call-args)
            #     else
            #        $new-obj.initialize() \
            #           if $new-obj.can('initialize')
            #     end
            #     return $new-obj
            # end

            # create the new object
            QAST::Op.new( :op('bind'),
                          QAST::Var.new( :name($tmp-obj), :scope<lexical>, :decl<var>),
                          QAST::Op.new(
                              :op('create'),
                              QAST::Var.new( :name('::' ~ ~$<ident>), :scope('lexical') )
                          ),
            ),

            # call initialize method, if available
            ($<call-args>
             ?? $init-call
             !! QAST::Op.new( :op<if>,
                              QAST::Op.new( :op<can>,
                                            QAST::Var.new( :name($tmp-obj), :scope<lexical> ),
                                            QAST::SVal.new( :value<initialize> )),
                              $init-call,
             )
            ),

            # return the new object
            QAST::Var.new( :name($tmp-obj), :scope<lexical> ),
        ));

        $init-block.blocktype('immediate');
        make $init-block;
    }

    method var($/) {
        my $sigil := ~$<sigil> // '';
        my $name  := ~$<var>;

        if $sigil eq '@' && $*IN_CLASS && $*DEF {
            # instance variable, bound to self
            my $package-name := $*CLASS_BLOCK.name;
            make QAST::Var.new( :name($name), :scope('attribute'),
                                QAST::Var.new( :name('self'), :scope('lexical')),
                                QAST::SVal.new( :value($package-name) )
                );
        }
        else {
            if $<const> {
                my $ns := $<pkg> ?? ~$<pkg> !! $*CLASS_BLOCK.name;
                $name := $ns ~ '::' ~ $<ident>;
            }

            if $*MAYBE_DECL {

                my $block;
                my $decl := 'var';

                if $sigil eq '$' || $<const> {
                    $block := $*TOP_BLOCK;
                    %*SYM-GBL{$name} := 'var';
                    %*SYM{~$<ident>} := 'var'
                        if $<const>;
                }
                elsif $sigil eq '@' {
                    $block := $*CLASS_BLOCK;
                }
                else {
                    $block := $*CUR_BLOCK;
                }

                my %sym  := $block.symbol($name);
                if !%sym<declared> {
                    %*SYM{$name} := 'var';
                    $block.symbol($name, :declared(1), :scope('lexical') );
                    my $var := QAST::Var.new( :name($name), :scope('lexical'),
                                              :decl($decl) );
                    $block[0].push($var);
                }
            }

            make QAST::Var.new( :name($name), :scope('lexical') );
        }
    }

    method term:sym<var>($/) { make $<var>.ast }

    method stmt:sym<def>($/) {
        my $install := $<defbody>.ast;
        $*CUR_BLOCK[0].push(QAST::Op.new(
            :op('bind'),
            QAST::Var.new( :name($install.name), :scope('lexical'), :decl('var') ),
            $install
        ));
        if $*IN_CLASS {
            @*METHODS.push($install);
        }
        make QAST::Op.new( :op('null') );
    }

    method defbody($/) {
        $*CUR_BLOCK.name(~$<operation>);
        $*CUR_BLOCK.push($<stmtlist>.ast);
        if $*IN_CLASS {
            # it's a method, self will be automatically passed
            $*CUR_BLOCK[0].unshift(QAST::Var.new(
                :name('self'), :scope('lexical'), :decl('param')
            ));
            $*CUR_BLOCK.symbol('self', :declared(1));
        }

        make $*CUR_BLOCK;
    }

    method param($/) {
       my $var := QAST::Var.new(
           :name(~$<ident>), :scope('lexical'), :decl('param')
          );
       $var.named(~$<ident>)
           if $<named>;

       $*CUR_BLOCK.symbol('self', :declared(1));

       $var.default( $<EXPR>.ast )
          if $<EXPR>;

       make $var;
    }

    method signature($/) {
        my @params;

        @params.push($_.ast)
            for @<param>;

        if $<slurpy> {
            @params.push($<slurpy>[0].ast);
            @params[-1].slurpy(1);
        }

        if $<func> {
            @params.push($<func>[0].ast);
            @params[-1].default(QAST::Op.new( :op<null> ));
        }

        for @params {
            $*CUR_BLOCK[0].push($_) unless $_.named;
            $*CUR_BLOCK.symbol($_.name, :declared(1));
         }

         # nqp #179 named arguments need to follow positional parameters
         for @params {
            $*CUR_BLOCK[0].push($_) if $_.named;
         }
    }

    method stmt:sym<class>($/) {
        my $body_block := $<classbody>.ast;

        # Generate code to create the class.
        my $class_stmts := QAST::Stmts.new( $body_block );
        my $ins_name    := '::' ~ $<classbody><ident>;

        my $new_type :=  QAST::Op.new(
                :op('callmethod'), :name('new_type'),
                QAST::WVal.new( :value(RubyishClassHOW) ),
                QAST::SVal.new( :value(~$<classbody><ident>), :named('name') ),
          );

        $new_type.push( QAST::SVal.new( :value(~$<classbody><super>),
                                        :named('isa') ) )
            if $<classbody><super>;

        $class_stmts.push(QAST::Op.new(
                              :op('bind'),
                              QAST::Var.new( :name($ins_name), :scope('lexical'), :decl('var') ),
                              $new_type,
                          ));

        # Add methods.
        my $class_var := QAST::Var.new( :name($ins_name), :scope('lexical') );

        for @*METHODS {
            my $name := $_.name;

            $class_stmts.push(QAST::Op.new(
                :op('callmethod'), :name('add_method'),
                QAST::Op.new( :op('how'), $class_var ),
                $class_var,
                QAST::SVal.new( :value($name) ),
                QAST::BVal.new( :value($_) ))
            );
        }

        make $class_stmts;
    }

    method classbody($/) {
        $*CUR_BLOCK.push($<stmtlist>.ast);
        $*CUR_BLOCK.blocktype('immediate');
        make $*CUR_BLOCK;
    }

    method stmt:sym<EXPR>($/) { make $<EXPR>.ast; }

    method term:sym<infix=>($/) {
        my $op := $<OPER><O>.made<op>;
        make  QAST::Op.new( :op('bind'),
                            $<var>.ast,
                            QAST::Op.new( :op($op),
                                          $<var>.ast,
                                          $<EXPR>.ast
                            ));
    }

    method value:sym<string>($/) {
        make $<strings>.ast;
    }

    method strings($/) {
        make $<strings>
            ?? QAST::Op.new( :op('concat'), $<string>.ast, $<strings>.ast)
            !! $<string>.ast;
    }

    method string($/) {
        make $<quote_EXPR>.ast;
    }

    method value:sym<heredoc>($/) {
        make $<heredoc>.ast
    }

    method heredoc:sym<literal>($/) {
        make QAST::SVal.new( :value( ~$<text> ) );
    }

    method heredoc-line($/) { make QAST::SVal.new( :value(~$/) ) }

    method heredoc:sym<interp>($/) {
        my $value := QAST::SVal.new( :value('') );

        $value := QAST::Op.new( :op<concat>, $value, $_.ast)
            for $<text>;

        make $value;
    }

    method value:sym<integer>($/) {
        make QAST::IVal.new( :value(+$/.Str) )
    }

    method value:sym<float>($/) {
        make QAST::NVal.new( :value(+$/.Str) )
    }

    method paren-list($/) {
        my @list;
        if $<EXPR> {
            @list.push($_.ast) for $<EXPR>
        }
        make @list;
    }

    method value:sym<array>($/) {
        my $array := QAST::Op.new( :op<list> );
        $array.push($_) for $<paren-list>.ast;
        make $array;
    }

    method term:sym<quote-words>($/) {
        make $<quote_EXPR>.ast;
    }

    method value:sym<hash>($/) {
        my $hash := QAST::Op.new( :op<hash> );
        $hash.push($_) for $<paren-list>.ast;
        make $hash;
    }

    method value:sym<nil>($/) {
        make QAST::Op.new( :op<null> );
    }

    method value:sym<true>($/) {
        make QAST::IVal.new( :value<1> );
    }

    method value:sym<false>($/) {
        make QAST::IVal.new( :value<0> );
    }

    method interp($/) { make $<stmtlist>.ast }
    method quote_escape:sym<#{ }>($/) { make $<interp>.ast }
    method circumfix:sym<( )>($/) { make $<EXPR>.ast }

    # todo: proper type objects
    our %call-tab;
    BEGIN {
        %call-tab := nqp::hash(
            'call', 'call',
            'nil?', 'isnull'
        )
    }

    method postfix:sym<.>($/) {
        my $op := %call-tab{ ~$<operation> };
        my $meth_call := $op
            ?? QAST::Op.new( :op($op) )
            !! QAST::Op.new( :op('callmethod'), :name(~$<operation>) );

        if $<call-args> {
            $meth_call.push($_) for $<call-args>.ast;
        }

        make $meth_call;
    }

    method postcircumfix:sym<[ ]>($/) {
        make QAST::Var.new( :scope('positional'), $<EXPR>.ast );
    }

    method postcircumfix:sym<{ }>($/) {
        make QAST::Var.new( :scope('associative'), $<EXPR>.ast );
    }

    method postcircumfix:sym<ang>($/) {
        make QAST::Var.new( :scope('associative'), $<quote_EXPR>.ast );
    }

    method xblock($/) {
        make QAST::Op.new( $<EXPR>.ast, $<stmtlist>.ast, :node($/) );
    }

    method stmt:sym<cond>($/) {
        my $ast := $<xblock>.ast;
        $ast.op( ~$<op> );
        $ast.push( $<else>.ast )
            if $<else>;

        make $ast;
    }

    method elsif($/) {
        my $ast := $<xblock>.ast;
        $ast.op( 'if' );
        $ast.push( $<else>.ast )
            if $<else>;

        make $ast;
    }

    method else($/) {
        make $<stmtlist>.ast
    }

    method stmt:sym<loop>($/) {
        make QAST::Op.new( $<EXPR>.ast, $<do-block>.ast, :op(~$<op>), :node($/) );
    }

    method stmt:sym<for>($/) {

        my $block := QAST::Block.new(
            QAST::Var.new( :name(~$<ident>), :scope('lexical'), :decl('param')),
            $<do-block>.ast,
            );

        make QAST::Op.new( $<EXPR>.ast, $block, :op('for'), :node($/) );
    }

    method do-block($/) {
        make  $<stmtlist>.ast
    }

    method term:sym<code>($/) {
        make $<stmtlist>.ast;
    }

    method closure($/) {
        $*CUR_BLOCK.push($<stmtlist>.ast);
        make QAST::Op.new(:op<takeclosure>, $*CUR_BLOCK );
    }

    method closure2($/) { self.closure($/) }

    method term:sym<lambda>($/) { make $<closure>.ast }

    method template-chunk($/) {
        my $text := QAST::Stmts.new( :node($/) );
        $text.push( QAST::Op.new( :op<print>, $_.ast ) )
            for $<template-nibble>;

        make $text;
    }

    method template-nibble:sym<interp>($/) {
        make $<interp>.ast
    }

    method template-nibble:sym<literal>($/) {
        make QAST::SVal.new( :value(~$/) );
    }

}

class Rubyish::Compiler is HLL::Compiler {

    method eval($code, *@_args, *%adverbs) {
        my $output := self.compile($code, :compunit_ok(1), |%adverbs);

        if %adverbs<target> eq '' {
            my $outer_ctx := %adverbs<outer_ctx>;
            $output := self.backend.compunit_mainline($output);
            if nqp::defined($outer_ctx) {
                nqp::forceouterctx($output, $outer_ctx);
            }

            $output := $output();
        }

        $output;
    }
}

sub MAIN(*@ARGS) {
    my $comp := Rubyish::Compiler.new();
    $comp.language('rubyish');
    $comp.parsegrammar(Rubyish::Grammar);
    $comp.parseactions(Rubyish::Actions);
    $comp.command_line(@ARGS, :encoding('utf8'));
}
