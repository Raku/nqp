my @*vms := nqp::list('jvm', 'moar', 'js');
my @*variants := nqp::list("_i", "_n", "_s", "_I");

my %documented_ops := find_documented_opcodes();

my %ops := hash_of_vms();


%ops<jvm> := find_opcodes(
    :files([
        "src/vm/jvm/QAST/Compiler.nqp",
        "src/vm/jvm/NQP/Ops.nqp"
    ]),
    :keywords(<map_classlib_core_op add_core_op map_jvm_core_op add_hll_op>)
);

%ops<js> := find_opcodes(
    :files([
        "src/vm/js/Operations.nqp"
    ]),
    :keywords(<add_op add_simple_op add_hll_op add_cmp_op add_infix_op>)
);


%ops<moar> := find_opcodes(
    :files([
        "src/vm/moar/QAST/QASTOperationsMAST.nqp",
        "src/vm/moar/QAST/QASTCompilerMAST.nqp",
        "src/vm/moar/NQP/Ops.nqp"
    ]),
    :keywords(<add_core_op add_core_moarop_mapping add_hll_op add_getattr_op add_bindattr_op>)
);

# Most backends programmatically add these ops - to keep our cheating simple,
# add them to each of the backends manually
for <if unless while until repeat_while repeat_until> -> $op_name {
    for @*vms -> $vm {
        %ops{$vm}{$op_name} := 1;
    }
}

# Are ops that are implemented documented? Fail once per opcode
my %combined_ops := nqp::hash();
for @*vms -> $vm {
    for %ops{$vm} -> $op {
        if !%combined_ops{$op} {
            %combined_ops{$op} := nqp::list($vm);
        } else {
            nqp::push(%combined_ops{$op}, $vm);
        }
    }
}

for %combined_ops -> $opcode {
    my $vms := nqp::join(";", %combined_ops{$opcode});
    my $found := %documented_ops<any>{$opcode};
    if (!$found) && !($opcode ~~ / '_' /) {
        for @*variants -> $type {
            if %documented_ops<any>{$opcode ~ $type} {
                $found := 1;
            }
        }
    }
    ok($found, "Opcode '$opcode' ($vms) is documented");
}

# Do documented opcodes actually exist? Fail once per vm if not.
for @*vms -> $vm {
    for %documented_ops{$vm} -> $doc_op {
        ok(%ops{$vm}{$doc_op}, "documented op '$doc_op' exists in $vm");
    }
}

sub find_opcodes(:@files, :@keywords) {
    my %ops := nqp::hash();
    for @files -> $file {
        my @lines := nqp::split("\n", slurp($file));
        for @lines -> $line {
            if $line ~~ / "%core_op_generators{'" (<[a..zA..Z0..9_]>+) "'}" / -> $match {
                if ?$match {
                    %ops{$match[0]} := 1;
                }
            } elsif $line ~~ / @keywords / {
                my @pieces := nqp::split("'", $line);
                $line := @pieces[1] eq 'nqp' ?? @pieces[3] !! @pieces[1];

                next unless nqp::chars($line);

                if @pieces[1] ne 'nqp' && @pieces[2] ~~ /^ \s* '~' \s* '$suffix' /{
                    for <_s _n _i> -> $suffix {
                        %ops{$line ~ $suffix} := 1;
                    }
                }
                %ops{$line} := 1;
            } elsif $line ~~ /^ \s* for \s* '<' (<[\w\ ]>+) '>' \s* '->' \s* '$func' \s* \{/ -> $match {
                for nqp::split(' ', $match[0]) -> $func {
                    %ops{$func ~ '_n'} := 1;
                }
            } elsif $line ~~ / '%ops<' (<[a..zA..Z0..9_]>+) '> :=' / -> $match {
                if ?$match {
                    %ops{$match[0]} := 1;
                }
            } elsif $line ~~ /^ \s* for \s* '<' (<[\w\ ]>+) '>' \s* '->' \s* '$op' / -> $match {
                for nqp::split(' ', $match[0]) -> $func {
                    %ops{$func} := 1;
                }
            }
        }
    }
    return %ops;
}

sub hash_of_vms() {
    my %hash := nqp::hash();
    for @*vms -> $vm {
        %hash{$vm} := nqp::hash();
    }
    return %hash;
}

# Given a string of quoted VMs, return a list.
# Deal only with hardcoded vms

sub match_vms($input) {
    my @vms := nqp::list();
    if $input ~~ / '`jvm`' / {
        nqp::push(@vms,"jvm");
    }
    if $input ~~ / '`js`' / {
        nqp::push(@vms,"js");
    }
    if $input ~~ / '`moar`' / {
        nqp::push(@vms,"moar");
    }
    return @vms;
}

sub find_documented_opcodes() {
    my %documented_ops := hash_of_vms();
    %documented_ops<any> := nqp::hash();

    my @doc_lines := nqp::split("\n", slurp("docs/ops.markdown"));
    my @opcode_vms := nqp::list();

    for @doc_lines -> $line {
        my $match := $line ~~ /^ '##' \s* <[a..zA..Z0..9_]>+ \s* ('`' .* '`')? /;
        if ?$match {
            @opcode_vms := match_vms($line);
            @opcode_vms := @*vms unless @opcode_vms;
        }

        next unless $line ~~ / ^ '* `' .* '(' .* '`' .* ' _Internal_'? $ /;

        # Individual opcode lines may override the VMs set in the heading.
        my @line_vms := @opcode_vms;
        if $line ~~ / '`'/ {
            @line_vms := match_vms($line);
            @line_vms := @opcode_vms unless @line_vms;
        }

        $match := $line ~~ / 'QAST::Op.new' .* ':op<' (.*?) '>' /;
        if ?$match {
            # Opcode only usable via QAST
            $line := ~$match[0];
        } else {
            # Regular opcode
            $line := nqp::substr($line, 3);
            $line := nqp::split("(", $line)[0];
        }
        for @line_vms -> $vm {
            %documented_ops{$vm}{$line} := 1 ;
        }
        %documented_ops<any>{$line} := 1 ;

    }
    return %documented_ops;
}
