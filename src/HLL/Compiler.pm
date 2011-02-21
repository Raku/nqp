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

    # XXX HACK!!! Need a Mu. :-)
    method new() {
        my $obj := pir::repr_instance_of__PP(self);
        $obj.BUILD();
        $obj
    }

    method BUILD() {
        # Default stages.
        @!stages     := pir::split(' ', 'parse past post pir evalpmc');
        
        # Command options and usage.
        @!cmdoptions := pir::split(' ', 'e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace');
        $!usage := "This compiler is based on HLL::Compler.\n\nOptions:\n";
        for @!cmdoptions {
            $!usage := $!usage ~ "    $_\n";
        }
        
        # Version.
        $!version := Q:PIR {
            .include 'iglobals.pasm'
            .include 'cclass.pasm'
            $S0  = '???'
            push_eh _handler
            $P0 = getinterp
            $P0 = $P0[.IGLOBALS_CONFIG_HASH]
            $S0  = $P0['git_describe']   # also $I0 = P0['installed'] could be used
          _handler:
            pop_eh
            %r  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            %r .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            %r .= 'revision '
          _is_version:
            %r .= $S0
            %r .= '.'
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
    
    method commandline_options(@value?) {
        if +@value {
            @!cmdoptions := @value;
        }
        @!cmdoptions;
    }    

    method command_line(@args, *%adverbs) {
        ## this bizarre piece of code causes the compiler to
        ## immediately abort if it looks like it's being run
        ## from Perl's Test::Harness.  (Test::Harness versions 2.64
        ## from October 2006
        ## and earlier have a hardwired commandline option that is
        ## always passed to an initial run of the interpreter binary,
        ## whether you want it or not.)  We expect to remove this
        ## check eventually (or make it a lot smarter than it is here).
        if pir::index(@args[2], '@INC') >= 0 {
            pir::exit(0);
        }

        my $program-name := @args[0];
        my $res  := self.process_args(@args);
        my %opts := $res.options;
        my @a    := $res.arguments;

        for %opts -> $k {
            %adverbs{$k} := %opts{$k};
        }
        self.usage($program-name) if %adverbs<help>;
        self.version              if %adverbs<version>;

        Q:PIR {
            .include 'except_severity.pasm'
            .local pmc args, adverbs, self
            args = find_lex '@a'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'


            .local int can_backtrace, ll_backtrace
            can_backtrace = can self, 'backtrace'
            unless can_backtrace goto no_push_eh
            ll_backtrace = adverbs['ll-backtrace']
            if ll_backtrace goto no_push_eh
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
        # First argument is the program name.
        self.compiler_progname(@args.shift);

        my $p := HLL::CommandLine::Parser.new(@!cmdoptions);
        $p.add-stopper('-e');
        $p.stop-after-first-arg;
        my $res;
        try {
            $res := $p.parse(@args);
            CATCH {
                pir::say($_);
                self.usage;
                pir::exit(1);
            }
        }
        $res;
    }

    method evalfiles($files, *@args, *%adverbs) {
        my $target := pir::downcase(%adverbs<target>);
        my $encoding := %adverbs<encoding>;
        my @files := pir::does($files, 'array') ?? $files !! [$files];
        my @codes;
        for @files {
            my $in-handle := pir::new('FileHandle');
            my $err := 0;
            try {
                # the PIR version checked for utf8 specifically...
                # dunno why it was this way, and why it doesn't work in nqp
#                $in-handle.encoding($encoding) unless $encoding eq 'utf8';
                $in-handle.encoding($encoding);
                pir::push(@codes, $in-handle.readall($_));
                $in-handle.close;
                CATCH {
                    $err := "Error while reading from file: $_";
                }
            }
            pir::die($err) if $err;
            my $code := pir::join('', @codes);
#            my $?FILES := pir::join(' ', @files);
            my $r := self.eval($code, |@args, |%adverbs);
            if $target eq '' || $target eq 'pir' {
                return $r;
            } else {
                return self.dumper($r, $target, |%adverbs);

            }
        }
    }

    method compile($source, *%adverbs) {
        my %*COMPILING<%?OPTIONS> := %adverbs;

        my $target := pir::downcase(%adverbs<target>);
        my $result := $source;
        my $stderr := pir::getinterp().stderr_handle;
        for self.stages() {
            my $timestamp := pir::time__N();
            $result := self."$_"($result, |%adverbs);
            my $diff := pir::time__N() - $timestamp;
            if %adverbs<stagestats> {
                # TODO: plug in sprintf with %.3f
                $stderr.print__N("Stage $_: $diff\n");
            }
            last if $_ eq $target;
        }
        return $result;
    }

    method parse($source, *%adverbs) {
        Q:PIR {
            .local pmc source, options, self
            source = find_lex '$source'
            options = find_lex '%adverbs'
            self = find_lex 'self'

            .local string tcode
            tcode = options['transcode']
            unless tcode goto transcode_done
            .local pmc tcode_it
            $P0 = split ' ', tcode
            tcode_it = iter $P0
          tcode_loop:
            unless tcode_it goto transcode_done
            tcode = shift tcode_it
            push_eh tcode_fail
            $I0 = find_encoding tcode
            $S0 = source
            $S0 = trans_encoding $S0, $I0
            assign source, $S0
            pop_eh
            goto transcode_done
          tcode_fail:
            pop_eh
            goto tcode_loop
          transcode_done:

            .local pmc parsegrammar, parseactions, match
            parsegrammar = self.'parsegrammar'()

            null parseactions
            $S0 = options['target']
            if $S0 == 'parse' goto have_parseactions
            parseactions = self.'parseactions'()
          have_parseactions:

            .local int rxtrace
            rxtrace = options['parsetrace']
            match = parsegrammar.'parse'(source, 'p'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
            unless match goto err_parsefail
            .return (match)

          err_parsefail:
            self.'panic'('Unable to parse source')
            .return (match)
        };
    }

    method past($source, *%adverbs) {
        Q:PIR {
            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

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
        pir::compreg__Ps('PAST').to_post($source, |%adverbs)
    }

    method pir($source, *%adverbs) {
        pir::compreg__Ps('POST').to_pir($source, |%adverbs)
    }

    method evalpmc($source, *%adverbs) {
        my $compiler := pir::compreg__Ps('PIR');
        $compiler($source)
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

    method usage($name?) {
        if $name {
            say($name);
        }
        pir::say($!usage);
        pir::exit__vi(0);
    }

    method version() {
        pir::say($!version);
        pir::exit__vi(0);
    }

    method removestage($stagename) {
        my @new_stages := pir::new('ResizableStringArray');
        for @!stages {
            if $_ ne $stagename {
                @new_stages.push($_);
            }
        }
        @!stages := @new_stages;
    }

    method addstage($stagename, *%adverbs) {
        my $position;
        my $where;
        if %adverbs<before> {
            $where    := %adverbs<before>;
            $position := 'before';
        } elsif %adverbs<after> {
            $where    := %adverbs<after>;
            $position := 'after';
        } else {
            my @new-stages := pir::clone(self.stages);
            pir::push(@new-stages, $stagename);
            self.stages(@new-stages);
            return 1;
        }
        my @new-stages := pir::new('ResizableStringArray');
        for self.stages {
            if $_ eq $where {
                if $position eq 'before' {
                    pir::push(@new-stages, $stagename);
                    pir::push(@new-stages, $_);
                } else {
                    pir::push(@new-stages, $_);
                    pir::push(@new-stages, $stagename);
                }
            } else {
                pir::push(@new-stages, $_)
            }
        }
        self.stages(@new-stages);
    }

    method parse_name($name) {
        Q:PIR {
            .local string name
            $P0 = find_lex '$name'
            name = $P0

            # split name on ::
            .local pmc ns
            ns = split '::', name

            # move any leading sigil to the last item
            .local string sigil
            $S0 = ns[0]
            sigil = substr $S0, 0, 1
            $I0 = index '$@%&', sigil
            if $I0 < 0 goto sigil_done
            $S0 = replace $S0, 0, 1, ''
            ns[0] = $S0
            $S0 = ns[-1]
            $S0 = concat sigil, $S0
            ns[-1] = $S0
          sigil_done:

            # remove any empty items from the list
            .local pmc ns_it
            ns_it = iter ns
            ns = new ['ResizablePMCArray']
          ns_loop:
            unless ns_it goto ns_done
            $S0 = shift ns_it
            unless $S0 > '' goto ns_loop
            push ns, $S0
            goto ns_loop
          ns_done:

            # return the result
            .return (ns)
        };
    }

    method lineof($target, $pos, :$cache) {
        Q:PIR {
            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            .include 'cclass.pasm'

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop '!linepos', target
            unless null linepos goto linepos_done

            # calculate a new linepos array.
          linepos_build:
            linepos = new ['ResizableIntegerArray']
            unless cache goto linepos_build_1
            setprop target, '!linepos', linepos
          linepos_build_1:
            .local string s
            .local int jpos, eos
            s = target
            eos = length s
            jpos = 0
            # Search for all of the newline markers in C<target>.  When we
            # find one, mark the ending offset of the line in C<linepos>.
          linepos_loop:
            jpos = find_cclass .CCLASS_NEWLINE, s, jpos, eos
            unless jpos < eos goto linepos_done
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
          linepos_done:

            # We have C<linepos>, so now we search the array for the largest
            # element that is not greater than C<pos>.  The index of that
            # element is the line number to be returned.
            # (Potential optimization: use a binary search.)
            .local int line, count
            count = elements linepos
            line = 0
          line_loop:
            if line >= count goto line_done
            $I0 = linepos[line]
            if $I0 > pos goto line_done
            inc line
            goto line_loop
          line_done:
            .return (line)
        };
    }
}
