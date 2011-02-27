class NQP::Compiler is HLL::Compiler {
    method load_setting($setting_name) {
        if $setting_name ne 'NULL' {
            # Try to load setting and get context.
            my $*CTXSAVE := self;
            my $*MAIN_CTX;
            pir::load_bytecode("$setting_name.setting.pbc");
            unless pir::defined($*MAIN_CTX) {
                pir::die("Unable to load setting $setting_name; maybe it is missing a YOU_ARE_HERE?");
            }
            
            # Now it's loaded, set it as the outer context of the code
            # being compiled.
            %*COMPILING<%?OPTIONS><outer_ctx> := $*MAIN_CTX;
        }
    }
}
