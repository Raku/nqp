knowhow ModuleLoader {
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
        # Load the module and capture its mainline.
        my $*CTXSAVE := self;
        my $*MAIN_CTX;
        my $path := pir::join('/', pir::split('::', $module_name)) ~ '.pbc';
        pir::load_bytecode($path);

        # Provided we have a mainline and a GLOBALish in it,
        # do the merge.
        if pir::defined($*MAIN_CTX) {
            my $UNIT := pir::getattribute__PPs($*MAIN_CTX, 'lex_pad');
            unless pir::isnull($UNIT<GLOBALish>) {
                merge_globals($cur_GLOBALish, $UNIT<GLOBALish>);
            }
        }
    }
    
    # XXX This is a really dumb and minimalistic GLOBAL merger.
    # For a much more complete one, see sorear++'s work in
    # Niecza. This one will likely evolve towards that, but for 
    # now I just need something that's just good enough for the
    # immediate needs of NQP bootstrapping.
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
            else {
                pir::die("Merging GLOBAL symbols failed: duplicate definition of symbol $sym");
            }
        }
    }
    
    method load_setting($setting_name) {
        if $setting_name ne 'NULL' {
            # Unless we already did so, load the setting.
            unless pir::defined(%settings_loaded{$setting_name}) {
                my $*CTXSAVE := self;
                my $*MAIN_CTX;
                pir::load_bytecode("$setting_name.setting.pbc");
                unless pir::defined($*MAIN_CTX) {
                    pir::die("Unable to load setting $setting_name; maybe it is missing a YOU_ARE_HERE?");
                }
                %settings_loaded{$setting_name} := $*MAIN_CTX;
            }
        }
        return %settings_loaded{$setting_name};
    }
}
