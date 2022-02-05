#!/usr/bin/env raku

# This test is written in Raku to take advantage of
# features not present in NQP. Because this test is
# for documentation only and is not run as part of
# the standard test suite, should pose no burden.

use Test;

my $markdown-file = "docs/ops.markdown";

# set NQP_DOC_VERBOSE environment variable to get extra diag output
sub debug($text) {
    diag $text if %*ENV<NQP_DOC_VERBOSE>;
}

my @*vms = <jvm moar js>;
my @*variants = <_i _u _n _s _I>;

my %documented_ops = find_documented_opcodes();

my %ops = hash_of_vms();

%ops<jvm> = find-opcodes(
    :files([
        ["src/vm/jvm/QAST/Compiler.nqp",],
        ["src/vm/jvm/NQP/Ops.nqp"]
    ]),
    :keywords(<map_classlib_core_op add_core_op map_jvm_core_op add_hll_op>)
);

%ops<js> = find-opcodes(
    :files([
        ["src/vm/js/Operations.nqp"]
    ]),
    :keywords(<add_op add_simple_op add_hll_op add_cmp_op add_infix_op>)
);

%ops<moar> = find-opcodes(
    :files([
        ["src/vm/moar/QAST/QASTOperationsMAST.nqp",1],
        ["src/vm/moar/NQP/Ops.nqp",],
        ["src/vm/moar/QAST/QASTCompilerMAST.nqp",]
    ]),
    :keywords(<add_core_op add_core_moarop_mapping add_hll_op add_getattr_op add_bindattr_op add_native_assign_op>)
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
    assertparamcheck binddynlex bindexcategory bindexpayload capturelex checkarity
    const_i64 const_n64 const_s continuationclone extend_i16 extend_i32 extend_i8
    extend_n32 extend_u16 extend_u32 extend_u8 findmeth findmeth_s getcode getdynlex
    getlexperinvtype_o goto if_i ifnonnull iter osrpoint setelemspos smrt_intify
    smrt_numify smrt_strify strify takehandlerresult throwcatdyn throwdyn trunc_i16
    trunc_i32 trunc_i8 trunc_n32 trunc_u16 trunc_u32 trunc_u8 unless_i unless_o
>;
for @moar-skips -> $op { %ops<moar>{$op}:delete; }
my @js-skips = ['_n',];
for @js-skips -> $op { %ops<js>{$op}:delete; }


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

for %combined_ops.keys.sort -> $opcode {
    my $vms = join(";", @(%combined_ops{$opcode}));
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
for @*vms.sort -> $vm {
    for %documented_ops{$vm}.keys.sort -> $doc_op {
        ok(%ops{$vm}{$doc_op}, "documented op '$doc_op' exists in $vm");
    }
}

sub find-opcodes(:@files, :@keywords) {
    my %ops;
    my $keywords = any(@keywords);

    for @files -> $item {
        my $file= $item[0];
        my $check-init = $item[1];

        my $line_no = 0;
        for $file.IO.lines -> $line {
            $line_no++;
            if $line ~~ / '%core_op_generators{\'' (<[a..zA..Z0..9_]>+) '\'}' / -> $match {
                %ops{$match[0]} = 1;
                debug("$file:$line_no :: core_op_generators : {$match[0]}");
            } elsif $line.contains($keywords) {
                my @pieces = split("'", $line);
                my $piece1 = @pieces[1] // "";
                my $piece2 = @pieces[2] // "";
                my $piece3 = @pieces[3] // "";
                my $opcode = $piece1 eq 'nqp' ?? $piece3 !! $piece1;

                next unless $opcode.chars;

                if $piece1 ne 'nqp' && $piece2 ~~ /^ \s* '~' \s* '$suffix' / {
                    for <_s _n _i> -> $suffix {
                        my $full-opcode = $opcode ~ $suffix;
                        %ops{$full-opcode} = 1;
                        debug("$file:$line_no :: keyword/suffix : $full-opcode");
                    }
                }
                %ops{$opcode} = 1;
                debug("$file:$line_no :: keyword : $opcode");
            } elsif $line ~~ /^ \s* for \s* '<' (<[\w\ ]>+) '>' \s* '->' \s* '$func' \s* \{/ -> $match {
                for split(' ', $match[0]) -> $func {
                    %ops{$func ~ '_n'} = 1;
                    debug("$file:$line_no :: for block : {$func}_n");
                }
            } elsif $line ~~ / '%ops<' (<[a..zA..Z0..9_]>+) '> :=' / -> $match {
                %ops{$match[0]} = 1;
                debug("$file:$line_no :: %ops : {$match[0]}");
            } elsif $line ~~ /^ \s* for \s* '<' (<[\w\ ]>+) '>' \s* '->' \s* '$op' / -> $match {
                for split(' ', ~$match[0]) -> $func {
                    %ops{$func} = 1;
                    debug("$file:$line_no :: for single : $func");
                }
            } elsif $line ~~ /  "'" (\w+) "'," \s+ "'" (\w+) "'" / -> $match {
                if $check-init {
                    my $func = ~$0;
                    %ops{$func} = 1;
                    debug("$file:$line_no :: list init : $func");
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
# Deal only with known vms

sub match_vms($input) {
    my @found;
    for @*vms -> $vm {
        if $input.contains('`' ~ $vm ~ '`') {
            @found.push: $vm;
        }
    }

    return @found;
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

    my @opcode_vms;

    my $state = 0; # 0 outside of an opcode
                    # 1 seen opcode header
                    # 2 seen opcode variant
                    # 3 description of opcode

    for $markdown-file.IO.lines -> $line {
        my $opcode;

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
                $opcode = ~$match[0];
            } else {
                # Regular opcode
                $opcode = substr($line, 3);
                $opcode = split("(", $opcode)[0];
            }

            for @line_vms -> $vm {
                %current-opcodes{$opcode}{$vm} = 1;
            }
       } elsif $state == 2 || $state == 3 {
           $state = 3;
           $description = $description ~ $line;
       }
    }
    save_documentation(%documented_ops, %current-opcodes, $description);
    return %documented_ops;
}
