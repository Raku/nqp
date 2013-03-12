# Backend class for Parrot.
class HLL::Backend::Parrot {
    our %parrot_config := pir::getinterp__P()[pir::const::IGLOBALS_CONFIG_HASH];
    
    method apply_transcodings($s, $transcode) {
        for nqp::split(' ', $transcode) {
            try {
                $s := pir::trans_encoding__Ssi($s,
                        pir::find_encoding__Is($_));
            }
        }
        return $s;
    }
    
    method config() {
        %parrot_config
    }
    
    method force_gc() {
        pir::sweep__0i(1)
    }
    
    method name() {
        'parrot'
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
                my $fh := nqp::open($file, 'w') || self.panic("Cannot write to $file");
                pir::nqpevent_fh__PP($fh);
            }
            else {
                pir::nqpevent_fh__PP(nqp::getstderr());
            }
            pir::nqpdebflags__Ii($flags eq '' ?? 0x1f !! $flags);
            pir::nqpevent__0s("nqpevent: log started");
        }
    }
    
    method run_profiled($what) {
        my $old_runcore := pir::interpinfo__Si(pir::const::INTERPINFO_CURRENT_RUNCORE);
        pir::set_runcore__0s("subprof_hll");
        my $res := $what();
        pir::set_runcore__vs($old_runcore);
        $res
    }
    
    method run_traced($level, $what) {
        pir::trace__vI($level);
        my $res := $what();
        pir::trace__0i(0);
        $res
    }
    
    method version_string() {
        my $parver  := %parrot_config<VERSION>;
        my $parrev  := %parrot_config<git_describe> // '(unknown)';
        return "parrot $parver revision $parrev";
    }
    
    method vmstat() {
        nqp::sprintf(" %11d %11d %9d %9d",
            [ pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_MEM_ALLOC),
            pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_MEM_USED),
            pir::interpinfo__Ii(pir::const::INTERPINFO_TOTAL_PMCS),
            pir::interpinfo__Ii(pir::const::INTERPINFO_ACTIVE_PMCS),
            ]);
    }
    
    method stages() {
        'post pir evalpmc'
    }
    
    method is_precomp_stage($stage) {
        # XXX PBC goes here also in the future
        $stage eq 'pir'
    }
    
    method is_textual_stage($stage) {
        $stage eq 'pir'
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

    method evalpmc($source, *%adverbs) {
        my $compiler := nqp::getcomp('PIR');
        $compiler($source)
    }
    
    method is_compunit($cuish) {
        !pir::isa__IPs($cuish, 'String')
    }
    
    method compunit_mainline($cu) {
        $cu[0]
    }
    
    method compunit_coderefs($cu) {
        $cu
    }
}

# Role specifying the default backend for this build.
role HLL::Backend::Default {
    method default_backend() { HLL::Backend::Parrot }
}

# Provides base functionality for a compiler object.
class HLL::Compiler does HLL::Backend::Default {
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
    has $!backend;

    method BUILD() {
        # Backend is set to the default one, by default.
        $!backend    := self.default_backend();
        
        # Default stages.
        @!stages     := nqp::split(' ', 'start parse ast ' ~ $!backend.stages());
        
        # Command options and usage.
        @!cmdoptions := nqp::split(' ', 'e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile');
        $!usage := "This compiler is based on HLL::Compiler.\n\nOptions:\n";
        for @!cmdoptions {
            $!usage := $!usage ~ "    $_\n";
        }
        %!config     := nqp::hash();
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

    method config() { %!config };

    method autoprint($value) {
        self.interactive_result($value)
            unless nqp::tellfh(nqp::getstdout()) > $*AUTOPRINTPOS;
    }

    method interactive(*%adverbs) {
        nqp::printfh(nqp::getstderr(), self.interactive_banner);

        my $stdin    := nqp::getstdin();
        my $encoding := ~%adverbs<encoding>;
        if $encoding && $encoding ne 'fixed_8' {
            nqp::setencoding($stdin, $encoding);
        }

        my $target := nqp::lc(%adverbs<target>);
        my $save_ctx;
        while 1 {
            last if nqp::eoffh($stdin);

            my $prompt := self.interactive_prompt // '> ';
            my $code := nqp::readlineintfh($stdin, ~$prompt);
            if nqp::isnull($code) || !nqp::defined($code) {
                nqp::print("\n");
                last;
            }

            # Set the current position of stdout for autoprinting control
            my $*AUTOPRINTPOS := nqp::tellfh(nqp::getstdout());
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

    method eval($code, *@args, *%adverbs) {
        my $output;

        if (%adverbs<profile-compile>) {
            $output := $!backend.run_profiled({
                self.compile($code, |%adverbs);
            });
        }
        else {
            $output := self.compile($code, |%adverbs);
        }

        if $!backend.is_compunit($output) && %adverbs<target> eq '' {
            my $outer_ctx := %adverbs<outer_ctx>;
            if nqp::defined($outer_ctx) {
                nqp::forceouterctx($!backend.compunit_mainline($output), $outer_ctx);
            }

            if (%adverbs<profile>) {
                $output := $!backend.run_profiled({ $output(|@args) });
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

        for %opts {
            %adverbs{$_.key} := $_.value;
        }
        self.usage($program-name) if %adverbs<help>  || %adverbs<h>;
        
        if $!backend.is_precomp_stage(%adverbs<target>) {
            %adverbs<precomp> := 1;
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
            if nqp::defined(%adverbs<e>) {
                $!user_progname := '-e';
                my $?FILES := '-e';
                $result := self.eval(%adverbs<e>, '-e', |@a, |%adverbs);
                unless $target eq '' || $!backend.is_textual_stage($target) || %adverbs<output> {
					self.dumper($result, $target, |%adverbs);
				}
            }
            elsif !@a { $result := self.interactive(|%adverbs) }
            elsif %adverbs<combine> { $result := self.evalfiles(@a, |%adverbs) }
            else { $result := self.evalfiles(@a[0], |@a, |%adverbs) }

            if !nqp::isnull($result) && ($!backend.is_textual_stage($target) || %adverbs<output>) {
                my $output := %adverbs<output>;
                my $fh := ($output eq '' || $output eq '-')
                        ?? nqp::getstdout()
                        !! nqp::open($output, 'w');
                self.panic("Cannot write to $output") unless $fh;
                nqp::printfh($fh, $result);
                nqp::closefh($fh);
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
                my $err := nqp::getstderr();
                nqp::printfh($err, $error);
                nqp::printfh($err, "\n");
                nqp::printfh($err, nqp::join("\n", $error.backtrace_strings));
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
        for @files -> $filename {
            my $err := 0;
            my $in-handle;
            try {
                $in-handle := nqp::open($filename, 'r');
                CATCH {
                    nqp::say("Could not open $filename. $_");
                    $err := 1;
                }
            }
            nqp::exit(1) if $err;
            try {
                nqp::setencoding($in-handle, $encoding);
                nqp::push_s(@codes, nqp::readallfh($in-handle));
                nqp::closefh($in-handle);
                CATCH {
                    $err := "Error while reading from file: $_";
                }
            }
            nqp::die($err) if $err;
        }
        my $code := nqp::join('', @codes);
        my $?FILES := nqp::join(' ', @files);
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

    method compile($source, :$from, *%adverbs) {
        my %*COMPILING<%?OPTIONS> := %adverbs;
        my $*LINEPOSCACHE;

        my $target := nqp::lc(%adverbs<target>);
        my $result := $source;
        my $stderr := nqp::getstderr();
        my $stdin  := nqp::getstdin();
        my $stagestats := %adverbs<stagestats>;
        unless $from eq '' || self.exists_stage($from) {
            nqp::die("Unknown compilation input '$from'");
        }
        unless $target eq '' || self.exists_stage($target) {
            nqp::die("Unknown compilation target '$target'");
        }
        for self.stages() {
            if $from ne '' {
                if $_ eq $from {
                    $from := '';
                }
                next;
            }
            my $timestamp := nqp::time_n();
            if nqp::can(self, $_) {
                $result := self."$_"($result, |%adverbs);
            }
            elsif nqp::can($!backend, $_) {
                $result := $!backend."$_"($result, |%adverbs);
            }
            else {
                nqp::die("Unknown compilation stage '$_'");
            }
            my $diff := nqp::time_n() - $timestamp;
            if nqp::defined($stagestats) {
                nqp::printfh($stderr, nqp::sprintf("Stage %-11s: %7.3f", [$_, $diff]));
                $!backend.force_gc() if nqp::bitand_i($stagestats, 0x4);
                nqp::printfh($stderr, $!backend.vmstat())
                    if nqp::bitand_i($stagestats, 0x2);
                nqp::printfh($stderr, "\n");
                if nqp::bitand_i($stagestats, 0x8) {
                   nqp::printfh($stderr, "continue> ");
                   nqp::readlinefh($stdin);
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
            $s := $!backend.apply_transcodings($s, %adverbs<transcode>);
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

    method ast($source, *%adverbs) {
        my $ast := $source.ast();
        self.panic("Unable to obtain AST from " ~ $source.HOW.name($source))
            unless $ast ~~ QAST::Node;
        $ast;
    }

    method dumper($obj, $name, *%options) {
        if nqp::can($obj, 'dump') {
            nqp::print($obj.dump());
        }
        else {
            nqp::die("Cannot dump this object; no dump method");
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
        my $backver := $!backend.version_string();
        nqp::say("This is $!language version $version built on $backver");
        nqp::exit(0);
    }

    method show-config() { self.verbose-config(); }

    method verbose-config() {
        my $bname := $!backend.name;
        for $!backend.config {
            nqp::say($bname ~ '::' ~ $_.key ~ '=' ~ $_.value);
        }
        for %!config {
            nqp::say($!language ~ '::' ~ $_.key ~ '=' ~ $_.value);
        }
        nqp::exit(0);
    }
    
    method nqpevent(*@pos) {
        $!backend.nqpevent(|@pos)
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
	
	method lineof($target, int $pos, int :$cache = 0) {
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
				# treat \r\n as a single logical newline.
				if nqp::iseq_i($ord, 13) && nqp::iseq_i(nqp::ord($s, $jpos), 10)
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
		nqp::add_i($lo, 1);
	}

    # the name of the file(s) that are executed, or -e  or 'interactive'
    method user-progname() { $!user_progname // 'interactive' }

    # command line options and arguments as provided by the user
    method cli-options()   { %!cli-options   }
    method cli-arguments() { @!cli-arguments }
}

my $compiler := HLL::Compiler.new();
$compiler.language('parrot');
