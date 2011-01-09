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

    INIT {
        HLL::Compiler.language('parrot');
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
    
    method parsegrammar($value?) {
        if pir::defined($value) {
            $!parsegrammar := $value;
        }
        $!parsegrammar;
    }

    method parseactions($value?) {
        if pir::defined($value) {
            $!parseactions := $value;
        }
        $!parseactions;
    }

}
