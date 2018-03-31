class Makefile {
    has @!macros;
    has %!macro-lookup;
    has @!targets;

    method BUILD(:@macros, :@targets) {
        @!macros := @macros;
        @!targets := @targets;
        %!macro-lookup := nqp::hash();

        for @!macros -> $macro {
            %!macro-lookup{$macro.Str} := $macro;
        }
    }

    class Macro {
        has $!name;
        has $!command;
        method name() { $!name }
        method Str() { '$(' ~ $!name ~ ')' }
        method expand() {
            $!command;
        }
    }

    method Str() {
        "targets: " ~ nqp::elems(@!targets);
    }

    method targets() {
        @!targets
    }

    method target($name) {
        for @!targets -> $target {
            return $target
                if self.expand-macros($target.name) eq $name;
        }
        Nil
    }

    sub file-exists($name) {
        nqp::stat(nqp::unbox_s($name), nqp::const::STAT_EXISTS)
    }

    sub file-modified($name) {
        nqp::stat_time(nqp::unbox_s($name), nqp::const::STAT_MODIFYTIME)
    }

    sub split-names($names) {
        $names := subst($names, /"\\"\n\h*/, ' ', :global);
        nqp::split(' ', $names)
    }

    method expand-macros($string) {
        return self.expand-macros($string.expand) if $string ~~ Makefile::Macro;
        subst(
            $string,
            /('$('\w+')')/,
            sub ($/) {
                nqp::existskey(%!macro-lookup, $/[0])
                    ?? self.expand-macros(%!macro-lookup{$/[0]}.expand)
                    !! ''
            },
            :global
        )
    }

    sub run($command) {
        my class Queue is repr('ConcBlockingQueue') { }
        my $queue := nqp::create(Queue);

        my $config := nqp::hash();
        my $done := 0;
        my $status;
        $config<done> := -> $new-status {
            ++$done;
            $status := $new-status;
        };

        my $task := nqp::spawnprocasync($queue, $command, nqp::cwd(), nqp::getenvhash(), $config);
        nqp::permit($task, 1, -1);
        nqp::permit($task, 2, -1);
        while !$done {
            if nqp::shift($queue) -> $task {
                if nqp::list($task) {
                    my $code := nqp::shift($task);
                    $code(|$task);
                }
                else {
                    $task();
                }
            }
        }

        return $status;
    }

    method make($target-name, %built = nqp::hash()) {
        if nqp::existskey(%built, $target-name) { return }
        my $target := self.target($target-name);
        my $newest := 0;
        if $target {
            my $modified := 0;
            if file-exists($target-name) {
                $newest := $modified := file-modified($target-name);
            }

            for $target.prerequisites -> $prerequisite {
                my $names := self.expand-macros($prerequisite);
                for split-names($names) {
                    my $modified := self.make($_, %built);
                    $newest := $modified if $modified > $newest;
                }
            }

            if $modified == 0 || $newest > $modified {
                for $target.recipe -> $command {
                    $command := self.expand-macros($command);
                    my $check-exit-status := 1;
                    if nqp::substr($command, 0, 1) eq '-' {
                        $command := nqp::substr($command, 1);
                        $check-exit-status := 0;
                    }
                    if nqp::substr($command, 0, 5) eq '@echo' {
                        say(nqp::substr($command, 6));
                        next;
                    }
                    note($command);
                    my $is-windows := nqp::backendconfig()<osname> eq 'MSWin32';
                    my $args := $is-windows ?? nqp::list(nqp::getenvhash()<ComSpec>, '/c', $command)
                        !! nqp::list('/bin/sh', '-c', $command);
                    my $status := run($args);
                    nqp::die("Got $status from $args") if $check-exit-status && $status != 0;
                }
            }

            %built{$target-name} := 1;
        }
        else {
            if $target-name {
                unless file-exists($target-name) {
                    nqp::die("don't know how to create file $target-name");
                }
                my $modified := file-modified($target-name);
                $newest := $modified if $modified > $newest;
            }
        }
        return $newest;
    }
}

grammar Makefile::Grammar {
    token TOP {
        \s*
        [
            \n*
            [
                <comment>
                | <target-definition>
                | <macro-definition>
            ]
        ]*
        \s*
    }
    token comment {
        ^^
        \h*
        '#'
        \N*
    }
    token target-definition {
        ^^
        [<target>+ % \h+] \h* ':' \h* <prerequisites> \n
	<recipe>?
    }
    token macro-definition {
        <macro-assign>
    }
    token macro-assign {
        <target> \h* '=' \h* <command>
    }
    token target {
        <macro>
        | <[\w . / * \- \$\(\)]>+
    }
    token macro {
        '$(' \w+ ')'
    }
    token recipe {
	<recipe-line>+
    }
    token prerequisites {
	[<target>\h* | <.continuation>]*
    }
    token recipe-line {
        ^^
        \t
	<command>
	\n
    }
    token command {
        [ <.continuation> || \N]*
    }
    token continuation {
        "\\" \n \h*
    }
}

class Makefile::Target {
    has $!name;
    has @!prerequisites;
    has @!recipe;
    method name() {
        $!name
    }
    method prerequisites() {
        @!prerequisites
    }
    method recipe() {
        @!recipe
    }
    method Str() {
        $!name
    }
}

class Makefile::Actions {
    has %!macros;

    method TOP($/) {
        my @targets;
        for $<target-definition> -> $definition {
            for $definition.ast -> $subtarget {
                nqp::push(@targets, $subtarget);
            }
        }
        my @macros;
        for $<macro-definition> -> $definition {
            nqp::push(@macros, $definition.ast);
        }
        make Makefile.new(
            :@macros,
            :@targets,
        );
    }
    method comment($/) {
    }
    method target-definition($/) {
        my @targets;
        my @prerequisites := $<prerequisites>.ast;
        my @recipe;
        @recipe := $<recipe>.ast if $<recipe>;
        for $<target> -> $target {
            nqp::push(
                @targets,
                Makefile::Target.new(
                    :name($target.ast),
                    :@prerequisites,
                    :@recipe,
                ),
            );
        }
        make @targets;
    }
    method macro-definition($/) {
        my $macro := $<macro-assign>.ast;
        %!macros{'$(' ~ $macro.name ~ ')'} := $macro;
        make $macro;
    }
    method macro-assign($/) {
        make Makefile::Macro.new(:name($<target>.Str), :command($<command>.ast));
    }
    method target($/) {
        make $<macro> ?? $<macro>.ast !! $/.Str
    }
    method macro($/) {
        make %!macros{$/.Str};
    }
    method recipe($/) {
        my @recipe;
        nqp::push(@recipe, $_.ast) for $<recipe-line>;
        make @recipe;
    }
    method prerequisites($/) {
        my @targets;
        for $<target> -> $target {
            nqp::push(@targets, $target.ast);
        }
        make @targets;
    }
    method recipe-line($/) {
        make $<command>.ast;
    }
    method command($/) {
        make $/.Str;
    }
    method continuation($/) {
    }
}

sub MAIN(*@ARGS) {
    my $handle := open("Makefile", :r);
    my $make := Makefile::Grammar.parse($handle.slurp, :actions(Makefile::Actions.new));

    if @ARGS[1] eq 'help' && !$make.ast.target(@ARGS[1]) {
        say("Targets:");
        say($make.ast.expand-macros($_.name)) for $make.ast.targets;
    }
    else {
        $make.ast.make(@ARGS[1]);
    }
}
