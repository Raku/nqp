class NQP::Compiler is HLL::Compiler {
    has %!settings_loaded;
    
    method load_setting($setting_name) {
        if $setting_name ne 'NULL' {
            # Unless we already did so, load the setting.
            unless pir::defined(%!settings_loaded{$setting_name}) {
                my $*CTXSAVE := self;
                my $*MAIN_CTX;
                pir::load_bytecode("$setting_name.setting.pbc");
                unless pir::defined($*MAIN_CTX) {
                    pir::die("Unable to load setting $setting_name; maybe it is missing a YOU_ARE_HERE?");
                }
                %!settings_loaded{$setting_name} := $*MAIN_CTX;
            }
            
            # Now it's loaded, set it as the outer context of the code
            # being compiled.
            %*COMPILING<%?OPTIONS><outer_ctx> := %!settings_loaded{$setting_name};
        }
    }
}
