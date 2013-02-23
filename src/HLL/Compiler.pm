# Provides base functionality for a compiler object.
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
        my $obj := nqp::create(self);
        $obj.BUILD();
        $obj
    }

    method BUILD() {
        # Default stages.
        @!stages     := nqp::split(' ', 'start parse past post pir pbc init');
        
        # Command options and usage.
        @!cmdoptions := nqp::split(' ', 'e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile');
        $!usage := "This compiler is based on HLL::Compiler.\n\nOptions:\n";
        for @!cmdoptions {
            $!usage := $!usage ~ "    $_\n";
        }
        %parrot_config := pir::getinterp__P()[pir::const::IGLOBALS_CONFIG_HASH];
        %!config     := nqp::hash();
    }

    method language($name?) {
        if $name {
            $!language := $name;
            nqp::bindcomp($name, self);
        }
        $!language;
    }

    method compiler($name) {
        nqp::getcomp($name);
    }

    method config() { %!config };

    method load_module($name) {
        my $base := nqp::join('/', self.parse_name($name));
        my $loaded := 0;
        try { nqp::loadbytecode("$base.pbc"); $loaded := 1 };
        unless $loaded { nqp::loadbytecode("$base.pir"); $loaded := 1 }
        self.get_module($name);
    }

    method autoprint($value) {
        self.interactive_result($value)
            unless (pir::getinterp__P()).stdout_handle().tell() > $*AUTOPRINTPOS;
    }

    method interactive(*%adverbs) {
        pir::getinterp__P().stderr_handle().print(self.interactive_banner);

        my $stdin    := pir::getinterp__P().stdin_handle();
        my $encoding := ~%adverbs<encoding>;
        if $encoding && $encoding ne 'fixed_8' {
            $stdin.encoding($encoding);
        }

        my $target := nqp::lc(%adverbs<target>);
        my $save_ctx;
        while 1 {
            last unless $stdin;

            my $prompt := self.interactive_prompt // '> ';
            my $code := $stdin.readline_interactive(~$prompt);
            if nqp::isnull($code) || !nqp::defined($code) {
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
                        self.interactive_exception($!);
                        next;
                    }
                };
                if nqp::defined($*MAIN_CTX) {
                    $save_ctx := $*MAIN_CTX;
                }
                next if nqp::isnull($output);

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
    
    method interactive_result($value) {
        nqp::say(~$value)
    }
    
    method interactive_exception($ex) {
        nqp::print(~$ex ~ "\n")
    }

    method eval($code, *@args, *%adverbs) {
        my $output;

        my $old_runcore := pir::interpinfo__Si(pir::const::INTERPINFO_CURRENT_RUNCORE);
        if (%adverbs<profile-compile>) {
            pir::set_runcore__0s("subprof_hll");
        }
        $output := self.compile($code, |%adverbs);

        if !pir::isa__IPs($output, 'String')
                && %adverbs<target> eq '' {
            my $outer_ctx := %adverbs<outer_ctx>;
            if nqp::defined($outer_ctx) {
                $output[0].set_outer_ctx($outer_ctx);
            }

            if (%adverbs<profile>) {
                pir::set_runcore__0s("subprof_hll");
            }
            pir::trace__vI(%adverbs<trace>);
            $output := $output(|@args);
            pir::trace__0i(0);
        }
        pir::set_runcore__vs($old_runcore);

        $output;
    }

    method ctxsave() {
        $*MAIN_CTX := nqp::ctxcaller(nqp::ctx());
        $*CTXSAVE := 0;
    }

    method panic(*@args) {
        nqp::die(nqp::join('', @args))
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
        if nqp::defined($value) {
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
        my $program-name := @args[0];
        my $res  := self.process_args(@args);
        my %opts := $res.options;
        my @a    := $res.arguments;

        %adverbs.update(%opts);
        self.usage($program-name) if %adverbs<help>  || %adverbs<h>;
        
        if !nqp::existskey(%adverbs, 'precomp')
            && (%adverbs<target> eq 'pir' || %adverbs<target> eq 'pbc') {
            %adverbs<precomp> := 1;
        }

        pir::load_bytecode__vs('dumper.pbc');

        self.command_eval(|@a, |%adverbs);
    }


    method command_eval(*@a, *%adverbs) {
        self.version              if %adverbs<version> || %adverbs<v>;
        self.verbose-config       if %adverbs<verbose-config> || %adverbs<V>
                                     || %adverbs<show-config>;
        self.nqpevent(%adverbs<nqpevent>) if %adverbs<nqpevent>;

        my $result;
        my $error;
        my $has_error := 0;
        my $target := nqp::lc(%adverbs<target>);
        try {
            if nqp::defined(%adverbs<e>) {
                $!user_progname := '-e';
                my $?FILES := '-e';
                $result := self.eval(%adverbs<e>, '-e', |@a, |%adverbs);
                unless $target eq '' || $target eq 'pir' || $target eq 'pbc'
                    || %adverbs<output> {
                    self.dumper($result, $target, |%adverbs);
                }
            }
            elsif !@a { $result := self.interactive(|%adverbs) }
            elsif %adverbs<combine> { $result := self.evalfiles(@a, |%adverbs) }
            else { $result := self.evalfiles(@a[0], |@a, |%adverbs) }

            if !nqp::isnull($result) && $target ne '' {
                if $target eq 'pbc' {
                    my $output := %adverbs<output>;
                    $result.write_to_file($output) if $output;
                }
                else {
                    my $output := %adverbs<output>;
                    my $fh := ($output eq '' || $output eq '-')
                            ?? pir::getinterp__P().stdout_handle()
                            !! pir::new__Ps('FileHandle').open($output, 'w');
                    self.panic("Cannot write to $output") unless $fh;
                    $fh.print($result);
                    $fh.close();
                }
            }
            CATCH {
                $has_error := 1;
                $error     := $_;
            }
            CONTROL {
                if nqp::can(self, 'handle-control') {
                    self.handle-control($_);
                } else {
                    nqp::rethrow($_);
                }
                $has_error := 1;
                $error     := $_;
            }
        }
        if ($has_error) {
            if %adverbs<ll-exception> || !nqp::can(self, 'handle-exception') {
                my $err := pir::getstderr__P();
                $err.print($error);
                $err.print("\n");
                $err.print(nqp::join("\n", $error.backtrace_strings));
                nqp::exit(1);
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
                nqp::exit(1);
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
        my $target := nqp::lc(%adverbs<target>);
        my $encoding := %adverbs<encoding>;
        my @files := nqp::islist($files) ?? $files !! [$files];
        $!user_progname := nqp::join(',', @files);
        my @codes;
        for @files {
            my $in-handle := pir::new__Ps('FileHandle');
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
            nqp::die($err) if $err;
        }
        my $code := nqp::join('', @codes);
        my $?FILES := nqp::join(' ', @files);
        my $r := self.eval($code, |@args, |%adverbs);
        if $target eq '' || $target eq 'pir' || %adverbs<output> {
            return $r;
        } else {
            return self.dumper($r, $target, |%adverbs);
        }
    }

    method compile($source, *%adverbs) {
        my %*COMPILING<%?OPTIONS> := %adverbs;

        my $target := nqp::lc(%adverbs<target>);
        my $result := $source;
        my $stderr := pir::getinterp__P().stderr_handle;
        my $stdin  := pir::getinterp__P().stdin_handle;
        my $stagestats := %adverbs<stagestats>;
        for self.stages() {
            my $timestamp := nqp::time_n();
            $result := self."$_"($result, |%adverbs);
            my $diff := nqp::time_n() - $timestamp;
            if nqp::defined($stagestats) {
                $stderr.print(nqp::sprintf("Stage %-11s: %7.3f", [$_, $diff]));
                pir::sweep__0i(1) if nqp::bitand_i($stagestats, 0x4);
                $stderr.print(nqp::sprintf(" %11d %11d %9d %9d", self.vmstat()))
                    if nqp::bitand_i($stagestats, 0x2);
                $stderr.print("\n");
                if nqp::bitand_i($stagestats, 0x8) {
                   $stderr.print("continue> ");
                   $stdin.readline();
                }
            }
            last if $_ eq $target;
        }
        return $result;
    }

    method start($source, *%adverbs) {
        $source;
    }

    method parse($source, *%adverbs) {
        my $s := $source;
        if %adverbs<transcode> {
            for nqp::split(' ', %adverbs<transcode>) {
                try {
                    $s := pir::trans_encoding__Ssi($s,
                            pir::find_encoding__Is($_));
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
        self.panic("Unable to obtain ast from " ~ $source.HOW.name($source))
            unless $ast ~~ QAST::Node;
        $ast;
    }

    method post($source, *%adverbs) {
        nqp::getcomp('QAST').post($source)
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
        ~ ".include 'libpaths.pasm'\n"
    }
  
    method pir($source, *%adverbs) {
        self.pirbegin() ~ $source.pir()
    }

    method pbc($source, *%adverbs) {
        pir::compreg__Ps('PIR').compile($source)
    }

    method init($source, *%adverbs) {
        unless $source.is_initialized('init') {
            for $source.subs_by_tag('init') -> $sub { $sub() }
            $source.mark_initialized('init');
        }

        # FIXME: should use a custom tag
        # changes to code generator still pending
        #
        # $source.single_sub_by_tag('mainline')
        $source.first_sub_in_const_table()
    }

    method dumper($obj, $name, *%options) {
        if nqp::can($obj, 'dump') {
            nqp::print($obj.dump());
        }
        else {
            (Q:PIR { %r = get_root_global ['parrot'], '_dumper' })($obj, $name)
        }
    }

    method usage($name?) {
        if $name {
            say($name);
        }
        nqp::say($!usage);
        nqp::exit(0);
    }

    method version() {
        my $version := %!config<version>;
        my $parver  := %parrot_config<VERSION>;
        my $parrev  := %parrot_config<git_describe> // '(unknown)';
        nqp::say("This is $!language version $version built on parrot $parver revision $parrev");
        nqp::exit(0);
    }

    method show-config() { self.verbose-config(); }

    method verbose-config() {
        for %parrot_config {
            nqp::say('parrot::' ~ $_.key ~ '=' ~ $_.value);
        }
        for %!config {
            nqp::say($!language ~ '::' ~ $_.key ~ '=' ~ $_.value);
        }
        nqp::exit(0);
    }

    method vmstat() {
        [ pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_MEM_ALLOC),
          pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_MEM_USED),
          pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_PMCS),
          pir::interpinfo__Ii(pir::const::INTERPINFO_ACTIVE_PMCS),
        ];
    }

    method nqpevent($spec?) {
        ## close out the current event log, if any
        pir::nqpevent__vs('nqpevent: log finished');
        my $fh := pir::nqpevent_fh__PP(nqp::null());
        $fh.flush() if !nqp::isnull($fh) && $fh;

        ## start a new event log
        if $spec {
            $spec := nqp::split(';', $spec);
            my $file := $spec[0];
            my $flags := $spec[1];
            if $file gt '' {
                my $fh := pir::new__Ps('FileHandle');
                $fh.open($file, 'w') || self.panic("Cannot write to $file");
                pir::nqpevent_fh__PP($fh);
            }
            else {
                pir::nqpevent_fh__PP(pir::getinterp__P().stderr_handle());
            }
            pir::nqpdebflags__Ii($flags eq '' ?? 0x1f !! $flags);
            pir::nqpevent__0s("nqpevent: log started");
        }
    }

    method removestage($stagename) {
        my @new_stages := nqp::list_s();
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
            my @new-stages := nqp::clone(self.stages);
            nqp::push_s(@new-stages, $stagename);
            self.stages(@new-stages);
            return 1;
        }
        my @new-stages := nqp::list_s();
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
        my $idx   := nqp::index('$@%&', $sigil);
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
