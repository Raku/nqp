knowhow ModuleLoader {
    my %modules_loaded;
    my %settings_loaded;

    method search_path($explicit_path) {
        my @search_paths;

        # Put any explicitly specified path on the start of the list.
        my $explicit;
        if !nqp::isnull($explicit_path) {
            my $compiling := %*COMPILING;
            unless nqp::isnull($compiling) {
                my $options := $compiling<%?OPTIONS>;
                unless nqp::isnull($options) {
                    $explicit := $options{$explicit_path};
                }
            }
        }
        if !nqp::isnull($explicit) && nqp::defined($explicit) {
            nqp::push(@search_paths, $explicit);
        }
        my %env := nqp::getenvhash();
        if nqp::existskey(%env, 'NQP_LIB') {
            nqp::push(@search_paths, %env<NQP_LIB>);
        }
        for nqp::jvmclasspaths() {
            nqp::push(@search_paths, $_)
        }

        @search_paths
    }

    method ctxsave() {
        $*MAIN_CTX := nqp::ctxcaller(nqp::ctx());
        $*CTXSAVE := 0;
    }

    method load_module($module_name, *@extras, :$line, :$file) {
        # If we didn't already do so, load the module and capture
        # its mainline. Otherwise, we already loaded it so go on
        # with what we already have.
        my $module_ctx;
        my $path := nqp::join('/', nqp::split('::', $module_name));
        my @prefixes := self.search_path('module-path');
        for @prefixes -> $prefix {
            if nqp::stat("$prefix/$path.jar", 0) {
                $path := "$prefix/$path.jar";
                last;
            }
            if nqp::stat("$prefix/$path.class", 0) {
                $path := "$prefix/$path.class";
                last;
            }
        }
        if nqp::existskey(%modules_loaded, $path) {
            $module_ctx := %modules_loaded{$path};
        }
        else {
            my $*CTXSAVE := self;
            my $*MAIN_CTX := ModuleLoader;
            my $boot_mode;
            my $compiling := %*COMPILING;
            unless nqp::isnull($compiling) {
                my $options := $compiling<%?OPTIONS>;
                unless nqp::isnull($options) {
                    $boot_mode := $options<bootstrap>;
                }
            }
            $boot_mode := !nqp::isnull($boot_mode) && $boot_mode;
            my $preserve_global := nqp::getcurhllsym('GLOBAL');
            nqp::usecompileehllconfig() if $boot_mode;
            nqp::loadbytecode($path);
            nqp::usecompilerhllconfig() if $boot_mode;
            nqp::bindcurhllsym('GLOBAL', $preserve_global);
            %modules_loaded{$path} := $module_ctx := $*MAIN_CTX;
        }

        # Provided we have a mainline...
        if nqp::defined($module_ctx) {
            # Merge any globals.
            my $UNIT := nqp::ctxlexpad($module_ctx);
            unless nqp::isnull($UNIT<GLOBALish>) {
                if nqp::elems(@extras) {
                    # There can be a hash at index zero, which contains adverbs
                    # passed to the use-statement.
                    my $index := nqp::ishash(@extras[0]) ?? 1 !! 0;
                    if nqp::elems(@extras) > $index {
                        merge_globals(@extras[$index], $UNIT<GLOBALish>);
                    }
                }
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
            %known_symbols{nqp::iterkey_s($_)} := 1;
        }
        for $source.WHO {
            my $sym := nqp::iterkey_s($_);
            my $val := nqp::iterval($_);
            if !nqp::existskey(%known_symbols, $sym) {
                my $source_is_stub := 0;
                # XXX TODO: Exceptions.
                #try {
                    my $source_mo := $val.HOW;
                    $source_is_stub := $source_mo.WHAT.HOW.name($source_mo) eq $stub_how &&
                        !nqp::isnull(nqp::who($val)) && nqp::who($val);
                #}
                if $source_is_stub {
                    my $source := $val;
                    my $source_clone := $source.HOW.new_type(:name($source.HOW.name($source)));
                    $source_clone.HOW.compose($source_clone);
                    my %WHO_clone;
                    for nqp::who($source) {
                        %WHO_clone{nqp::iterkey_s($_)} := nqp::iterval($_);
                    }
                    nqp::setwho($source_clone, %WHO_clone);
                    ($target.WHO){$sym} := $source_clone;
                }
                else {
                    ($target.WHO){$sym} := $val;
                }
            }
            elsif ($target.WHO){$sym} =:= $val {
                # No problemo; a symbol can't conflict with itself.
            }
            else {
                my $source_mo := $val.HOW;
                my $source_is_stub := $source_mo.WHAT.HOW.name($source_mo) eq $stub_how;
                my $target_mo := ($target.WHO){$sym}.HOW;
                my $target_is_stub := $target_mo.WHAT.HOW.name($target_mo) eq $stub_how;
                if $source_is_stub && $target_is_stub {
                    # Leave target as is, and merge the nested symbols.
                    merge_globals(($target.WHO){$sym}, $val);
                }
                else {
                    nqp::die("Merging GLOBAL symbols failed: duplicate definition of symbol $sym");
                }
            }
        }
    }

    method load_setting($setting_name) {
        my $setting;

        if $setting_name ne 'NULL' {
            # Add path prefix and .setting suffix.
            my $path := "$setting_name.setting";
            my @prefixes := self.search_path('setting-path');
            for @prefixes -> $prefix {
                if nqp::stat("$prefix/$path.jar", 0) {
                    $path := "$prefix/$path.jar";
                    last;
                }
                if nqp::stat("$prefix/$path.class", 0) {
                    $path := "$prefix/$path.class";
                    last;
                }
            }

            # Unless we already did so, load the setting.
            unless nqp::existskey(%settings_loaded, $path) {
                my $*CTXSAVE := self;
                my $*MAIN_CTX := ModuleLoader;
                my $boot_mode;
                my $compiling := %*COMPILING;
                unless nqp::isnull($compiling) {
                    my $options := $compiling<%?OPTIONS>;
                    unless nqp::isnull($options) {
                        $boot_mode := $options<bootstrap>;
                    }
                }
                $boot_mode := !nqp::isnull($boot_mode) && $boot_mode;
                my $preserve_global := nqp::getcurhllsym('GLOBAL');
                nqp::usecompileehllconfig() if $boot_mode;
                nqp::loadbytecode($path);
                nqp::usecompilerhllconfig() if $boot_mode;
                nqp::bindcurhllsym('GLOBAL', $preserve_global);
                unless nqp::defined($*MAIN_CTX) {
                    nqp::die("Unable to load setting $setting_name; maybe it is missing a YOU_ARE_HERE?");
                }
                %settings_loaded{$path} := $*MAIN_CTX;
            }

            $setting := %settings_loaded{$path};
        }

        return $setting;
    }
}

nqp::bindcurhllsym('ModuleLoader', ModuleLoader);
