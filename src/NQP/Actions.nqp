class NQP::Actions is HLL::Actions {
    sub xblock_immediate($xblock) {
        $xblock[1] := block_immediate($xblock[1]);
        $xblock;
    }

    sub block_immediate($block) {
        $block.blocktype('immediate');
        unless $block.symtable() {
            my $stmts := QAST::Stmts.new( :node($block.node) );
            for $block.list { $stmts.push($_); }
            $block := $stmts;
        }
        $block;
    }
    
    sub default_for($sigil) {
        if $sigil eq '@' {
            QAST::Op.new( :op('list') )
        }
        elsif $sigil eq '%' {
            QAST::Op.new( :op('hash') )
        }
        else {
            my $default;
            try {
                $default := QAST::WVal.new( :value($*W.find_sym(['NQPMu'])) );
                CATCH { $default := QAST::Op.new( :op('null') ) }
            }
            $default
        }
    }
    
    sub default_value_for_prim($prim) {
        $prim == 1 ?? QAST::IVal.new( :value(0) ) !!
        $prim == 2 ?? QAST::NVal.new( :value(0.0) ) !!
                      QAST::SVal.new( :value('') )
    }

    method TOP($/) { make $<comp_unit>.made; }

    method deflongname($/) {
        make $<colonpair>
             ?? ~$<identifier> ~ ':' ~ $<colonpair>.made.named 
                    ~ '<' ~ colonpair_str($<colonpair>.made) ~ '>'
             !! ~$/;
    }

    sub colonpair_str($ast) {
        if nqp::istype($ast, QAST::Op) {
            my @parts;
            for $ast.list { @parts.push($_.value) }
            join(' ', @parts)
        } else {
            $ast.value
        }
    }

    method comp_unit($/) {
        my $mainline := $<statementlist>.ast;
        my $unit     := $*W.pop_lexpad();

        # If our caller wants to know the mainline ctx, provide it here.
        # (CTXSAVE is inherited from HLL::Actions.) Don't do this when
        # there was an explicit {YOU_ARE_HERE}.
        unless $*HAS_YOU_ARE_HERE {
            $unit.push( self.CTXSAVE() );
        }
        
        # Detect if we're the main unit by if we were given any args. If so,
        # register the mainline as a module (so trying to use ourself in the
        # program will not explode). If we have a MAIN sub, call it at end of
        # mainline.
        $unit.unshift(QAST::Var.new( :scope('lexical'), :name('@ARGS'), :decl('param'), :slurpy(1) ));
        if $*MAIN_SUB {
            $mainline.push(QAST::Op.new(
                :op('if'),
                QAST::Var.new( :scope('lexical'), :name('@ARGS') ),
                QAST::Op.new(
                    :op('call'), :name('&' ~ $*MAIN_SUB.name),
                    QAST::Var.new( :scope('lexical'), :name('@ARGS'), :flat(1) )
                )
            ));
        }
        
        # Push mainline statements into UNIT.
        $unit.push($mainline);

        # Load the needed libraries.
        $unit.push($*W.libs());
        
        # Wrap everything in a QAST::CompUnit.
        my $compunit := QAST::CompUnit.new(
            :hll('nqp'),
            
            # Serialization related bits.
            :sc($*W.sc()),
            :code_ref_blocks($*W.code_ref_blocks()),
            :compilation_mode($*W.is_precompilation_mode()),
            :pre_deserialize($*W.load_dependency_tasks()),
            :post_deserialize($*W.fixup_tasks()),

            # If this unit is loaded as a module, we want it to automatically
            # execute the mainline code above after all other initializations
            # have occurred.
            :load(QAST::Op.new(
                :op('call'),
                QAST::BVal.new( :value($unit) )
            )),
            
            # If we're executed as the mainline, get the command line args
            # and pass them along.
            :main(QAST::Stmts.new(
                QAST::Op.new(
                    :op('call'),
                    QAST::BVal.new( :value($unit) ),
                    QAST::Var.new( :name('ARGS'), :scope('local'), :decl('param'), :slurpy(1), :flat(1) )
                )
            )),

            # Finally, UNIT, which in turn contains all of the other program
            # elements.
            $unit
        );
        
        $*W.cleanup();
        
        make $compunit;
    }

    method statementlist($/) {
        my $ast_list := QAST::Stmts.new( :node($/) );
        if $<statement> {
            for $<statement> {
                my $ast := $_.ast;
                $ast := $ast<sink> if nqp::defined($ast<sink>);
                if $ast<bareblock> { $ast := block_immediate($ast[0]); }
                $ast := QAST::Stmts.new($ast) if nqp::istype($ast, QAST::Node);
                $ast_list.push( $ast );
            }
        }
        else {
            $ast_list.push(default_for('$'));
        }
        make $ast_list;
    }

    method statement($/, $key?) {
        my $ast;
        if $<EXPR> {
            my $mc := $<statement_mod_cond>;
            my $ml := $<statement_mod_loop>;
            $ast := $<EXPR>.ast;
            if $mc {
                $ast := QAST::Op.new($mc<cond>.ast, $ast, :op(~$mc<sym>), :node($/) );
            }
            if $ml {
                if ~$ml<sym> eq 'for' {
                    $ast := QAST::Block.new( :blocktype('immediate'),
                        QAST::Var.new( :name('$_'), :scope('lexical'), :decl('param') ),
                        $ast);
                    $ast.symbol('$_', :scope('lexical') );
                    $ast.arity(1);
                    $ast := QAST::Op.new($ml<cond>.ast, $ast, :op(~$ml<sym>), :node($/) );
                }
                else {
                    $ast := QAST::Op.new($ml<cond>.ast, $ast, :op(~$ml<sym>), :node($/) );
                }
            }
            if $ast<var_initialized> {
                # Variable declared and unconditionally initialized; can strip
                # the added just-to-be-safe initialization of the lexical and
                # just have the var decl.
                my $decls := $*W.cur_lexpad()[0];
                $decls.push($decls.pop()[0]); # First child of bind node is var decl
            }
        }
        elsif $<statement> { $ast := $<statement>.ast; }
        elsif $<statement_control> { $ast := $<statement_control>.ast; }
        else { $ast := 0; }
        make $ast;
    }

    method xblock($/) {
        make QAST::Op.new( $<EXPR>.ast, $<pblock>.ast, :op('if'), :node($/) );
    }

    method pblock($/) {
        make $<blockoid>.ast;
    }

    method block($/) {
        make $<blockoid>.ast;
    }

    method blockoid($/) {
        my $BLOCK := $*W.pop_lexpad();
        if $<statementlist> {
            my $ast := $<statementlist>.ast;
            if %*HANDLERS {
                $ast := QAST::Op.new( :op('handle'), $ast );
                for %*HANDLERS {
                    $ast.push($_.key);
                    $ast.push($_.value);
                }
            }
            $BLOCK.push($ast);
            $BLOCK.node($/);
            $BLOCK<handlers> := %*HANDLERS if %*HANDLERS;
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
        $*W.push_lexpad($/)
    }

    method outerctx($/) {
        unless nqp::defined(%*COMPILING<%?OPTIONS><outer_ctx>) {
            # We haven't got a specified outer context already, so load a
            # setting.
            my $SETTING := $*W.load_setting(%*COMPILING<%?OPTIONS><setting> // 'NQPCORE');
            
            # If it exports HOWs, grab them. Also, if we're loading the
            # setting, also by default load Regex library (we can't load
            # this in the setting as Regex depends on the setting).
            unless %*COMPILING<%?OPTIONS><setting> eq 'NULL' {
                import_HOW_exports($SETTING);
                unless %*COMPILING<%?OPTIONS><no-regex-lib> {
                    if %*COMPILING<%?OPTIONS><custom-regex-lib> -> $lib {
                        $*W.load_module($lib, $*GLOBALish);
                    }
                    else {
                        $*W.load_module('NQPP6QRegex', $*GLOBALish);
                    }
                }
            }
        }
        self.SET_BLOCK_OUTER_CTX($*W.cur_lexpad());
    }
    
    sub import_HOW_exports($UNIT) {    
        # See if we've exported any HOWs.
        if nqp::existskey($UNIT, 'EXPORTHOW') {
            for $UNIT<EXPORTHOW>.WHO {
                %*HOW{$_.key} := $_.value;
            }
        }
    }

    method you_are_here($/) {
        make self.CTXSAVE();
    }

    ## Statement control

    method statement_control:sym<use>($/) {
        my $module := $*W.load_module(~$<name>, $*GLOBALish);
        if nqp::defined($module) {
            $*W.import($module<EXPORT>.WHO<DEFAULT>.WHO)
                if nqp::existskey($module, 'EXPORT') &&
                    nqp::existskey($module<EXPORT>.WHO, 'DEFAULT');
            import_HOW_exports($module);
        }
        make QAST::Stmts.new();
    }

    method statement_control:sym<if>($/) {
        my $count := +$<xblock> - 1;
        my $ast := xblock_immediate( $<xblock>[$count].ast );
        if $<else> {
            $ast.push( block_immediate( $<else>.ast ) );
        }
        # build if/then/elsif structure
        while $count > 0 {
            $count--;
            my $else := $ast;
            $ast := xblock_immediate( $<xblock>[$count].ast );
            $ast.push($else);
        }
        make $ast;
    }

    method statement_control:sym<unless>($/) {
        my $ast := xblock_immediate( $<xblock>.ast );
        $ast.op('unless');
        $/.prune();
        make $ast;
    }

    method statement_control:sym<while>($/) {
        my $ast := xblock_immediate( $<xblock>.ast );
        $ast.op(~$<sym>);
        if $*LABEL {
            $ast.push(QAST::WVal.new( :value($*W.find_sym([$*LABEL])), :named('label') ));
        }
        elsif !$*CONTROL_USED {
            $ast.push(QAST::IVal.new( :value(1), :named('nohandler') ));
        }
        $/.prune();
        make $ast;
    }

    method statement_control:sym<repeat>($/) {
        my $op := 'repeat_' ~ ~$<wu>;
        my $ast;
        if $<xblock> {
            $ast := xblock_immediate( $<xblock>.ast );
            $ast.op($op);
        }
        else {
            $ast := QAST::Op.new( $<EXPR>.ast, block_immediate( $<pblock>.ast ),
                                   :op($op), :node($/) );
        }
        if $*LABEL {
            $ast.push(QAST::WVal.new( :value($*W.find_sym([$*LABEL])), :named('label') ));
        }
        elsif !$*CONTROL_USED {
            $ast.push(QAST::IVal.new( :value(1), :named('nohandler') ));
        }
        $/.prune();
        make $ast;
    }

    method statement_control:sym<for>($/) {
        my $ast := $<xblock>.ast;
        $ast.op('for');
        my $block := $ast[1];
        unless $block.arity {
            $block[0].push( QAST::Var.new( :name('$_'), :scope('lexical'), :decl('param') ) );
            $block.symbol('$_', :scope('lexical') );
            $block.arity(1);
        }
        $block.blocktype('immediate');
        if $*LABEL {
            $ast.push(QAST::WVal.new( :value($*W.find_sym([$*LABEL])), :named('label') ));
        }
        elsif !$*CONTROL_USED {
            $ast.push(QAST::IVal.new( :value(1), :named('nohandler') ));
        }
        $/.prune();
        make $ast;
    }

    method statement_control:sym<CATCH>($/) {
        my $block := $<block>.ast;
        set_block_handler($/, $block, 'CATCH');
        $/.prune();
        make default_for('$');
    }

    method statement_control:sym<CONTROL>($/) {
        my $block := $<block>.ast;
        set_block_handler($/, $block, 'CONTROL');
        $/.prune();
        make default_for('$');
    }

    sub set_block_handler($/, $block, $type) {
        if nqp::existskey(%*HANDLERS, $type) {
            nqp::die("Duplicate $type handler in block");
        }
        unless $block.arity {
            $block.unshift(
                QAST::Op.new( :op('bind'),
                    QAST::Var.new( :scope('lexical'), :name('$!'), :decl('var') ),
                    QAST::Var.new( :scope('lexical'), :name('$_')),
                ),
            );
            $block.unshift(QAST::Var.new( :name('$_'), :scope('lexical'), :decl('param') ));
            $block.symbol('$_', :scope('lexical') );
            $block.symbol('$!', :scope('lexical') );
            $block.arity(1);
        }
        $block.blocktype('declaration');
        %*HANDLERS{$type} := QAST::Stmts.new(
            QAST::Op.new( :op('call'),
                $block,
                QAST::Op.new( :op('exception') ),
            ),
            QAST::VM.new(
                :parrot(QAST::Op.new(
                    :op('bindkey_i'),
                    QAST::Op.new( :op('exception') ),
                    QAST::SVal.new( :value('handled') ),
                    QAST::IVal.new( :value(1) )
                )),
                :jvm(QAST::Op.new( :op('null') )),
                :moar(QAST::Op.new( :op('null') ))
            ),
            default_for('$'));
    }
	
	method statement_prefix:sym<BEGIN>($/) {
        make $*W.run_begin_block($<blorst>.ast);
        $/.prune();
    }

    method statement_prefix:sym<INIT>($/) {
        $*W.cur_lexpad().push($<blorst>.ast);
        make QAST::Stmts.new();
        $/.prune();
    }

    method statement_prefix:sym<try>($/) {
        my $ast := $<blorst>.ast;
        if nqp::istype($ast, QAST::Block) {
            if $ast<handlers> && nqp::existskey($ast<handlers>, 'CATCH') {
                make $ast;
                return 1;
            }
            else {
                $ast.blocktype('immediate');
            }
        }
        make QAST::Op.new(
            :op('handle'),
            $ast,
            'CATCH',
            QAST::Stmts.new(
                QAST::VM.new(
                    :parrot(QAST::Op.new(
                        :op('bindkey_i'),
                        QAST::Op.new( :op('exception') ),
                        QAST::SVal.new( :value('handled') ),
                        QAST::IVal.new( :value(1) )
                    )),
                    :jvm(QAST::Op.new( :op('null') )),
                    :moar(QAST::Op.new( :op('null') ))
                ),
                default_for('$')
            ));
        $/.prune();
    }

    method blorst($/) {
        make $<block>
             ?? block_immediate($<block>.ast)
             !! $<statement>.ast;
        $/.prune();
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
    method term:sym<lambda>($/) {
        make QAST::Op.new( :op('takeclosure'), $<pblock>.ast );
    }

    method fatarrow($/) {
        my $ast := $<val>.ast;
        $ast.named( $<key>.Str );
        make $ast;
        $/.prune;
    }

    method colonpair($/) {
        if $<variable> {
            $<variable>.ast.named(~$<variable><desigilname>);
            make $<variable>.ast;
        } else {
            my $ast := $<circumfix>
                        ?? $<circumfix>.ast
                        !! QAST::IVal.new( :value( !$<not> ) );
            $ast.named( ~$<identifier> );
            make $ast;
        }
        $/.prune;
    }

    method variable($/) {
        my $ast;
        if $<postcircumfix> {
            $ast := $<postcircumfix>.ast;
            $ast.unshift(QAST::VarWithFallback.new(
                :name('$/'), :scope('lexical'), :fallback(default_for('$'))
            ));
        }
        else {
            my @name := NQP::Compiler.parse_name(~$/);
            if +@name > 1 {
                if $<twigil> {
                    $/.CURSOR.panic("Twigil not allowed on multi-part name");
                }
                $ast := lexical_package_lookup(@name, $/);
            }
            elsif $<twigil> eq '*' {
                my $global_fallback := QAST::Op.new(
                    :op('ifnull'),
                    lexical_package_lookup(['GLOBAL',  ~$<sigil> ~ $<desigilname>], $/),
                    QAST::Op.new(
                        :op('die_s'),
                        QAST::SVal.new( :value('Contextual ' ~ ~$/ ~ ' not found') )
                    ));
                $ast := QAST::VarWithFallback.new(
                    :name(~@name.pop), :scope('contextual'),
                    :fallback($global_fallback)
                );
            }
            elsif $<twigil> eq '!' {
                my $name := ~@name.pop;
                my $ch;
                if $*PKGDECL eq 'role' {
                    $ch := QAST::Var.new( :name('$?CLASS'), :scope('typevar') );
                    $ch.set_compile_time_value($*PACKAGE);
                }
                else {
                    $ch := QAST::WVal.new( :value($*PACKAGE) );
                }
                $ast := QAST::Var.new(
                    :name($name), :scope('attribute'),
                    QAST::Op.new( :op('decont'),
                        QAST::Var.new( :name('self'), :scope('lexical') ) ),
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
                    if nqp::defined($attr) {
                        if nqp::can($attr, 'type') {
                            $ast.returns($attr.type);
                        }
                    }
                    else {
                        $/.CURSOR.panic("Attribute '$name' not declared");
                    }
                }
            }
            elsif $<semilist> {
                my $name := ~$<sigil> eq '@' ?? 'list' !!
                            ~$<sigil> eq '%' ?? 'hash' !!
                                                'item';
                $ast := QAST::Op.new( :op('callmethod'), :name($name), $<semilist>.ast );
            }
            elsif $*W.is_package(~@name[0]) {
                $ast := lexical_package_lookup(@name, $/);
                $ast.fallback( default_for( $<sigil> ) );
            }
            else {
                my $name := ~@name.pop;
                if $*IN_DECL eq 'variable' || $name eq '$_' || $name eq '$/'
                || $name eq '$!' || $<twigil> eq '?' || $*W.is_lexical($name) {
                    $ast := QAST::Var.new( :name($name),
                        :scope($name eq '$?CLASS' ?? 'typevar' !! 'lexical') );
                }
                else {
                    $/.CURSOR.panic("Use of undeclared variable '$name'");
                }
            }
        }
        make $ast;
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
        my $HOW := $*W.find_sym($<metaclass><identifier>);
        my $PACKAGE := $*W.pkg_create_mo($HOW, :name(~$<name>));
        
        # Install it in the current package or current lexpad as needed.
        if $*SCOPE eq 'our' || $*SCOPE eq '' {
            $*W.install_package_symbol($*OUTERPACKAGE, $<name><identifier>, $PACKAGE);
            if +$<name><identifier> == 1 {
                $*W.install_lexical_symbol($*W.cur_lexpad(), $<name><identifier>[0], $PACKAGE);
            }
        }
        elsif $*SCOPE eq 'my' {
            if +$<name><identifier> != 1 {
                $<name>.CURSOR.panic("A my scoped package cannot have a multi-part name yet");
            }
            $*W.install_lexical_symbol($*W.cur_lexpad(), $<name><identifier>[0], $PACKAGE);
        }
        else {
            $/.CURSOR.panic("$*SCOPE scoped packages are not supported");
        }
        
        make QAST::Stmts.new();
        $/.prune;
    }

    method package_def($/) {
        # Get name and meta-object.
        my @ns := nqp::clone($<name><identifier>);
        my $name := ~@ns.pop;
        my $how := %*HOW{$*PKGDECL};

        # Get the body code.
        my $ast;
        if $<blockoid> {
            $ast := $<blockoid>.ast;
        }
        else {
            $ast := $*W.pop_lexpad();
            $ast.push($<statementlist>.ast);
        }

        # Evaluate everything in the package in-line unless this is a generic
        # type in which case it needs delayed evaluation. Normally, $?CLASS is
        # a fixed lexical, but for generic types it becomes a parameter. Also
        # for parametric types, pass along the role body block.
        if nqp::can($how, 'parametric') && $how.parametric($how) {
            $ast.blocktype('declaration_static');
            my $params := QAST::Stmts.new(
                QAST::Var.new( :name('$?CLASS'), :scope('lexical'), :decl('param') )
            );
            if $<role_params> {
                for $<role_params><variable> {
                    $params.push($_.ast);
                }
            }
            $ast.unshift($params);
            $ast.push(QAST::Op.new( :op('curlexpad') ));
            $ast.symbol('$?CLASS', :scope('lexical'));
            $*W.pkg_set_body_block($*PACKAGE, $ast);
        }
        else {
            $ast.blocktype('immediate');
        }

        # Add parent, if we have one; otherwise set default.
        if $<parent> {
            my $parent;
            my $parent_found;
            try {
                $parent := $*W.find_sym(nqp::clone($<parent><identifier>));
                $parent_found := 1;
            }
            if $parent_found {
                $*W.pkg_add_parent_or_role($*PACKAGE, "add_parent", $parent);
            }
            else {
                $/.CURSOR.panic("Could not find parent class '" ~ ~$<parent> ~ "'");
            }
        }
        elsif nqp::can($how, 'set_default_parent') {
            my $default := $*PKGDECL eq 'grammar' ?? ['NQPCursor'] !! ['NQPMu'];
            $*W.pkg_add_parent_or_role($*PACKAGE, "set_default_parent",
                $*W.find_sym($default));
        }

        # Add any done roles.
        if $<role> {
            for $<role> {
                my $role;
                my $role_found;
                try {
                    $role := $*W.find_sym(nqp::clone($_<identifier>));
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
        
        # If it's a grammar, pre-compute the NFAs.
        if $*PKGDECL eq 'grammar' && nqp::can($*PACKAGE, '!precompute_nfas') {
            $*PACKAGE.'!precompute_nfas'();
        }
        
        # Export if needed.
        if $<export> {
            $*EXPORT.WHO<DEFAULT>.WHO{$name} := $*PACKAGE;
        }

        make $ast;
        $/.prune;
    }
    
    method role_params($/) {
        for $<variable> {
            my $var := $_.ast;
            $var.scope('lexical');
            $var.decl('param');
            $*W.cur_lexpad().symbol($var.name, :scope('lexical'));
        }
    }

    method scope_declarator:sym<my>($/)  { make $<scoped>.ast; $/.prune }
    method scope_declarator:sym<our>($/) { make $<scoped>.ast; $/.prune }
    method scope_declarator:sym<has>($/) { make $<scoped>.ast; $/.prune }

    method scoped($/) {
        make $<declarator>       ?? $<declarator>.ast !!
             $<multi_declarator> ?? $<multi_declarator>.ast !!
                                    $<package_declarator>.ast;
        $/.prune;
    }

    method declarator($/) {
        make $<routine_declarator>
             ?? $<routine_declarator>.ast
             !! $<variable_declarator>.ast;
    }

    method multi_declarator:sym<multi>($/) { make $<declarator> ?? $<declarator>.ast !! $<routine_def>.ast; $/.prune }
    method multi_declarator:sym<proto>($/) { make $<declarator> ?? $<declarator>.ast !! $<routine_def>.ast; $/.prune }
    method multi_declarator:sym<null>($/)  { make $<declarator>.ast; $/.prune }


    method variable_declarator($/) {
        my $ast := $<variable>.ast;
        my $sigil := $<variable><sigil>;
        my $name := $ast.name;
        my $BLOCK := $*W.cur_lexpad();
        my $*DECLARAND_ATTR;
        if $name && $BLOCK.symbol($name) {
            $/.CURSOR.panic("Redeclaration of symbol ", $name);
        }
        if $*SCOPE eq 'has' {
            # Initializer not allowed.
            if $<initializer> {
                $/.CURSOR.panic('Initiailizers not supported on has-scoped variables');
            }
            
            # Locate the type of meta-attribute we need.
            unless nqp::existskey(%*HOW, $*PKGDECL ~ '-attr') {
                $/.CURSOR.panic("$*PKGDECL packages do not support attributes");
            }
            
            # Set up arguments for meta-attribute instantiation.
            my %lit_args;
            my %obj_args;
            %lit_args<name> := $name;
            if $<typename> {
                %obj_args<type> := $*W.find_sym([~$<typename>]);
            }
            if $sigil eq '$' || $sigil eq '&' {
                if $<typename> {
                    %obj_args<default> := %obj_args<type>;
                }
                else {
                    try %obj_args<default> := $*W.find_sym(['NQPMu']);
                }
            }
            
            # Add it.
            $*DECLARAND_ATTR := $*W.pkg_add_attribute($*PACKAGE, %*HOW{$*PKGDECL ~ '-attr'},
                %lit_args, %obj_args);

            $ast := QAST::Stmts.new();
        }
        elsif $*SCOPE eq 'our' {
            # Depending on if this was already considered our scoped,
            # we may or may not have got a node in $var that's set up
            # right already. We build it here just to be sure.
            if $<typename> {
                $/.CURSOR.panic("Cannot put types on our-scoped variables");
            }
            $name := ~$<variable>;
            $ast := lexical_package_lookup([$name], $/);
            $BLOCK.symbol($name, :scope('package') );
            if $<initializer> {
                $ast := QAST::Op.new( :op('bind'), $ast, $<initializer>.ast );
            }
        }
        else {
            my $type;
            my $default;
            if $<typename> {
                unless $sigil eq '$' {
                    $/.CURSOR.panic("Only typed scalars are currently supported in NQP");
                }
                $type := $*W.find_sym([~$<typename>]);
                if nqp::objprimspec($type) -> $prim_spec {
                    $default := default_value_for_prim($prim_spec);
                }
                else {
                    $/.CURSOR.panic("Only native types are currently supported/checked");
                }
            }
            else {
                $default := default_for($sigil);
            }
            $BLOCK[0].push(QAST::Op.new(
                :op('bind'), :node($/),
                QAST::Var.new( :name($name), :scope('lexical'), :decl('var'), :returns($type) ),
                $default
            ));
            if $<initializer> {
                $ast := QAST::Op.new( :op('bind'), :node($/), $ast, $<initializer>.ast );
                $ast<var_initialized> := 1;
            }
            $BLOCK.symbol($name, :scope('lexical'), :type($type) );
        }

        # Apply traits.
        if $<trait> {
            for $<trait> { $_.ast()($/); }
        }

        make $ast;
        $/.prune;
        $/.prune;
    }

    method initializer($/) {
        make $<EXPR>.ast;
        $/.prune;
    }

    method routine_declarator:sym<sub>($/) { make $<routine_def>.ast; $/.prune }
    method routine_declarator:sym<method>($/) { make $<method_def>.ast; $/.prune }

    method routine_def($/) {
        # If it's just got * as a body, make a multi-dispatch enterer.
        # Otherwise, need to build a sub.
        my $ast;
        if $<onlystar> {
            $ast := only_star_block();
        }
        else {
            $ast := $<blockoid>.ast;
            if $*RETURN_USED {
                $ast[1] := wrap_return_handler($ast[1]);
            }
        }
        $ast.blocktype('declaration');
        my $block := $ast;

        if $<deflongname> {
            my $name := ~$<sigil> ~ $<deflongname>.ast;
            $ast.name($name);
            if $*SCOPE eq '' || $*SCOPE eq 'my' || $*SCOPE eq 'our' {
                if $*MULTINESS eq 'multi' {
                    # Does the current block have a proto?
                    if $*SCOPE eq 'our' { nqp::die('a multi can not be our-scoped') }
                    my $proto;
                    my %sym := $*W.cur_lexpad().symbol('&' ~ $name);
                    if %sym<proto> {
                        $proto := %sym<value>;
                    }
                    
                    # Otherwise, no candidate holder, so add one.
                    else {
                        # Check we have a proto in scope.
                        my $found_proto;
                        for $*W.get_legacy_block_list() {
                            my %sym := $_.symbol('&' ~ $name);
                            if %sym<proto> {
                                $proto := %sym<value>;
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
						nqp::die("Dispatcher derivation NYI");
                    }
                    
                    # Create a code object and attach the signature.
                    my $code := $*W.create_code($ast, $name, 0);
                    attach_multi_signature($code, $ast);

                    # Add this candidate to the proto.
                    $proto.add_dispatchee($code);
                    
                    # Ensure we emit the code block.
                    # XXX We'll mark it static so the code object inside the
                    # proto is captured correctly. Technically this is wrong,
                    # as the multi may be nested in another sub.
                    $ast.blocktype('declaration_static');
                    my $BLOCK := $*W.cur_lexpad();
					$BLOCK[0].push($ast);
                }
                elsif $*MULTINESS eq 'proto' {
                    # Create a candidate list holder for the dispatchees
                    # this proto will work over, and install them along
                    # with the proto.
                    if $*SCOPE eq 'our' { nqp::die('our-scoped protos not yet implemented') }
                    my $code := $*W.create_code($ast, $name, 1);
                    my $BLOCK := $*W.cur_lexpad();
					$BLOCK[0].push(QAST::Op.new(
                        :op('bind'),
                        QAST::Var.new( :name('&' ~ $name), :scope('lexical'), :decl('var') ),
                        $ast
                    ));
                    $BLOCK.symbol('&' ~ $name, :scope('lexical'), :proto(1), :value($code), :declared(1) );
                    
                    # Also stash the current lexical dispatcher and capture, for the {*}
                    # to resolve.
                    $block[0].push(QAST::Op.new(
                        :op('bind'),
                        QAST::Var.new( :name('CURRENT_DISPATCH_CAPTURE'), :scope('lexical'), :decl('var') ),
                        QAST::Op.new( :op('savecapture') )
                    ));
                    $block[0].push(QAST::Op.new(
                        :op('bind'),
                        QAST::Var.new( :name('&*CURRENT_DISPATCHER'), :scope('lexical'), :decl('var') ),
                        QAST::Op.new( :op('getcodeobj'), QAST::Op.new( :op('curcode') ) )
                    ));
                }
                else {
                    my $BLOCK := $*W.cur_lexpad();
					$BLOCK[0].push(QAST::Op.new(
                        :op('bind'),
                        QAST::Var.new( :name('&' ~ $name), :scope('lexical'), :decl('var') ),
                        $ast
                    ));
                    $BLOCK.symbol('&' ~ $name, :scope('lexical'), :declared(1));
                    if $*SCOPE eq 'our' {
                        # Need to install it at loadinit time but also re-bind
                        # it per invocation.
                        $*W.install_package_routine($*PACKAGE, $name, $ast);
                        $BLOCK[0].push(QAST::Op.new(
                            :op('bind'),
                            lexical_package_lookup([$name], $/),
                            QAST::Var.new( :name('&' ~ $name), :scope('lexical') )
                        ));
                        
                        # Static code object needs re-capturing also, as it's
                        # our-scoped.
                        $ast.blocktype('declaration_static');
                        
                        # Also need to make sure it gets a code object so it's
                        # in the SC.
                        $*W.create_code($ast, $name, 0);
                    }
                }
                $ast := QAST::Var.new( :name('&' ~ $name), :scope('lexical') );
            }
            else {
                $/.CURSOR.panic("$*SCOPE scoped routines are not supported yet");
            }
            
            # Is it the MAIN sub?
            if $name eq 'MAIN' && $*MULTINESS ne 'multi' {
                $*MAIN_SUB := $block;
            }
        }
        else {            
            if $*W.is_precompilation_mode() {
                $*W.create_code($ast, '<anon>', 0)
            }
        }

        my $lex_ast := QAST::Op.new( :op('takeclosure'), $ast );
        $lex_ast<sink> := $ast;
        $lex_ast<block_ast> := $block;
        make $lex_ast;

        # Apply traits.        
        if $<trait> {
            for $<trait> { $_.ast()($/); }
        }
        $/.prune;
    }
    
    method method_def($/) {
        # If it's just got * as a body, make a multi-dispatch enterer.
        # Otherwise, build method block QAST.
        my $ast;
        if $<onlystar> {
            $ast := only_star_block();
        }
        else {
            $ast := $<blockoid>.ast;
            if $*RETURN_USED {
                $ast[1] := wrap_return_handler($ast[1]);
            }
        }
        $ast.blocktype('declaration_static');

        # Always need an invocant.
        unless $ast<signature_has_invocant> {
            $ast[0].unshift(QAST::Var.new(
                :name('self'), :scope('lexical'), :decl('param'),
                :returns($*PACKAGE)
            ));
        }
        $ast.symbol('self', :scope('lexical') );
        
        # Install it where it should go (methods table / namespace).
        my $name := "";
        if $<deflongname> {
            $name := ~$<private> ~ ~$<deflongname>.ast;
        }
        elsif $<latename> {
            if $*PKGDECL ne 'role' {
                $/.CURSOR.panic("Late-bound method name only valid in role");
            }
            $name := "!!LATENAME!!" ~ ~$<latename>;
        }
        if $name ne "" {
            # Set name.
            $ast.name($name);

            # Insert it into the method table.
            my $meta_meth := $*MULTINESS eq 'multi' ?? 'add_multi_method' !! 'add_method';
            my $is_dispatcher := $*MULTINESS eq 'proto';
            my $code := $*W.create_code($ast, $name, $is_dispatcher);
            if $*MULTINESS eq 'multi' { attach_multi_signature($code, $ast); }
            $*W.pkg_add_method($*PACKAGE, $meta_meth, $name, $code);
            $ast<code_obj> := $code;
            
            # Install it in the package also if needed.
            if $*SCOPE eq 'our' {
                $*W.install_package_routine($*PACKAGE, $name, $ast);
            }
                    
            # If it's a proto, also stash the current lexical dispatcher, for the {*}
            # to resolve.
            if $is_dispatcher {
                $ast[0].push(QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name('CURRENT_DISPATCH_CAPTURE'), :scope('lexical'), :decl('var') ),
                    QAST::Op.new( :op('savecapture') )
                ));
                $ast[0].push(QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name('&*CURRENT_DISPATCHER'), :scope('lexical'), :decl('var') ),
                    QAST::Op.new( :op('getcodeobj'), QAST::Op.new( :op('curcode') ) )
                ));
            }
        }

        # Install AST node in match object, then apply traits.
        my $lex_ast := QAST::Op.new( :op('takeclosure'), $ast );
        $lex_ast<sink> := $ast;
        $lex_ast<block_ast> := $ast;
        $lex_ast<code_obj> := $ast<code_obj>;
        make $lex_ast;
        if $<trait> {
            for $<trait> { $_.ast()($/); }
        }
        $/.prune;
    }

    sub only_star_block() {
        my $ast := $*W.pop_lexpad();
        $ast.push(QAST::Op.new(
            :op('invokewithcapture'),
            QAST::Op.new(
                :op('ifnull'),
                QAST::Op.new(
                    :op('multicachefind'),
                    QAST::Var.new(
                        :name('$!dispatch_cache'), :scope('attribute'),
                        QAST::Op.new( :op('getcodeobj'), QAST::Op.new( :op('curcode') ) ),
                        QAST::WVal.new( :value($*W.find_sym(['NQPRoutine'])) ),
                    ),
                    QAST::Op.new( :op('usecapture') )
                ),
                QAST::Op.new(
                    :op('callmethod'), :name('dispatch'),
                    QAST::Op.new( :op('getcodeobj'), QAST::Op.new( :op('curcode') ) ),
                    QAST::Op.new( :op('savecapture') )
                )
            ),
            QAST::Op.new( :op('usecapture') )
        ));
        $ast
    }

    sub attach_multi_signature($code_obj, $routine) {
        my $types := nqp::list();
        my $definednesses := nqp::list();
        for @($routine[0]) {
            if nqp::istype($_, QAST::Var) && $_.decl eq 'param' && !$_.named {
                $types.push($_.returns =:= NQPMu
                    ?? nqp::null()
                    !! $_.returns);
                $definednesses.push($_<definedness> eq 'D' ?? 1 !!
                                    $_<definedness> eq 'U' ?? 2 !! 0);
            }
        }
        $*W.set_routine_signature($code_obj, $types, $definednesses);
    }
    
    sub wrap_return_handler($ast) {
        QAST::Op.new(
            :op<lexotic>, :name<RETURN>,
            $ast
        )
    }

    method signature($/) {
		my $BLOCK     := $*W.cur_lexpad();
        my $BLOCKINIT := $BLOCK[0];
        if $<invocant> {
            my $inv := $<invocant>.ast;
            $BLOCKINIT.push($inv);
            $BLOCKINIT.push(QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('self'), :scope('lexical'), :decl('var') ),
                QAST::Var.new( :scope('lexical'), :name($inv.name) )
            ));
            $BLOCK<signature_has_invocant> := 1
        }
        if $<parameter> {
            for $<parameter> { $BLOCKINIT.push($_.ast); }
        }
        $/.prune;
    }

    method parameter($/) {
        my $quant := $<quant>;
        my $ast;
        if $<named_param> {
            $ast := $<named_param>.ast;
            if $quant ne '!' {
                $ast.default( default_for($<named_param><param_var><sigil>) );
            }
        }
        else {
            $ast := $<param_var>.ast;
            if $quant eq '*' {
                $ast.slurpy(1);
                $ast.named( $<param_var><sigil> eq '%' );
            }
            elsif $quant eq '?' {
                $ast.default( default_for($<param_var><sigil>) );
            }
        }
        if $<default_value> {
            if $quant eq '*' {
                $/.CURSOR.panic("Can't put default on slurpy parameter");
            }
            if $quant eq '!' {
                $/.CURSOR.panic("Can't put default on required parameter");
            }
            $ast.default( $<default_value>[0]<EXPR>.ast );
        }
        unless $ast.default { $*W.cur_lexpad().arity( +$*W.cur_lexpad().arity + 1 ); }

        # Set the type of the parameter.
        if $<typename> {
            my $type := $<typename>[0].ast.value;
            $ast.returns($type);
            if nqp::objprimspec($type) -> $prim {
                $*W.cur_lexpad().symbol($ast.name, :type($type));
                if $ast.default && !$<default_value> {
                    $ast.default(default_value_for_prim($prim));
                }
            }
        }

        # Set definedness flag (XXX want a better way to do this).
        if $<definedness> {
            $ast<definedness> := ~$<definedness>[0];
        }

        make $ast;
        $/.prune();
    }

    method param_var($/) {
        my $name := ~$/;
        my $ast :=  QAST::Var.new( :name($name), :scope('lexical'),
                                    :decl('param'), :node($/) );
        $*W.cur_lexpad().symbol($name, :scope('lexical') );
        make $ast;
    }

    method named_param($/) {
        my $ast := $<param_var>.ast;
        $ast.named( ~$<param_var><name> );
        make $ast;
    }

    method typename($/) {
        # Try to locate the symbol. We'll emit a lookup via the SC so
        # the scope we emit code to do the symbol lookup in won't matter,
        # and so we can complain about non-existent type names.
        my @name := HLL::Compiler.parse_name(~$/);
        my $found := 0;
        try {
            my $sym := $*W.find_sym(@name);
            make QAST::WVal.new( :value($sym) );
            $found := 1;
        }
        unless $found {
            $/.CURSOR.panic("Use of undeclared type '" ~ ~$/ ~ "'");
        }
        $/.prune;
    }

    method trait($/) {
        make $<trait_mod>.ast;
        $/.prune;
    }

    method trait_mod:sym<is>($/) {
        if $<longname> eq 'parrot_vtable' {
            # XXX This should be in Parrot-specific module and need a pragma.
            my $c_ast := $<circumfix>[0].ast;
            $/.CURSOR.panic("Trait 'parrot_vtable' requires constant scalar argument")
                unless $c_ast ~~ QAST::SVal;
            my $name := $c_ast.value;
            my $package := $*PACKAGE;
            my $is_dispatcher := $*SCOPE eq 'proto';
            make -> $match {
                $*W.pkg_add_method($package, 'add_parrot_vtable_mapping', $name, 
                    $match.ast<code_obj> //
                        $*W.create_code($match.ast<block_ast>, $name, $is_dispatcher));
            };
        }
        elsif $<longname> eq 'parrot_vtable_handler' {
            # XXX This should be in Parrot-specific module and need a pragma.
            my $c_ast := $<circumfix>[0].ast;
            $/.CURSOR.panic("Trait 'parrot_vtable_handler' requires constant scalar argument")
                unless $c_ast ~~ QAST::SVal;
            my $name := $c_ast.value;
            my $package := $*PACKAGE;
            make -> $match {
                $*W.pkg_add_parrot_vtable_handler_mapping($package, $name, ~$match<variable>);
            };
        }
        elsif $<longname> eq 'positional_delegate' {
            make -> $m { $*DECLARAND_ATTR.set_positional_delegate(1) };
        }
        elsif $<longname> eq 'associative_delegate' {
            make -> $m { $*DECLARAND_ATTR.set_associative_delegate(1) };
        }
        elsif $<longname> eq 'export' {
            make -> $match {
                my $ast  := $match.ast;
                my $name := $ast<block_ast>.name;
                $*EXPORT.WHO<DEFAULT>.WHO{'&' ~ $name} := $ast<code_obj> //
                    $*W.create_code($ast<block_ast>, $name, 0);
            };
        }
        else {
            $/.CURSOR.panic("Trait '$<longname>' not implemented");
        }
        $/.prune;
    }

    method regex_declarator($/, $key?) {
        my $name;
        if $<deflongname> {
            $name := ~$<deflongname>.ast;
        }
        else {
            if $*PKGDECL ne 'role' {
                $/.CURSOR.panic("Late-bound method name only valid in role");
            }
            $name := "!!LATENAME!!" ~ ~$<latename>;
        }
        my $ast;
        if $<proto> {
            $ast := QAST::Block.new(
                    :name($name),
                    QAST::Op.new(
                        QAST::Var.new( :name('self'), :scope('local'), :decl('param') ),
                        QAST::SVal.new( :value($name) ),
                        :name('!protoregex'),
                        :op('callmethod')
                    ),
                    :blocktype('declaration_static'),
                    :node($/)
                );
                $*W.pkg_add_method($*PACKAGE, 'add_method', $name,
                    $*W.create_code($ast, $name, 0, :code_type_name<NQPRegex>));
        }
        else {
            my $block := $*W.pop_lexpad();
            $block[0].unshift(QAST::Var.new(:name<self>, :scope<lexical>, :decl<param>));
            $block[0].push(QAST::Op.new(
                :op('bind'),
                QAST::Var.new(:name<self>, :scope<local>, :decl<var> ),
                QAST::Var.new( :name<self>, :scope('lexical') )));
            $block[0].push(QAST::Var.new(:name<$¢>, :scope<lexical>, :decl<var>));
            $block[0].push(QAST::Var.new(:name<$/>, :scope<lexical>, :decl<var>));
            $block.symbol('$¢', :scope<lexical>);
            $block.symbol('$/', :scope<lexical>);
            my $code  := %*RX<code>;
            my $regex := %*LANG<Regex-actions>.qbuildsub($<p6regex>.ast, $block,
                code_obj => $code, cursor_type => $*W.find_sym(['NQPCursor']));
            $regex.name($name);
            
            if $*PKGDECL && nqp::can($*PACKAGE.HOW, 'add_method') {
                # Add the actual method, marking it as a static declaration
                # since it's reachable through the method table.
                $block.blocktype('declaration_static');
                $*W.pkg_add_method($*PACKAGE, 'add_method', $name, $code);
            }

            # If this appears in a role, its NFA may depend on generic args.
            # If it does, we store the generic version of it.
            if $*PKGDECL eq 'role' {
                my $gen_nfa := QRegex::NFA.new();
                $gen_nfa.addnode($<p6regex>.ast, :vars_as_generic);
                if $gen_nfa.generic {
                    $code.SET_GENERIC_NFA($gen_nfa);
                }
            }
            
            # In sink context, we don't need the Regex::Regex object.
            $ast := QAST::Op.new(
                :op<callmethod>, :name<new>,
                lexical_package_lookup(['NQPRegexMethod'], $/),
                $regex);
            $ast<sink> := $regex;
        }
        make $ast;
    }


    method dotty($/) {
        my $ast := $<args> ?? $<args>[0].ast !! QAST::Op.new( :node($/) );
        if $<quote> {
            $ast.unshift($<quote>.ast);
            $ast.op('callmethod');
        }
        elsif $<longname> eq 'HOW' {
            $ast.op('how');
        }
        elsif $<longname> eq 'WHAT' {
            $ast.op('what');
        }
        elsif $<longname> eq 'WHO' {
            $ast.op('who');
        }
        elsif $<longname> eq 'REPR' {
            $ast.op('reprname');
        }
        else {
            $ast.name(~$<longname>);
            $ast.op('callmethod');
        }
        make $ast;
        $/.prune;
    }

    ## Terms

    method term:sym<self>($/) {
        make QAST::Op.new( :op('decont'),
            QAST::Var.new( :name('self'), :scope('lexical') ) );
    }

    method term:sym<identifier>($/) {
        my $ast := $<args>.ast;
        $ast.name('&' ~ ~$<deflongname>);
        make $ast;
        $/.prune;
    }

    method term:sym<name>($/) {
        # See if it's a lexical symbol (known in any outer scope).
        my $var;
        if $*W.is_lexical(~$<name>) {
            unless $<args> {
                try {
                    my $sym := $*W.find_sym([~$<name>]);
                    unless nqp::isnull(nqp::getobjsc($sym)) {
                        $var := QAST::WVal.new( :value($sym) );
                    }
                }
            }
            unless $var {
                $var := QAST::Var.new( :name(~$<name>), :scope('lexical') );
            }
        }
        else {
            my @ns := nqp::clone($<name><identifier>);
            unless $<args> {
                try {
                    my $sym := $*W.find_sym(@ns);
                    unless nqp::isnull(nqp::getobjsc($sym)) {
                        $var := QAST::WVal.new( :value($sym) );
                    }
                }
            }
            unless $var {
                $var := lexical_package_lookup(@ns, $/);
            }
        }
        
        # If it's a call, add the arguments.
        my $ast := $var;
        if $<args> {
            $ast := $<args>[0].ast;
            $ast.unshift($var);
        }
        make $ast;
        $/.prune;
    }

    method term:sym<pir::op>($/) {
        my @args := $<args> ?? $<args>[0].ast.list !! [];
        my $pirop := ~$<op>;
        $pirop := join(' ', nqp::split('__', $pirop));
        make QAST::VM.new( :pirop($pirop), :node($/), |@args );
        $/.prune;
    }

    method term:sym<pir::const>($/) {
        make QAST::VM.new( :pirconst(~$<const>) );
        $/.prune;
    }

    method term:sym<nqp::op>($/) {
        my $op    := ~$<op>;
        my @args  := $<args> ?? $<args>[0].ast.list !! [];
        my $ast  := QAST::Op.new( :op($op), |@args, :node($/) );
        make $ast;
        $/.prune;
    }

    method term:sym<nqp::const>($/) {
        make QAST::Op.new( :op('const'), :name(~$<const>) );
        $/.prune;
    }

    method term:sym<onlystar>($/) {
        my $dc_name := QAST::Node.unique('dispatch_cap');
        my $stmts := QAST::Stmts.new(
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name($dc_name), :scope('local'), :decl('var') ),
                QAST::Var.new( :name('CURRENT_DISPATCH_CAPTURE'), :scope('lexical') )
            ),
            QAST::Op.new(
                :op('invokewithcapture'),
                QAST::Op.new(
                    :op('ifnull'),
                    QAST::Op.new(
                        :op('multicachefind'),
                        QAST::Var.new(
                            :name('$!dispatch_cache'), :scope('attribute'),
                            QAST::Var.new( :name('&*CURRENT_DISPATCHER'), :scope('lexical') ),
                            QAST::WVal.new( :value($*W.find_sym(['NQPRoutine'])) ),
                        ),
                        QAST::Var.new( :name($dc_name), :scope('local') )
                    ),
                    QAST::Op.new(
                        :op('callmethod'), :name('dispatch'),
                        QAST::Var.new( :name('&*CURRENT_DISPATCHER'), :scope('lexical') ),
                        QAST::Var.new( :name($dc_name), :scope('local') )
                    )
                ),
                QAST::Var.new( :name($dc_name), :scope('local') )
            ));
        make QAST::Op.new( :op('locallifetime'), $stmts, $dc_name );
        $/.prune;
    }

    method args($/) { make $<arglist>.ast; }

    method arglist($/) {
        my $ast := QAST::Op.new( :op('call'), :node($/) );
        if $<EXPR> {
            my $expr := $<EXPR>.ast;
            if nqp::istype($expr, QAST::Op) && $expr.name eq '&infix:<,>' && !$expr.named {
                for $expr.list { $ast.push($_); }
            }
            else { $ast.push($expr); }
        }
        my $i := 0;
        my $n := +$ast.list;
        while $i < $n {
            if nqp::istype($ast[$i], QAST::Op) && $ast[$i].name eq '&prefix:<|>' {
                $ast[$i] := $ast[$i][0];
                $ast[$i].flat(1);
                $ast[$i].named(1) if nqp::istype($ast[$i], QAST::Var)
                    && nqp::substr($ast[$i].name, 0, 1) eq '%';
            }
            $i++;
        }
        make $ast;
    }

    method term:sym<multi_declarator>($/) { make $<multi_declarator>.ast; $/.prune; }

    method term:sym<value>($/) { make $<value>.ast; $/.prune; }

    method circumfix:sym<( )>($/) {
        make $<EXPR>
             ?? $<EXPR>[0].ast
             !! QAST::Op.new( :op('list'), :node($/) );
        $/.prune;
    }

    method circumfix:sym<[ ]>($/) {
        my $ast;
        if $<EXPR> {
            $ast := $<EXPR>[0].ast;
            unless nqp::istype($ast, QAST::Op) && $ast.name eq '&infix:<,>' {
                $ast := QAST::Op.new( $ast, :op('list') );
            }
        }
        else {
            $ast := QAST::Op.new( :op('list') );
        }
        $ast.name('&circumfix:<[ ]>');
        make $ast;
        $/.prune;
    }

    method circumfix:sym<ang>($/) { make $<quote_EXPR>.ast; $/.prune }
    method circumfix:sym<« »>($/) { make $<quote_EXPR>.ast; $/.prune }

    method circumfix:sym<{ }>($/) {
        if +$<pblock><blockoid><statementlist><statement> > 0 {
            my $ast := QAST::Op.new( :op('takeclosure'), $<pblock>.ast );
            $ast<bareblock> := 1;
            make $ast;
        }
        elsif $<pblock><blockoid><you_are_here> {
            make $<pblock>.ast;
        }
        else {
            make default_for('%');
        }
        $/.prune;
    }

    method semilist($/) { make $<statement>.ast; $/.prune; }

    method postcircumfix:sym<[ ]>($/) {
        make QAST::VarWithFallback.new( :scope('positional'), $<EXPR>.ast, :fallback(default_for('$')) );
    }

    method postcircumfix:sym<{ }>($/) {
        make QAST::VarWithFallback.new( :scope('associative'), $<EXPR>.ast, :fallback(default_for('$')) );
    }

    method postcircumfix:sym<ang>($/) {
        make QAST::VarWithFallback.new( :scope('associative'), $<quote_EXPR>.ast, :fallback(default_for('$')) );
    }

    method postcircumfix:sym<( )>($/) {
        make $<arglist>.ast;
    }

    method value($/) {
        make $<quote> ?? $<quote>.ast !! $<number>.ast;
        $/.prune;
    }

    method number($/) {
        my $value := $<dec_number> ?? $<dec_number>.ast !! $<integer>.ast;
        if ~$<sign> eq '-' { $value := -$value; }
        make $<dec_number> ??
            QAST::NVal.new( :value($value) ) !!
            QAST::IVal.new( :value($value) );
        $/.prune;
    }

    method quote:sym<apos>($/) { make $<quote_EXPR>.ast; }
    method quote:sym<dblq>($/) { make $<quote_EXPR>.ast; }
    method quote:sym<qq>($/)   { make $<quote_EXPR>.ast; }
    method quote:sym<q>($/)    { make $<quote_EXPR>.ast; }
    method quote:sym<Q>($/)    { make $<quote_EXPR>.ast; }
    method quote:sym<Q:PIR>($/) {
        make QAST::VM.new( :pir( $<quote_EXPR>.ast.value ), :node($/) );
    }

    method quote:sym</ />($/) {
        my $block := $*W.pop_lexpad();
        $block[0].push(QAST::Var.new(:name<self>, :scope<lexical>, :decl<param>));
        $block[0].push(QAST::Op.new(
            :op('bind'),
            QAST::Var.new(:name<self>, :scope<local>, :decl('var') ),
            QAST::Var.new( :name<self>, :scope('lexical') )));
        $block[0].push(QAST::Var.new(:name<$¢>, :scope<lexical>, :decl('var')));
        $block[0].push(QAST::Var.new(:name<$/>, :scope<lexical>, :decl('var')));
        $block.symbol('$¢', :scope<lexical>);
        $block.symbol('$/', :scope<lexical>);

        my $regex := %*LANG<Regex-actions>.qbuildsub($<p6regex>.ast, $block);
        my $ast := QAST::Op.new(
            :op<callmethod>, :name<new>,
            lexical_package_lookup(['NQPRegex'], $/),
            $regex);

        # In sink context, we don't need the Regex::Regex object.
        $ast<sink> := $regex;
        make $ast;
    }

    method quote_escape:sym<$>($/) { make $<variable>.ast; }
    method quote_escape:sym<{ }>($/) {
        make QAST::Op.new(
            :op('stringify'), block_immediate($<block>.ast), :node($/)
        );
    }
    method quote_escape:sym<esc>($/) { make "\c[27]"; }

    ## Operators

    method postfix:sym<.>($/) { make $<dotty>.ast; }

    method term:sym<return>($/) {
        make QAST::Op.new( :op('call'), :name('RETURN'),
            $<EXPR> ?? $<EXPR>.ast !!  QAST::WVal.new( :value($*W.find_sym(['NQPMu'])) ));
    }

    method prefix:sym<make>($/) {
        make QAST::Op.new(
                 QAST::Var.new( :name('$/'), :scope('lexical') ),
                 :op('callmethod'),
                 :name('!make'),
                 :node($/)
        );
    }
    
    method term:sym<next>($/) {
        my $ast := QAST::Op.new( :op('control'), :name('next') );
        
        if $<identifier> {
            $ast.push(QAST::WVal.new( :value($*W.find_sym([$<identifier>])), :named('label') ));
        }
        
        make $ast
    }
    method term:sym<last>($/) {
        my $ast := QAST::Op.new( :op('control'), :name('last') );
        
        if $<identifier> {
            $ast.push(QAST::WVal.new( :value($*W.find_sym([$<identifier>])), :named('label') ));
        }
        
        make $ast
    }
    method term:sym<redo>($/) {
        my $ast := QAST::Op.new( :op('control'), :name('redo') );
        
        if $<identifier> {
            $ast.push(QAST::WVal.new( :value($*W.find_sym([$<identifier>])), :named('label') ));
        }
        
        make $ast
    }

    method infix:sym<~~>($/) {
        make QAST::Op.new( :op<callmethod>, :name<ACCEPTS>, :node($/) );
    }
    
    # Takes a multi-part name that we know is in a package and generates
    # QAST to look it up using NQP package semantics.
    sub lexical_package_lookup(@name, $/) {
        # Catch empty names and die helpfully.
        if +@name == 0 { $/.CURSOR.panic("Cannot compile empty name"); }
        
        # The final lookup will always be just a keyed access to a
        # symbol table.
        my $final_name := @name.pop();
        my $lookup := QAST::VarWithFallback.new(
            :scope('associative'),
            QAST::SVal.new( :value(~$final_name) )
        );
        
        # If there's no explicit qualification, then look it up in the
        # current package, and fall back to looking in GLOBAL.
        if +@name == 0 {
            $lookup.unshift(QAST::Op.new(
                :op('who'),
                QAST::Var.new( :name('$?PACKAGE'), :scope('lexical') )
            ));
            $lookup.fallback(QAST::Op.new(
                :op('ifnull'),
                QAST::Op.new(
                    :op('atkey'),
                    QAST::Op.new(
                        :op('who'),
                        QAST::WVal.new( :value($*GLOBALish) )
                    ),
                    QAST::SVal.new( :value(~$final_name) )
                ),
                default_for(nqp::substr(~$final_name, 0, 1))));
        }
        
        # Otherwise, see if the first part of the name is lexically
        # known. If not, it's in GLOBAL. Also, if first part is GLOBAL
        # then strip it off.
        else {
            my $path;
            if $*W.is_lexical(@name[0]) {
                try {
                    my $first := @name.shift();
                    $path := QAST::WVal.new( :value($*W.find_sym([$first])) );
                    CATCH {
                        $path := QAST::Var.new( :name($first), :scope('lexical') );
                    }
                }
            }
            else {
                $path := QAST::WVal.new( :value($*GLOBALish) );
            }
            if @name[0] eq 'GLOBAL' {
                @name.shift();
            }
            for @name {
                my $path_temp := QAST::Node.unique('pkg_lookup_tmp');
                $path := QAST::Stmts.new(
                    QAST::Op.new(
                        :op('bind'),
                        QAST::Var.new( :name($path_temp), :scope('local'), :decl('var') ),
                        $path
                    ),
                    QAST::Op.new(
                        :op('if'),
                        QAST::Op.new(
                            :op('existskey'),
                            QAST::Op.new( :op('who'), QAST::Var.new( :name($path_temp), :scope('local') ) ),
                            QAST::SVal.new( :value(~$_) )
                        ),
                        QAST::Op.new(
                            :op('atkey'),
                            QAST::Op.new( :op('who'), QAST::Var.new( :name($path_temp), :scope('local') ) ),
                            QAST::SVal.new( :value(~$_) )
                        ),
                        default_for('$')
                    ));
                $path := QAST::Op.new( :op('locallifetime'), $path, $path_temp );
            }
            $lookup.unshift(QAST::Op.new(:op('who'), $path));
            my $sigil := nqp::substr(~$final_name, 0, 1);
            if $sigil eq '@' || $sigil eq '%' {
                my $viv_temp := QAST::Node.unique('pkg_viv_tmp');
                $lookup[0] := QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name($viv_temp), :scope('local'), :decl('var') ),
                    $lookup[0]);
                $lookup.fallback(QAST::Op.new(
                    :op('bindkey'),
                    QAST::Var.new( :name($viv_temp), :scope('local') ),
                    $lookup[1],
                    default_for($sigil)
                ));
            }
            else {
                $lookup.fallback(default_for($sigil));
            }
        }
        
        return $lookup;
    }
}

class NQP::RegexActions is QRegex::P6Regex::Actions {

    method metachar:sym<:my>($/) {
        my $ast := $<statement>.ast;
        make QAST::Regex.new( $ast,
                              :rxtype('qastnode'), :subtype('declarative'), :node($/) );
    }

    method metachar:sym<{ }>($/) { 
        make QAST::Regex.new( $<codeblock>.ast, 
                              :rxtype<qastnode>, :node($/) );
    }

    method metachar:sym<nqpvar>($/) {
        make QAST::Regex.new( QAST::Node.new(
                                  QAST::SVal.new( :value('!INTERPOLATE') ),
                                  $<var>.ast,
                                  QAST::IVal.new( :value($*SEQ ?? 1 !! 0) ) ),
                              :rxtype<subrule>, :subtype<method>, :node($/));
    }

    method assertion:sym<{ }>($/) { 
        make QAST::Regex.new( QAST::Node.new(
                                  QAST::SVal.new( :value('!INTERPOLATE_REGEX') ),
                                  $<codeblock>.ast),
                              :rxtype<subrule>, :subtype<method>, :node($/));
    }

    method assertion:sym<?{ }>($/) { 
        make QAST::Regex.new( $<codeblock>.ast, 
                              :subtype<zerowidth>, :negate( $<zw> eq '!' ),
                              :rxtype<qastnode>, :node($/) );
    }

    method assertion:sym<var>($/) {
        make QAST::Regex.new( QAST::Node.new(
                                  QAST::SVal.new( :value('!INTERPOLATE_REGEX') ),
                                  $<var>.ast), 
                              :rxtype<subrule>, :subtype<method>, :node($/));
    }

    method codeblock($/) {
        my $block := $<block>.ast;
        $block.blocktype('immediate');
        my $ast :=
            QAST::Stmts.new(
                QAST::Op.new(
                    :op('bind'),
                    QAST::Var.new( :name('$/'), :scope('lexical') ),
                    QAST::Op.new(
                        QAST::Var.new( :name('$¢'), :scope('lexical') ),
                        :name('MATCH'),
                        :op('callmethod')
                    )
                ),
                $block
            );
        make $ast;
    }
    
    method assertion:sym<name>($/) {
        my $name := ~$<longname>;
        my $qast;
        if $<assertion> {
            $qast := $<assertion>.ast;
            if $qast.rxtype eq 'subrule' {
                self.subrule_alias($qast, $name);
            }
            else {
                $qast := QAST::Regex.new( $qast, :name($name), 
                                          :rxtype<subcapture>, :node($/) );
            }
        }
        elsif $name eq 'sym' {
            my str $fullrxname := %*RX<name>;
            my str $rxname := "";
            my int $loc := nqp::index($fullrxname, ':sym<');
            if $loc >= 0 {
                $rxname := nqp::substr($fullrxname, $loc + 5 );
                $rxname := nqp::substr( $rxname, 0, nqp::chars($rxname) - 1);
            }
            else {
                $loc := nqp::index($fullrxname, ':');
                my $angleloc := nqp::index($fullrxname, '<', $loc);
                $rxname := nqp::substr($fullrxname, $loc + 1, $angleloc - $loc - 1) unless $loc < 0;
            }
            if $loc >= 0 {
                $qast := QAST::Regex.new(:name('sym'), :rxtype<subcapture>, :node($/),
                    QAST::Regex.new(:rxtype<literal>, $rxname, :node($/)));
            }
            else {
                self.panic("<sym> only valid in multiregexes");
            }
        }
        else {
            $qast := QAST::Regex.new(:rxtype<subrule>, :subtype<capture>,
                                     :node($/), :name($name),
                                     QAST::Node.new( QAST::SVal.new( :value($name) ) ) );
            if $<arglist> {
                for $<arglist>.ast.list { $qast[0].push( $_ ) }
            }
            elsif $<nibbler> {
                $name eq 'after' ??
                    $qast[0].push(self.qbuildsub(self.flip_ast($<nibbler>.ast), :anon(1), :addself(1))) !!
                    $qast[0].push(self.qbuildsub($<nibbler>.ast, :anon(1), :addself(1)));
            }
        }
        make $qast;
    }

    method arglist($/) { make $<arglist>.ast }
    
    method arg($/) {
        make $<quote_EXPR>.ast;
    }
    
    method create_regex_code_object($block) {
        my $code := $*W.create_code($block, '', 0, :code_type_name<NQPRegex>);
        if nqp::existskey(%*RX, 'code') {
            %*RX<code>.ADD_NESTED_CODE($code);
        }
        $code
    }
    
    method store_regex_nfa($code_obj, $block, $nfa) {
        $code_obj.SET_NFA($nfa.save);
    }
    
    method store_regex_caps($code_obj, $block, %caps) {
        $code_obj.SET_CAPS(%caps);
    }
    
    method store_regex_alt_nfa($code_obj, $block, $key, @alternatives) {
        my @saved;
        for @alternatives {
            @saved.push($_.save(:non_empty));
        }
        $code_obj.SET_ALT_NFA($key, @saved);
    }
}
