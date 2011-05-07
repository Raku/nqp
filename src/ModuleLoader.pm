knowhow ModuleLoader {
    my %modules_loaded;
    my %settings_loaded;
    
    method ctxsave() {
        $*MAIN_CTX :=
            Q:PIR {
                $P0 = getinterp
                %r = $P0['context';1]
            };
        $*CTXSAVE := 0;
    }
    
    method load_module($module_name, $cur_GLOBALish) {
        # If we didn't already do so, load the module and capture
        # its mainline. Otherwise, we already loaded it so go on
        # with what we already have.
        my $module_ctx;
        my $path := pir::join('/', pir::split('::', $module_name)) ~ '.pbc';
        try {
            my $prefix := %*COMPILING<%?OPTIONS><module-path>;
            if $prefix {
                $path := "$prefix/$path";
            }
        }
        if pir::defined(%modules_loaded{$path}) {
            $module_ctx := %modules_loaded{$path};
        }
        else {
            my $*CTXSAVE := self;
            my $*MAIN_CTX;
            my $preserve_global := pir::get_hll_global__Ps('GLOBAL');
            pir::load_bytecode($path);
            pir::set_hll_global__vsP('GLOBAL', $preserve_global);
            %modules_loaded{$path} := $module_ctx := $*MAIN_CTX;
        }

        # Provided we have a mainline...
        if pir::defined($module_ctx) {
            # Merge any globals.
            my $UNIT := pir::getattribute__PPs($module_ctx, 'lex_pad');
            unless pir::isnull($UNIT<GLOBALish>) {
                merge_globals($cur_GLOBALish, $UNIT<GLOBALish>);
            }
        }

        return $module_ctx;
    }
    
    # XXX This is a really dumb and minimalistic GLOBAL merger.
    # For a much more complete one, see sorear++'s work in
    # Niecza. This one will likely evolve towards that, but for 
    # now I just need something that's just good enough for the
    # immediate needs of NQP bootstrapping.
    my $stub_how := 'KnowHOW';
    sub merge_globals($target, $source) {
        # XXX For now just merge the top level symbols;
        # if there's a conflict then don't dig any deeper.
        # Obviously, just a first cut at this. :-)
        my %known_symbols;
        for $target.WHO {
            %known_symbols{$_.key} := 1;
        }
        for $source.WHO {
            my $sym := $_.key;
            if !%known_symbols{$sym} {
                ($target.WHO){$sym} := $_.value;
            }
            elsif ($target.WHO){$sym} =:= $_.value {
                # No problemo; a symbol can't conflict with itself.
            }
            else {
                my $source_mo := $_.value.HOW;
                my $source_is_stub := $source_mo.WHAT.HOW.name($source_mo) eq $stub_how;
                my $target_mo := ($target.WHO){$sym}.HOW;
                my $target_is_stub := $target_mo.WHAT.HOW.name($target_mo) eq $stub_how;
                if $source_is_stub && $target_is_stub {
                    # Leave target as is, and merge the nested symbols.
                    merge_globals(($target.WHO){$sym}, $_.value);
                }
                else {
                    pir::die("Merging GLOBAL symbols failed: duplicate definition of symbol $sym");
                }
            }
        }
    }
    
    method load_setting($setting_name) {
        my $setting;
        
        if $setting_name ne 'NULL' {
            # Add path prefix and .setting suffix.
            my $path := "$setting_name.setting.pbc";
            try {
                my $prefix := %*COMPILING<%?OPTIONS><setting-path>;
                if $prefix {
                    $path := "$prefix/$path";
                }
            }
        
            # Unless we already did so, load the setting.
            unless pir::defined(%settings_loaded{$path}) {
                my $*CTXSAVE := self;
                my $*MAIN_CTX;
                my $preserve_global := pir::get_hll_global__Ps('GLOBAL');
                pir::load_bytecode($path);
                pir::set_hll_global__vsP('GLOBAL', $preserve_global);
                unless pir::defined($*MAIN_CTX) {
                    pir::die("Unable to load setting $setting_name; maybe it is missing a YOU_ARE_HERE?");
                }
                %settings_loaded{$path} := $*MAIN_CTX;
            }
            
            $setting := %settings_loaded{$path};
        }
        
        return $setting;
    }
    
    # Called by the mainline of the module that we started execution in.
    # Registers it as a module so we don't duplicate-load it.
    method set_mainline_module($mainline_ctx) {
        # May be fake executable, so may not end in .pbc. If so, add it.
        # Strip any .exe.
        my $module_name := ((pir::getinterp__P())[2])[0];
        if pir::substr($module_name, 0, 2) eq './' {
            $module_name := pir::substr($module_name, 2, pir::length($module_name) - 2);
        }
        if pir::substr($module_name, pir::length($module_name) - 4, 4) eq '.pbc' {
            # Fine as it is.
        }
        elsif pir::substr($module_name, pir::length($module_name) - 4, 4) eq '.exe' {
            # Replace exe with pbc.
            $module_name := pir::substr($module_name, 0, pir::length($module_name) - 3) ~ 'pbc';
        }
        else {
            $module_name := $module_name ~ '.pbc';
        }
        
        # Store context under this name.
        %modules_loaded{$module_name} := $mainline_ctx;
    }
}

# Since this *is* the module loader, we can't locate it the normal way by
# GLOBAL merging. So instead we stash it away in the Parrot namespace tree.
pir::set_hll_global__vsP('ModuleLoader', ModuleLoader);
