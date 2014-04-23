=begin

=head1 NAME

HLL::CommandLine - command line parsing tools

=head1 SYNOPSIS

    my $parser := HLL::CommandLine::Parser.new([
        'verbose',
        'target=s',
        'e=s'
    ]);

    # treat the first non-option argument as the program name,
    # and everything after that as arguments to the program
    $parser.stop-after-first-arg;

    # -e "program" also treats everything after it as arguments
    # to the program:
    $paser.add-stopper('-e');

    my $results := $parser.parse(@*ARGS);
    my %options := $parser.options;
    my @args    := $pasre.arguments; # remaining arguments from @*ARGS

=head1 DESCRIPTION

HLL::CommandLine::Parser stores a specification of command line options and
other behavior, and uses that to parse an array of command line directives.

It classifies the directives as I<options> (usually of the form C<-f> or
C<--foo>) and I<arguments> (ie. non-options). The result of a C<.parse(RPA)>
call is an C<HLL::CommandLine::Result> object (or an exception thrown),
which makes the options and arguments available via the methods C<options>
and C<arguments>.

=head1 HLL::CommandLine::Parser

=head2 new(Array)

The C<.new> method and constructor expects an array with option specifications.
Such a specification is the name of an option, optionally followed by the
C<=> equals sign and a single character describing the kind of value it expects.
Missing value specification or C<b> stand for C<bool>, ie the option does not
expect a value. C<s> stands for a string value.
Optional values are only supported for string values so far. For the
value specified with C<s?> the value will default to ''.

=head2 add-stopper(String)

Adds a stopper. A stopper is a special value that, when encountered in the
command line arguments, terminates the processing, and classifies the rest
of the strings as arguments, independently of their form. C<--> is a
pre-defined stopper. If an option is used a stopper, that option itself is
still processed.

Examples:

    yourprogram -a --bar b -- c --foo
    # options:   a = 1, bar = 1
    # arguments: b, c, --foo

    # with stopper -e, and -e expecting a value:
    yourprogram -a -e foo --bar baz
    # options:   -a = 1, -e = foo
    # arguments: --bar, baz

=head2 parse(Array)

Parses the array as command line strings, and returns a
C<HLL::CommandLine::Result> object (or thrown an exception on error).

=head1 HLL::CommandLine::Result

An object of this type holds the options and arguments from a successful
command line parse.

=head2 options

Returns a hash of options

=head2 arguments

Return an array of arguments.

=end

class HLL::CommandLine::Result {
    has @!arguments;
    has %!options;

    method init() {
        @!arguments := [];
        %!options := nqp::hash();
    }

    method arguments() { @!arguments }
    method options()   { %!options   }

    method add-argument($x) {
        nqp::push(@!arguments, $x);
    }

    method add-option($name, $value) {
        # how I miss p6's Hash.push

        if nqp::existskey(%!options, $name) {
            if nqp::islist(%!options{$name}) {
                nqp::push(%!options{$name}, $value);
            } else {
                %!options{$name} := [ %!options{$name}, $value ];
            }
        } else {
            %!options{$name} := $value;
        }
    }
}

class HLL::CommandLine::Parser {
    has @!specs;
    has %!options;
    has %!stopper;
    has $!stop-after-first-arg;

    method new(@specs) {
        my $obj := self.CREATE;
        $obj.BUILD(specs => @specs);
        $obj;
    }

    method stop-after-first-arg() {
        $!stop-after-first-arg := 1;
    }

    method BUILD(:@specs) {
        @!specs   := nqp::list();
        %!options := nqp::hash();
        %!stopper := nqp::hash();
        %!stopper{'--'} := 1;
        $!stop-after-first-arg := 0;
        for @specs {
            self.add-spec($_);
        }
    }
    method add-stopper($x) {
        %!stopper{$x} := 1;
    }

    method split-option-aliases($s) {
        nqp::split('|', $s);

    }

    method add-spec($s) {
        my $i := nqp::index($s, '=');
        my $type;
        my @options;
        if $i < 0 {
            $type    := 'b';
            @options := self.split-option-aliases($s);
        } else {
            $type    := nqp::substr($s, $i + 1);
            @options := self.split-option-aliases(nqp::substr($s, 0, $i));
        }
        for @options {
            %!options{$_} := $type;
        }
    }


    method is-option($x) {
        return 0 if $x eq '-' || $x eq '--';
        return 1 if nqp::substr($x, 0, 1) eq '-';
        0;
    }

    method wants-value($x) {
        my $spec := %!options{$x};
        nqp::substr($spec, 0, 1) eq 's';
    }

    method optional-value($x) {
        my $spec := %!options{$x};
        $spec eq 's?';
    }

    method parse(@args) {
        my int $i := 0;
        my int $arg-count := nqp::elems(@args);

        my $result := HLL::CommandLine::Result.new();
        $result.init();

        # called when an option expects a value after it
        sub get-value($opt) {
            if $i == $arg-count - 1 {
                nqp::die("Option $opt needs a value");
            } else {
                $i++;
                @args[$i];
            }
        }

        # called after a terminator that declares the rest
        # as not containing any options
        sub slurp-rest() {
            $i++;
            while $i < $arg-count {
                $result.add-argument(@args[$i]);
                $i++;
            }
        }

        while $i < $arg-count {
            my $cur := @args[$i];
            if self.is-option($cur) {
                if nqp::substr($cur, 0, 2) eq '--' {
                    # long option
                    my $opt := nqp::substr(@args[$i], 2);
                    my $idx := nqp::index($opt, '=');
                    my $value := 1;
                    my $has-value := 0;

                    if $idx >= 0 {
                        $value     := nqp::substr($opt, $idx + 1);
                        $opt       := nqp::substr($opt, 0,      $idx);
                        $has-value := 1;
                    } elsif self.optional-value($opt) {
                        $value     := '';
                        $has-value := 1;
                    }
                    nqp::die("Illegal option --$opt") unless nqp::existskey(%!options, $opt);
                    nqp::die("Option --$opt does not allow a value") if !self.wants-value($opt) && $has-value;
                    if !$has-value && self.wants-value($opt) {
                        $value := get-value("--$opt");
                    }
                    $result.add-option($opt, $value);
                    slurp-rest if %!stopper{"--$opt"};
                } else {
                    my $opt := nqp::substr($cur, 1);
                    my $len := nqp::chars($opt);
                    if $len == 1 {
                        # not grouped, so it might have a value
                        nqp::die("No such option -$opt") unless %!options{$opt};
                        if self.wants-value($opt) {
                            $result.add-option($opt,
                            get-value("-$opt"));
                        } else {
                            $result.add-option($opt, 1);
                        }
                        slurp-rest() if %!stopper{"-$opt"};
                    } else {
                        my $i := 0;
                        while $i < $len {
                            my $o := nqp::substr($opt, $i, 1);
                            if %!options{$o} {
                                if self.wants-value($o) {
                                    if $i + 1 == $len {
                                        $result.add-option($o, get-value("-$o"));
                                    } else {
                                        $result.add-option($o, nqp::substr($opt, $i + 1));
                                    }
                                    last;
                                }
                                else {
                                    $result.add-option($o, 1);
                                }
                            }
                            else {
                                nqp::die("Grouped options '-$opt' contain '$o', which is not a valid option")
                            }
                            $i++;
                        }
                    }
                }
            } elsif %!stopper{$cur} {
                slurp-rest();
            } else {
                $result.add-argument($cur);
                slurp-rest() if $!stop-after-first-arg;
            }
            $i++;
        }
        return $result;
    }
}


