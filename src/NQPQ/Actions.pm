class NQP::Actions is HLL::Actions {

    our @BLOCK := [];

    sub xblock_immediate($xblock) {
        $xblock[1] := block_immediate($xblock[1]);
        $xblock;
    }

    sub block_immediate($block) {
        $block.blocktype('immediate');
        unless $block.symtable() || $block.handlers() {
            my $stmts := PAST::Stmts.new( :node($block) );
            for $block.list { $stmts.push($_); }
            $block := $stmts;
        }
        $block;
    }

    sub vivitype($sigil) {
        $sigil eq '%'
        ?? PAST::Op.new(:inline("    %r = root_new ['parrot';'Hash']"))
        !! ($sigil eq '@'
            ?? PAST::Op.new(:inline("    %r = root_new ['parrot';'ResizablePMCArray']"))
            !! 'Undef');
    }


    method TOP($/) { make $<comp_unit>.ast; }

    method deflongname($/) {
        make $<colonpair>
             ?? ~$<identifier> ~ ':' ~ $<colonpair>[0].ast.named 
                    ~ '<' ~ colonpair_str($<colonpair>[0].ast) ~ '>'
             !! ~$/;
        # make $<sym> ?? ~$<identifier> ~ ':sym<' ~ ~$<sym>[0] ~ '>' !! ~$/;
    }

    sub colonpair_str($ast) {
        PAST::Op.ACCEPTS($ast)
        ?? pir::join(' ', $ast.list)
        !! $ast.value;
    }

    method comp_unit($/) {
        my $mainline := $<statementlist>.ast;
        my $unit     := @BLOCK.shift;
        
        # Unit needs to have a load-init holding the deserialization or
        # fixup code for this compilation unit.
        $unit.loadinit().push($*W.to_past());
        
        # We'll install our view of GLOBAL as the main one; any other
        # compilation unit that is using this one will then replace it
        # with its view later (or be in a position to restore it).
        $unit.loadinit().push(PAST::Op.new(
            :pasttype('bind_6model'),
            PAST::Var.new( :name('GLOBAL'), :namespace([]), :scope('package') ),
            $*W.get_slot_past_for_object($*PACKAGE)
        ));

        # If our caller wants to know the mainline ctx, provide it here.
        # (CTXSAVE is inherited from HLL::Actions.) Don't do this when
        # there was an explicit {YOU_ARE_HERE}.
        unless $*HAS_YOU_ARE_HERE {
            $unit.push( self.CTXSAVE() );
        }

        # Need to load the NQP dynops/dympmcs, plus any extras requested.
        my @loadlibs := ['nqp_group', 'nqp_ops', 'nqp_bigint_ops', 'trans_ops', 'io_ops'];
        if %*COMPILING<%?OPTIONS><vmlibs> {
            for pir::split(',', %*COMPILING<%?OPTIONS><vmlibs>) {
                @loadlibs.push($_);
            }
        }
        $unit.loadlibs(|@loadlibs);
        
        # Detect if we're the main unit by if we were given any args. If so,
        # register the mainline as a module (so trying to use ourself in the
        # program will not explode). If we have a MAIN sub, call it at end of
        # mainline.
        $unit.unshift(PAST::Var.new( :scope('parameter'), :name('@ARGS'), :slurpy(1),
            :directaccess(1) ));
        my $main_tasks := PAST::Stmts.new(
            PAST::Op.new( :pirop('load_bytecode vs'), 'ModuleLoader.pbc' ),
            PAST::Op.new(
                :pasttype('callmethod'), :name('set_mainline_module'),
                PAST::Var.new( :name('ModuleLoader'), :namespace([]), :scope('package') ),
                PAST::Var.new( :scope('keyed'), PAST::Op.new( :pirop('getinterp P') ), 'context' )
            )
        );
        if $*MAIN_SUB {
            $main_tasks.push(PAST::Op.new(
                :pasttype('call'), PAST::Val.new( :value($*MAIN_SUB) ),
                PAST::Var.new( :scope('lexical'), :name('@ARGS'), :flat(1) )
            ));
        }
        $mainline.push(PAST::Op.new(
            :pasttype('if'),
            PAST::Var.new( :scope('lexical'), :name('@ARGS') ),
            $main_tasks
        ));

        # We force a return here, because we have other
        # :load/:init blocks to execute that we don't want
        # to include as part of the mainline.
        $unit.push(
            PAST::Op.new( :pirop<return>, $mainline )
        );

        # If this code is loaded via load_bytecode, we want the unit mainline 
        # to be executed after all other loadinits have taken place.
        $unit.push(
            PAST::Block.new(
                :pirflags(':load'), :lexical(0), :namespace(''),
                PAST::Op.new( :pasttype<call>, PAST::Val.new( :value($unit) ) )
            )
        );
        $unit.node($/);
        
        # Set HLL.
        $unit.hll('nqp');
        
        make $unit;
    }

    method statementlist($/) {
        my $past := PAST::Stmts.new( :node($/) );
        if $<statement> {
            for $<statement> {
                my $ast := $_.ast;
                $ast := $ast<sink> if pir::defined($ast<sink>);
                if $ast<bareblock> { $ast := block_immediate($ast); }
                $ast := PAST::Stmt.new($ast) if $ast ~~ PAST::Node;
                $past.push( $ast );
            }
        }
        make $past;
    }

    method statement($/, $key?) {
        my $past;
        if $<EXPR> {
            my $mc := $<statement_mod_cond>[0];
            my $ml := $<statement_mod_loop>[0];
            $past := $<EXPR>.ast;
            if $mc {
                $past := PAST::Op.new($mc<cond>.ast, $past, :pasttype(~$mc<sym>), :node($/) );
            }
            if $ml {
                if ~$ml<sym> eq 'for' {
                    $past := PAST::Block.new( :blocktype('immediate'),
                        PAST::Var.new( :name('$_'), :scope('parameter'), :isdecl(1) ),
                        $past);
                    $past.symbol('$_', :scope('lexical') );
                    $past.arity(1);
                    $past := PAST::Op.new($ml<cond>.ast, $past, :pasttype(~$ml<sym>), :node($/) );
                }
                else {
                    $past := PAST::Op.new($ml<cond>.ast, $past, :pasttype(~$ml<sym>), :node($/) );
                }
            }
        }
        elsif $<statement_control> { $past := $<statement_control>.ast; }
        else { $past := 0; }
        make $past;
    }

    method xblock($/) {
        make PAST::Op.new( $<EXPR>.ast, $<pblock>.ast, :pasttype('if'), :node($/) );
    }

    method pblock($/) {
        make $<blockoid>.ast;
    }

    method block($/) {
        make $<blockoid>.ast;
    }

    method blockoid($/) {
        my $BLOCK := @BLOCK.shift;
        if $<statementlist> {
            my $past := $<statementlist>.ast;
            $BLOCK.push($past);
            $BLOCK.node($/);
            $BLOCK.closure(1);
            make $BLOCK;
        }
        else {
            if $*HAS_YOU_ARE_HERE {
                $/.CURSOR.panic('{YOU_ARE_HERE} may only appear once in a setting');
            }
            $*HAS_YOU_ARE_HERE := 1;
            make $<you_are_here>.ast;
        }
    }

    method newpad($/) {
        @BLOCK.unshift( PAST::Block.new( PAST::Stmts.new() ) );
    }

    method outerctx($/) {
        unless pir::defined(%*COMPILING<%?OPTIONS><outer_ctx>) {
            # We haven't got a specified outer context already, so load a
            # setting.
            my $SETTING := $*W.load_setting(%*COMPILING<%?OPTIONS><setting> // 'NQPCORE');
            
            # If it exports HOWs, grab them. Also, if we're loading the
            # setting, also by default load Regex library (we can't load
            # this in the setting as Regex depends on the setting).
            unless %*COMPILING<%?OPTIONS><setting> eq 'NULL' {
                import_HOW_exports($SETTING);
                $*W.load_module('NQPRegex', $*GLOBALish);
                unless %*COMPILING<%?OPTIONS><no-regex-lib> {
                    $*W.load_module('QRegex', $*GLOBALish);
                }
            }
        }
        self.SET_BLOCK_OUTER_CTX(@BLOCK[0]);
    }
    
    sub import_HOW_exports($UNIT) {    
        # See if we've exported any HOWs.
        if pir::exists($UNIT, 'EXPORTHOW') {
            for $UNIT<EXPORTHOW>.WHO {
                %*HOW{$_.key} := $_.value;
            }
        }
    }
    
    method GLOBALish($/) {
        # Create GLOBALish - the current GLOBAL view, created cleanly
        # for each compilation unit so we get separate compilation.
        # XXX Uses KnowHOW for now; want something lighter really.
        $*GLOBALish := $*W.pkg_create_mo(%*HOW<knowhow>, :name('GLOBALish'));
        $*GLOBALish.HOW.compose($*GLOBALish);
        $*W.install_lexical_symbol(@BLOCK[0], 'GLOBALish', $*GLOBALish);
        
        # This is also the starting package.
        $*PACKAGE := $*GLOBALish;
        $*W.install_lexical_symbol(@BLOCK[0], '$?PACKAGE', $*PACKAGE);
    }

    method you_are_here($/) {
        make self.CTXSAVE();
    }

    ## Statement control

    method statement_control:sym<use>($/) {
        my $module := $*W.load_module(~$<name>, $*GLOBALish);
        if pir::defined($module) {
            import_HOW_exports($module);
        }
        make PAST::Stmts.new();
    }

    method statement_control:sym<if>($/) {
        my $count := +$<xblock> - 1;
        my $past := xblock_immediate( $<xblock>[$count].ast );
        if $<else> {
            $past.push( block_immediate( $<else>[0].ast ) );
        }
        # build if/then/elsif structure
        while $count > 0 {
            $count--;
            my $else := $past;
            $past := xblock_immediate( $<xblock>[$count].ast );
            $past.push($else);
        }
        make $past;
    }

    method statement_control:sym<unless>($/) {
        my $past := xblock_immediate( $<xblock>.ast );
        $past.pasttype('unless');
        make $past;
    }

    method statement_control:sym<while>($/) {
        my $past := xblock_immediate( $<xblock>.ast );
        $past.pasttype(~$<sym>);
        make $past;
    }

    method statement_control:sym<repeat>($/) {
        my $pasttype := 'repeat_' ~ ~$<wu>;
        my $past;
        if $<xblock> {
            $past := xblock_immediate( $<xblock>.ast );
            $past.pasttype($pasttype);
        }
        else {
            $past := PAST::Op.new( $<EXPR>.ast, block_immediate( $<pblock>.ast ),
                                   :pasttype($pasttype), :node($/) );
        }
        make $past;
    }

    method statement_control:sym<for>($/) {
        my $past := $<xblock>.ast;
        $past.pasttype('for');
        my $block := $past[1];
        unless $block.arity {
            $block[0].push( PAST::Var.new( :name('$_'), :scope('parameter') ) );
            $block.symbol('$_', :scope('lexical') );
            $block.arity(1);
        }
        $block.blocktype('immediate');
        make $past;
    }

    method statement_control:sym<CATCH>($/) {
        my $block := $<block>.ast;
        push_block_handler($/, $block);
        @BLOCK[0].handlers()[0].handle_types_except('CONTROL');
        make PAST::Stmts.new(:node($/));
    }

    method statement_control:sym<CONTROL>($/) {
        my $block := $<block>.ast;
        push_block_handler($/, $block);
        @BLOCK[0].handlers()[0].handle_types('CONTROL');
        make PAST::Stmts.new(:node($/));
    }

    sub push_block_handler($/, $block) {
        unless @BLOCK[0].handlers() {
            @BLOCK[0].handlers([]);
        }
        unless $block.arity {
            $block.unshift(
                PAST::Op.new( :pasttype('bind_6model'),
                    PAST::Var.new( :scope('lexical'), :name('$!'), :isdecl(1) ),
                    PAST::Var.new( :scope('lexical'), :name('$_')),
                ),
            );
            $block.unshift( PAST::Var.new( :name('$_'), :scope('parameter') ) );
            $block.symbol('$_', :scope('lexical') );
            $block.symbol('$!', :scope('lexical') );
            $block.arity(1);
        }
        $block.blocktype('declaration');
        @BLOCK[0].handlers.unshift(
            PAST::Control.new(
                :node($/),
                PAST::Stmts.new(
                    PAST::Op.new( :pasttype('call'),
                        $block,
                        PAST::Var.new( :scope('register'), :name('exception')),
                    ),
                    PAST::Op.new( :pasttype('bind_6model'),
                        PAST::Var.new( :scope('keyed'),
                            PAST::Var.new( :scope('register'), :name('exception')),
                            'handled'
                        ),
                        1
                    )
                ),
            )
        );
    }

    method statement_prefix:sym<INIT>($/) {
        @BLOCK[0].push($<blorst>.ast);
        make PAST::Stmts.new();
    }

    method statement_prefix:sym<try>($/) {
        my $past := $<blorst>.ast;
        unless $past ~~ PAST::Block {
            $past := PAST::Block.new($past, :blocktype('immediate'), :node($/));
        }
        unless $past.handlers() {
            $past.handlers([PAST::Control.new(
                    :handle_types_except('CONTROL'),
                    PAST::Stmts.new(
                        PAST::Op.new( :pasttype('bind_6model'),
                            PAST::Var.new( :scope('keyed'),
                                PAST::Var.new( :scope('register'), :name('exception')),
                                'handled'
                            ),
                            1
                        )
                    )
                )]
            );
        }
        make $past;
    }

    method blorst($/) {
        make $<block>
             ?? block_immediate($<block>.ast)
             !! $<statement>.ast;
    }

    # Statement modifiers

    method statement_mod_cond:sym<if>($/)     { make $<cond>.ast; }
    method statement_mod_cond:sym<unless>($/) { make $<cond>.ast; }

    method statement_mod_loop:sym<while>($/)  { make $<cond>.ast; }
    method statement_mod_loop:sym<until>($/)  { make $<cond>.ast; }

    ## Terms

    method term:sym<fatarrow>($/)           { make $<fatarrow>.ast; }
    method term:sym<colonpair>($/)          { make $<colonpair>.ast; }
    method term:sym<variable>($/)           { make $<variable>.ast; }
    method term:sym<package_declarator>($/) { make $<package_declarator>.ast; }
    method term:sym<scope_declarator>($/)   { make $<scope_declarator>.ast; }
    method term:sym<routine_declarator>($/) { make $<routine_declarator>.ast; }
    method term:sym<regex_declarator>($/)   { make $<regex_declarator>.ast; }
    method term:sym<statement_prefix>($/)   { make $<statement_prefix>.ast; }
    method term:sym<lambda>($/)             { make $<pblock>.ast; }

    method fatarrow($/) {
        my $past := $<val>.ast;
        $past.named( $<key>.Str );
        make $past;
    }

    method colonpair($/) {
        my $past := $<circumfix>
                    ?? $<circumfix>[0].ast
                    !! PAST::Val.new( :value( !$<not> ) );
        $past.named( ~$<identifier> );
        make $past;
    }

    method variable($/) {
        my $past;
        if $<postcircumfix> {
            $past := $<postcircumfix>.ast;
            $past.unshift( PAST::Var.new( :name('$/') ) );
        }
        else {
            my @name := NQP::Compiler.parse_name(~$/);
            if +@name > 1 {
                if $<twigil> {
                    $/.CURSOR.panic("Twigil not allowed on multi-part name");
                }
                $past := lexical_package_lookup(@name, $/);
                $past.viviself( vivitype( $<sigil> ) );
            }
            elsif $<twigil>[0] eq '*' {
                my $global_fallback := lexical_package_lookup(['GLOBAL',  ~$<sigil> ~ $<desigilname>], $/);
                $global_fallback.viviself(PAST::Op.new(
                    'Contextual ' ~ ~$/ ~ ' not found',
                    :pirop('die')
                ));
                $past := PAST::Var.new(
                    :name(~@name.pop), :scope('contextual'),
                    :viviself($global_fallback)
                );
            }
            elsif $<twigil>[0] eq '!' {
                # Construct PAST.
                my $name := ~@name.pop;
                my $ch   := PAST::Var.new( :name('$?CLASS') );
                $ch<has_compile_time_value> := 1;
                $ch<compile_time_value> := $*PACKAGE;
                $past := PAST::Var.new(
                    :name($name), :scope('attribute_6model'),
                    :viviself( vivitype( $<sigil> ) ),
                    PAST::Op.new( :pirop('nqp_decontainerize PP'), PAST::Var.new( :name('self') ) ),
                    $ch
                );
                
                # Make sure the attribute exists and add type info.
                unless $*IN_DECL {
                    my $attr;
                    for $*PACKAGE.HOW.attributes($*PACKAGE, :local(1)) {
                        if $_.name eq $name {
                            $attr := $_;
                            last;
                        }
                    }
                    if pir::defined($attr) {
                        if pir::can($attr, 'type') {
                            $past.type($attr.type);
                        }
                    }
                    else {
                        $/.CURSOR.panic("Attribute '$name' not declared");
                    }
                }
            }
            elsif is_package(~@name[0]) {
                $past := lexical_package_lookup(@name, $/);
                $past.viviself( vivitype( $<sigil> ) );
            }
            else {
                $past := PAST::Var.new(
                    :name(~@name.pop), :viviself( vivitype( $<sigil> ) )
                );
            }
        }
        make $past;
    }

    method package_declarator:sym<module>($/)  { make $<package_def>.ast }
    method package_declarator:sym<knowhow>($/) { make $<package_def>.ast }
    method package_declarator:sym<class>($/)   { make $<package_def>.ast }
    method package_declarator:sym<grammar>($/) { make $<package_def>.ast }
    method package_declarator:sym<role>($/)    { make $<package_def>.ast }
    method package_declarator:sym<native>($/)  { make $<package_def>.ast }
    
    method package_declarator:sym<stub>($/) {
        # Construct meta-object with specified metaclass, adding it to the
        # serialization context for this compilation unit.
        my $HOW := find_sym($<metaclass><identifier>, $/);
        my $PACKAGE := $*W.pkg_create_mo($HOW, :name(~$<name>));
        
        # Install it in the current package or current lexpad as needed.
        if $*SCOPE eq 'our' || $*SCOPE eq '' {
            $*W.install_package_symbol($*OUTERPACKAGE, $<name><identifier>, $PACKAGE);
            if +$<name><identifier> == 1 {
                $*W.install_lexical_symbol(@BLOCK[0], $<name><identifier>[0], $PACKAGE);
            }
        }
        elsif $*SCOPE eq 'my' {
            if +$<name><identifier> != 1 {
                $<name>.CURSOR.panic("A my scoped package cannot have a multi-part name yet");
            }
            $*W.install_lexical_symbol(@BLOCK[0], $<name><identifier>[0], $PACKAGE);
        }
        else {
            $/.CURSOR.panic("$*SCOPE scoped packages are not supported");
        }
        
        make PAST::Stmts.new();
    }

    method package_def($/) {
        # Get name and meta-object.
        my @ns := pir::clone__PP($<name><identifier>);
        my $name := ~@ns.pop;
        my $how := %*HOW{$*PKGDECL};

        # Get the body code.
        my $past := $<block> ?? $<block>.ast !! $<comp_unit>.ast;
        if $*SCOPE eq 'our' || $*SCOPE eq '' {
            $past.namespace( $<name><identifier> );
        }

        # Evaluate everything in the package in-line unless this is a generic
        # type in which case it needs delayed evaluation. Normally, $?CLASS is
        # a fixed lexical, but for generic types it becomes a parameter. Also
        # for parametric types, pass along the role body block.
        if pir::can($how, 'parametric') && $how.parametric($how) {
            $past.blocktype('declaration');
            $past.unshift(PAST::Var.new( :name('$?CLASS'), :scope('parameter'),
                :directaccess(1) ));
            $past.symbol('$?CLASS', :scope('lexical'));
            $*W.pkg_set_body_block($*PACKAGE, $past);
            $*W.install_lexical_symbol($past, '$?PACKAGE', $*PACKAGE);
            $*W.install_lexical_symbol($past, '$?ROLE', $*PACKAGE);
        }
        else {
            $past.blocktype('immediate');
            $*W.install_lexical_symbol($past, '$?PACKAGE', $*PACKAGE);
            $*W.install_lexical_symbol($past, '$?CLASS', $*PACKAGE);
        }

        # Add parent, if we have one; otherwise set default.
        if $<parent> {
            my $parent;
            my $parent_found;
            try {
                $parent := find_sym(pir::clone__PP($<parent>[0]<identifier>), $/);
                $parent_found := 1;
            }
            if $parent_found {
                $*W.pkg_add_parent_or_role($*PACKAGE, "add_parent", $parent);
            }
            else {
                $/.CURSOR.panic("Could not find parent class '" ~ ~$<parent>[0] ~ "'");
            }
        }
        elsif pir::can($how, 'set_default_parent') {
            my $default := $*PKGDECL eq 'grammar' ?? ['NQPCursor'] !! ['NQPMu'];
            $*W.pkg_add_parent_or_role($*PACKAGE, "set_default_parent",
                find_sym($default, $/));
        }

        # Add any done roles.
        if $<role> {
            for $<role> {
                my $role;
                my $role_found;
                try {
                    $role := find_sym(pir::clone__PP($_<identifier>), $/);
                    $role_found := 1;
                }
                if $role_found {
                    $*W.pkg_add_parent_or_role($*PACKAGE, "add_role", $role);
                }
                else {
                    $/.CURSOR.panic("Could not find role '" ~ ~$_ ~ "'");
                }
            }
        }

        # Finally, compose.
        $*W.pkg_compose($*PACKAGE);

        make $past;
    }

    method scope_declarator:sym<my>($/)  { make $<scoped>.ast; }
    method scope_declarator:sym<our>($/) { make $<scoped>.ast; }
    method scope_declarator:sym<has>($/) { make $<scoped>.ast; }

    method scoped($/) {
        make $<declarator>       ?? $<declarator>.ast !!
             $<multi_declarator> ?? $<multi_declarator>.ast !!
                                    $<package_declarator>.ast;
    }

    method declarator($/) {
        make $<routine_declarator>
             ?? $<routine_declarator>.ast
             !! $<variable_declarator>.ast;
    }

    method multi_declarator:sym<multi>($/) { make $<declarator> ?? $<declarator>.ast !! $<routine_def>.ast }
    method multi_declarator:sym<proto>($/) { make $<declarator> ?? $<declarator>.ast !! $<routine_def>.ast }
    method multi_declarator:sym<null>($/)  { make $<declarator>.ast }


    method variable_declarator($/) {
        my $past := $<variable>.ast;
        my $sigil := $<variable><sigil>;
        my $name := $past.name;
        my $BLOCK := @BLOCK[0];
        if $name && $BLOCK.symbol($name) {
            $/.CURSOR.panic("Redeclaration of symbol ", $name);
        }
        if $*SCOPE eq 'has' {
            # Locate the type of meta-attribute we need.
            unless pir::exists(%*HOW, $*PKGDECL ~ '-attr') {
                $/.CURSOR.panic("$*PKGDECL packages do not support attributes");
            }
            
            # Set up arguments for meta-attribute instantiation.
            my %lit_args;
            my %obj_args;
            %lit_args<name> := $name;
            if $<typename> {
                %obj_args<type> := find_sym([~$<typename>[0]], $/);
            }
            
            # Add it.
            $*W.pkg_add_attribute($*PACKAGE, %*HOW{$*PKGDECL ~ '-attr'},
                %lit_args, %obj_args);

            $past := PAST::Stmts.new();
        }
        elsif $*SCOPE eq 'our' {
            # Depending on if this was already considered our scoped,
            # we may or may not have got a node in $var that's set up
            # right already. We build it here just to be sure.
            $name := ~$<variable>;
            $past := lexical_package_lookup([$name], $/);
            $past.viviself( vivitype($sigil) );
            $BLOCK.symbol($name, :scope('package') );
        }
        else {
            $BLOCK[0].push(PAST::Var.new(
                :name($name), :scope('lexical'), :isdecl(1), :directaccess(1),
                :lvalue(1), :viviself( vivitype($sigil) ),
                :node($/)
            ));
            $BLOCK.symbol($name, :scope('lexical') );
        }

        # Apply traits.
        make $past;

        if $<trait> {
            for $<trait> { $_.ast()($/); }
        }

    }

    method routine_declarator:sym<sub>($/) { make $<routine_def>.ast; }
    method routine_declarator:sym<method>($/) { make $<method_def>.ast; }

    method routine_def($/) {
        # If it's just got * as a body, make a multi-dispatch enterer.
        # Otherwise, need to build a sub.
        my $past;
        if $<onlystar> {
            $past := only_star_block();
        }
        else {
            $past := $<blockoid>.ast;
            $past.blocktype('declaration');
            if $*RETURN_USED {
                $past.control('return_pir');
            }
        }
        my $block := $past;

        if $<deflongname> {
            my $name := ~$<sigil>[0] ~ $<deflongname>[0].ast;
            $past.name($name);
            if $*SCOPE eq '' || $*SCOPE eq 'my' || $*SCOPE eq 'our' {
                if $*MULTINESS eq 'multi' {
                    # Does the current block have a candidate holder in place?
                    if $*SCOPE eq 'our' { pir::die('our-scoped multis not yet implemented') }
                    my $cholder;
                    my %sym := @BLOCK[0].symbol($name);
                    if %sym<cholder> {
                        $cholder := %sym<cholder>;
                    }
                    
                    # Otherwise, no candidate holder, so add one.
                    else {
                        # Check we have a proto in scope.
                        if %sym<proto> {
                            # WTF, a proto is in this scope, but didn't set up a
                            # candidate holder?!
                            $/.CURSOR.panic('Internal Error: Current scope has a proto, but no candidate list holder was set up. (This should never happen.)');
                        }
                        my $found_proto;
                        for @BLOCK {
                            my %sym := $_.symbol($name);
                            if %sym<proto> || %sym<cholder> {
                                $found_proto := 1;
                            }
                            elsif %sym {
                                $/.CURSOR.panic("Cannot declare a multi when an only is already in scope.");
                            }
                        }

                        # If we didn't find a proto, error for now.
                        unless $found_proto {
                            $/.CURSOR.panic("Sorry, no proto sub in scope, and auto-generation of protos is not yet implemented.");
                        }

                        # Set up dispatch routine in this scope.
                        $cholder := PAST::Op.new( :pasttype('list') );
                        my $dispatch_setup := PAST::Op.new(
                            :pirop('create_dispatch_and_add_candidates PPP'),
                            PAST::Var.new( :name($name), :scope('outer') ),
                            $cholder
                        );
                        @BLOCK[0][0].push(PAST::Var.new( :name($name), :isdecl(1), :directaccess(1),
                                          :viviself($dispatch_setup), :scope('lexical') ) );
                        @BLOCK[0].symbol($name, :scope('lexical'), :cholder($cholder) );
                    }

                    # Add this candidate to the holder.
                    $cholder.push($past);

                    # Build a type signature object for the multi-dispatcher to use.
                    attach_multi_signature($past);
                }
                elsif $*MULTINESS eq 'proto' {
                    # Create a candidate list holder for the dispatchees
                    # this proto will work over, and install them along
                    # with the proto.
                    if $*SCOPE eq 'our' { pir::die('our-scoped protos not yet implemented') }
                    my $cholder := PAST::Op.new( :pasttype('list') );
                    @BLOCK[0][0].push(PAST::Var.new( :name($name), :isdecl(1), :directaccess(1),
                                          :viviself($past), :scope('lexical') ) );
                    @BLOCK[0][0].push(PAST::Op.new(
                        :pirop('set_dispatchees 0PP'),
                        PAST::Var.new( :name($name) ),
                        $cholder
                    ));
                    @BLOCK[0].symbol($name, :scope('lexical'), :proto(1), :cholder($cholder) );

                    # Need it to be a DispatcherSub.
                    $past.pirflags(':instanceof("DispatcherSub")');
                }
                else {
                    @BLOCK[0][0].push(PAST::Var.new( :name($name), :isdecl(1), :directaccess(1),
                                          :viviself($past), :scope('lexical') ) );
                    @BLOCK[0].symbol($name, :scope('lexical') );
                    if $*SCOPE eq 'our' {
                        # Need to install it at loadinit time but also re-bind
                        # it per invocation.
                        $*W.install_package_routine($*PACKAGE, $name, $past);
                        @BLOCK[0][0].push(PAST::Op.new(
                            :pasttype('bind_6model'),
                            lexical_package_lookup([$name], $/),
                            PAST::Var.new( :name($name), :scope('lexical') )
                        ));
                    }
                }
                $past := PAST::Var.new( :name($name) );
            }
            else {
                $/.CURSOR.panic("$*SCOPE scoped routines are not supported yet");
            }
            
            # Is it the MAIN sub?
            if $name eq 'MAIN' && $*MULTINESS ne 'multi' {
                $*MAIN_SUB := $block;
            }
        }

        # Apply traits.
        $past<block_past> := $block;
        if $<trait> {
            for $<trait> { $_.ast()($/); }
        }

        make $past;
    }


    method method_def($/) {
        # If it's just got * as a body, make a multi-dispatch enterer.
        # Otherwise, build method block PAST.
        my $past;
        if $<onlystar> {
            $past := only_star_block();
        }
        else {
            $past := $<blockoid>.ast;
            $past.blocktype('declaration');
            if $*RETURN_USED {
                $past.control('return_pir');
            }
        }

        # Always need an invocant.
        unless $past<signature_has_invocant> {
            $past[0].unshift(PAST::Var.new(
                :name('self'), :scope('parameter'), :directaccess(1),
                :multitype($*W.get_ref($*PACKAGE))
            ));
        }
        $past.symbol('self', :scope('lexical') );
        
        # Install it where it should go (methods table / namespace).
        if $<deflongname> {
            # Set name.
            my $name := ~$<private> ~ ~$<deflongname>[0].ast;
            $past.name($name);

            # If it is a multi, we need to build a type signature object for
            # the multi-dispatcher to use.
            if $*MULTINESS eq 'multi' { attach_multi_signature($past); }

            # Insert it into the method table.
            my $meta_meth := $*MULTINESS eq 'multi' ?? 'add_multi_method' !! 'add_method';
            my $is_dispatcher := $*MULTINESS eq 'proto';
            $*W.pkg_add_method($*PACKAGE, $meta_meth, $name, $past, $is_dispatcher);
            
            # Install it in the package also if needed.
            if $*SCOPE eq 'our' {
                $*W.install_package_routine($*PACKAGE, $name, $past);
            } else {
                if $past.pirflags() {
                    $past.pirflags(~$past.pirflags() ~ ":anon");
                } else {
                    $past.pirflags(":anon");
                }
            }
        }

        # Install AST node in match object, then apply traits.
        make $past;
        $past<block_past> := $past;
        if $<trait> {
            for $<trait> { $_.ast()($/); }
        }
    }

    sub only_star_block() {
        my $past := @BLOCK.shift;
        $past.closure(1);
        $past.push(PAST::Op.new(
            :pirop('multi_dispatch_over_lexical_candidates P')
        ));
        $past
    }

    sub attach_multi_signature($routine) {
        # Use set_sub_multisig op to set up a multi sig. Note that we stick
        # it in the same slot Parrot multis use for their multi signature,
        # this is just a bit more complex than what Parrot needs.
        my $types := PAST::Op.new( :pasttype('list') );
        my $definednesses := PAST::Op.new( :pasttype('list') );
        for @($routine[0]) {
            if $_ ~~ PAST::Var && $_.scope eq 'parameter' {
                $types.push($_.multitype // PAST::Op.new( :pirop('null P') ));
                $definednesses.push($_<definedness> eq 'D' ?? 1 !!
                                    $_<definedness> eq 'U' ?? 2 !! 0);
            }
        }
        $*W.set_routine_signature($routine, $types, $definednesses);
    }

    method signature($/) {
        my $BLOCKINIT := @BLOCK[0][0];
        if $<invocant> {
            my $inv := $<invocant>[0].ast;
            $BLOCKINIT.push($inv);
            $BLOCKINIT.push(PAST::Var.new(
                :name('self'), :scope('lexical'), :isdecl(1), :directaccess(1),
                :viviself(PAST::Var.new( :scope('lexical'), :name($inv.name) ))
            ));
            @BLOCK[0]<signature_has_invocant> := 1
        }
        for $<parameter> { $BLOCKINIT.push($_.ast); }
    }

    method parameter($/) {
        my $quant := $<quant>;
        my $past;
        if $<named_param> {
            $past := $<named_param>.ast;
            if $quant ne '!' {
                $past.viviself( vivitype($<named_param><param_var><sigil>) );
            }
        }
        else {
            $past := $<param_var>.ast;
            if $quant eq '*' {
                $past.slurpy(1);
                $past.named( $<param_var><sigil> eq '%' );
            }
            elsif $quant eq '?' {
                $past.viviself( vivitype($<param_var><sigil>) );
            }
        }
        if $<default_value> {
            if $quant eq '*' {
                $/.CURSOR.panic("Can't put default on slurpy parameter");
            }
            if $quant eq '!' {
                $/.CURSOR.panic("Can't put default on required parameter");
            }
            $past.viviself( $<default_value>[0]<EXPR>.ast );
        }
        unless $past.viviself { @BLOCK[0].arity( +@BLOCK[0].arity + 1 ); }

        # Note: this is hijacking multitype a bit here comapred to what it was
        # originally used for (a textual name). But it's ignored 
        if $<typename> {
            $past.multitype($<typename>[0].ast);
        }

        # Set definedness flag (XXX want a better way to do this).
        if $<definedness> {
            $past<definedness> := ~$<definedness>[0];
        }

        make $past;
    }

    method param_var($/) {
        my $name := ~$/;
        my $past :=  PAST::Var.new( :name($name), :scope('parameter'),
                                    :isdecl(1), :directaccess(1), :node($/) );
        @BLOCK[0].symbol($name, :scope('lexical') );
        make $past;
    }

    method named_param($/) {
        my $past := $<param_var>.ast;
        $past.named( ~$<param_var><name> );
        make $past;
    }

    method typename($/) {
        # Try to locate the symbol. We'll emit a lookup via the SC so
        # the scope we emit code to do the symbol lookup in won't matter,
        # and so we can complain about non-existent type names.
        my @name := HLL::Compiler.parse_name(~$/);
        my $found := 0;
        try {
            my $sym := find_sym(@name, $/);
            make $*W.get_ref($sym);
            $found := 1;
        }
        unless $found {
            $/.CURSOR.panic("Use of undeclared type '" ~ ~$/ ~ "'");
        }
    }

    method trait($/) {
        make $<trait_mod>.ast;
    }

    method trait_mod:sym<is>($/) {
        if $<longname> eq 'parrot_vtable' {
            # XXX This should be in Parrot-specific module and need a pragma.
            my $cpast := $<circumfix>[0].ast;
            $/.CURSOR.panic("Trait 'parrot_vtable' requires constant scalar argument")
                unless $cpast ~~ PAST::Val;
            my $name := $cpast.value;
            my $package := $*PACKAGE;
            my $is_dispatcher := $*SCOPE eq 'proto';
            make -> $match {
                $*W.pkg_add_method($package, 'add_parrot_vtable_mapping', $name, 
                    $match.ast<block_past>, $is_dispatcher);
            };
        }
        elsif $<longname> eq 'parrot_vtable_handler' {
            # XXX This should be in Parrot-specific module and need a pragma.
            my $cpast := $<circumfix>[0].ast;
            $/.CURSOR.panic("Trait 'parrot_vtable_handler' requires constant scalar argument")
                unless $cpast ~~ PAST::Val;
            my $name := $cpast.value;
            my $package := $*PACKAGE;
            make -> $match {
                $*W.pkg_add_parrot_vtable_handler_mapping($package, $name, ~$match<variable>);
            };
        }
        elsif $<longname> eq 'pirflags' {
            $/.CURSOR.panic("Trait 'pirflags' no longer supported; use 'is vtable'");
        }
        else {
            $/.CURSOR.panic("Trait '$<longname>' not implemented");
        }
    }

    method regex_declarator($/, $key?) {
        my $name := ~$<deflongname>.ast;
        my $past;
        if $<proto> {
            $past :=
                PAST::Stmts.new(
                    PAST::Block.new( :name($name),
                        PAST::Op.new(
                            PAST::Var.new( :name('self'), :scope('parameter') ),
                            $name,
                            :name('!protoregex'),
                            :pasttype('callmethod')
                        ),
                        :blocktype('declaration'),
                        :lexical(0),
                        :node($/)
                    ),
                );
                for @($past) {
                    $*W.pkg_add_method($*PACKAGE, 'add_method', $_.name(), $_, 0);
                }
        }
        else {
            my $block := @BLOCK.shift;
            $block[0].unshift(PAST::Var.new(:name<self>, :scope<parameter>));
            $block[0].push(
                PAST::Var.new(:name<self>, :scope<register>, :isdecl(1),
                              :viviself(PAST::Var.new( :name<self>, :scope('lexical_6model') ))));
            $block[0].push(PAST::Var.new(:name<$¢>, :scope<lexical>, :isdecl(1)));
            $block[0].push(PAST::Var.new(:name<$/>, :scope<lexical>, :isdecl(1)));
            $block.symbol('$¢', :scope<lexical>);
            $block.symbol('$/', :scope<lexical>);
            my $regex := QRegex::P6Regex::Actions::buildsub($<p6regex>.ast, $block);
            $regex.name($name);
            
            if $*PKGDECL && pir::can($*PACKAGE.HOW, 'add_method') {
                # Add the actual method.
                $*W.pkg_add_method($*PACKAGE, 'add_method', $name, $regex, 0);
            }
            
            # In sink context, we don't need the Regex::Regex object.
            $past := PAST::Op.new(
                :pasttype<callmethod>, :name<new>,
                lexical_package_lookup(['NQPRegexMethod'], $/),
                $regex);
            $past<sink> := $regex;
        }
        make $past;
    }


    method dotty($/) {
        my $past := $<args> ?? $<args>[0].ast !! PAST::Op.new( :node($/) );
        if $<quote> {
            $past.name($<quote>.ast);
            $past.pasttype('callmethod');
        }
        elsif $<longname> eq 'HOW' {
            $past.pirop('get_how PP');
        }
        elsif $<longname> eq 'WHAT' {
            $past.pirop('get_what PP');
        }
        elsif $<longname> eq 'WHO' {
            $past.pirop('get_who PP');
        }
        elsif $<longname> eq 'REPR' {
            $past.pirop('repr_name SP');
        }
        else {
            $past.name(~$<longname>);
            $past.pasttype('callmethod');
        }
        make $past;
    }

    ## Terms

    method term:sym<self>($/) {
        make PAST::Op.new( :pirop('nqp_decontainerize PP'),
            PAST::Var.new( :name('self') ) );
    }

    method term:sym<identifier>($/) {
        my $past := $<args>.ast;
        $past.name(~$<deflongname>);
        make $past;
    }

    method term:sym<name>($/) {
        # See if it's a lexical symbol (known in any outer scope).
        my $var;
        if is_lexical(~$<name>) {
            $var := PAST::Var.new( :name(~$<name>), :scope('lexical') );
        }
        else {
            my @ns := pir::clone__PP($<name><identifier>);
            $var := lexical_package_lookup(@ns, $/);
        }
        
        # If it's a call, add the arguments.
        my $past := $var;
        if $<args> {
            $past := $<args>[0].ast;
            $past.unshift($var);
        }
        make $past;
    }

    method term:sym<pir::op>($/) {
        my $past := $<args> ?? $<args>[0].ast !! PAST::Op.new( :node($/) );
        my $pirop := ~$<op>;
        $pirop := pir::join(' ', pir::split('__', $pirop));
        $past.pirop($pirop);
        $past.pasttype('pirop');
        make $past;
    }

    method term:sym<pir::const>($/) {
        make PAST::Val.new( :value(~$<const>), :returns<!macro_const>, :node($/) );
    }

    method term:sym<nqp::op>($/) {
        my $op    := ~$<op>;
        my $args  := $<args> ?? $<args>[0].ast.list !! [];
        my $past  := PAST::Node.'map_node'(|$args, :map<nqp>, :op($op), 
                                           :node($/));

        pir::defined($past) ||
            $/.CURSOR.panic("Unrecognized nqp:: opcode 'nqp::$op'");
        make $past;
    }

    method term:sym<onlystar>($/) {
        make PAST::Op.new(
            :pirop('multi_dispatch_over_lexical_candidates P')
        );
    }

    method args($/) { make $<arglist>.ast; }

    method arglist($/) {
        my $past := PAST::Op.new( :pasttype('call'), :node($/) );
        if $<EXPR> {
            my $expr := $<EXPR>.ast;
            if $expr.name eq '&infix:<,>' && !$expr.named {
                for $expr.list { $past.push($_); }
            }
            else { $past.push($expr); }
        }
        my $i := 0;
        my $n := +$past.list;
        while $i < $n {
            if $past[$i].name eq '&prefix:<|>' {
                $past[$i] := $past[$i][0];
                $past[$i].flat(1);
                if $past[$i].isa(PAST::Val)
                    && pir::substr($past[$i].name, 0, 1) eq '%' {
                        $past[$i].named(1);
                }
            }
            $i++;
        }
        make $past;
    }

    method term:sym<multi_declarator>($/) { make $<multi_declarator>.ast; }

    method term:sym<value>($/) { make $<value>.ast; }

    method circumfix:sym<( )>($/) {
        make $<EXPR>
             ?? $<EXPR>[0].ast
             !! PAST::Op.new( :pasttype('list'), :node($/) );
    }

    method circumfix:sym<[ ]>($/) {
        my $past;
        if $<EXPR> {
            $past := $<EXPR>[0].ast;
            if $past.name ne '&infix:<,>' {
                $past := PAST::Op.new( $past, :pasttype('list') );
            }
        }
        else {
            $past := PAST::Op.new( :pasttype('list') );
        }
        $past.name('&circumfix:<[ ]>');
        make $past;
    }

    method circumfix:sym<ang>($/) { make $<quote_EXPR>.ast; }
    method circumfix:sym<« »>($/) { make $<quote_EXPR>.ast; }

    method circumfix:sym<{ }>($/) {
        if +$<pblock><blockoid><statementlist><statement> > 0 {
            my $past := $<pblock>.ast;
            $past<bareblock> := 1;
            make $past;
        }
        elsif $<pblock><blockoid><you_are_here> {
            make $<pblock>.ast;
        }
        else {
            make vivitype('%');
        }
    }

    method circumfix:sym<sigil>($/) {
        my $name := ~$<sigil> eq '@' ?? 'list' !!
                    ~$<sigil> eq '%' ?? 'hash' !!
                                        'item';
        make PAST::Op.new( :pasttype('callmethod'), :name($name), $<semilist>.ast );
    }

    method semilist($/) { make $<statement>.ast }

    method postcircumfix:sym<[ ]>($/) {
        make PAST::Var.new( $<EXPR>.ast , :scope('keyed_int'),
                            :viviself('Undef'),
                            :vivibase(vivitype('@')) );
    }

    method postcircumfix:sym<{ }>($/) {
        make PAST::Var.new( $<EXPR>.ast , :scope('keyed'),
                            :viviself('Undef'),
                            :vivibase(vivitype('%')) );
    }

    method postcircumfix:sym<ang>($/) {
        make PAST::Var.new( $<quote_EXPR>.ast, :scope('keyed'),
                            :viviself('Undef'),
                            :vivibase(vivitype('%')) );
    }

    method postcircumfix:sym<( )>($/) {
        make $<arglist>.ast;
    }

    method value($/) {
        make $<quote> ?? $<quote>.ast !! $<number>.ast;
    }

    method number($/) {
        my $value := $<dec_number> ?? $<dec_number>.ast !! $<integer>.ast;
        if ~$<sign> eq '-' { $value := -$value; }
        make $<dec_number> ??
            PAST::Val.new( :value($value) ) !!
            PAST::Want.new( PAST::Val.new( :value($value) ), 'Ii', $value );
    }

    method quote:sym<apos>($/) { make $<quote_EXPR>.ast; }
    method quote:sym<dblq>($/) { make $<quote_EXPR>.ast; }
    method quote:sym<qq>($/)   { make $<quote_EXPR>.ast; }
    method quote:sym<q>($/)    { make $<quote_EXPR>.ast; }
    method quote:sym<Q>($/)    { make $<quote_EXPR>.ast; }
    method quote:sym<Q:PIR>($/) {
        make PAST::Op.new( :inline( $<quote_EXPR>.ast.value ),
                           :pasttype('inline'),
                           :node($/) );
    }

    method quote:sym</ />($/) {
        my $block := @BLOCK.shift;
        $block[0].push(PAST::Var.new(:name<self>, :scope<parameter>));
        $block[0].push(
            PAST::Var.new(:name<self>, :scope<register>, :isdecl(1),
                          :viviself(PAST::Var.new( :name<self>, :scope('lexical_6model') ))));
        $block[0].push(PAST::Var.new(:name<$¢>, :scope<lexical>, :isdecl(1)));
        $block[0].push(PAST::Var.new(:name<$/>, :scope<lexical>, :isdecl(1)));
        $block.symbol('$¢', :scope<lexical>);
        $block.symbol('$/', :scope<lexical>);

        my $regex := QRegex::P6Regex::Actions::buildsub($<p6regex>.ast, $block);
        my $past := PAST::Op.new(
            :pasttype<callmethod>, :name<new>,
            lexical_package_lookup(['NQPRegex'], $/),
            $regex);

        # In sink context, we don't need the Regex::Regex object.
        $past<sink> := $regex;
        make $past;
    }

    method quote_escape:sym<$>($/) { make $<variable>.ast; }
    method quote_escape:sym<{ }>($/) {
        make PAST::Op.new(
            :pirop('set S*'), block_immediate($<block>.ast), :node($/)
        );
    }
    method quote_escape:sym<esc>($/) { make "\c[27]"; }

    ## Operators

    method postfix:sym<.>($/) { make $<dotty>.ast; }

    method postfix:sym<++>($/) {
        make PAST::Op.new( :name('postfix:<++>'),
                           :inline('    clone %r, %0', '    inc %0'),
                           :pasttype('inline') );
    }

    method postfix:sym<-->($/) {
        make PAST::Op.new( :name('postfix:<-->'),
                           :inline('    clone %r, %0', '    dec %0'),
                           :pasttype('inline') );
    }

    method prefix:sym<make>($/) {
        make PAST::Op.new(
                 PAST::Var.new( :name('$/'), :scope('contextual') ),
                 :pasttype('callmethod'),
                 :name('!make'),
                 :node($/)
        );
    }

    sub control($/, $type) {
        make PAST::Op.new(
            :node($/),
            :pirop('die__vii'),
            0,
            PAST::Val.new( :value($type), :returns<!macro_const> )
        );
    }

    method term:sym<next>($/) { control($/, 'CONTROL_LOOP_NEXT') }
    method term:sym<last>($/) { control($/, 'CONTROL_LOOP_LAST') }
    method term:sym<redo>($/) { control($/, 'CONTROL_LOOP_REDO') }

    method infix:sym<~~>($/) {
        make PAST::Op.new( :pasttype<callmethod>, :name<ACCEPTS>, :node($/) );
    }
    
    # Takes a multi-part name that we know is in a package and generates
    # PAST to look it up using NQP package semantics.
    sub lexical_package_lookup(@name, $/) {
        # Catch empty names and die helpfully.
        if +@name == 0 { $/.CURSOR.panic("Cannot compile empty name"); }
        
        # The final lookup will always be just a keyed access to a
        # symbol table.
        my $final_name := @name.pop();
        my $lookup := PAST::Var.new( :scope('keyed'), ~$final_name);
        
        # If there's no explicit qualification, then look it up in the
        # current package, and fall back to looking in GLOBAL.
        if +@name == 0 {
            $lookup.unshift(PAST::Op.new(
                :pirop('get_who PP'),
                PAST::Var.new( :name('$?PACKAGE'), :scope('lexical') )
            ));
            $lookup.viviself(PAST::Var.new(
                :scope('keyed'),
                PAST::Op.new(
                    :pirop('get_who PP'),
                    PAST::Var.new( :name('GLOBAL'), :namespace([]), :scope('package') )
                ),
                ~$final_name
            ));
        }
        
        # Otherwise, see if the first part of the name is lexically
        # known. If not, it's in GLOBAL. Also, if first part is GLOBAL
        # then strip it off.
        else {
            my $path := is_lexical(@name[0]) ??
                PAST::Var.new( :name(@name.shift()), :scope('lexical') ) !!
                PAST::Var.new( :name('GLOBAL'), :namespace([]), :scope('package') );
            if @name[0] eq 'GLOBAL' {
                @name.shift();
            }
            for @name {
                $path := PAST::Op.new(
                    :pirop('nqp_get_package_through_who PPs'),
                    $path, ~$_);
            }
            $lookup.unshift(PAST::Op.new(:pirop('get_who PP'), $path));
        }
        
        return $lookup;
    }
    
    # Checks if the given name is known anywhere in the lexpad
    # and with lexical scope.
    sub is_lexical($name) {
        is_scope($name, 'lexical')
    }
    
    # Checks if the given name is known anywhere in the lexpad
    # and with package scope.
    sub is_package($name) {
        is_scope($name, 'package')
    }
    
    # Checks if a given name is known in the lexpad anywhere
    # with the specified scope.
    sub is_scope($name, $wanted_scope) {
        for @BLOCK {
            my %sym := $_.symbol($name);
            if +%sym {
                return %sym<scope> eq $wanted_scope;
            }
        }
        0;
    }
    
    # Checks if the symbol is known.
    method known_sym($/, @name) {
        my $known := 0;
        try {
            find_sym(@name, $/);
            $known := 1;
        }
        $known
    }
    
    # Finds a symbol that has a known value at compile time from the
    # perspective of the current scope. Checks for lexicals, then if
    # that fails tries package lookup.
    sub find_sym(@name, $/) {
        # Make sure it's not an empty name.
        unless +@name { $/.CURSOR.panic("Cannot look up empty name"); }
        
        # If it's a single-part name, look through the lexical
        # scopes.
        if +@name == 1 {
            my $final_name := @name[0];
            for @BLOCK {
                my %sym := $_.symbol($final_name);
                if +%sym {
                    if pir::exists(%sym, 'value') {
                        return %sym<value>;
                    }
                    else {
                        pir::die("No compile-time value for $final_name");
                    }
                }
            }
        }
        
        # If it's a multi-part name, see if the containing package
        # is a lexical somewhere. Otherwise we fall back to looking
        # in GLOBALish.
        my $result := $*GLOBALish;
        if +@name >= 2 {
            my $first := @name[0];
            for @BLOCK {
                my %sym := $_.symbol($first);
                if +%sym {
                    if pir::exists(%sym, 'value') {
                        $result := %sym<value>;
                        @name.shift();
                        last;
                    }
                    else {
                        pir::die("No compile-time value for $first");
                    }                    
                }
            }
        }
        
        # Try to chase down the parts of the name.
        for @name {
            if pir::exists($result.WHO, ~$_) {
                $result := ($result.WHO){$_};
            }
            else {
                pir::die("Could not locate compile-time value for symbol " ~
                    pir::join('::', @name));
            }
        }
        
        $result;
    }
}

class NQP::RegexActions is QRegex::P6Regex::Actions {

    method metachar:sym<:my>($/) {
        my $past := $<statement>.ast;
        make QAST::Regex.new( $past,
                              :rxtype('pastnode'), :subtype('declarative'), :node($/) );
    }

    method metachar:sym<{ }>($/) { 
        make QAST::Regex.new( $<codeblock>.ast, 
                              :rxtype<pastnode>, :node($/) );
    }

    method metachar:sym<nqpvar>($/) {
        make QAST::Regex.new( PAST::Node.new('!INTERPOLATE', $<var>.ast), 
                              :rxtype<subrule>, :subtype<method>, :node($/));
    }

    method assertion:sym<{ }>($/) { 
        make QAST::Regex.new( PAST::Node.new('!INTERPOLATE_REGEX', $<codeblock>.ast), 
                              :rxtype<subrule>, :subtype<method>, :node($/));
    }

    method assertion:sym<?{ }>($/) { 
        make QAST::Regex.new( $<codeblock>.ast, 
                              :subtype<zerowidth>, :negate( $<zw> eq '!' ),
                              :rxtype<pastnode>, :node($/) );
    }

    method assertion:sym<var>($/) {
        make QAST::Regex.new( PAST::Node.new('!INTERPOLATE_REGEX', $<var>.ast), 
                              :rxtype<subrule>, :subtype<method>, :node($/));
    }

    method codeblock($/) {
        my $block := $<block>.ast;
        $block.blocktype('immediate');
        my $past :=
            PAST::Stmts.new(
                PAST::Op.new(
                    PAST::Var.new( :name('$/') ),
                    PAST::Op.new(
                        PAST::Var.new( :name('$¢') ),
                        :name('MATCH'),
                        :pasttype('callmethod')
                    ),
                    :pasttype('bind_6model')
                ),
                $block
            );
        make $past;
    }
}
