# Coercive dispatchers come here, because we use them during module
# loading, and so can't have them with the others that are in the setting,
# as the module loader is used to load the setting.
my $get-exception-message := -> $ex { nqp::getmessage($ex) };

#- Helper subs -----------------------------------------------------------------

# Always produce the empty string for the given capture
sub empty-string($capture) {
    nqp::delegate('boot-constant',
      nqp::syscall('dispatcher-insert-arg-literal-str', $capture, 0, '')
    );
}

# Always produce an integer 0 for the given capture
sub int-zero($capture) {
    nqp::delegate('boot-constant',
      nqp::syscall('dispatcher-insert-arg-literal-int', $capture, 0, 0)
    );
}

# Always produce a num 0 (0e0) for the given capture
sub num-zero($capture) {
    nqp::delegate('boot-constant',
      nqp::syscall('dispatcher-insert-arg-literal-num', $capture, 0, 0e0)
    );
}

#- nqp-stringify ---------------------------------------------------------------
# Dispatching to create a string representation

nqp::register('nqp-stringify', -> $capture {
    # Guard on the type of the argument for stringification.
    my $Targ := nqp::track('arg', $capture, 0);
    nqp::guard('type', $Targ);

    # A null argument always maps to the empty string.
    my $arg := nqp::captureposarg($capture, 0);
    if nqp::isnull($arg) {
        empty-string($capture);
    }

    # Not null, so need to guard on concreteness
    else {
        nqp::guard('concreteness', $Targ);

        # Anything that can unbox as a string will simply just be handed back;
        # we rely on the argument handling to do the unbox
        if nqp::isconcrete($arg) && nqp::syscall('can-unbox-to-str', $arg) {
            nqp::delegate('boot-value', $capture);
        }

        # If there's a Str method, invoke that
        elsif nqp::isconcrete($arg.HOW.find_method($arg, 'Str')) {
            nqp::delegate('lang-meth-call',
              nqp::syscall('dispatcher-insert-arg',
                nqp::syscall('dispatcher-insert-arg-literal-str',
                  $capture, 0, 'Str'
                ),
                0, $Targ
              )
            )
        }

        # If it's undefined, then the empty string
        elsif !nqp::isconcrete($arg) {
            empty-string($capture);
        }

        # Boxed int/num
        elsif nqp::syscall('can-unbox-to-int', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-int-to-str'
              )
            );
        }
        elsif nqp::syscall('can-unbox-to-num', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-num-to-str'
              )
            );
        }

        # Exception stringifies to its message
        elsif nqp::isconcrete(try nqp::getmessage($arg)) {
            nqp::delegate('boot-code-constant',
              nqp::syscall('dispatcher-insert-arg-literal-obj',
                $capture, 0, $get-exception-message
              )
            );
        }

        # Otherwise, don't know what to do
        else {
            nqp::die('Cannot stringify object of type ' ~ $arg.HOW.name($arg));
        }
    }
});

#- nqp-intify ------------------------------------------------------------------
# Dispatching to create a signed integer representation

nqp::register('nqp-intify', -> $capture {
    # Guard on the type of the argument for intification.
    my $Targ := nqp::track('arg', $capture, 0);
    nqp::guard('type', $Targ);

    # A null argument always maps to 0.
    my $arg := nqp::captureposarg($capture, 0);
    if nqp::isnull($arg) {
        int-zero($capture);
    }

    # Not null, so need to guard on concreteness
    else {
        nqp::guard('concreteness', $Targ);

        # Anything that can unbox as an int will simply just be handed back;
        # we rely on the argument handling to do the unbox.
        if nqp::isconcrete($arg) && nqp::syscall('can-unbox-to-int', $arg) {
            nqp::delegate('boot-value', $capture);
        }

        # If there's an Int method, invoke that
        elsif nqp::isconcrete(try $arg.HOW.find_method($arg, 'Int')) {
            nqp::delegate('lang-meth-call',
              nqp::syscall('dispatcher-insert-arg',
                nqp::syscall('dispatcher-insert-arg-literal-str',
                  $capture, 0, 'Int'
                ), 0, $Targ
              )
            );
        }

        # If it's undefined, then 0.
        elsif !nqp::isconcrete($arg) {
            int-zero($capture);
        }

        # Array or hash intifies to elems
        elsif nqp::islist($arg) || nqp::ishash($arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'elems'
              )
            );
        }

        # Boxed str/num
        elsif nqp::syscall('can-unbox-to-str', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-str-to-int'
              )
            );
        }
        elsif nqp::syscall('can-unbox-to-num', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-num-to-int'
              )
            );
        }

        # Otherwise, don't know what to do.
        else {
            nqp::die('Cannot intify object of type ' ~ $arg.HOW.name($arg));
        }
    }
});

#- nqp-uintify -----------------------------------------------------------------
# Dispatching to create an unsigned integer representation.  Note that this
# dispatcher only differs from the "nqp-intify" dispatcher in that it looks
# up the "UInt" method instead of "Int".  However, abstracting this appears
# to generate strange runtime errors.  Assuming this is some type of
# bootstrapping issue for now.

nqp::register('nqp-uintify', -> $capture {
    # Guard on the type of the argument for intification.
    my $Targ := nqp::track('arg', $capture, 0);
    nqp::guard('type', $Targ);

    # A null argument always maps to 0.
    my $arg := nqp::captureposarg($capture, 0);
    if nqp::isnull($arg) {
        int-zero($capture);
    }

    # Not null, so need to guard on concreteness
    else {
        nqp::guard('concreteness', $Targ);

        # Anything that can unbox as an int will simply just be handed back;
        # we rely on the argument handling to do the unbox.
        if nqp::isconcrete($arg) && nqp::syscall('can-unbox-to-int', $arg) {
            nqp::delegate('boot-value', $capture);
        }

        # If there's a UInt method, invoke that
        elsif nqp::isconcrete(try $arg.HOW.find_method($arg, 'UInt')) {
            nqp::delegate('lang-meth-call',
              nqp::syscall('dispatcher-insert-arg',
                nqp::syscall('dispatcher-insert-arg-literal-str',
                  $capture, 0, 'Int'
                ), 0, $Targ
              )
            );
        }

        # If it's undefined, then 0.
        elsif !nqp::isconcrete($arg) {
            int-zero($capture);
        }

        # Array or hash intifies to elems
        elsif nqp::islist($arg) || nqp::ishash($arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'elems'
              )
            );
        }

        # Boxed str/num
        elsif nqp::syscall('can-unbox-to-str', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-str-to-int'
              )
            );
        }
        elsif nqp::syscall('can-unbox-to-num', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-num-to-int'
              )
            );
        }

        # Otherwise, don't know what to do.
        else {
            nqp::die('Cannot intify object of type ' ~ $arg.HOW.name($arg));
        }
    }
});

#- nqp-numify ------------------------------------------------------------------
# Dispatching to create a num (float) representation

nqp::register('nqp-numify', -> $capture {
    # Guard on the type of the argument for numification.
    my $Targ := nqp::track('arg', $capture, 0);
    nqp::guard('type', $Targ);

    # A null argument always maps to 0e0.
    my $arg := nqp::captureposarg($capture, 0);
    if nqp::isnull($arg) {
        num-zero($capture);
    }

    # Not null, so need to guard on concreteness
    else {
        nqp::guard('concreteness', $Targ);

        # Anything that can unbox as a num will simply just be handed back;
        # we rely on the argument handling to do the unbox.
        if nqp::isconcrete($arg) && nqp::syscall('can-unbox-to-num', $arg) {
            nqp::delegate('boot-value', $capture);
        }

        # If there's a Num method, invoke that
        elsif nqp::isconcrete(try $arg.HOW.find_method($arg, 'Num')) {
            nqp::delegate('lang-meth-call',
              nqp::syscall('dispatcher-insert-arg',
                nqp::syscall('dispatcher-insert-arg-literal-str',
                  $capture, 0, 'Num'
                ), 0, $Targ
              )
            );
        }

        # If it's undefined, then 0e0.
        elsif !nqp::isconcrete($arg) {
            num-zero($capture);
        }

        # Array or hash numifies to elems (we can leave implicit return argument
        # conversion to take care of making it into a num).
        elsif nqp::islist($arg) || nqp::ishash($arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'elems'
              )
            );
        }

        # Boxed str/int
        elsif nqp::syscall('can-unbox-to-str', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-str-to-num'
              )
            );
        }
        elsif nqp::syscall('can-unbox-to-int', $arg) {
            nqp::delegate('boot-syscall',
              nqp::syscall('dispatcher-insert-arg-literal-str',
                $capture, 0, 'coerce-boxed-int-to-num'
              )
            );
        }

        # Otherwise, don't know what to do.
        else {
            nqp::die('Cannot numify object of type ' ~ $arg.HOW.name($arg));
        }
    }
});


knowhow ModuleLoader {
    my %modules_loaded;
    my %settings_loaded;

    # Helper sub for getting a compiler option
    sub option($name) {
        nqp::isnull(my %compiling := %*COMPILING)
          || nqp::isnull(my %options := %compiling<%?OPTIONS>)
          ?? nqp::null
          !! %options{$name}
    }

    # Helper sub to create search paths from an explicit key from
    # options, or the NQP_LIB environment variable
    sub search_paths($explicit_path) {
        my @search_paths;

        # Put any explicitly specified path on the start of the list.
        my $explicit := option($explicit_path);
        nqp::push(@search_paths, $explicit)
          if !nqp::isnull($explicit) && nqp::defined($explicit);

        my $nqp_lib := nqp::getenvhash()<NQP_LIB>;
        nqp::push(@search_paths, $nqp_lib) unless nqp::isnull($nqp_lib);

        @search_paths
    }

    # Helper sub to return the final path of a loadable MoarVM file.
    # Takes an explicit key to check for in options and a path name
    # (without the extension)
    sub find-path($explicit_path, $root) {
        my $path := $root ~ '.moarvm';
        my $next;
        for search_paths($explicit_path) -> $prefix {
            return $next if nqp::stat(($next := "$prefix/$path"), 0);
        }
        $path
    }

    method ctxsave() {
        $*MAIN_CTX := nqp::ctxcaller(nqp::ctx());
        $*CTXSAVE := 0;
    }

    method load_module($module_name, *@global_merge_target) {
        # If we didn't already do so, load the module and capture
        # its mainline. Otherwise, we already loaded it so go on
        # with what we already have.
        my $path := find-path(
          'module-path', nqp::join('/', nqp::split('::', $module_name))
        );

        my $module_ctx := %modules_loaded{$path};
        if nqp::isnull($module_ctx) {
            my $*CTXSAVE := self;
            my $*MAIN_CTX := ModuleLoader;
            my $boot_mode := option('bootstrap');

            my $preserve_global := nqp::getcurhllsym('GLOBAL');
            nqp::usecompileehllconfig() if $boot_mode;
            nqp::loadbytecode($path);
            nqp::usecompilerhllconfig() if $boot_mode;
            nqp::bindcurhllsym('GLOBAL', $preserve_global);
            %modules_loaded{$path} := $module_ctx := $*MAIN_CTX;
        }

        # Merge any globals Provided we have a mainline...
        if nqp::defined($module_ctx) && nqp::elems(@global_merge_target) {
            my $GLOBALish := nqp::ctxlexpad($module_ctx)<GLOBALish>;
            merge_globals(@global_merge_target[0], $GLOBALish)
              unless nqp::isnull($GLOBALish);
        }

        $module_ctx
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
                    $source_is_stub :=
                      $source_mo.WHAT.HOW.name($source_mo) eq $stub_how
                        && !nqp::isnull(nqp::who($val)) && nqp::who($val);
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

    method load_setting($name) {
        my $setting;

        if $name ne 'NULL' {
            # Add path prefix and .setting suffix.
            my $path := find-path('setting-path', "$name.setting");

            # Unless we already did so, load the setting.
            unless nqp::existskey(%settings_loaded, $path) {
                my $*CTXSAVE := self;
                my $*MAIN_CTX := ModuleLoader;
                my $boot_mode := option('bootstrap');

                my $preserve_global := nqp::getcurhllsym('GLOBAL');
                nqp::usecompileehllconfig() if $boot_mode;
                nqp::loadbytecode($path);
                nqp::usecompilerhllconfig() if $boot_mode;
                nqp::bindcurhllsym('GLOBAL', $preserve_global);

                nqp::die(
                  "Unable to load setting $name; maybe it is missing a YOU_ARE_HERE?"
                ) unless nqp::defined($*MAIN_CTX);

                %settings_loaded{$path} := $*MAIN_CTX;
            }

            $setting := %settings_loaded{$path};
        }

        $setting;
    }
}

# Since this *is* the module loader, we can't locate it the normal way by
# GLOBAL merging. So instead we stash it away in the current HLL directly.
nqp::bindcurhllsym('ModuleLoader', ModuleLoader);
