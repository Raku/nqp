#!/usr/bin/env raku


# This test is written in Raku to take advantage of
# features not present in NQP. Because this test is
# for documentation only and is not run as part of
# the standard test suite, should pose no burden.

use Test;

# set NQP_DOC_VERBOSE environment variable to get extra diag output
sub debug($text) {
    diag $text if %*ENV<NQP_DOC_VERBOSE>;
}

my @*vms = <jvm moar js>;
my @*variants = <_i _n _s _I>;

my %documented_ops = find_documented_opcodes();

my %ops = hash_of_vms();

%ops<jvm> = find_opcodes(
    :files([
        "src/vm/jvm/QAST/Compiler.nqp",
        "src/vm/jvm/NQP/Ops.nqp"
    ]),
    :keywords(<map_classlib_core_op add_core_op map_jvm_core_op add_hll_op>)
);

%ops<js> = find_opcodes(
    :files([
        "src/vm/js/Operations.nqp"
    ]),
    :keywords(<add_op add_simple_op add_hll_op add_cmp_op add_infix_op>)
);


%ops<moar> = find_opcodes(
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
        %ops{$vm}{$op_name} = 1;
    }
}

# Some "opcodes" found by our hacky process are MoarVM opcodes
# that are not exposed to NQP users: Remove them.
my @moar-skips = <
    assertparamcheck bindexcategory bindexpayload capturelex
    const_i64 const_s continuationclone extend_i16
    extend_i32 extend_n32 extend_u16 extend_u32
    getdynlex getlexperinvtype_o if_i ifnonnull
    iter smrt_intify smrt_numify smrt_strify strify
    trunc_i16 trunc_i32 trunc_i8 trunc_u16 trunc_u8 unless_o
>;
for @moar-skips -> $op {
    %ops<moar>{$op}:delete;
}

# Are ops that are implemented documented? Fail once per opcode
my %combined_ops;
for @*vms -> $vm {
    for %ops{$vm}.keys -> $op {
        if !%combined_ops{$op} {
            %combined_ops{$op} = [$vm,];
        } else {
            %combined_ops{$op}.push: $vm;
        }
    }
}

for %combined_ops.keys -> $opcode {
    my $vms = join(";", %combined_ops{$opcode});
    my $found = %documented_ops<any>{$opcode};
    if (!$found) && !($opcode ~~ / '_' /) {
        for @*variants -> $type {
            if %documented_ops<any>{$opcode ~ $type} {
                $found = 1;
            }
        }
    }
    ok($found, "Opcode '$opcode' ($vms) is documented");
}

# Do documented opcodes actually exist? Fail once per vm if not.
for @*vms -> $vm {
    for %documented_ops{$vm}.keys -> $doc_op {
        ok(%ops{$vm}{$doc_op}, "documented op '$doc_op' exists in $vm");
    }
}


sub find_opcodes(:@files, :@keywords) {
    my %ops;
    for @files -> $file {
        my $line_no = 0;
        for $file.IO.lines -> $line is copy {
            $line_no++;
            if $line ~~ / '%core_op_generators{\'' (<[a..zA..Z0..9_]>+) '\'}' / -> $match {
                if ?$match {
                    %ops{$match[0]} = 1;
                    debug("$file:$line_no :: core_op_generators : {$match[0]}");
                }
            } elsif $line ~~ / @keywords / {
                my @pieces = split("'", $line);
                my $piece1 = @pieces[1] // "";
                my $piece2 = @pieces[2] // "";
                my $piece3 = @pieces[3] // "";
                $line = $piece1 eq 'nqp' ?? $piece3 !! $piece1;

                next unless $line.chars;

                if $piece1 ne 'nqp' && $piece2 ~~ /^ \s* '~' \s* '$suffix' / {
                    for <_s _n _i> -> $suffix {
                        %ops{$line ~ $suffix} = 1;
                        debug("$file:$line_no :: keyword/suffix : $line$suffix");
                    }
                }
                %ops{$line} = 1;
                debug("$file:$line_no :: keyword : $line");
            } elsif $line ~~ /^ \s* for \s* '<' (<[\w\ ]>+) '>' \s* '->' \s* '$func' \s* \{/ -> $match {
                for split(' ', $match[0]) -> $func {
                    %ops{$func ~ '_n'} = 1;
                    debug("$file:$line_no :: for block : {$func}_n");
                }
            } elsif $line ~~ / '%ops<' (<[a..zA..Z0..9_]>+) '> :=' / -> $match {
                if ?$match {
                    %ops{$match[0]} = 1;
                    debug("$file:$line_no :: %ops : {$match[0]}");
                }
            } elsif $line ~~ /^ \s* for \s* '<' (<[\w\ ]>+) '>' \s* '->' \s* '$op' / -> $match {
                for split(' ', ~$match[0]) -> $func {
                    %ops{$func} = 1;
                    debug("$file:$line_no :: for single : $func");
                }
            }
        }
    }
    return %ops;
}

sub hash_of_vms() {
    my %hash;
    for @*vms -> $vm {
        %hash{$vm} := {};
    }
    return %hash;
}

# Given a string of quoted VMs, return a list.
# Deal only with hardcoded vms

sub match_vms($input) {
    my @vms;
    for <jvm js moar> -> $vm {
        if $input.contains('`' ~ $vm ~ '`') {
            @vms.push: $vm;
        }
    }

    return @vms;
}

# Is there any documentation to save for this opcode?
multi save_documentation(%all, %docs, Any $text) { } 

multi save_documentation(%all, %docs, Str $text) {
    my $copy = $text.trim;

    if $copy ne "" {
        for %docs.keys -> $code {
            for %docs{$code}.keys -> $vm {
                %all{$vm}{$code} = 1;
            }
            %all<any>{$code} = 1 ;
        }
    } else {
        # Empty description, nothing to save
    }
}

# Go through the documentation for opcodes, find opcode
# documentation (ignoring placeholders) and save it.
sub find_documented_opcodes() {
    my %documented_ops = hash_of_vms();
    %documented_ops<any> := {};

    # Current set of opcodes is opcode key, list of VMs values
    my %current-opcodes; # variants part of this opcode
    # text of current description of opcode
    my $description;

    my @doc_lines = split("\n", slurp("docs/ops.markdown"));
    my @opcode_vms;

    my $state = 0; # 0 outside of an opcode
                    # 1 seen opcode header
                    # 2 seen opcode variant
                    # 3 description of opcode

    for @doc_lines -> $line is copy {
        if $line ~~ /^ '# '/ {
            # Skip headings
            save_documentation(%documented_ops, %current-opcodes, $description);
            %current-opcodes := {};
            $description = "";
            $state = 0;
            next;
        }

        # A heading line for an opcode
        my $match = $line ~~ /^ '##' \s* <[a..zA..Z0..9_]>+ \s* ('`' .* '`')? /;
        if ?$match {
            save_documentation(%documented_ops, %current-opcodes, $description);
            %current-opcodes := {};
            $description = "";
            $state = 1;
            @opcode_vms = match_vms($line);
            @opcode_vms = @*vms unless @opcode_vms;
        }

        # A specific variant of an opcode
        if $line ~~ / ^ '* `' .* '(' .* '`' .* ' _Internal_'? $ / {
            $state = 2;

            # Individual opcode lines may override the VMs set in the heading.
            my @line_vms = @opcode_vms;
            if $line ~~ / '`'/ {
                @line_vms = match_vms($line);
                @line_vms = @opcode_vms unless @line_vms;
            }

            $match = $line ~~ / 'QAST::Op.new' .* ':op<' (.*?) '>' /;
            if ?$match {
                # Opcode only usable via QAST
                $line = ~$match[0];
            } else {
                # Regular opcode
                $line = substr($line, 3);
                $line = split("(", $line)[0];
            }

            for @line_vms -> $vm {
                if %current-opcodes{$line}:!exists {
                    %current-opcodes{$line} := {};
                }
                %current-opcodes{$line}{$vm} = 1;
            }
       } elsif $state == 2 || $state == 3 {
           $state = 3;
           $description = $description ~ $line;
       } else {
           # nothing to do
       }
    }
    save_documentation(%documented_ops, %current-opcodes, $description);
    return %documented_ops;
}
