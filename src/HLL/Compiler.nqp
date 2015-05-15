# Provides base functionality for a compiler object.
class HLL::Compiler does HLL::Backend::Default {
    has @!stages;
    has $!parsegrammar;
    has $!parseactions;
    has @!cmdoptions;
    has $!compiler_progname;
    has $!language;
    has %!config;
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
        @!cmdoptions := nqp::split(' ', 'e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile profile-filename=s');
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

    method readline($stdin, $stdout, $prompt) {
        nqp::printfh(nqp::getstdout(), $prompt);
        return nqp::readlinefh($stdin);
    }

    method context() {
        $!save_ctx # XXX starting value?
    }

    method interactive(*%adverbs) {
        nqp::printfh(nqp::getstderr(), self.interactive_banner);

        my $stdin    := nqp::getstdin();
        my $stdout   := nqp::getstdout();
        my $encoding := ~%adverbs<encoding>;
        if $encoding && $encoding ne 'fixed_8' {
            nqp::setencoding($stdin, $encoding);
        }

        my $target := nqp::lc(%adverbs<target>);
        my $prompt := self.interactive_prompt // '> ';
        my $code;
        while 1 {
            last if nqp::eoffh($stdin);

            my str $newcode := self.readline($stdin, $stdout, ~$prompt);
            if nqp::isnull_s($newcode) || !nqp::defined($newcode) {
                nqp::print("\n");
                last;
            }
            if $newcode {
                $code := $code ~ $newcode;
            }

            if $newcode && nqp::substr($newcode, nqp::chars($newcode) - 1) eq "\\" {
                # Need to get more code before we execute
                $code := nqp::substr($code, 0, nqp::chars($code) - 1); # strip the \
                if $code {
                    $prompt := '* ';
                }
                next;
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

    method eval($code, *@args, *%adverbs) {
        my $output;

        if (%adverbs<profile-compile>) {
            $output := $!backend.run_profiled({
                self.compile($code, :compunit_ok(1), |%adverbs);
            }, %adverbs<profile-filename>);
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

            if (%adverbs<profile>) {
                $output := $!backend.run_profiled({ $output(|@args) }, %adverbs<profile-filename>);
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
                nqp::flushfh($fh);
                nqp::closefh($fh) unless ($output eq '' || $output eq '-');
            }
            CATCH {
                $has_error := 1;
                $error     := $_;
            }
            CONTROL {
                if nqp::can(self, 'handle-control') {
                    try {
                        self.handle-control($_);
                        CATCH {
                            $has_error := 1;
                            $error     := $_;
                        }
                    }
                } else {
                    nqp::rethrow($_);
                }
            }
        }
        if ($has_error) {
            if %adverbs<ll-exception> || !nqp::can(self, 'handle-exception') {
                my $err := nqp::getstderr();
                nqp::printfh($err, nqp::getmessage($error));
                nqp::printfh($err, "\n");
                nqp::printfh($err, nqp::join("\n", nqp::backtracestrings($error)));
                nqp::printfh($err, "\n");
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
        $!user_progname := join(',', @files);
        my @codes;
        for @files -> $filename {
            my $err := 0;
            my $in-handle;
            try {
                if $filename eq '-' {
                    $in-handle := nqp::getstdin();
                }
                else {
                    $in-handle := nqp::open($filename, 'r');
                }
                CATCH {
                    nqp::say("Could not open $filename. $_");
                    $err := 1;
                }
            }
            nqp::exit(1) if $err;
            try {
                nqp::setencoding($in-handle, $encoding);
                nqp::push(@codes, nqp::readallfh($in-handle));
                nqp::closefh($in-handle);
                CATCH {
                    $err := "Error while reading from file: $_";
                }
            }
            nqp::die($err) if $err;
        }
        my $code := join('', @codes);
        my $?FILES := join(' ', @files);
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

    method compile($source, :$from, :$lineposcache, *%adverbs) {
        my %*COMPILING<%?OPTIONS> := %adverbs;
        my $*LINEPOSCACHE := $lineposcache;

        my $target := nqp::lc(%adverbs<target>);
        my $result := $source;
        my $stderr := nqp::getstderr();
        my $stdin  := nqp::getstdin();
#?if moar
        nqp::setinputlinesep($stdin, "\n");
#?endif
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
            nqp::printfh($stderr, nqp::sprintf("Stage %-11s: ", [$_])) if nqp::defined($stagestats);
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
                nqp::printfh($stderr, nqp::sprintf("%7.3f", [$diff]));
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
        if %adverbs<transcode> {
            $s := $!backend.apply_transcodings($s, %adverbs<transcode>);
        }
        my $grammar := self.parsegrammar;
        my $actions;
        $actions    := self.parseactions;
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
            my $out := nqp::getstdout();
            nqp::printfh($out, $obj.dump());
            nqp::flushfh($out);
        }
        else {
            nqp::die("Cannot dump this object; no dump method");
        }
    }

    method usage($name?) {
        if $name {
            say($name);
        }
        my $usage := "This compiler is based on HLL::Compiler.\n\nOptions:\n";
        for @!cmdoptions {
            $usage := $usage ~ "    $_\n";
        }
        nqp::say($usage);
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
}

my $compiler := HLL::Compiler.new();
$compiler.language($compiler.backend.name);
