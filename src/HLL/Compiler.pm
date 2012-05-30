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
    has @!cmdoptions;
    has $!usage;
    has $!compiler_progname;
    has $!language;
    has %!config;
    has $!user_progname;
    has @!cli-arguments;
    has %!cli-options;

    our %parrot_config;

    # XXX HACK!!! Need a Mu. :-)
    method new() {
        my $obj := pir::repr_instance_of__PP(self);
        $obj.BUILD();
        $obj
    }

    method BUILD() {
        # Default stages.
        @!stages     := nqp::split(' ', 'parse past post pir evalpmc');
        
        # Command options and usage.
        @!cmdoptions := nqp::split(' ', 'e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-exception rxtrace nqpevent=s profile profile-compile');
        $!usage := "This compiler is based on HLL::Compiler.\n\nOptions:\n";
        for @!cmdoptions {
            $!usage := $!usage ~ "    $_\n";
        }
        %parrot_config := pir::getinterp()[pir::const::IGLOBALS_CONFIG_HASH];
        %!config     := pir::new('Hash');
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

    method compiler($name) {
        pir::compreg__Ps($name);
    }

    method config() { %!config };

    method load_module($name) {
        my $base := nqp::join('/', self.parse_name($name));
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
        nqp::say(~$value)
            unless (pir::getinterp__P()).stdout_handle().tell() > $*AUTOPRINTPOS;
    }

    method interactive(*%adverbs) {
        # blank_context() serves as a cumulative "outer context"
        # for code executed in this interactive REPL instance.
        # It's invoked once to obtain a context, and the LexPad
        # of that context is replaced with an empty Hash that
        # we can use to cumulatively store lexicals.
        sub blank_context() {
            # transform context's pad into a Hash
            my %blank_pad;
            pir::copy__vPP(
                pir::getattribute__PPs(pir::getinterp__P(){'context'}, 'lex_pad'),
                %blank_pad);
            pir::getinterp__P(){'context'};
        }
        blank_context.set_outer(nqp::null());
        my $interactive_ctx := blank_context();
        my %interactive_pad := 
            pir::getattribute__PPs($interactive_ctx, 'lex_pad');
     
        my $target := pir::downcase(%adverbs<target>);

        nqp::print(pir::getinterp__P().stderr_handle(), self.interactive_banner);

        my $stdin    := pir::getinterp__P().stdin_handle();
        my $encoding := ~%adverbs<encoding>;
        if $encoding && $encoding ne 'fixed_8' {
            $stdin.encoding($encoding);
        }

        my $save_ctx;
        while 1 {
            last unless $stdin;

            my $prompt := self.interactive_prompt // '> ';
            my $code := $stdin.readline_interactive(~$prompt);

            last if pir::isnull($code);
            unless pir::defined($code) {
                nqp::print("\n");
                last;
            }

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
                        nqp::print(~$! ~ "\n");
                        next;
                    }
                };
                if pir::defined($*MAIN_CTX) {
                    for $*MAIN_CTX.lexpad_full() {
                        %interactive_pad{$_.key} := $_.value;
                    }
                    $save_ctx := $interactive_ctx;
                }
                next if pir::isnull($output);

                if !$target {
                    self.autoprint($output);
                } elsif $target eq 'pir' {
                   nqp::say($output);
                } else {
                   self.dumper($output, $target, |%adverbs);
                }
            }
        }
    }

    method eval($code, *@args, *%adverbs) {
        my $output;

        my $old_runcore := pir::interpinfo__si(pir::const::INTERPINFO_CURRENT_RUNCORE);
        if (%adverbs<profile-compile>) {
            pir::set_runcore__vs("subprof_hll");
        }
        $output := self.compile($code, |%adverbs);

        if !pir::isa($output, 'String')
                && %adverbs<target> eq '' {
            my $outer_ctx := %adverbs<outer_ctx>;
            if pir::defined($outer_ctx) {
                $output[0].set_outer_ctx($outer_ctx);
            }

            if (%adverbs<profile>) {
                pir::set_runcore__vs("subprof_hll");
            }
            pir::trace(%adverbs<trace>);
            $output := $output(|@args);
            pir::trace(0);
        }
        pir::set_runcore__vs($old_runcore);

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
        pir::die(nqp::join('', @args))
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
    
    method interactive_banner() { '' }
    
    method interactive_prompt() { '> ' }
    
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

        %adverbs.update(%opts);
        self.usage($program-name) if %adverbs<help>  || %adverbs<h>;

        pir::load_bytecode('dumper.pbc');
        pir::load_bytecode('PGE/Dumper.pbc');

        self.command_eval(|@a, |%adverbs);
    }


    method command_eval(*@a, *%adverbs) {
        self.version              if %adverbs<version> || %adverbs<v>;
        self.show-config          if %adverbs<show-config>;
        self.nqpevent(%adverbs<nqpevent>) if %adverbs<nqpevent>;

        my $result;
        my $error;
        my $has_error := 0;
        my $target := pir::downcase(%adverbs<target>);
        try {
            if pir::defined(%adverbs<e>) {
                $!user_progname := '-e';
                my $?FILES := '-e';
                $result := self.eval(%adverbs<e>, '-e', |@a, |%adverbs);
                unless $target eq '' || $target eq 'pir' {
					self.dumper($result, $target, |%adverbs);
				}
            }
            elsif !@a { $result := self.interactive(|%adverbs) }
            elsif %adverbs<combine> { $result := self.evalfiles(@a, |%adverbs) }
            else { $result := self.evalfiles(@a[0], |@a, |%adverbs) }

            if !pir::isnull($result) && $target eq 'pir' {
                my $output := %adverbs<output>;
                my $fh := ($output eq '' || $output eq '-')
                        ?? pir::getinterp__P().stdout_handle()
                        !! pir::new__Ps('FileHandle').open($output, 'w');
                self.panic("Cannot write to $output") unless $fh;
                pir::print($fh, $result);
                $fh.close()
            }
            CATCH {
                $has_error := 1;
                $error     := $_;
            }
            CONTROL {
                if pir::can(self, 'handle-control') {
                    self.handle-control($_);
                } else {
                    pir::rethrow__0P($_);
                }
                $has_error := 1;
                $error     := $_;
            }
        }
        if ($has_error) {
            if %adverbs<ll-exception> || !pir::can(self, 'handle-exception') {
                my $err := pir::getstderr__P();
                $err.print($error);
                $err.print("\n");
                $err.print(nqp::join("\n", $error.backtrace_strings));
                pir::exit(1);
            } else {
                self.handle-exception($error);
            }
        }
        $result;
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
                nqp::say($_);
                self.usage;
                pir::exit(1);
            }
        }
        if $res {
            %!cli-options   := $res.options();
            @!cli-arguments := $res.arguments();
        }
        else {
            %!cli-options   := nqp::hash();
            @!cli-arguments := [];
        }
        $res;
    }

    method evalfiles($files, *@args, *%adverbs) {
        my $target := pir::downcase(%adverbs<target>);
        my $encoding := %adverbs<encoding>;
        my @files := pir::does($files, 'array') ?? $files !! [$files];
        $!user_progname := nqp::join(',', @files);
        my @codes;
        for @files {
            my $in-handle := pir::new('FileHandle');
            my $err := 0;
            try {
                # the PIR version checked for utf8 specifically...
                # dunno why it was this way, and why it doesn't work in nqp
#                $in-handle.encoding($encoding) unless $encoding eq 'utf8';
                $in-handle.encoding($encoding);
                nqp::push_s(@codes, $in-handle.readall($_));
                $in-handle.close;
                CATCH {
                    $err := "Error while reading from file: $_";
                }
            }
            pir::die($err) if $err;
        }
        my $code := nqp::join('', @codes);
        my $?FILES := nqp::join(' ', @files);
        my $r := self.eval($code, |@args, |%adverbs);
        if $target eq '' || $target eq 'pir' {
            return $r;
        } else {
            return self.dumper($r, $target, |%adverbs);
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
                my $difffmt := pir::sprintf__SsP("%.3f", [$diff]);
                $stderr.print("Stage $_: $difffmt\n");
            }
            last if $_ eq $target;
        }
        return $result;
    }

    method parse($source, *%adverbs) {
        my $s := $source;
        if %adverbs<transcode> {
            for nqp::split(' ', %adverbs<transcode>) {
                try {
                    $s := pir::trans_encoding__ssi($s,
                            pir::find_encoding__is($_));
                }
            }
        }
        my $grammar := self.parsegrammar;
        my $actions;
        $actions    := self.parseactions unless %adverbs<target> eq 'parse';
        $grammar.HOW.trace-on($grammar) if %adverbs<rxtrace>;
        my $match   := $grammar.parse($s, p => 0, actions => $actions);
        $grammar.HOW.trace-off($grammar) if %adverbs<rxtrace>;
        self.panic('Unable to parse source') unless $match;
        return $match;
    }

    method past($source, *%adverbs) {
        my $ast := $source.ast();
        self.panic("Unable to obtain ast from " ~ pir::typeof($source))
            unless $ast ~~ PAST::Node;
        $ast;
    }

    method post($source, *%adverbs) {
        pir::compreg__Ps('PAST').to_post($source, |%adverbs)
    }

    method pirbegin() {
        ".include 'cclass.pasm'\n"
        ~ ".include 'except_severity.pasm'\n"
        ~ ".include 'except_types.pasm'\n"
        ~ ".include 'iglobals.pasm'\n"
        ~ ".include 'interpinfo.pasm'\n"
        ~ ".include 'iterator.pasm'\n"
        ~ ".include 'sysinfo.pasm'\n"
        ~ ".include 'stat.pasm'\n"
        ~ ".include 'datatypes.pasm'\n"
    }
  
    method pir($source, *%adverbs) {
        self.pirbegin() ~ pir::compreg__Ps('POST').to_pir($source, |%adverbs)
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
        nqp::say($!usage);
        pir::exit__vi(0);
    }

    method version() {
        my $version := %!config<version>;
        my $parver  := %parrot_config<VERSION>;
        my $parrev  := %parrot_config<git_describe> // '(unknown)';
        nqp::say("This is $!language version $version built on parrot $parver revision $parrev");
        pir::exit__vi(0);
    }

    method show-config() {
        for %parrot_config {
            nqp::say('parrot::' ~ $_.key ~ '=' ~ $_.value);
        }
        for %!config {
            nqp::say($!language ~ '::' ~ $_.key ~ '=' ~ $_.value);
        }
        pir::exit__vi(0);
    }

    method nqpevent($spec?) {
        ## close out the current event log, if any
        pir::nqpevent__vs('nqpevent: log finished');
        my $fh := pir::nqpevent_fh__PP(nqp::null());
        $fh.flush() if $fh;

        ## start a new event log
        if $spec {
            $spec := nqp::split(';', $spec);
            my $file := $spec[0];
            my $flags := $spec[1];
            if $file gt '' {
                my $fh := pir::new('FileHandle');
                $fh.open($file, 'w') || self.panic("Cannot write to $file");
                pir::nqpevent_fh__PP($fh);
            }
            else {
                pir::nqpevent_fh__PP(pir::getinterp__P().stderr_handle());
            }
            pir::nqpdebflags__Ii($flags eq '' ?? 0x1f !! $flags);
            pir::nqpevent__vs("nqpevent: log started");
        }
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
            nqp::push_s(@new-stages, $stagename);
            self.stages(@new-stages);
            return 1;
        }
        my @new-stages := pir::new('ResizableStringArray');
        for self.stages {
            if $_ eq $where {
                if $position eq 'before' {
                    nqp::push_s(@new-stages, $stagename);
                    nqp::push_s(@new-stages, $_);
                } else {
                    nqp::push_s(@new-stages, $_);
                    nqp::push_s(@new-stages, $stagename);
                }
            } else {
                nqp::push_s(@new-stages, $_)
            }
        }
        self.stages(@new-stages);
    }

    method parse_name($name) {
        my @ns    := nqp::split('::', $name);
        my $sigil := nqp::substr(@ns[0], 0, 1);

        # move any leading sigil to the last item
        my $idx   := pir::index('$@%&', $sigil);
        if $idx >= 0 {
            @ns[0]  := nqp::substr(@ns[0], 1);
            @ns[-1] := $sigil ~ @ns[-1];
        }

        # remove any empty items from the list
        # maybe replace with a grep() once we have the setting for sure
        my @actual_ns;
        for @ns {
            nqp::push_s(@actual_ns, $_) unless $_ eq '';
        }
        @actual_ns;
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

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop target, '!linepos'
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
            unless jpos < eos goto linepos_done_1
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
        linepos_done_1:
        linepos_done:

            # We have C<linepos>, so now we (binary) search the array
            # for the largest element that is not greater than C<pos>.
            .local int lo, hi, line
            lo = 0
            hi = elements linepos
        binary_loop:
            if lo >= hi goto binary_done
            line = lo + hi
            line = line / 2
            $I0 = linepos[line]
            if $I0 > pos goto binary_hi
            lo = line + 1
            goto binary_loop
        binary_hi:
            hi = line
            goto binary_loop
        binary_done:
            inc lo
            .return (lo)
        };
    }

    # the name of the file(s) that are executed, or -e  or 'interactive'
    method user-progname() { $!user_progname // 'interactive' }

    # command line options and arguments as provided by the user
    method cli-options()   { %!cli-options   }
    method cli-arguments() { @!cli-arguments }
}

my $compiler := HLL::Compiler.new();
$compiler.language('parrot');
