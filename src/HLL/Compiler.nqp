my $more-code-sentinel := nqp::hash();

# Provides base functionality for a compiler object.
class HLL::Compiler does HLL::Backend::Default {
    has @!stages;
    has $!parsegrammar;
    has $!parseactions;
    has @!cmdoptions;
    has $!compiler_progname;
    has $!language;
    has $!user_progname;
    has @!cli-arguments;
    has %!cli-options;
    has $!backend;
    has $!save_ctx;

    method BUILD() {
        # Backend is set to the default one, by default.
        $!backend    := self.default_backend();

        # Default stages.
        @!stages     := nqp::split(' ', 'start parse ast ' ~ $!backend.stages());

        # Command options and usage.
        @!cmdoptions := nqp::split(' ', 'e=s help|h target=s trace|t=s encoding=s output|o=s source-name=s combine version|v show-config verbose-config|V stagestats=s? ll-exception nqpevent=s profile=s? profile-compile=s? profile-filename=s profile-kind=s profile-stage=s repl-mode=s rakudo-home'
#?if js
        ~ ' substagestats beautify nqp-runtime=s perl6-runtime=s libpath=s shebang execname=s source-map'
#?endif
#?if moar
        ~ ' confprog=s full-cleanup debug-suspend debug-port=s tracing'
#?endif
        );
    }

    method backend(*@value) {
        if @value {
            $!backend := @value[0];
            @!stages  := nqp::split(' ', 'start parse ast ' ~ $!backend.stages());
        }
        $!backend
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

    method config() { nqp::gethllsym('default', 'SysConfig').nqp-build-config }

    method autoprint($value) {
        self.interactive_result($value)
            unless nqp::tellfh(nqp::getstdout()) > $*AUTOPRINTPOS;
    }

    method readline($stdin, $stdout, $prompt) {
        $stdout.print($prompt);
        return $stdin.get;
    }

    method context() {
        $!save_ctx # XXX starting value?
    }

    method interactive(*%adverbs) {
        stderr().print(self.interactive_banner);

        my $stdin    := stdin();
        my $stdout   := stdout();
        my $encoding := ~%adverbs<encoding>;
        if $encoding && $encoding ne 'fixed_8' {
            $stdin.set-encoding($encoding);
        }

        my $target := nqp::lc(%adverbs<target>);
        my $prompt := self.interactive_prompt // '> ';
        my $code;
        while 1 {
            last if $stdin.eof;

            my str $newcode := self.readline($stdin, $stdout, ~$prompt);
            if nqp::isnull_s($newcode) || !nqp::defined($newcode) {
                nqp::print("\n");
                last;
            }
            if $newcode {
                $code := $code ~ $newcode;
            }

            # Set the current position of stdout for autoprinting control
            my $*AUTOPRINTPOS := nqp::tellfh(nqp::getstdout());
            my $*CTXSAVE := self;
            my $*MAIN_CTX;

            if $code {
                $code := $code ~ "\n";
                my $output;
                {
                    $output := self.eval($code, :outer_ctx($!save_ctx), |%adverbs);
                    CATCH {
                        self.interactive_exception($!);
                    }
                };
                if self.input-incomplete($output) {
                    # Need to get more code before we execute
                    # Strip the trailing \, but reinstate the newline
                    if nqp::eqat($code, "\\\n", 0) {
                        $code := nqp::substr($code, 0, nqp::chars($code) - 2) ~ "\n";
                    }
                    if $code {
                        $prompt := '* ';
                    }
                    next;
                }
                if nqp::defined($*MAIN_CTX) {
                    $!save_ctx := $*MAIN_CTX;
                }

                $code := "";
                $prompt := self.interactive_prompt // '> ';

                next unless nqp::defined($output);
                next if nqp::isnull($output);

                if !$target {
                    self.autoprint($output);
                } elsif $!backend.is_textual_stage($target) {
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

    method input-incomplete($value) {
        nqp::where($value) == nqp::where($more-code-sentinel);
    }

    method needs-more-input() {
        $more-code-sentinel
    }

    method eval($code, *@args, *%adverbs) {
        my $output;

        if $code && nqp::eqat($code, "\\\n", nqp::chars($code) - 2) {
            return self.needs-more-input();
        }

        if nqp::existskey(%adverbs, 'profile-compile') {
            $output := $!backend.run_profiled({
                self.compile($code, :compunit_ok(1), |%adverbs);
            }, %adverbs<profile-filename> || %adverbs<profile-compile>, %adverbs<profile-kind>);
        }
        else {
            $output := self.compile($code, :compunit_ok(1), |%adverbs);
        }

        if $!backend.is_compunit($output) && %adverbs<target> eq '' {
            my $outer_ctx := %adverbs<outer_ctx>;
            $output := $!backend.compunit_mainline($output);
            if nqp::defined($outer_ctx) {
                nqp::forceouterctx($output, $outer_ctx);
            }

            if %adverbs<confprog> {
                if nqp::can($!backend, 'confprog') {
                    $!backend.confprog(%adverbs<confprog>, |%adverbs);
                }
            }

            if nqp::existskey(%adverbs, 'profile') {
                if nqp::existskey(%adverbs, 'profile-compile') || nqp::existskey(%adverbs, 'profile-stage') {
                    note("Currently you cannot profile both compilation and runtime, ignoring --profile");
                    $output := $output(|@args);
                }
                else {
                    $output := $!backend.run_profiled({ $output(|@args) },
                        %adverbs<profile-filename> || %adverbs<profile>, %adverbs<profile-kind>);
                }
            }
            elsif %adverbs<trace> {
                $output := $!backend.run_traced(%adverbs<trace>, { $output(|@args) });
            }
            else {
                $output := $output(|@args);
            }
        }

        $output;
    }

    method ctxsave() {
        $*MAIN_CTX := nqp::ctxcaller(nqp::ctx());
        $*CTXSAVE := 0;
    }

    method panic(*@args) {
        nqp::die(join('', @args))
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

        for %opts {
            %adverbs{$_.key} := $_.value;
        }
        self.usage($program-name) if %adverbs<help> || %adverbs<h>;

        if $!backend.is_precomp_stage(%adverbs<target>) {
            %adverbs<precomp> := 1;
        }

        my $*PERL6_RUNTIME;

        if %adverbs<perl6-runtime> {
            $*PERL6_RUNTIME := %adverbs<perl6-runtime>;
        }

        my $*LIBPATH;
        if %adverbs<libpath> {
            my $split := nqp::split('|||', %adverbs<libpath>);
            $*LIBPATH := nqp::list_s();
            for $split -> $str {
                my $absolute := nqp::getcomp('JavaScript').eval('return (function(path) {return require("path").resolve(process.cwd(), path)})')(~$str);
                nqp::push_s($*LIBPATH, $absolute);
            }
            nqp::getcomp('JavaScript').eval('return (function(paths) {nqp.libpath(paths)})')($*LIBPATH);
        }

        my $*EXECNAME := '';
        if %adverbs<execname> {
            $*EXECNAME := %adverbs<execname>;
        }

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
            {
                if nqp::defined(%adverbs<e>) {
                    $!user_progname := '-e';
                    my $?FILES := '-e';
                    $result := self.eval(%adverbs<e>, '-e', |@a, |%adverbs);
                    unless $target eq '' || $!backend.is_textual_stage($target) || %adverbs<output> {
                        self.dumper($result, $target, |%adverbs);
                    }
                }
                elsif !@a || (@a == 1 && @a[0] eq '-')  {
                    # Is STDIN a TTY display? If so, start the REPL, otherwise, simply
                    # assume the program to eval is given on STDIN.
                    my $force := %adverbs<repl-mode>//'';
                    my $wants-interactive := $force
                        ?? $force eq 'interactive'
                          ?? 1 !! $force eq 'non-interactive'
                            ?? 0 !! self.panic(
                                "Unknown REPL mode '$force'. Valid values"
                                ~ " are 'non-interactive' and 'interactive'"
                            )
                        !! stdin().t();
                    $result := $wants-interactive
                        ?? self.interactive(|%adverbs)
                        !! self.evalfiles('-', |%adverbs);
                }
                elsif %adverbs<combine> { $result := self.evalfiles(@a, |%adverbs) }
                else { $result := self.evalfiles(@a[0], |@a, |%adverbs) }

                if !nqp::isnull($result) && ($!backend.is_textual_stage($target) || %adverbs<output>) {
                    my $output := %adverbs<output>;
                    my $fh := ($output eq '' || $output eq '-')
                            ?? stdout()
                            !! open($output, :w);
                    self.panic("Cannot write to $output") unless $fh;
                    $fh.print($result);
                    $fh.flush();
                    close($fh) unless ($output eq '' || $output eq '-');
                }
                CONTROL {
                    if nqp::can(self, 'handle-control') {
                        self.handle-control($_);
                    } else {
                        nqp::rethrow($_);
                    }
                }
            }
            CATCH {
                $has_error := 1;
                $error     := $_;
            }
        }
        if $has_error {
            if %adverbs<ll-exception> || !nqp::can(self, 'handle-exception') {
                my $err := stderr();
                my $message := nqp::getmessage($error);
                my $payload := nqp::getpayload($error);
                if nqp::isnull_s($message) && nqp::can($payload, 'message') {
                    $message := $payload.message;
                }
                $err.say($message);
                $err.say(nqp::join("\n", nqp::backtracestrings($error)));
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
                note($_);
                self.usage(:use-stderr);
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
        $!user_progname := join(',', @files);
        my @codes;
        for @files -> $filename {
            my $err := 0;
            my $in-handle;
            try {
                if $filename eq '-' {
                    $in-handle := stdin();
                }
                elsif nqp::stat($filename, nqp::const::STAT_ISDIR) {
                    note("Can not run directory $filename.");
                    $err := 1;
                }
                else {
                    $in-handle := open($filename, :r, :enc($encoding));
                }
                CATCH {
                    note("Could not open $filename. $_");
                    $err := 1;
                }
            }
            nqp::exit(1) if $err;
            try {
                nqp::push(@codes, $in-handle.slurp());
                unless $filename eq '-' {
                    $in-handle.close;
                }
                CATCH {
                    note("Error while reading from file: $_");
                    $err := 1;
                }
            }
            nqp::exit(1) if $err;
        }
        my $code := join('', @codes);
        my $?FILES := %adverbs<source-name> || join(' ', @files);
        my $r := self.eval($code, |@args, |%adverbs);
        if $target eq '' || $!backend.is_textual_stage($target) || %adverbs<output> {
            return $r;
        } else {
            return self.dumper($r, $target, |%adverbs);
        }
    }

    method exists_stage($stage) {
        my $found := 0;
        for self.stages() {
            if $_ eq $stage {
                return 1;
            }
        }
        return 0;
    }

    method execute_stage($stage, $result, %adverbs) {
        %adverbs := %adverbs.FLATTENABLE_HASH unless nqp::ishash(%adverbs);
        if nqp::can($!backend, $stage) {
            $!backend."$stage"($result, |%adverbs);
        }
        elsif nqp::can(self, $stage) {
            self."$stage"($result, |%adverbs);
        }
        else {
            nqp::die("Unknown compilation stage '$stage'");
        }
    }

    method compile($source, :$from, :$lineposcache, *%adverbs) {
        my %*COMPILING := nqp::clone(nqp::ifnull(nqp::getlexdyn('%*COMPILING'), nqp::hash()));
        %*COMPILING<%?OPTIONS> := %adverbs;
        my $*LINEPOSCACHE := $lineposcache;

        my $target := nqp::lc(%adverbs<target>);
        my $result := $source;
        my $stderr := stderr();
        my $stdin  := stdin();
        my $stagestats := %adverbs<stagestats>;
        unless $from eq '' || self.exists_stage($from) {
            nqp::die("Unknown compilation input '$from'");
        }
        unless $target eq '' || self.exists_stage($target) {
            nqp::die("Unknown compilation target '$target'");
        }

        my @stages := nqp::clone(self.stages());
        if $from ne '' {
            while nqp::shift(@stages) ne $from { }
            nqp::unshift(@stages, 'start');
        }

        for @stages {
            $stderr.print(nqp::sprintf("Stage %-11s: ", [$_])) if nqp::defined($stagestats) && $_ ne "parse";
            my int $timestamp := nqp::time();

            my sub run() {
                self.execute_stage($_, $result, %adverbs)
            }

            $result := %adverbs<profile-stage> eq $_
                ?? $!backend.run_profiled(&run, %adverbs<profile-filename> || %adverbs<profile-compile>, %adverbs<profile-kind>)
                !! run();

            my num $diff := nqp::div_n(nqp::time() - $timestamp,1000000000e0);
            if nqp::defined($stagestats) {
                $stderr.print(nqp::sprintf("Stage %-11s: ", [$_])) if $_ eq "parse";
                $stderr.print(nqp::sprintf("%7.3f", [$diff]));
                $!backend.force_gc() if nqp::bitand_i($stagestats, 0x4);
                $stderr.print($!backend.vmstat())
                    if nqp::bitand_i($stagestats, 0x2);
                $stderr.print("\n");
                if nqp::bitand_i($stagestats, 0x8) {
                   $stderr.print("continue> ");
                   $stdin.get;
                }
                $stderr.flush;
            }
            last if $_ eq $target;
        }

        if %adverbs<compunit_ok> {
            return $result
        }
        else {
            return $!backend.compunit_mainline($result);
        }
    }

    method start($source, *%adverbs) {
        $source;
    }

    method parse($source, *%adverbs) {
        my $s := $source;
        my $grammar;
        my $actions;
        if %adverbs<transcode> {
            $s := $!backend.apply_transcodings($s, %adverbs<transcode>);
        }
        my $outer_ctx := %adverbs<outer_ctx>;
        if nqp::existskey(%adverbs, 'grammar') {
            $grammar := %adverbs<grammar>;
            $actions := %adverbs<actions>;
        }
        else {
            $grammar := self.parsegrammar;
            $actions := self.parseactions;
        }
        my $match := $grammar.parse($s, p => 0, actions => $actions);
        self.panic('Unable to parse source') unless $match;
        return $match;
    }

    method ast($source, *%adverbs) {
        my $ast := $source.ast();
        self.panic("Unable to obtain AST from " ~ $source.HOW.name($source))
            unless nqp::istype($ast, QAST::Node);
        $ast;
    }

    method dumper($obj, $name, *%options) {
        if nqp::can($obj, 'dump') {
            my $out := stdout();
            $out.print($obj.dump());
            $out.flush();
        }
        elsif nqp::isstr($obj) {
            my $out := stdout();
            $out.print($obj);
            $out.flush();
        }
        else {
            nqp::die("Cannot dump this object; no dump method");
        }
    }

    method usage($name?, :$use-stderr = False) {
        my $print-func := $use-stderr ?? &note !! &say; # RT #130760
        if $name {
            $print-func($name);
        }
        my $usage := "This compiler is based on HLL::Compiler.\n\nOptions:\n";
        for @!cmdoptions {
            $usage := $usage ~ "    $_\n";
        }
        $print-func($usage);
        nqp::exit(0);
    }

    method version() {
        my $version        := self.config()<version>;
        my $backver        := $!backend.version_string();
        my $implementation := self.implementation();
        my $language_name  := self.language_name();
        if nqp::can(self, 'language_version') {
            nqp::say("This is $implementation version $version built on $backver\n" ~
                "implementing $language_name " ~ self.language_version() ~ ".");
        }
        else {
            nqp::say("This is $implementation version $version built on $backver");
        }
        nqp::exit(0);
    }

    method implementation() { $!language }
    method language_name() { $!language }

    method show-config() { self.verbose-config(); }

    method verbose-config() {
        my $bname := $!backend.name;
        for sorted_keys($!backend.config) -> $key {
            nqp::say($bname ~ '::' ~ $key ~ '=' ~ $!backend.config{$key});
        }
        my %config := self.config();
        for sorted_keys(%config) -> $key {
            nqp::say($!language ~ '::' ~ $key ~ '=' ~ %config{$key});
        }
        nqp::exit(0);
    }

    method nqpevent(*@pos) {
        $!backend.nqpevent(|@pos)
    }

    method removestage($stagename) {
        my @new_stages := nqp::list();
        for @!stages {
            if $_ ne $stagename {
                nqp::push(@new_stages, $_);
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
            nqp::push(@new-stages, $stagename);
            self.stages(@new-stages);
            return 1;
        }
        my @new-stages := nqp::list();
        for self.stages {
            if $_ eq $where {
                if $position eq 'before' {
                    nqp::push(@new-stages, $stagename);
                    nqp::push(@new-stages, $_);
                } else {
                    nqp::push(@new-stages, $_);
                    nqp::push(@new-stages, $stagename);
                }
            } else {
                nqp::push(@new-stages, $_)
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
            nqp::push(@actual_ns, $_) unless $_ eq '';
        }
        @actual_ns;
    }


    method line_and_column_of($target, int $pos, int :$cache = 0) {
        my $linepos;
        if $cache {
            # if we've previously cached c<linepos> for target, we use it.
            $linepos := $*LINEPOSCACHE;
        }
        unless nqp::defined($linepos) {
            # calculate a new linepos array.
            $linepos := nqp::list_i();
            if $cache {
                $*LINEPOSCACHE := $linepos;
            }
            my str $s := ~$target;
            my int $eos := nqp::chars($s);
            my int $jpos := 0;
            my int $ord;
            # search for all of the newline markers in c<target>.  when we
            # find one, mark the ending offset of the line in c<linepos>.
            while nqp::islt_i($jpos := nqp::findcclass(nqp::const::CCLASS_NEWLINE,
                                                       $s, $jpos, $eos), $eos)
            {
                $ord := nqp::ord($s, $jpos);
                $jpos := nqp::add_i($jpos, 1);
                nqp::push_i($linepos, $jpos);
                # Treat \r\n as a single logical newline. Note that NFG
                # implementations, we should check it really is a lone \r,
                # not the first bit of a \r\n grapheme.
                if nqp::iseq_i($ord, 13) && nqp::eqat($s, "\r", $jpos - 1) &&
                   $jpos < $eos && nqp::iseq_i(nqp::ord($s, $jpos), 10)
                {
                    $jpos := nqp::add_i($jpos, 1);
                }
            }
        }

        # We have c<linepos>, so now we (binary) search the array
        # for the largest element that is not greater than c<pos>.
        my int $lo := 0;
        my int $hi := nqp::elems($linepos);
        my int $line;
        while nqp::islt_i($lo, $hi) {
            $line := nqp::div_i(nqp::add_i($lo, $hi), 2);
            if nqp::isgt_i(nqp::atpos_i($linepos, $line), $pos) {
                $hi := $line;
            } else {
                $lo := nqp::add_i($line, 1);
            }
        }

        my $column := nqp::iseq_i($lo, 0)
            ?? $pos
            !! nqp::sub_i($pos, nqp::atpos_i($linepos, nqp::sub_i($lo, 1)));

        nqp::list_i(nqp::add_i($lo, 1), nqp::add_i($column, 1));
    }

    method lineof($target, int $pos, int :$cache = 0, int :$directives = 0) {
        self.linefileof($target, $pos, :$cache, :$directives)[0]
    }

    method linefileof($target, int $pos, int :$cache = 0, int :$directives = 0) {
        my int $line := nqp::atpos_i(self.line_and_column_of($target, $pos, :$cache), 0);
        my str $file := '';
        if $directives {
            my @clds := @*comp_line_directives;
            my int $i := nqp::elems(@clds);
            if $i {
                while $i > 0 {
                    $i := $i - 1;
                    last if $line > @clds[$i][0];
                }
                if $line > @clds[$i][0] {
                    my @directive := @clds[$i];
                    $line := $line - @directive[0] + @directive[1] - 1;
                    $file := @directive[2];
                }
            }
        }
        [$line, $file];
    }



    # the name of the file(s) that are executed, or -e  or 'interactive'
    method user-progname() { $!user_progname // 'interactive' }

    # command line options and arguments as provided by the user
    method cli-options()   { %!cli-options   }
    method cli-arguments() { @!cli-arguments }

    # set a recursion limit, if the backend supports it
    method recursion_limit($limit) {
        if nqp::can($!backend, 'recursion_limit') {
            $!backend.recursion_limit($limit);
            1;
        }
        else {
            0;
        }
    }

    method profiler-snapshot(*%args) {
        my $backend;
        if nqp::isconcrete(self) {
            $backend := $!backend;
        }
        else {
            $backend := self.default_backend();
        }
        if nqp::can($backend, 'profiler_snapshot') {
            $backend.profiler_snapshot(|%args);
        }
        else {
            nqp::die("The backend { $backend.HOW.name($backend) } doesn't support profiler-snapshot");
        }
    }
}

my $compiler := HLL::Compiler.new();
$compiler.language($compiler.backend.name);
nqp::bindcomp('default', $compiler);
