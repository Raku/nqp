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
    
    method load_module($module_name, $cur_GLOBALish?) {
        # Load the module and capture its mainline.
        my $*CTXSAVE := self;
        my $*MAIN_CTX;
        my $path := pir::join('/', pir::split('::', $module_name)) ~ '.pbc';
        pir::load_bytecode($path);
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
