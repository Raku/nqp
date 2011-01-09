INIT {
    pir::load_bytecode('Parrot/Exception.pbc');
}

# This incorporates both the code that used to be in PCT::HLLCompiler as well
# as various additional things that initially appeared in the nqp-rx HLL::Compiler.
# Conversion of it all the NQP is a work in progress; for now, many methods are
# simply NQP wrappers around inline PIR.
class HLL::Compiler {
    has @!stages;
    has $!parsegrammar;
    has $!parseactions;
    has $!astgrammar;
    has $!commandline_banner;
    has $!commandline_prompt;
    has @!cmdoptions;
    has $!usage;
    has $!version;
    has $!compiler_progname;
    has $!language;

    method BUILD() {
        @!stages     := pir::split(' ', 'parse past post pir evalpmc');
        @!cmdoptions := pir::split(' ', 'e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats');
        Q:PIR{
            .include 'iglobals.pasm'
            .include 'cclass.pasm'

            $P1 = box <<'            USAGE'
  This compiler is based on HLL::Compiler.

  Options:
            USAGE

            .local pmc it
            $P0 = getattribute self, '@!cmdoptions'
            it = iter $P0
          options_loop:
            unless it goto options_end
            $P3  = shift it
            $P1 .= "    "
            $P1 .= $P3
            $P1 .= "\n"
            goto options_loop
          options_end:
            setattribute self, '$!usage', $P1

            $S0  = '???'
            push_eh _handler
            $P0 = getinterp
            $P0 = $P0[.IGLOBALS_CONFIG_HASH]
            $S0  = $P0['revision']   # also $I0 = P0['installed'] could be used
          _handler:
            pop_eh
            $P2  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P2 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P2 .= 'revision '
          _is_version:
            $P2 .= $S0
            $P2 .= '.'
            setattribute self, '$!version', $P2
        };
    }
    
    my sub value_type($value) {
        pir::isa($value, 'NameSpace') 
        ?? 'namespace'
        !! (pir::isa($value, 'Sub') ?? 'sub' !! 'var')
    }
        
    method get_exports($module, :$tagset, *@symbols) {
        # convert a module name to something hash-like, if needed
        if (!pir::does($module, 'hash')) {
            $module := self.get_module($module);
        }

        $tagset := $tagset // (@symbols ?? 'ALL' !! 'DEFAULT');
        my %exports;
        my %source := $module{'EXPORT'}{~$tagset};
        if !pir::defined(%source) {
            %source := $tagset eq 'ALL' ?? $module !! {};
        }
        if @symbols {
            for @symbols {
                my $value := %source{~$_};
                %exports{value_type($value)}{$_} := $value;
            }
        }
        else {
            for %source {
                my $value := $_.value;
                %exports{value_type($value)}{$_.key} := $value;
            }
        }
        %exports;
    }

    method get_module($name) {
        my @name := self.parse_name($name);
        @name.unshift(pir::downcase($!language));
        pir::get_root_namespace__PP(@name);
    }

    method language($name?) {
        if $name {
            $!language := $name;
            pir::compreg__0sP($name, self);
        }
        $!language;
    }

    method load_module($name) {
        my $base := pir::join('/', self.parse_name($name));
        my $loaded := 0;
        try { pir::load_bytecode("$base.pbc"); $loaded := 1 };
        unless $loaded { pir::load_bytecode("$base.pir"); $loaded := 1 }
        self.get_module($name);
    }

    method import($target, %exports) {
        for %exports {
            my $type := $_.key;
            my %items := $_.value;
            if pir::can(self, "import_$type") {
                for %items { self."import_$type"($target, $_.key, $_.value); }
            }
            elsif pir::can($target, "add_$type") {
                for %items { $target."add_$type"($_.key, $_.value); }
            }
            else {
                for %items { $target{~$_.key} := $_.value; }
            }
        }
    }

    method autoprint($value) {
        pir::say(~$value) 
            unless (pir::getinterp__P()).stdout_handle().tell() > $*AUTOPRINTPOS;
    }

    method interactive(*%adverbs) {
        my $target := pir::downcase(%adverbs<target>);

        pir::print__vPS( pir::getinterp__P().stderr_handle(), self.commandline_banner );

        my $stdin    := pir::getinterp__P().stdin_handle();
        my $encoding := ~%adverbs<encoding>;
        if $encoding && $encoding ne 'fixed_8' {
            $stdin.encoding($encoding);
        }

        my $save_ctx;
        while 1 {
            last unless $stdin;

            my $prompt := self.commandline_prompt // '> ';
            my $code := $stdin.readline_interactive(~$prompt);

            last if pir::isnull($code);

            # Set the current position of stdout for autoprinting control
            my $*AUTOPRINTPOS := (pir::getinterp__P()).stdout_handle().tell();
            my $*CTXSAVE := self;
            my $*MAIN_CTX;

            if $code {
                $code := $code ~ "\n";
                my $output;
                {
                    $output := self.eval($code, :outer_ctx($save_ctx), |%adverbs);
                    CATCH {
                        pir::print(~$! ~ "\n");
                        next;
                    }
                };
                if pir::defined($*MAIN_CTX) {
                    our $interactive_ctx;
                    our %interactive_pad;
                    for $*MAIN_CTX.lexpad_full() {
                        %interactive_pad{$_.key} := $_.value;
                    }
                    $save_ctx := $interactive_ctx;
                }
                next if pir::isnull($output);

                if !$target {
                    self.autoprint($output);
                } elsif $target eq 'pir' {
                   pir::say($output);
                } else {
                   self.dumper($output, $target, |%adverbs);
                }
            }
        }
    }

    method eval($code, *@args, *%adverbs) {
        my $output;
        $output := self.compile($code, |%adverbs);

        if !pir::isa($output, 'String')
                && %adverbs<target> eq '' {
            my $outer_ctx := %adverbs<outer_ctx>;
            if pir::defined($outer_ctx) {
                $output[0].set_outer_ctx($outer_ctx);
            }

            pir::trace(%adverbs<trace>);
            $output := $output(|@args);
            pir::trace(0);
        }

        $output;
    }

    method ctxsave() {
        $*MAIN_CTX :=
            Q:PIR {
                $P0 = getinterp
                %r = $P0['context';1]
            };
        $*CTXSAVE := 0;
    }

    method panic(*@args) {
        pir::die(pir::join('', @args))
    }

    method stages(@value?) {
        if +@value {
            @!stages := @value;
        }
        @!stages;
    }
    
    method parsegrammar(*@value) {
        if +@value {
            $!parsegrammar := @value[0];
        }
        $!parsegrammar;
    }

    method parseactions(*@value) {
        if +@value {
            $!parseactions := @value[0];
        }
        $!parseactions;
    }
    
    method astgrammar(*@value) {
        if +@value {
            $!astgrammar := @value[0];
        }
        $!astgrammar;
    }
    
    method commandline_banner($value?) {
        if pir::defined($value) {
            $!commandline_banner := $value;
        }
        $!commandline_banner;
    }
    
    method commandline_prompt($value?) {
        if pir::defined($value) {
            $!commandline_prompt := $value;
        }
        $!commandline_prompt;
    }
    
    method compiler_progname($value?) {
        if pir::defined($value) {
            $!compiler_progname := $value;
        }
        $!compiler_progname;
    }

    method command_line(@args, *%adverbs) {
        Q:PIR {
            .include 'except_severity.pasm'
            .local pmc args, adverbs
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'

            ## this bizarre piece of code causes the compiler to
            ## immediately abort if it looks like it's being run
            ## from Perl's Test::Harness.  (Test::Harness versions 2.64
            ## and earlier have a hardwired commandline option that is
            ## always passed to an initial run of the interpreter binary,
            ## whether you want it or not.)  We expect to remove this
            ## check eventually (or make it a lot smarter than it is here).
            $S0 = args[2]
            $I0 = index $S0, '@INC'
            if $I0 < 0 goto not_harness
            exit 0
          not_harness:

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'

            ##  get the name of the program
            .local string arg0
            arg0 = args[0]

            ##   perform option processing of command-line args
            .local pmc opts
            opts = self.'process_args'(args)

            ##   merge command-line args with defaults passed in from caller
            .local pmc it
            it = iter opts
          mergeopts_loop:
            unless it goto mergeopts_end
            $S0 = shift it
            $P0 = opts[$S0]
            adverbs[$S0] = $P0
            goto mergeopts_loop
          mergeopts_end:

            $I0 = adverbs['help']
            if $I0 goto usage

            $I0 = adverbs['version']
            if $I0 goto version

            .local int can_backtrace
            can_backtrace = can self, 'backtrace'
            unless can_backtrace goto no_push_eh
            push_eh uncaught_exception
          no_push_eh:

            $S0 = adverbs['e']
            $I0 = exists adverbs['e']
            if $I0 goto eval_line
            .local pmc result
            result = box ''
            unless args goto interactive
            $I0 = adverbs['combine']
            if $I0 goto combine
            $S0 = args[0]
            result = self.'evalfiles'($S0, args :flat, adverbs :flat :named)
            goto save_output
          combine:
            result = self.'evalfiles'(args, adverbs :flat :named)
            goto save_output
          interactive:
            self.'interactive'(args :flat, adverbs :flat :named)
            goto save_output
          eval_line:
            result = self.'eval'($S0, '-e', args :flat, adverbs :flat :named)

          save_output:
            unless can_backtrace goto no_pop_eh
            pop_eh
          no_pop_eh:
            if null result goto end
            $I0 = defined result
            unless $I0 goto end
            .local string target
            target = adverbs['target']
            target = downcase target
            if target != 'pir' goto end
            .local string output
            .local pmc ofh
            $P0 = getinterp
            ofh = $P0.'stdout_handle'()
            output = adverbs['output']
            if output == '' goto save_output_1
            if output == '-' goto save_output_1
            ofh = new ['FileHandle']
            ofh.'open'(output, 'w')
            unless ofh goto err_output
          save_output_1:
            print ofh, result
            ofh.'close'()
          end:
            .return ()

          err_output:
            .tailcall self.'panic'('Error: file cannot be written: ', output)
          usage:
            self.'usage'(arg0)
            goto end
          version:
            self.'version'()
            goto end

            # If we get an uncaught exception in the program and the HLL provides
            # a backtrace method, we end up here. We pass it the exception object
            # so it can render a backtrace, unless the severity is exit or warning
            # in which case it needs special handling.
          uncaught_exception:
            .get_results ($P0)
            pop_eh
            $P1 = getinterp
            $P1 = $P1.'stderr_handle'()
            $I0 = $P0['severity']
            if $I0 == .EXCEPT_EXIT goto do_exit
            $S0 = self.'backtrace'($P0)
            print $P1, $S0
            if $I0 <= .EXCEPT_WARNING goto do_warning
            exit 1
          do_exit:
            $I0 = $P0['exit_code']
            exit $I0
          do_warning:
            $P0 = $P0["resume"]
            push_eh uncaught_exception # Otherwise we get errors about no handler to delete
            $P0()
        };
    }

    method process_args(@args) {
        Q:PIR {
            load_bytecode 'Getopt/Obj.pbc'

            .local pmc args
            args = find_lex '@args'
            .local string arg0
            arg0 = shift args
            self.'compiler_progname'(arg0)

            .local pmc getopts
            getopts = new ['Getopt';'Obj']
            getopts.'notOptStop'(1)
            $P0 = getattribute self, '@!cmdoptions'
            .local pmc it
            it = iter $P0
          getopts_loop:
            unless it goto getopts_end
            $S0 = shift it
            push getopts, $S0
            goto getopts_loop
          getopts_end:
            .tailcall getopts.'get_options'(args)
        };
    }

    method evalfiles(@files, *@args, *%adverbs) {
        Q:PIR {
            .local pmc files, args, adverbs
            files = find_lex '@files'
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'

            unless null adverbs goto have_adverbs
            adverbs = new 'Hash'
          have_adverbs:
            .local string target
            target = adverbs['target']
            target = downcase target
            .local string encoding
            encoding = adverbs['encoding']
            $I0 = does files, 'array'
            if $I0 goto have_files_array
            $P0 = new 'ResizablePMCArray'
            push $P0, files
            files = $P0
          have_files_array:
            .local string code
            code = ''
            .local pmc it
            it = iter files
          iter_loop:
            unless it goto iter_end
            .local string iname
            .local pmc ifh
            iname = shift it
            ifh = new 'FileHandle'
            unless encoding == 'utf8' goto iter_loop_1
            ifh.'encoding'(encoding)
          iter_loop_1:
            $S0 = ifh.'readall'(iname)
            code = concat code, $S0
            ifh.'close'()
            goto iter_loop
          iter_end:
            $S0 = join ' ', files
            $P1 = box $S0
            .lex '$?FILES', $P1
            $P0 = self.'eval'(code, args :flat, adverbs :flat :named)
            if target == '' goto end
            if target == 'pir' goto end
            self.'dumper'($P0, target, adverbs :flat :named)
          end:
            .return ($P0)

          err_infile:
            .tailcall self.'panic'('Error: file cannot be read: ', iname)
        };
    }

    method compile($source, *%adverbs) {
        Q:PIR {
            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'

            .local pmc compiling, options
            compiling = new ['Hash']
            .lex '%*COMPILING', compiling
            compiling['%?OPTIONS'] = adverbs

            .local string target
            target = adverbs['target']
            target = downcase target

            .local int stagestats
            stagestats = adverbs['stagestats']

            .local pmc stages, result, it
            result = source
            stages = self.'stages'()
            it = iter stages
            if stagestats goto stagestats_loop

          iter_loop:
            unless it goto have_result
            .local string stagename
            stagename = shift it
            result = self.stagename(result, adverbs :flat :named)
            if target == stagename goto have_result
            goto iter_loop

          stagestats_loop:
            unless it goto have_result
            stagename = shift it
            $N0 = time
            result = self.stagename(result, adverbs :flat :named)
            $N1 = time
            $N2 = $N1 - $N0
            $P0 = getinterp
            $P1 = $P0.'stderr_handle'()
            $P1.'print'("Stage '")
            $P1.'print'(stagename)
            $P1.'print'("': ")
            $P2 = new ['ResizablePMCArray']
            push $P2, $N2
            $S0 = sprintf "%.3f", $P2
            $P1.'print'($S0)
            $P1.'print'(" sec\n")
            if target == stagename goto have_result
            goto stagestats_loop

          have_result:
            .return (result)
        };
    }

    method past($source, *%adverbs) {
        Q:PIR {
            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'

          compile_astgrammar:
            .local pmc astgrammar_name
            astgrammar_name = self.'astgrammar'()
            $S0 = typeof astgrammar_name
            eq $S0, 'NameSpace', astgrammar_ns
            unless astgrammar_name goto compile_match

            .local pmc astgrammar_namelist
            .local pmc astgrammar, astbuilder
            astgrammar_namelist = self.'parse_name'(astgrammar_name)
            unless astgrammar_namelist goto err_past
            astgrammar = new astgrammar_namelist
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')
          astgrammar_ns:
            $P0 = get_class astgrammar_name
            astgrammar = new $P0
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')

          compile_match:
            .local pmc ast
            ast = source.'ast'()
            $I0 = isa ast, ['PAST';'Node']
            unless $I0 goto err_past
            .return (ast)

          err_past:
            $S0 = typeof source
            .tailcall self.'panic'('Unable to obtain PAST from ', $S0)
        };
    }

    method post($source, *%adverbs) {
        Q:PIR {
            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            $P0 = compreg 'PAST'
            .tailcall $P0.'to_post'(source, adverbs :flat :named)
        };
    }

    method pir($source, *%adverbs) {
        Q:PIR {
            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            $P0 = compreg 'POST'
            .tailcall $P0.'to_pir'(source, adverbs :flat :named)
        };
    }

    method evalpmc($source, *%adverbs) {
        Q:PIR {
            .local pmc source, adverbs
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            $P0 = compreg 'PIR'
            $P1 = $P0(source)
            .return($P1)
        }
    }

    method dumper($obj, $name, *%options) {
        if %options<dumper> {
            pir::load_bytecode('PCT/Dumper.pbc');
            my $dumper := PCT::Dumper{pir::downcase__SS(%options<dumper>)};
            $dumper($obj, $name)
        }
        else {
            _dumper($obj, $name)
        }
    }

}

# Set up compiler for "Parrot" language.
INIT {
    my $pl := HLL::Compiler.new();
    $pl.BUILD();
    $pl.language('parrot');
}
