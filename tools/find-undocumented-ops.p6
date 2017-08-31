#!/usr/bin/env perl6
sub MAIN (Str:D $nqp-folder, Str:D $moar-folder, Bool :$moar-names, Bool :$moar-and-nqp-names) {
    my $nqp-doc-file = make-io($nqp-folder, "docs/ops.markdown");
    my $moar-oplist  = make-io($moar-folder, "src/core/oplist");
    my $mast-ops     = make-io($nqp-folder, "src/vm/moar/QAST/QASTOperationsMAST.nqp");
    my @moar-ops;
    my %moar-to-nqp-mapping;
    my @ops;
    my token lq { <["'“‘]> }
    my token rq { <["'”’]> }
    for $mast-ops.lines {
        if /'QAST::MASTOperations.add_core_moarop_mapping('
            \s* <lq> $<nqp>=(\S+) <rq> \s* ',' \s*
            <lq> $<moar>=(\S+) <rq> /
            {
                %moar-to-nqp-mapping{~$<moar>} = ~$<nqp>;
            }
    }
    for $moar-oplist.lines {
        next if / ^ \s* '#' / or / ^ \s* $ /;
        my $op = .split(/\s+/, 2)[0];
        @moar-ops.push: $op;
    }
    my $docs = $nqp-doc-file.IO.slurp;
    if $moar-and-nqp-names {
        "## Moar-Op NQP-Op".note;
    }
    elsif $moar-names {
        "## Moar-Op".note;
    }
    else {
        "## NQP-Op".note;
    }
    for @moar-ops -> $op {
        if %moar-to-nqp-mapping{$op}:exists {
            if !$docs.contains(%moar-to-nqp-mapping{$op}) {
                if $moar-and-nqp-names {
                    "%moar-to-nqp-mapping{$op} $op".say;
                }
                elsif $moar-names {
                    $op.say;
                }
                else {
                    %moar-to-nqp-mapping{$op}.say;
                }

            }
        }
    }
}
multi sub make-io (Str:D $path) {
    my $io = $path.IO;
    die "Error could not find '$io'" unless $io.e;
    $io;
}
multi sub make-io (Str:D $folder, Str:D $subpath) {
    my $io = $folder.IO.child($subpath);
    die "Error could not find '$io'" unless $io.e;
    $io;
}
