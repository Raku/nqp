use NQPHLL;

class QAST::Operations {
    # Maps operations to code that will handle them. Hash of code.
    my %core_ops;

    # Maps HLL-specific operations to code that will handle them.
    # Hash of hash of code.
    my %hll_ops;

    # Cached pirop compilers.
    my %cached_pirops;

    # Mapping of how to box/unbox by HLL.
    my %hll_box;
    my %hll_unbox;

    # What we know about inlinability.
    my %core_inlinability;
    my %hll_inlinability;

    # What we know about op native results types.
    my %core_result_type;
    my %hll_result_type;

    # Compiles an operation to POST.
    method compile_op($qastcomp, $hll, $op) {
        my $name := $op.op;
        if $hll {
            if %hll_ops{$hll} && %hll_ops{$hll}{$name} -> $mapper {
                return $mapper($qastcomp, $op);
            }
        }
        if %core_ops{$name} -> $mapper {
            return $mapper($qastcomp, $op);
        }
        nqp::die("No registered operation handler for '$name'");
    }

    # Compiles a PIR operation.
    method compile_pirop($qastcomp, $op_name, @op_args) {
        if nqp::index($op_name, ' ') {
            $op_name := nqp::join('__', nqp::split(' ', $op_name));
        }
        unless nqp::existskey(%cached_pirops, $op_name) {
            my @pieces := nqp::split('__', $op_name);
            %cached_pirops{$op_name} := pirop_mapper(@pieces[0], @pieces[1]);
        }
        %cached_pirops{$op_name}($qastcomp, $op_name, @op_args)
    }

    # Adds a core op handler.
    method add_core_op($op, $handler, :$inlinable = 0) {
        %core_ops{$op} := $handler;
        self.set_core_op_inlinability($op, $inlinable);
    }

    # Adds a HLL op handler.
    method add_hll_op($hll, $op, $handler, :$inlinable = 0) {
        %hll_ops{$hll} := {} unless nqp::existskey(%hll_ops, $hll);
        %hll_ops{$hll}{$op} := $handler;
        self.set_hll_op_inlinability($hll, $op, $inlinable);
    }

    # Adds a core op that maps to a PIR op.
    method add_core_pirop_mapping($op, $pirop, $sig, :$inlinable = 0) {
        my $pirop_mapper := pirop_mapper($pirop, $sig);
        %core_ops{$op} := -> $qastcomp, $op {
            $pirop_mapper($qastcomp, $op.op, $op.list)
        };
        self.set_core_op_inlinability($op, $inlinable);
        self.set_core_op_result_type($op, nqp::substr($sig, 0, 1));
    }

    # Adds a HLL op that maps to a PIR op.
    method add_hll_pirop_mapping($hll, $op, $pirop, $sig, :$inlinable = 0) {
        my $pirop_mapper := pirop_mapper($pirop, $sig);
        %hll_ops{$hll} := {} unless nqp::existskey(%hll_ops, $hll);
        %hll_ops{$hll}{$op} := -> $qastcomp, $op {
            $pirop_mapper($qastcomp, $op.op, $op.list)
        };
        self.set_hll_op_inlinability($hll, $op, $inlinable);
        self.set_hll_op_result_type($hll, $op, nqp::substr($sig, 0, 1));
    }

    # Sets op inlinability at a core level.
    method set_core_op_inlinability($op, $inlinable) {
        %core_inlinability{$op} := $inlinable;
    }

    # Sets op inlinability at a HLL level. (Can override at HLL level whether
    # or not the HLL overrides the op itself.)
    method set_hll_op_inlinability($hll, $op, $inlinable) {
        %hll_inlinability{$hll} := {} unless nqp::existskey(%hll_inlinability, $hll);
        %hll_inlinability{$hll}{$op} := $inlinable;
    }

    # Checks if an op is considered inlinable.
    method is_inlinable($hll, $op) {
        if nqp::existskey(%hll_inlinability, $hll) {
            if nqp::existskey(%hll_inlinability{$hll}, $op) {
                return %hll_inlinability{$hll}{$op};
            }
        }
        return %core_inlinability{$op} // 0;
    }

    # Sets op native result type at a core level.
    method set_core_op_result_type($op, $type_char) {
        if $type_char eq 'I' {
            %core_result_type{$op} := int;
        }
        elsif $type_char eq 'N' {
            %core_result_type{$op} := num;
        }
        elsif $type_char eq 'S' {
            %core_result_type{$op} := str;
        }
    }

    # Sets op inlinability at a HLL level. (Can override at HLL level whether
    # or not the HLL overrides the op itself.)
    method set_hll_op_result_type($hll, $op, $type_char) {
        %hll_result_type{$hll} := {} unless nqp::existskey(%hll_result_type, $hll);
        if $type_char eq 'I' {
            %hll_result_type{$hll}{$op} := int;
        }
        elsif $type_char eq 'N' {
            %hll_result_type{$hll}{$op} := num;
        }
        elsif $type_char eq 'S' {
            %hll_result_type{$hll}{$op} := str;
        }
    }

    # Sets returns on an op node if we it has a native result type.
    method attach_result_type($hll, $node) {
        my $op := $node.op;
        if nqp::existskey(%hll_result_type, $hll) {
            if nqp::existskey(%hll_result_type{$hll}, $op) {
                $node.returns(%hll_result_type{$hll}{$op});
                return 1;
            }
        }
        if nqp::existskey(%core_result_type, $op) {
            $node.returns(%core_result_type{$op});
        }
    }

    # Adds a HLL box handler.
    method add_hll_box($hll, $type, $handler) {
        unless $type eq 'i' || $type eq 'n' || $type eq 's' {
            nqp::die("Unknown box type '$type'");
        }
        %hll_box{$hll} := {} unless nqp::existskey(%hll_box, $hll);
        %hll_box{$hll}{$type} := $handler;
    }

    # Adds a HLL unbox handler.
    method add_hll_unbox($hll, $type, $handler) {
        unless $type eq 'i' || $type eq 'n' || $type eq 's' {
            nqp::die("Unknown unbox type '$type'");
        }
        %hll_unbox{$hll} := {} unless nqp::existskey(%hll_unbox, $hll);
        %hll_unbox{$hll}{$type} := $handler;
    }

    # Generates a box. Takes a POST tree.
    method box($qastcomp, $hll, $type, $post) {
        (%hll_box{$hll}{$type} // %hll_box{'nqp'}{$type})($qastcomp, $post)
    }

    # Generates an unbox. Takes a POST tree.
    method unbox($qastcomp, $hll, $type, $post) {
        (%hll_unbox{$hll}{$type} // %hll_unbox{'nqp'}{$type})($qastcomp, $post)
    }

    # Returns a mapper closure for turning an operation into a PIR op.
    # The signature argument consists of characters indicating the
    # register types and conversions.  The characters are:
    #    P,S,I,N   PMC, string, int, or num register
    #    Q         keyed PMC, next character indicates type of key
    #    s         string register or constant
    #    i         int register or constant
    #    n         num register or constant
    #    r         any register result
    #    v         void (no result)
    #    0-9       use the nth input operand as the output result of this operation
    sub pirop_mapper($pirop, $sig) {
        # Parse arg types out.
        my @arg_types := nqp::split('', $sig);
        my $ret_type  := @arg_types.shift();

        # Work out register method for return type, if any.
        my $ret_meth;
        if $ret_type eq 'P'    { $ret_meth := "fresh_p"; }
        elsif $ret_type eq 'S' { $ret_meth := "fresh_s"; }
        elsif $ret_type eq 'I' { $ret_meth := "fresh_i"; }
        elsif $ret_type eq 'N' { $ret_meth := "fresh_n"; }

        -> $qastcomp, $op_name, @op_args {
            my $ops := PIRT::Ops.new();

            # If we need a result register, create it and make it the
            # first argument.
            my @args;
            if $ret_meth {
                my $reg := $*REGALLOC."$ret_meth"();
                @args.push($reg);
                $ops.result($reg);
            }

            # Build the arguments list.
            my $num_args := +@op_args;
            if +@arg_types != $num_args {
                nqp::die("Operation '$op_name' requires " ~
                    +@arg_types ~ " operands, but got $num_args");
            }
            my $i := 0;
            my $last_argtype_was_Q := 0;
            my $aggregate := '';
            while $i < $num_args {
                my $arg_type := @arg_types[$i];
                my $operand  := @op_args[$i];
                if $arg_type eq 'Q' {
                    my $post := $qastcomp.coerce($qastcomp.as_post($operand), 'P');
                    $ops.push($post);
                    $aggregate := $post.result;
                    $last_argtype_was_Q := 1;
                }
                elsif $last_argtype_was_Q {
                    if $arg_type ne 'P' {
                        $operand := $qastcomp.apply_context($operand, $arg_type);
                    }
                    my $post := $qastcomp.coerce($qastcomp.as_post($operand), $arg_type);
                    $ops.push($post);
                    @args.push("$aggregate[" ~ $post.result ~ "]");
                    $last_argtype_was_Q := 0;
                }
                else {
                    if $arg_type ne 'P' {
                        $operand := $qastcomp.apply_context($operand, $arg_type);
                    }
                    my $post := $qastcomp.coerce($qastcomp.as_post($operand), $arg_type);
                    $ops.push($post);
                    @args.push($post.result);
                }
                $i := $i + 1;
            }

            # If we have an integer as the return type, find the arg that
            # becomes the result.
            if !$ret_meth && $ret_type ne 'v' && +$ret_type eq $ret_type {
                my $rreg := @args[+$ret_type];
                my $brak := nqp::index($rreg, '[');
                if $brak > 0 {
                    $rreg := nqp::substr($rreg, $brak + 1, nqp::chars($rreg) - ($brak + 2));
                }
                $ops.result($rreg);
            }

            # Construct and return the op.
            $ops.push_pirop($pirop, |@args);
            $ops
        }
    }
}

# Data structures
QAST::Operations.add_core_op('list', :inlinable(1), -> $qastcomp, $op {
    # Create register for the resulting list and make an empty one.
    my $list_reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new(:result($list_reg));
    $ops.push_pirop('new', $list_reg, "'ResizablePMCArray'");

    # Push all the things.
    for $op.list {
        my $post := $qastcomp.coerce($qastcomp.as_post($_), 'P');
        $ops.push($post);
        $ops.push_pirop('push', $list_reg, $post.result);
    }

    $ops
});

QAST::Operations.add_core_op('qlist', :inlinable(1), -> $qastcomp, $op {
    # Create register for the resulting list and make an empty one.
    my $list_reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new(:result($list_reg));
    $ops.push_pirop('new', $list_reg, "'QRPA'");

    # Push all the things.
    for $op.list {
        my $post := $qastcomp.coerce($qastcomp.as_post($_), 'P');
        $ops.push($post);
        $ops.push_pirop('push', $list_reg, $post.result);
    }

    $ops
});

QAST::Operations.add_core_op('list_i', :inlinable(1), -> $qastcomp, $op {
    # Create register for the resulting list and make an empty one.
    my $list_reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new(:result($list_reg));
    $ops.push_pirop('new', $list_reg, "'ResizableIntegerArray'");

    # Push all the things.
    for $op.list {
        my $post := $qastcomp.coerce($qastcomp.as_post($_), 'i');
        $ops.push($post);
        $ops.push_pirop('push', $list_reg, $post.result);
    }

    $ops
});

QAST::Operations.add_core_op('list_s', :inlinable(1), -> $qastcomp, $op {
    # Create register for the resulting list and make an empty one.
    my $list_reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new(:result($list_reg));
    $ops.push_pirop('new', $list_reg, "'ResizableStringArray'");

    # Push all the things.
    for $op.list {
        my $post := $qastcomp.coerce($qastcomp.as_post($_), 's');
        $ops.push($post);
        $ops.push_pirop('push', $list_reg, $post.result);
    }

    $ops
});

QAST::Operations.add_core_op('list_b', :inlinable(1), -> $qastcomp, $op {
    # Create register for the resulting list and make an empty one.
    my $list_reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new(:result($list_reg));
    $ops.push_pirop('new', $list_reg, "'ResizablePMCArray'");

    # Push all the things.
    my $block_reg := $*REGALLOC.fresh_p();
    for $op.list {
        my $cuid := $_.cuid;
        $ops.push_pirop(".const 'Sub' $block_reg = \"$cuid\"");
        $ops.push_pirop('push', $list_reg, $block_reg);
    }

    $ops
});

QAST::Operations.add_core_op('hash', :inlinable(1), -> $qastcomp, $op {
    # Create register for the resulting hash and make an empty one.
    my $hash_reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new(:result($hash_reg));
    $ops.push_pirop('new', $hash_reg, "'Hash'");

    # Set all the values by key on the hash.
    my $i := 0;
    my @op_list := $op.list;
    while $i < +@op_list {
        my $kpost := $qastcomp.coerce($qastcomp.as_post(@op_list[$i]), 's');
        $ops.push($kpost);
        $i := $i + 1;

        my $vpost := $qastcomp.coerce($qastcomp.as_post(@op_list[$i]), 'P');
        $ops.push($vpost);
        $i := $i + 1;

        $ops.push_pirop('set', $hash_reg ~ '[' ~ $kpost.result ~ ']', $vpost.result);
    }

    $ops
});

# Chaining.
QAST::Operations.add_core_op('chain', :inlinable(1), -> $qastcomp, $op {
    # First, we build up the list of nodes in the chain
    my @clist;
    my $cpast := $op;
    while $cpast ~~ QAST::Op && $cpast.op eq 'chain' {
        nqp::push(@clist, $cpast);
        $cpast := $cpast[0];
    }

    my $ops := PIRT::Ops.new(:result($*REGALLOC.fresh_p()));
    my $endlabel := PIRT::Label.new(:name($qastcomp.unique('chain_end_')));

    $cpast := nqp::pop(@clist);
    my $apast := $cpast[0];
    my $apost := $qastcomp.coerce($qastcomp.as_post($apast), 'P');
    $ops.push($apost);

    my $more := 1;
    while $more {
        my $bpast := $cpast[1];
        my $bpost := $qastcomp.coerce($qastcomp.as_post($bpast), 'P');
        $ops.push($bpost);

        my $name := $qastcomp.escape($cpast.name());
        $ops.push_pirop('call', $name, $apost, $bpost, :result($ops));

        if @clist {
            $ops.push_pirop('unless', $ops, $endlabel);
            $cpast := nqp::pop(@clist);
            $apost := $bpost;
        }
        else {
            $more := 0;
        }
    }

    $ops.push($endlabel);
    $ops
});


# Set of sequential statements
QAST::Operations.add_core_op('stmts', :inlinable(1), -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Stmts.new( |@($op) ))
});

# Conditionals.
for <if unless> -> $op_name {
    QAST::Operations.add_core_op($op_name, :inlinable(1), -> $qastcomp, $op {
        # Check operand count.
        my $operands := +$op.list;
        nqp::die("Operation '$op_name' needs either 2 or 3 operands")
            if $operands < 2 || $operands > 3;

        # Create labels.
        my $if_id    := $qastcomp.unique($op_name);
        my $else_lbl := PIRT::Label.new(:name($if_id ~ '_else'));
        my $end_lbl  := PIRT::Label.new(:name($if_id ~ '_end'));

        # Compile each of the children; we'll need to look at the result
        # types and pick an overall result type if in non-void context.
        my @comp_ops;
        my @op_types;
        my @im_args;
        for $op.list {
            my $*HAVE_IMM_ARG := $_.arity > 0 && !($_ =:= $op[0]);
            my $*IMM_ARG;
            my $comp := $qastcomp.as_post($_);
            @comp_ops.push($comp);
            @op_types.push(nqp::uc($qastcomp.infer_type($comp.result)));
            if $*HAVE_IMM_ARG {
                if $*IMM_ARG {
                    @im_args.push($*IMM_ARG);
                }
                else {
                    nqp::die("$op_name block expects an argument, but there's no immediate block to take it");
                }
            }
        }
        my $res_type;
        my $res_reg;
        if $*WANT ne 'v' {
            $res_type := $operands == 3 ??
                (@op_types[1] eq @op_types[2] ?? nqp::lc(@op_types[1]) !! 'p') !!
                (@op_types[0] eq @op_types[1] ?? nqp::lc(@op_types[0]) !! 'p');
            $res_reg := $*REGALLOC."fresh_$res_type"();
        }

        # Evaluate the condition first; store result if needed.
        my $ops := PIRT::Ops.new();
        my $cond_result;
        if $res_reg && $operands == 2 {
            my $coerced := $qastcomp.coerce(@comp_ops[0], $res_type);
            $ops.push($coerced);
            $ops.push_pirop('set', $res_reg, $coerced.result);
            $cond_result := $coerced;
        }
        else {
            $ops.push(@comp_ops[0]);
            $cond_result := @comp_ops[0];
        }

        # If needed, set up passing condition value to blocks.
        for @im_args {
            $_($cond_result.result);
        }

        # Emit the jump.
        $ops.push_pirop(($op_name eq 'if' ?? 'unless ' !! 'if ') ~
            @comp_ops[0].result ~ ' goto ' ~
            ($operands == 2 ?? $end_lbl.result !! $else_lbl.result));

        # Emit the then; stash the result.
        if $res_reg {
            my $then := $qastcomp.coerce(@comp_ops[1], $res_type);
            $ops.push($then);
            $ops.push_pirop('set', $res_reg, $then.result);
        }
        else {
            $ops.push(@comp_ops[1]);
        }

        # Handle else branch if needed.
        if $operands == 3 {
            $ops.push_pirop('goto', $end_lbl.result);
            $ops.push($else_lbl);
            if $res_reg {
                my $else := $qastcomp.coerce(@comp_ops[2], $res_type);
                $ops.push($else);
                $ops.push_pirop('set', $res_reg, $else.result);
            }
            else {
                $ops.push(@comp_ops[2]);
            }
        }

        # Emit end label and tag ops with result.
        $ops.push($end_lbl);
        $ops.result($res_reg || 'null');
        $ops;
    });
}

# XXX make 3-arg...
QAST::Operations.add_core_op('ifnull', :inlinable(1), -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'ifnull' op expects two children");
    }

    my $exprpost := $qastcomp.as_post($op[0]);
    my $vivipost := $qastcomp.coerce($qastcomp.as_post($op[1]),
        $qastcomp.infer_type($exprpost.result));
    my $vivlabel := PIRT::Label.new(:name($qastcomp.unique('vivi_')));

    my $ops := PIRT::Ops.new();
    $ops.push($exprpost);
    $ops.push_pirop('unless_null', $exprpost, $vivlabel);
    $ops.push($vivipost);
    $ops.push_pirop('set', $exprpost, $vivipost);
    $ops.push($vivlabel);
    $ops.result($exprpost.result);
    $ops
});

# Loops.
for ('', 'repeat_') -> $repness {
    for <while until> -> $op_name {
        QAST::Operations.add_core_op("$repness$op_name", :inlinable(1), -> $qastcomp, $op {
            # Create labels.
            my $while_id := $qastcomp.unique($op_name);
            my $test_lbl := PIRT::Label.new(:name($while_id ~ '_test'));
            my $next_lbl := PIRT::Label.new(:name($while_id ~ '_next'));
            my $redo_lbl := PIRT::Label.new(:name($while_id ~ '_redo'));
            my $hand_lbl := PIRT::Label.new(:name($while_id ~ '_handlers'));
            my $done_lbl := PIRT::Label.new(:name($while_id ~ '_done'));

            # Compile each of the children; we'll need to look at the result
            # types and pick an overall result type if in non-void context.
            my @comp_ops;
            my @comp_types;
            my $handler := 1;
            my $*IMM_ARG;
            for $op.list {
                if $_.named eq 'nohandler' { $handler := 0; }
                else {
                    my $*HAVE_IMM_ARG := $_.arity > 0 && $_ =:= $op.list[1];
                    my $comp := $qastcomp.as_post($_);
                    @comp_ops.push($comp);
                    @comp_types.push($qastcomp.infer_type($comp.result));
                    if $*HAVE_IMM_ARG && !$*IMM_ARG {
                        nqp::die("$op_name block expects an argument, but there's no immediate block to take it");
                    }
                }
            }
            my $res_type := @comp_types[0] eq @comp_types[1] ?? nqp::lc(@comp_types[0]) !! 'p';
            my $res_reg  := $*REGALLOC."fresh_$res_type"();

            # Check operand count.
            my $operands := +@comp_ops;
            nqp::die("Operation '$repness$op_name' needs 2 or 3 operands")
                if $operands != 2 && $operands != 3;

            # Emit the prelude.
            my $ops := PIRT::Ops.new();
            $ops.result($res_reg);

            my $exc_reg;
            if $handler {
                $exc_reg := $*REGALLOC.fresh_p();
                $ops.push_pirop('new', $exc_reg, "'ExceptionHandler'",
                    '[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]');
                $ops.push_pirop('set_label', $exc_reg, $hand_lbl);
                $ops.push_pirop('push_eh', $exc_reg);
            }

            # Test the condition and jump to the loop end if it's
            # not met.
            my $coerced := $qastcomp.coerce(@comp_ops[0], $res_type);
            if $repness {
                # It's a repeat_ variant, need to go straight into the
                # loop body unconditionally. Be sure to set the register
                # for the result to something first.
                if $res_type eq 'p' || $res_type eq 's' {
                    $ops.push_pirop('null', $res_reg);
                }
                else {
                    $ops.push_pirop('set', $res_reg, '0');
                }
                $ops.push_pirop('goto', $redo_lbl);
            }
            $ops.push($test_lbl);
            $ops.push($coerced);
            $ops.push_pirop('set', $res_reg, $coerced.result);
            $ops.push_pirop(($op_name eq 'while' ?? 'unless ' !! 'if ') ~
                @comp_ops[0].result ~ ' goto ' ~ $done_lbl.result);

            # Handle immediate blocks wanting the value as an arg.
            if $*IMM_ARG {
                $*IMM_ARG($res_reg);
            }

            # Emit the loop body; stash the result.
            my $body := $qastcomp.coerce(@comp_ops[1], $res_type);
            $ops.push($redo_lbl);
            $ops.push($body);
            $ops.push_pirop('set', $res_reg, $body.result);

            # If there's a third child, evaluate it as part of the
            # "next".
            if $operands == 3 {
                $ops.push($next_lbl);
                $ops.push(@comp_ops[2]);
            }

            # Emit the iteration jump.
            $ops.push_pirop('goto ' ~ $test_lbl.result);

            # Emit postlude, with exception handlers.
            if $handler {
                $ops.push($hand_lbl);
                $ops.push_pirop('.get_results', '(' ~ $exc_reg ~ ')');
                $ops.push_pirop('pop_upto_eh', $exc_reg);
                $ops.push_pirop('getattribute', $exc_reg, $exc_reg, "'type'");
                $ops.push_pirop('eq', $exc_reg, '.CONTROL_LOOP_NEXT',
                    $operands == 3 ?? $next_lbl !! $test_lbl);
                $ops.push_pirop('eq', $exc_reg, '.CONTROL_LOOP_REDO', $redo_lbl);
                $ops.push($done_lbl);
                $ops.push_pirop('pop_eh');
            }
            else {
                $ops.push($done_lbl);
            }

            $ops;
        });
    }
}

QAST::Operations.add_core_op('for', :inlinable(1), -> $qastcomp, $op {
    my $handler := 1;
    my @operands;
    for $op.list {
        if $_.named eq 'nohandler' { $handler := 0; }
        else { @operands.push($_) }
    }

    if +@operands != 2 {
        nqp::die("Operation 'for' needs 2 operands");
    }
    unless nqp::istype(@operands[1], QAST::Block) {
        nqp::die("Operation 'for' expects a block as its second operand");
    }
    if @operands[1].blocktype eq 'immediate' {
        @operands[1].blocktype('declaration');
    }
    elsif @operands[1].blocktype eq 'immediate_static' {
        @operands[1].blocktype('declaration_static');
    }

    # Evaluate the thing we'll iterate over and the block.
    my $res       := $*REGALLOC.fresh_p();
    my $curval    := $*REGALLOC.fresh_p();
    my $iter      := $*REGALLOC.fresh_p();
    my $ops       := PIRT::Ops.new();
    my $listpost  := $qastcomp.coerce($qastcomp.as_post(@operands[0]), "P");
    my $blockpost := $qastcomp.coerce($qastcomp.as_post(@operands[1]), "P");
    $ops.push($listpost);

    # Get the iterator.
    $ops.push_pirop('set', $res, $listpost);
    $ops.push_pirop('iter', $iter, $listpost);

    # Set up exception handler.
    my $exc_reg;
    my $hand_lbl;
    if $handler {
        $exc_reg  := $*REGALLOC.fresh_p();
        $hand_lbl := PIRT::Label.new(:name('for_handlers'));
        $ops.push_pirop('new', $exc_reg, "'ExceptionHandler'",
            '[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]');
        $ops.push_pirop('set_label', $exc_reg, $hand_lbl);
        $ops.push_pirop('push_eh', $exc_reg);
    }

    # Loop while we still have values.
    my $lbl_next := PIRT::Label.new(:name('for_next'));
    my $lbl_redo := PIRT::Label.new(:name('for_redo'));
    my $lbl_done := PIRT::Label.new(:name('for_done'));
    $ops.push($lbl_next);
    $ops.push_pirop('unless', $iter, $lbl_done);

    # Fetch values.
    my @valreg;
    my $arity := @operands[1].arity || 1;
    while $arity > 0 {
        my $reg := $*REGALLOC.fresh_p();
        $ops.push_pirop('shift', $reg, $iter);
        nqp::push(@valreg, $reg);
        $arity := $arity - 1;
    }

    # Emit call.
    $ops.push($lbl_redo);
    $ops.push($blockpost);
    $ops.push_pirop('call', $blockpost, |@valreg, :result($res));

    # Loop.
    $ops.push_pirop('goto', $lbl_next);

    # Handlers.
    if $handler {
        $ops.push($hand_lbl);
        $ops.push_pirop('.get_results', '(' ~ $exc_reg ~ ')');
        $ops.push_pirop('pop_upto_eh', $exc_reg);
        $ops.push_pirop('getattribute', $exc_reg, $exc_reg, "'type'");
        $ops.push_pirop('eq', $exc_reg, '.CONTROL_LOOP_NEXT', $lbl_next);
        $ops.push_pirop('eq', $exc_reg, '.CONTROL_LOOP_REDO', $lbl_redo);
        $ops.push($lbl_done);
        $ops.push_pirop('pop_eh');
    }
    else {
        $ops.push($lbl_done);
    }

    # Set result.
    $ops.result($res);
    $ops
});

QAST::Operations.add_core_op('defor', :inlinable(1), -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("Operation 'defor' needs 2 operands");
    }
    my $ops := PIRT::Ops.new();
    my $lbl := PIRT::Label.new(:name('defor'));
    my $dreg := $*REGALLOC.fresh_i();
    my $rreg := $*REGALLOC.fresh_p();
    my $test := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $then := $qastcomp.coerce($qastcomp.as_post($op[1]), 'P');
    $ops.push($test);
    $ops.push_pirop('set', $rreg, $test);
    $ops.push_pirop('defined', $dreg, $rreg);
    $ops.push_pirop('if', $dreg, $lbl);
    $ops.push($then);
    $ops.push_pirop('set', $rreg, $then);
    $ops.push($lbl);
    $ops.result($rreg);
    $ops
});

QAST::Operations.add_core_op('xor', :inlinable(1), -> $qastcomp, $op {
    my $ops := PIRT::Ops.new();
    $ops.result($*REGALLOC.fresh_p());

    my $falselabel := PIRT::Label.new(:name('xor_false'));
    my $endlabel   := PIRT::Label.new(:name('xor_end'));

    my @childlist;
    my $fpast;
    for $op.list {
        if $_.named eq 'false' {
            $fpast := $_;
        }
        else {
            nqp::push(@childlist, $_);
        }
    }

    my $i := $*REGALLOC.fresh_i();
    my $t := $*REGALLOC.fresh_i();
    my $u := $*REGALLOC.fresh_i();

    my $apast := nqp::shift(@childlist);
    my $apost := $qastcomp.coerce($qastcomp.as_post($apast), 'P');
    $ops.push($apost);
    $ops.push_pirop('set', $ops, $apost);
    $ops.push_pirop('istrue', $t, $apost);

    my $have_middle_child := 1;
    my $bpost;
    while $have_middle_child {
        my $bpast := nqp::shift(@childlist);
        $bpost := $qastcomp.coerce($qastcomp.as_post($bpast), 'P');
        $ops.push($bpost);
        $ops.push_pirop('istrue', $u, $bpost);
        $ops.push_pirop('and', $i, $t, $u);
        $ops.push_pirop('if', $i, $falselabel);
        if @childlist {
            my $truelabel := PIRT::Label.new(:name('xor_true'));
            $ops.push_pirop('if', $t, $truelabel);
            $ops.push_pirop('set', $ops, $bpost);
            $ops.push_pirop('set', $t, $u);
            $ops.push($truelabel);
        }
        else {
            $have_middle_child := 0;
        }
    }

    $ops.push_pirop('if', $t, $endlabel);
    $ops.push_pirop('set', $ops, $bpost);
    $ops.push_pirop('goto', $endlabel);
    $ops.push($falselabel);

    if $fpast {
        my $fpost := $qastcomp.coerce($qastcomp.as_post($fpast), 'P');
        $ops.push($fpost);
        $ops.push_pirop('set', $ops, $fpost);
    }
    else {
        $ops.push_pirop('new', $ops, '["Undef"]');
    }

    $ops.push($endlabel);

    $ops
});

# Binding
QAST::Operations.add_core_op('bind', :inlinable(1), -> $qastcomp, $op {
    # Sanity checks.
    my @children := $op.list;
    if +@children != 2 {
        nqp::die("A 'bind' op must have exactly two children");
    }
    unless nqp::istype(@children[0], QAST::Var) {
        nqp::die("First child of a 'bind' op must be a QAST::Var");
    }

    # Set the QAST of the think we're to bind, then delegate to
    # the compilation of the QAST::Var to handle the rest.
    my $*BINDVAL := @children[1];
    $qastcomp.as_post(@children[0])
});

# Calling.
sub handle_arg($arg, $qastcomp, $ops, @pos_arg_results, @named_arg_results, :$coerce) {
    my $arg_post := $qastcomp.as_post($arg);
    if $coerce {
        $arg_post := $qastcomp.coerce($arg_post, $coerce);
    }
    $ops.push($arg_post);
    my $result := $arg_post.result;
    if $arg.flat {
        $result := "$result :flat";
        if $arg.named {
            $result := "$result :named";
        }
    }
    elsif $arg.named -> $name {
        $result := "$result :named(" ~ $qastcomp.escape($name) ~ ")";
    }
    if $arg.named {
        @named_arg_results.push($result);
    }
    else {
        @pos_arg_results.push($result);
    }
}

QAST::Operations.add_core_op('call', -> $qastcomp, $op {
    # Work out what callee is.
    my $callee;
    my @args := nqp::clone($op.list);
    if $op.name {
        $callee := PIRT::Ops.new(:result($qastcomp.escape($op.name)));
    }
    elsif +@args {
        $callee := $qastcomp.as_post(@args.shift());
    }
    else {
        nqp::die("No name for call and empty children list");
    }

    # Process arguments.
    my $ops := PIRT::Ops.new();
    $ops.node($op.node) if $op.node;
    my @pos_arg_results;
    my @named_arg_results;
    for @args {
        handle_arg($_, $qastcomp, $ops, @pos_arg_results, @named_arg_results);
    }

    # Generate call, with a result register if we're not in void context.
    $ops.push($callee);
    if $*WANT eq 'v' {
        $ops.push_pirop('call', $callee.result, |@pos_arg_results, |@named_arg_results);
    }
    else {
        my $res_type := $qastcomp.type_to_register_type($op.returns);
        my $res_reg := $*REGALLOC."fresh_{nqp::lc($res_type)}"();
        $ops.push_pirop('call', $callee.result, |@pos_arg_results, |@named_arg_results, :result($res_reg));
        $ops.result($res_reg);
    }
    $ops
});
QAST::Operations.add_core_op('callmethod', :inlinable(1), -> $qastcomp, $op {
    # Ensure we at least have an invocant.
    my @args := nqp::clone($op.list);
    if +@args == 0 {
        nqp::die('Method call node requires at least one child');
    }

    # Where is the name coming from?
    my $name;
    if $op.name {
        $name := PIRT::Ops.new(:result($qastcomp.escape($op.name)));
    }
    elsif +@args >= 2 {
        my $invocant := @args.shift();
        $name := $qastcomp.coerce($qastcomp.as_post(@args.shift()), 's');
        @args.unshift($invocant);
    }
    else {
        nqp::die("Method call must either supply a name or have a child node that evaluates to the name");
    }

    # Process arguments.
    my $ops := PIRT::Ops.new();
    $ops.node($op.node) if $op.node;
    my @pos_arg_results;
    my @named_arg_results;
    my $inv := 1;
    for @args {
        if $inv {
            handle_arg($_, $qastcomp, $ops, @pos_arg_results, @named_arg_results, :coerce('P'));
            $inv := 0;
        }
        else {
            handle_arg($_, $qastcomp, $ops, @pos_arg_results, @named_arg_results);
        }
    }

    # Generate call, with a result register if we're not in void context.
    $ops.push($name);
    if $*WANT eq 'v' {
        $ops.push_pirop('callmethod', $name.result, |@pos_arg_results, |@named_arg_results);
    }
    else {
        my $res_type := $qastcomp.type_to_register_type($op.returns);
        my $res_reg := $*REGALLOC."fresh_{nqp::lc($res_type)}"();
        $ops.push_pirop('callmethod', $name.result, |@pos_arg_results, |@named_arg_results, :result($res_reg));
        $ops.result($res_reg);
    }

    $ops
});

QAST::Operations.add_core_op('lexotic', -> $qastcomp, $op {
    my $label1  := PIRT::Label.new(:name('lexotic_'));
    my $label2  := PIRT::Label.new(:name('lexotic_'));
    my $lexname := $qastcomp.escape($op.name);

    my $ops := PIRT::Ops.new();
    my $handler := $*BLOCK.fresh_lex_p();
    $ops.push_pirop('root_new', $handler, "['parrot';'Continuation']");
    $ops.push_pirop('set_label', $handler, $label1);
    $ops.push_pirop('.lex', $lexname, $handler);

    my $cpost := $qastcomp.coerce($qastcomp.compile_all_the_stmts($op.list()), 'P');
    $ops.push($cpost);
    $ops.result($cpost);

    $ops.push_pirop('goto', $label2);
    $ops.push($label1);
    $ops.push_pirop('.get_results', '(' ~ $ops.result() ~ ')');
    $ops.push($label2);

    $ops
});

# Context introspection
QAST::Operations.add_core_op('ctx', -> $qastcomp, $op {
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('getinterp', $reg);
    $ops.push_pirop('set', $reg, $reg ~ "['context']");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('ctxouter', -> $qastcomp, $op {
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    my $ctxpost := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    $ops.push($ctxpost);
    $ops.push_pirop('getattribute', $reg, $ctxpost, "'outer_ctx'");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('ctxcaller', -> $qastcomp, $op {
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    my $ctxpost := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    $ops.push($ctxpost);
    $ops.push_pirop('getattribute', $reg, $ctxpost, "'caller_ctx'");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('ctxlexpad', -> $qastcomp, $op {
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    my $ctxpost := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    $ops.push($ctxpost);
    $ops.push_pirop('getattribute', $reg, $ctxpost, "'lex_pad'");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('curlexpad', -> $qastcomp, $op {
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('getinterp', $reg);
    $ops.push_pirop('set', $reg, $reg ~ "['lexpad']");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('curcode', -> $qastcomp, $op {
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('getinterp', $reg);
    $ops.push_pirop('set', $reg, $reg ~ "['sub']");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('callercode', -> $qastcomp, $op {
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('getinterp', $reg);
    $ops.push_pirop('set', $reg, $reg ~ "['sub';1]");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('lexprimspec', -> $qastcomp, $op {
    unless +@($op) == 2 {
        nqp::die("Operation 'lexprimspec' expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('get_lex_type'), :returns(int),
        $op[0], $op[1]
    ))
});

# Argument capture processing, for writing things like multi-dispatchers in
# high level languages.
QAST::Operations.add_core_op('usecapture', -> $qastcomp, $op {
    # On Parrot, the current CallContext has the current args, so just use it.
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('getinterp', $reg);
    $ops.push_pirop('set', $reg, $reg ~ "['context']");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('savecapture', -> $qastcomp, $op {
    # On Parrot, CallContext contains the args and is immutable, so we
    # don't need to do anything more than map this to returning the
    # current context.
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('getinterp', $reg);
    $ops.push_pirop('set', $reg, $reg ~ "['context']");
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_pirop_mapping('captureposelems', 'elements', 'IP');
QAST::Operations.add_core_pirop_mapping('captureposarg', 'set', 'PQi');
QAST::Operations.add_core_pirop_mapping('captureposarg_i', 'set', 'IQi');
QAST::Operations.add_core_pirop_mapping('captureposarg_n', 'set', 'NQi');
QAST::Operations.add_core_pirop_mapping('captureposarg_s', 'set', 'SQi');
QAST::Operations.add_core_pirop_mapping('captureposprimspec', 'captureposprimspec', 'IPi');
QAST::Operations.add_core_pirop_mapping('captureexistsnamed', 'exists', 'IQs');
QAST::Operations.add_core_pirop_mapping('capturehasnameds', 'nqp_capturehasnameds', 'IP');

# Multiple dispatch related.
QAST::Operations.add_core_op('invokewithcapture', -> $qastcomp, $op {
    unless $op.list == 2 {
        nqp::die("The 'invokewithcapture' op requires two children");
    }
    my $pos_reg  := $*REGALLOC.fresh_p();
    my $nam_reg  := $*REGALLOC.fresh_p();
    my $res_reg  := $*REGALLOC.fresh_p();
    my $inv_post := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $cap_post := $qastcomp.coerce($qastcomp.as_post($op[1]), 'P');
    my $ops      := PIRT::Ops.new();
    $ops.push($inv_post);
    $ops.push($cap_post);
    $ops.push_pirop('deconstruct_capture', $cap_post.result, $pos_reg, $nam_reg);
    $ops.push_pirop('call', $inv_post.result, $pos_reg ~ ' :flat',
        $nam_reg ~ ' :flat :named', :result($res_reg));
    $ops.result($res_reg);
    $ops
});
QAST::Operations.add_core_pirop_mapping('multicacheadd', 'multi_cache_add', 'PPPP');
QAST::Operations.add_core_pirop_mapping('multicachefind', 'multi_cache_find', 'PPP');

# Constant mapping.
my %const_map := nqp::hash(
    'CCLASS_ANY',           pir::const::CCLASS_ANY,
    'CCLASS_NUMERIC',       pir::const::CCLASS_NUMERIC,
    'CCLASS_WHITESPACE',    pir::const::CCLASS_WHITESPACE,
    'CCLASS_PRINTING',      pir::const::CCLASS_PRINTING,
    'CCLASS_GRAPHICAL',     pir::const::CCLASS_GRAPHICAL,
    'CCLASS_WORD',          pir::const::CCLASS_WORD,
    'CCLASS_NEWLINE',       pir::const::CCLASS_NEWLINE,
    'CCLASS_ALPHABETIC',    pir::const::CCLASS_ALPHABETIC,
    'CCLASS_UPPERCASE',     pir::const::CCLASS_UPPERCASE,
    'CCLASS_LOWERCASE',     pir::const::CCLASS_LOWERCASE,
    'CCLASS_NUMERIC',       pir::const::CCLASS_NUMERIC,
    'CCLASS_HEXADECIMAL',   pir::const::CCLASS_HEXADECIMAL,
    'CCLASS_BLANK',         pir::const::CCLASS_BLANK,
    'CCLASS_CONTROL',       pir::const::CCLASS_CONTROL,
    'CCLASS_PUNCTUATION',   pir::const::CCLASS_PUNCTUATION,
    'CCLASS_ALPHANUMERIC',  pir::const::CCLASS_ALPHANUMERIC,
    
    'HLL_ROLE_NONE',        0,
    'HLL_ROLE_INT',         1,
    'HLL_ROLE_NUM',         2,
    'HLL_ROLE_STR',         3,
    'HLL_ROLE_ARRAY',       4,
    'HLL_ROLE_HASH',        5,
    'HLL_ROLE_CODE',        6,
    
    'CONTROL_TAKE',         pir::const::CONTROL_TAKE,
    'CONTROL_LAST',         pir::const::CONTROL_LOOP_LAST,
    'CONTROL_NEXT',         pir::const::CONTROL_LOOP_NEXT,
    'CONTROL_REDO',         pir::const::CONTROL_LOOP_REDO,
    'CONTROL_SUCCEED',      pir::const::CONTROL_BREAK,
    'CONTROL_PROCEED',      pir::const::CONTROL_CONTINUE,
    'CONTROL_WARN',         pir::const::CONTROL_OK,

    'STAT_EXISTS',             pir::const::STAT_EXISTS,
    'STAT_FILESIZE',           pir::const::STAT_FILESIZE,
    'STAT_ISDIR',              pir::const::STAT_ISDIR,
    'STAT_ISREG',              pir::const::STAT_ISREG,
    'STAT_ISDEV',              pir::const::STAT_ISDEV,
    'STAT_CREATETIME',         pir::const::STAT_CREATETIME,
    'STAT_ACCESSTIME',         pir::const::STAT_ACCESSTIME,
    'STAT_MODIFYTIME',         pir::const::STAT_MODIFYTIME,
    'STAT_CHANGETIME',         pir::const::STAT_CHANGETIME,
    'STAT_BACKUPTIME',         pir::const::STAT_BACKUPTIME,
    'STAT_UID',                pir::const::STAT_UID,
    'STAT_GID',                pir::const::STAT_GID,
    'STAT_ISLNK',              pir::const::STAT_ISLNK,
    'STAT_PLATFORM_DEV',       pir::const::STAT_PLATFORM_DEV,
    'STAT_PLATFORM_INODE',     pir::const::STAT_PLATFORM_INODE,
    'STAT_PLATFORM_MODE',      pir::const::STAT_PLATFORM_MODE,
    'STAT_PLATFORM_NLINKS',    pir::const::STAT_PLATFORM_NLINKS,
    'STAT_PLATFORM_DEVTYPE',   pir::const::STAT_PLATFORM_DEVTYPE,
    'STAT_PLATFORM_BLOCKSIZE', pir::const::STAT_PLATFORM_BLOCKSIZE,
    'STAT_PLATFORM_BLOCKS',    pir::const::STAT_PLATFORM_BLOCKS,

    'STAT_TYPE_UNKNOWN',       pir::const::STAT_TYPE_UNKNOWN,
    'STAT_TYPE_FILE',          pir::const::STAT_TYPE_FILE,
    'STAT_TYPE_DIRECTORY',     pir::const::STAT_TYPE_DIRECTORY,
    'STAT_TYPE_PIPE',          pir::const::STAT_TYPE_PIPE,
    'STAT_TYPE_LINK',          pir::const::STAT_TYPE_LINK,
    'STAT_TYPE_DEVICE',        pir::const::STAT_TYPE_DEVICE,

    'TYPE_CHECK_CACHE_DEFINITIVE',  0,
    'TYPE_CHECK_CACHE_THEN_METHOD', 1,
    'TYPE_CHECK_NEEDS_ACCEPTS',     2,
);
QAST::Operations.add_core_op('const', -> $qastcomp, $op {
    if nqp::existskey(%const_map, $op.name) {
        $qastcomp.as_post(QAST::IVal.new( :value(%const_map{$op.name}) ))
    }
    else {
        nqp::die("Unknown constant '" ~ $op.name ~ "'");
    }
});

# Exception handling/munging.
my $exc_exclude := 0;
my $exc_include := 1;
my %handler_names := nqp::hash(
    'CATCH',   '.CONTROL_ALL',
    'CONTROL', '.CONTROL_ALL',
    'NEXT',    '.CONTROL_LOOP_NEXT',
    'LAST',    '.CONTROL_LOOP_LAST',
    'REDO',    '.CONTROL_LOOP_REDO',
    'TAKE',    '.CONTROL_TAKE',
    'SUCCEED', '.CONTROL_BREAK',
    'PROCEED', '.CONTROL_CONTINUE'
);
QAST::Operations.add_core_op('handle', -> $qastcomp, $op {
    my @children := nqp::clone($op.list());
    if @children == 0 {
        nqp::die("The 'handle' op requires at least one child");
    }

    # Compile the protected statements. If we've no handlers at all
    # then that's it.
    my $protected := @children.shift();
    my $procpost  := $qastcomp.coerce($qastcomp.as_post($protected), 'P');
    unless @children {
        return $procpost;
    }

    # Process handlers.
    my %handlers;
    my $catch;
    my $control;
    my @other;
    for @children -> $name, $handler_code {
        if nqp::existskey(%handler_names, $name) {
            if nqp::existskey(%handlers, $name) {
                nqp::die("Multiple handlers for $name");
            }
            %handlers{$name} := $handler_code;
            if $name eq 'CATCH' {
                $catch := 1;
            }
            elsif $name eq 'CONTROL' {
                $control := 1;
            }
            else {
                nqp::push(@other, $name);
            }
        }
        else {
            nqp::die("Invalid handler type '$name'");
        }
    }

    # Handler prelude.
    my $catch_label;
    my $control_label;
    my $other_label;
    my $num_pops := 0;
    my $skip_handler_label := PIRT::Label.new(:name($qastcomp.unique('skip_handler_')));
    my $ops := PIRT::Ops.new();
    my $reg := $*REGALLOC.fresh_p();
    if $catch {
        $catch_label := PIRT::Label.new(:name($qastcomp.unique('catch_handler_')));
        $ops.push_pirop('new', $reg, "'ExceptionHandler'");
        $ops.push_pirop('set_label', $reg, $catch_label);
        $ops.push_pirop('callmethod', "'handle_types_except'", $reg, ".CONTROL_ALL");
        $ops.push_pirop('push_eh', $reg);
        $num_pops := $num_pops + 1;
    }
    if $control {
        $control_label := PIRT::Label.new(:name($qastcomp.unique('catch_handler_')));
        $ops.push_pirop('new', $reg, "'ExceptionHandler'", "[.CONTROL_ALL]");
        $ops.push_pirop('set_label', $reg, $control_label);
        $ops.push_pirop('push_eh', $reg);
        $num_pops := $num_pops + 1;
    }
    if @other {
        my @hnames;
        for @other { nqp::push(@hnames, %handler_names{$_}); }
        $other_label := PIRT::Label.new(:name($qastcomp.unique('catch_handler_')));
        $ops.push_pirop('new', $reg, "'ExceptionHandler'",
            "[" ~ nqp::join(", ", @hnames) ~ "]");
        $ops.push_pirop('set_label', $reg, $other_label);
        $ops.push_pirop('push_eh', $reg);
        $num_pops := $num_pops + 1;
    }

    # Protected code.
    my $res_type := nqp::lc($qastcomp.infer_type($procpost.result));
    my $res_reg := $*REGALLOC."fresh_$res_type"();
    $ops.push($procpost);
    $ops.push_pirop('set', $res_reg, $procpost.result);
    while $num_pops {
        $ops.push_pirop('pop_eh');
        $num_pops := $num_pops - 1;
    }
    $ops.push_pirop('goto', $skip_handler_label);

    # Now emit the handlers.
    my $orig_alloc := $*REGALLOC;
    {
        my $*CUR_EXCEPTION := $reg;
        my $*REGALLOC := $orig_alloc.handler_allocator();
        sub simple_handler($label, $handler_qast) {
            my $handler_post := $qastcomp.coerce($qastcomp.as_post($handler_qast), 'P');
            $ops.push($label);
            $ops.push_pirop(".get_results ($reg)");
            $ops.push($handler_post);
            $ops.push_pirop('finalize', $reg);
            $ops.push_pirop('pop_upto_eh', $reg);
            $ops.push_pirop('pop_eh');
            $ops.push_pirop('set', $res_reg, $handler_post.result);
            $ops.push_pirop('goto', $skip_handler_label);
        }
        if $catch {
            simple_handler($catch_label, %handlers<CATCH>);
        }
        if $control {
            simple_handler($control_label, %handlers<CONTROL>);
        }
        if @other {
            my $type_reg := $*REGALLOC.fresh_i();
            $ops.push($other_label);
            $ops.push_pirop(".get_results ($reg)");

            # Create labels for each type and emit type selection ladder.
            my %type_labels;
            $ops.push_pirop('set', $type_reg, $reg ~ '["type"]');
            for @other {
                my $lbl := PIRT::Label.new(:name($qastcomp.unique('handle_type_')));
                $ops.push_pirop('eq', $type_reg, %handler_names{$_}, $lbl);
                %type_labels{$_} := $lbl;
            }

            # Emit handler for each type.
            for @other {
                my $handler_post := $qastcomp.coerce($qastcomp.as_post(%handlers{$_}), 'P');
                $ops.push(%type_labels{$_});
                $ops.push($handler_post);
                $ops.push_pirop('finalize', $reg);
                $ops.push_pirop('pop_upto_eh', $reg);
                $ops.push_pirop('pop_eh');
                $ops.push_pirop('set', $res_reg, $handler_post.result);
                $ops.push_pirop('goto', $skip_handler_label);
            }
        }
    }

    # Postlude.
    $ops.push($skip_handler_label);
    $ops.result($res_reg);

    $ops
});
QAST::Operations.add_core_op('exception', -> $qastcomp, $op {
    my $exc_reg := try $*CUR_EXCEPTION;
    unless $exc_reg {
        nqp::die("Can only use 'exception' op in the context of an exception handler");
    }
    my $ops := PIRT::Ops.new();
    $ops.result($exc_reg);
    $ops
});
QAST::Operations.add_core_op('getpayload', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'getpayload' op expects one child");
    }
    my $exc := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push($exc);
    $ops.push_pirop('getattribute', $reg, $exc.result, '"payload"');
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('setpayload', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'setpayload' op expects two children");
    }
    my $exc := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $payload := $qastcomp.coerce($qastcomp.as_post($op[1]), 'P');
    my $ops := PIRT::Ops.new();
    $ops.push($exc);
    $ops.push($payload);
    $ops.push_pirop('setattribute', $exc, '"payload"', $payload);
    $ops.result($payload.result);
    $ops
});
QAST::Operations.add_core_op('getmessage', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'getmessage' op expects one child");
    }
    my $exc := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $pmc := $*REGALLOC.fresh_p();
    my $reg := $*REGALLOC.fresh_s();
    my $ops := PIRT::Ops.new();
    $ops.push($exc);
    $ops.push_pirop('getattribute', $pmc, $exc.result, '"message"');
    $ops.push_pirop('set', $reg, $pmc);
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('setmessage', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'setmessage' op expects two children");
    }
    my $exc := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $message := $qastcomp.coerce($qastcomp.as_post($op[1]), 'S');
    my $pmc := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push($exc);
    $ops.push($message);
    $ops.push_pirop('box', $pmc, $message);
    $ops.push_pirop('setattribute', $exc, '"message"', $pmc);
    $ops.result($message.result);
    $ops
});
QAST::Operations.add_core_op('getextype', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'getextype' op expects one child");
    }
    my $exc := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $pmc := $*REGALLOC.fresh_p();
    my $reg := $*REGALLOC.fresh_i();
    my $ops := PIRT::Ops.new();
    $ops.push($exc);
    $ops.push_pirop('getattribute', $pmc, $exc.result, '"type"');
    $ops.push_pirop('set', $reg, $pmc);
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_op('setextype', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'setextype' op expects two children");
    }
    my $exc := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    my $type := $qastcomp.coerce($qastcomp.as_post($op[1]), 'I');
    my $pmc := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push($exc);
    $ops.push($type);
    $ops.push_pirop('box', $pmc, $type);
    $ops.push_pirop('setattribute', $exc, '"type"', $pmc);
    $ops.result($type.result);
    $ops
});
QAST::Operations.add_core_op('backtracestrings', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'backtracestrings' op expects one child");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('backtrace_strings'),
        $op[0]
    ))
});
QAST::Operations.add_core_op('backtrace', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'backtrace' op expects one child");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('backtrace'),
        $op[0]
    ))
});
QAST::Operations.add_core_op('newexception', -> $qastcomp, $op {
    if +$op.list != 0 {
        nqp::die("The 'newexception' op expects no children");
    }
    my $reg := $*REGALLOC.fresh_p();
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('new', $reg, '["Exception"]');
    $ops.result($reg);
    $ops
});
QAST::Operations.add_core_pirop_mapping('die_s', 'die', '0s');
QAST::Operations.add_core_pirop_mapping('die', 'die', '0P');
QAST::Operations.add_core_pirop_mapping('throw', 'throw', '0P');
QAST::Operations.add_core_pirop_mapping('rethrow', 'rethrow', '0P');
QAST::Operations.add_core_op('resume', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'resume' op expects 1 child");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('call'),
        QAST::Op.new(
            :op('atkey'),
            $op[0],
            QAST::SVal.new( :value('resume') )
        )))
});

# Control exception throwing.
my %control_map := nqp::hash(
    'next', '.CONTROL_LOOP_NEXT',
    'last', '.CONTROL_LOOP_LAST',
    'redo', '.CONTROL_LOOP_REDO'
);
QAST::Operations.add_core_op('control', -> $qastcomp, $op {
    my $name := $op.name;
    if nqp::existskey(%control_map, $name) {
        my $ops := PIRT::Ops.new(:result('0'));
        $ops.push_pirop('die', '0', %control_map{$name});
        $ops
    }
    else {
        nqp::die("Unknown control exception type '$name'");
    }
});

# NQP box/unbox.
for <i n s> {
    QAST::Operations.add_hll_box('nqp', $_, -> $qastcomp, $post {
        my $reg := $*REGALLOC.fresh_p();
        my $ops := PIRT::Ops.new();
        $ops.push($post);
        $ops.push_pirop('box', $reg, $post);
        $ops.result($reg);
        $ops
    });
    QAST::Operations.add_hll_unbox('nqp', $_, -> $qastcomp, $post {
        my $reg := $*REGALLOC."fresh_$_"();
        my $ops := PIRT::Ops.new();
        $ops.push($post);
        $ops.push_pirop('set', $reg, $post);
        $ops.result($reg);
        $ops
    });
}

# Default way to do positional and associative lookups.
QAST::Operations.add_core_pirop_mapping('positional_get', 'set', 'PQi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('positional_bind', 'set', '1QiP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('associative_get', 'set', 'PQs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('associative_bind', 'set', '1QsP', :inlinable(1));

# I/O opcodes
QAST::Operations.add_core_pirop_mapping('print', 'print', '0s', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('say', 'say', '0s', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('stat', 'stat', 'Isi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('open', 'open', 'Pss', :inlinable(1));

QAST::Operations.add_core_op('filereadable', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'filereadable' op expects one child");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('can_read'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],) );
});
QAST::Operations.add_core_op('filewritable', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'filewritable' op expects one child");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('can_write'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],) );
});
QAST::Operations.add_core_op('fileexecutable', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'fileexecutable' op expects one child");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('can_execute'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],) );
});
QAST::Operations.add_core_op('fileislink', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'fileislink' op expects one child");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('is_link'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('File') ) ),
        $op[0],) );
});

QAST::Operations.add_core_op('getstdin', -> $qastcomp, $op {
    if +$op.list != 0 {
        nqp::die("The 'getstdin' op expects no operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('stdin_handle'),
        QAST::VM.new( :pirop('getinterp__P') )
    ))
});
QAST::Operations.add_core_op('getstdout', -> $qastcomp, $op {
    if +$op.list != 0 {
        nqp::die("The 'getstdout' op expects no operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('stdout_handle'),
        QAST::VM.new( :pirop('getinterp__P') )
    ))
});
QAST::Operations.add_core_op('getstderr', -> $qastcomp, $op {
    if +$op.list != 0 {
        nqp::die("The 'getstderr' op expects no operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('stderr_handle'),
        QAST::VM.new( :pirop('getinterp__P') )
    ))
});
QAST::Operations.add_core_op('setencoding', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'setencoding' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('encoding'),
        $op[0], $op[1]
    ))
});
QAST::Operations.add_core_op('tellfh', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'tellfh' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('tell'),
        $op[0]
    ))
});
QAST::Operations.add_core_op('printfh', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'printfh' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('print'),
        $op[0], $op[1]
    ))
});
QAST::Operations.add_core_op('sayfh', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'sayfh' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('say'),
        $op[0], $op[1]
    ))
});
QAST::Operations.add_core_op('flushfh', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'flushfh' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('flush'),
        $op[0]
    ))
});
QAST::Operations.add_core_op('readlinefh', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'readlinefh' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('readline'),
        $op[0]
    ))
});
QAST::Operations.add_core_op('readlineintfh', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'readlineintfh' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('readline_interactive'),
        $op[0], $op[1]
    ))
});
QAST::Operations.add_core_op('readallfh', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'readallfh' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('readall'),
        $op[0]
    ))
});
QAST::Operations.add_core_op('getcfh', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'getcfh' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('read'),
        $op[0], QAST::IVal.new( :value(1) )
    ))
});
QAST::Operations.add_core_op('eoffh', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'eoffh' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new( :op('isfalse'), $op[0] ))
});
QAST::Operations.add_core_op('closefh', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'closefh' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('close'),
        $op[0]
    ))
});

QAST::Operations.add_core_op('chmod', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'chmod' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('chmod'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],
        $op[1]) );
});
QAST::Operations.add_core_pirop_mapping('unlink', 'nqp_delete_f', 'Is');
QAST::Operations.add_core_op('rmdir', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'rmdir' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('rmdir'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0] ) );
});
QAST::Operations.add_core_op('cwd', -> $qastcomp, $op {
    if +$op.list != 0 {
        nqp::die("The 'cwd' op expects no operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('cwd'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ) ) );
});
QAST::Operations.add_core_op('chdir', -> $qastcomp, $op {
    if +$op.list != 1 {
        nqp::die("The 'chdir' op expects one operand");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('chdir'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0] ) );
});
QAST::Operations.add_core_op('mkdir', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'mkdir' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('mkdir'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],
        $op[1]) );
});
QAST::Operations.add_core_op('rename', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'rename' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('rename'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],
        $op[1]) );
});
QAST::Operations.add_core_op('copy', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'copy' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('copy'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('File') ) ),
        $op[0],
        $op[1]) );
});
QAST::Operations.add_core_op('symlink', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'symlink' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('symlink'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],
        $op[1]) );
});
QAST::Operations.add_core_op('link', -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("The 'link' op expects two operands");
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'),
        :name('link'),
        QAST::VM.new( :pirop('new__Ps'),
                      QAST::SVal.new( :value('OS') ) ),
        $op[0],
        $op[1]) );
});

# terms
QAST::Operations.add_core_pirop_mapping('time_i', 'time', 'I', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('time_n', 'time', 'N', :inlinable(1));

# arithmetic opcodes
QAST::Operations.add_core_pirop_mapping('add_i', 'add', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('add_I', 'nqp_bigint_add', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('add_n', 'add', 'Nnn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sub_i', 'sub', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sub_I', 'nqp_bigint_sub', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sub_n', 'sub', 'Nnn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('mul_i', 'mul', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('mul_I', 'nqp_bigint_mul', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('mul_n', 'mul', 'Nnn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('div_i', 'div', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('div_I', 'nqp_bigint_div', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('div_In', 'nqp_bigint_div_num', 'NPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('div_n', 'div', 'Nnn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('mod_i', 'mod', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('mod_I', 'nqp_bigint_mod', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('expmod_I', 'nqp_bigint_exp_mod', 'PPPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isprime_I', 'nqp_bigint_is_prime', 'IPi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('srand', 'srand', '0i', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('rand_n', 'rand', 'Nn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('rand_I', 'nqp_bigint_rand', 'PPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('mod_n', 'mod', 'Nnn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('pow_n', 'pow', 'Nnn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('pow_I', 'nqp_bigint_pow', 'PPPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('neg_i', 'neg', 'Ii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('neg_I', 'nqp_bigint_neg', 'PPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('neg_n', 'neg', 'Nn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('abs_i', 'abs', 'Ii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('abs_I', 'nqp_bigint_abs', 'PPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('abs_n', 'abs', 'Nn', :inlinable(1));

QAST::Operations.add_core_pirop_mapping('gcd_i', 'gcd', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('gcd_I', 'nqp_bigint_gcd', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('lcm_i', 'lcm', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('lcm_I', 'nqp_bigint_lcm', 'PPPP', :inlinable(1));

QAST::Operations.add_core_pirop_mapping('ceil_n', 'ceil', 'Nn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('floor_n', 'floor', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('ln_n', 'ln', 'Nn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sqrt_n', 'sqrt', 'Nn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('radix', 'nqp_radix', 'Pisii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('radix_I', 'nqp_bigint_radix', 'PisiiP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('log_n', 'ln', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('exp_n', 'exp', 'Nn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isnanorinf', 'is_inf_or_nan', 'In', :inlinable(1));
QAST::Operations.add_core_op('inf', :inlinable(1), -> $qastcomp, $op {
    $qastcomp.as_post(QAST::VM.new(
        :pirop('set Ns'),
        QAST::SVal.new( :value('Inf') )
    ))
});
QAST::Operations.add_core_op('neginf', :inlinable(1), -> $qastcomp, $op {
    $qastcomp.as_post(QAST::VM.new(
        :pirop('set Ns'),
        QAST::SVal.new( :value('-Inf') )
    ))
});
QAST::Operations.add_core_op('nan', :inlinable(1), -> $qastcomp, $op {
    $qastcomp.as_post(QAST::VM.new(
        :pirop('set Ns'),
        QAST::SVal.new( :value('NaN') )
    ))
});

# trig opcodes
QAST::Operations.add_core_pirop_mapping('sin_n', 'sin', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('asin_n', 'asin', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('cos_n', 'cos', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('acos_n', 'acos', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('tan_n', 'tan', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atan_n', 'atan', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atan2_n', 'atan', 'NNN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sec_n', 'sec', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('asec_n', 'asec', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sin_n', 'sin', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('asin_n', 'asin', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sinh_n', 'sinh', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('cosh_n', 'cosh', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('tanh_n', 'tanh', 'NN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sech_n', 'sech', 'NN', :inlinable(1));

# bitwise ops
QAST::Operations.add_core_pirop_mapping('bitor_i', 'bor', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitor_I', 'nqp_bigint_bor', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitxor_i', 'bxor', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitxor_I', 'nqp_bigint_bxor', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitand_i', 'band', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitand_I', 'nqp_bigint_band', 'PPPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitneg_i', 'bnot', 'Ii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitneg_I', 'nqp_bigint_bnot', 'PPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitshiftl_i', 'shl', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitshiftl_I', 'nqp_bigint_shl', 'PPIP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitshiftr_i', 'shr', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitshiftr_I', 'nqp_bigint_shr', 'PPIP', :inlinable(1));

# string bitwise ops
QAST::Operations.add_core_pirop_mapping('bitor_s', 'bors', 'Sss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitxor_s', 'bxors', 'Sss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bitand_s', 'bands', 'Sss', :inlinable(1));

# string opcodes
QAST::Operations.add_core_pirop_mapping('chars', 'length', 'Is', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('concat', 'concat', 'Sss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('join', 'join', 'SsP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('split', 'split', 'Pss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('chr', 'chr', 'Si', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('lc', 'downcase', 'Ss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('uc', 'upcase', 'Ss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('x', 'repeat', 'Ssi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('iscclass', 'is_cclass', 'Iisi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('findcclass', 'find_cclass', 'Iisii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('findnotcclass', 'find_not_cclass', 'Iisii', :inlinable(1));
QAST::Operations.add_core_op('sprintf', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(
        QAST::Op.new(
            :op('call'),
            :returns(str),
            QAST::Op.new(
                :op('gethllsym'),
                QAST::SVal.new( :value('nqp') ),
                QAST::SVal.new( :value('sprintf') )
            ),
            |@operands )
    );
});
QAST::Operations.add_core_op('sprintfdirectives', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(
        QAST::Op.new(
            :op('call'),
            :returns(str),
            QAST::Op.new(
                :op('gethllsym'),
                QAST::SVal.new( :value('nqp') ),
                QAST::SVal.new( :value('sprintfdirectives') )
            ),
            |@operands )
    );
});
QAST::Operations.add_core_op('sprintfaddargumenthandler', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(
        QAST::Op.new(
            :op('call'),
            :returns(str),
            QAST::Op.new(
                :op('gethllsym'),
                QAST::SVal.new( :value('nqp') ),
                QAST::SVal.new( :value('sprintfaddargumenthandler') )
            ),
            |@operands )
    );
});
QAST::Operations.add_core_pirop_mapping('escape', 'escape', 'SS', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('replace', 'replace', 'Ssiis', :inlinable(1));

QAST::Operations.add_core_op('flip', :inlinable(1), -> $qastcomp, $op {
    if +@($op) != 1 {
        nqp::die('flip requires one operand');
    }
    $qastcomp.as_post(
        QAST::VM.new( :pirop('set__SP'),
                      QAST::Op.new( :op('callmethod'),
                                    :name('reverse'),
                                    QAST::VM.new( :pirop('box__PS'), $op[0] ) ) )
                    );
});


# substr can take 2 or 3 args, so needs special handling.
QAST::Operations.add_core_pirop_mapping('substr2', 'substr', 'Ssi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('substr3', 'substr', 'Ssii', :inlinable(1));
QAST::Operations.add_core_op('substr', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 2
        ?? QAST::Op.new( :op('substr2'), |@operands )
        !! QAST::Op.new( :op('substr3'), |@operands ));
});

sub str_or_want($op) {
    nqp::istype($op, QAST::SVal) || nqp::istype($op, QAST::Want) && +@($op)[1] eq 'Ss';
}

sub val_from_str_or_want($op) {
    nqp::istype($op, QAST::SVal)
        ?? $op.value
        !! $op[2].value
}


QAST::Operations.add_core_op('eqat', :inlinable(1), -> $qastcomp, $op {
    my $needle := $op.list[1];
    my $result;
    if str_or_want($needle) {
        my $needleval := val_from_str_or_want($needle);
        if nqp::chars($needleval) == 1 {
            $result := $qastcomp.as_post(
                QAST::Op.new( :op('iseq_i'),
                    QAST::Op.new( :op('ordat'),
                        $op.list[0],
                        $op.list[2]),
                    QAST::IVal.new( :value(nqp::ord($needleval)) )
                    )
                );
        }
    }
    if $result =:= NQPMu {
        $qastcomp.as_post(
            QAST::VM.new( :pirop('nqp_string_equal_at__Issi'),
                $op.list[0],
                $op.list[1],
                $op.list[2]
            )
        );
    } else {
        $result;
    }
});

# ord can be on a the first char in a string or at a particular char.
QAST::Operations.add_core_pirop_mapping('ordfirst', 'ord', 'Is', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('ordat', 'ord', 'Isi', :inlinable(1));
QAST::Operations.add_core_op('ord', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 1
        ?? QAST::Op.new( :op('ordfirst'), |@operands )
        !! QAST::Op.new( :op('ordat'), |@operands ));
});

# index may or may not take a starting position
QAST::Operations.add_core_pirop_mapping('indexfrom', 'index', 'Issi', :inlinable(1));
QAST::Operations.add_core_op('index', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 2
        ?? QAST::Op.new( :op('indexfrom'), |@operands, QAST::IVal.new( :value(0) ) )
        !! QAST::Op.new( :op('indexfrom'), |@operands ));
});
QAST::Operations.add_core_pirop_mapping('rindexfrom', 'rindex', 'Issi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('rindexfromend', 'rindex', 'Iss', :inlinable(1));
QAST::Operations.add_core_op('rindex', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 2
        ?? QAST::Op.new( :op('rindexfromend'), |@operands )
        !! QAST::Op.new( :op('rindexfrom'), |@operands ));
});

QAST::Operations.add_core_op('codepointfromname', :inlinable(1), -> $qastcomp, $op {
    my @operands := $op.list;
    nqp::die("codepointfromname expects a single child") unless @operands == 1;
    my $i_reg := $*REGALLOC.fresh_i();
    my $s_reg := $*REGALLOC.fresh_s();
    my $ops := PIRT::Ops.new();
    my $name := $qastcomp.coerce($qastcomp.as_post($op[0]), 'S');
    $ops.push($name);
    $ops.push_pirop('find_encoding', $i_reg, "'utf8'");
    $ops.push_pirop('trans_encoding', $s_reg, $name, $i_reg);
    $ops.push_pirop('find_codepoint', $i_reg, $s_reg);
    $ops.result($i_reg);
    $ops
});

QAST::Operations.add_core_pirop_mapping('encode', 'nqp_encode', 'PssP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('decode', 'nqp_decode', 'SPs', :inlinable(1));

# relational opcodes
QAST::Operations.add_core_pirop_mapping('cmp_i', 'cmp', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('iseq_i', 'iseq', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isne_i', 'isne', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('islt_i', 'islt', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isle_i', 'isle', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isgt_i', 'isgt', 'Iii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isge_i', 'isge', 'Iii', :inlinable(1));

QAST::Operations.add_core_pirop_mapping('bool_I', 'nqp_bigint_bool', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('cmp_I', 'nqp_bigint_cmp', 'IPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('iseq_I', 'nqp_bigint_eq', 'IPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isne_I', 'nqp_bigint_ne', 'IPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('islt_I', 'nqp_bigint_lt', 'IPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isle_I', 'nqp_bigint_le', 'IPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isgt_I', 'nqp_bigint_gt', 'IPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isge_I', 'nqp_bigint_ge', 'IPP', :inlinable(1));

QAST::Operations.add_core_pirop_mapping('cmp_n', 'cmp', 'Inn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('iseq_n', 'iseq', 'Inn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isne_n', 'isne', 'Inn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('islt_n', 'islt', 'Inn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isle_n', 'isle', 'Inn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isgt_n', 'isgt', 'Inn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isge_n', 'isge', 'Inn', :inlinable(1));

QAST::Operations.add_core_pirop_mapping('cmp_s', 'cmp', 'Iss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('iseq_s', 'iseq', 'Iss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isne_s', 'isne', 'Iss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('islt_s', 'islt', 'Iss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isle_s', 'isle', 'Iss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isgt_s', 'isgt', 'Iss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isge_s', 'isge', 'Iss', :inlinable(1));

# bigint ops
QAST::Operations.add_core_pirop_mapping('fromstr_I', 'nqp_bigint_from_str', 'PsP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('tostr_I', 'nqp_bigint_to_str', 'SP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('base_I', 'nqp_bigint_to_str_base', 'SPI', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isbig_I', 'nqp_bigint_is_big', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('fromnum_I', 'nqp_bigint_from_num', 'PNP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('tonum_I', 'nqp_bigint_to_num', 'NP', :inlinable(1));

# native call ops
QAST::Operations.add_core_pirop_mapping('initnativecall', 'nqp_native_call_setup', 'v');
QAST::Operations.add_core_pirop_mapping('buildnativecall', 'nqp_native_call_build', 'vPsssPP');
QAST::Operations.add_core_pirop_mapping('nativecall', 'nqp_native_call', 'PPPP');
QAST::Operations.add_core_pirop_mapping('nativecallrefresh', 'nqp_native_call_wb', 'vP');
QAST::Operations.add_core_pirop_mapping('x_posixerrno', 'nqp_posixerrno', 'I');

# boolean opcodes
QAST::Operations.add_core_pirop_mapping('not_i', 'not', 'Ii', :inlinable(1));

# aggregate opcodes, mapping to the Parrot v-table functions
QAST::Operations.add_core_pirop_mapping('atkey', 'set', 'PQs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atkey_i', 'set', 'IQs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atkey_n', 'set', 'NQs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atkey_s', 'set', 'SQs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atpos', 'set', 'PQi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atpos_i', 'set', 'IQi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atpos_n', 'set', 'NQi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('atpos_s', 'set', 'SQi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindkey', 'set', '1QsP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindkey_i', 'set', '1QsI', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindkey_n', 'set', '1QsN', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindkey_s', 'set', '1QsS', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindpos', 'set', '1QiP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindpos_i', 'set', '1Qii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindpos_n', 'set', '1Qin', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindpos_s', 'set', '1Qis', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('deletekey', 'delete', '0Qs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('existskey', 'exists', 'IQs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('existspos', 'exists', 'IQi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('elems', 'elements', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('setelems', 'assign', '0Pi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('push', 'push', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('push_s', 'push', '0Ps', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('push_i', 'push', '0Pi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('push_n', 'push', '0Pn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('pop', 'pop', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('pop_s', 'pop', 'SP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('pop_i', 'pop', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('pop_n', 'pop', 'NP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('shift', 'shift', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('shift_s', 'shift', 'SP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('shift_i', 'shift', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('shift_n', 'shift', 'NP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('unshift', 'unshift', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('unshift_s', 'unshift', '0Ps', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('unshift_i', 'unshift', '0Pi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('unshift_n', 'unshift', '0Pn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('splice', 'splice', '0PPii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isint', 'nqp_isint', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isnum', 'nqp_isnum', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isstr', 'nqp_isstr', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('islist', 'nqp_islist', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('ishash', 'nqp_ishash', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isinvokable', 'is_invokable', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('iterator', 'iter', 'PP', :inlinable(1));
QAST::Operations.add_core_op('iterkey_s', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new( :op('callmethod'), :name('key'), $op[0] ))
});
QAST::Operations.add_core_op('iterval', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new( :op('callmethod'), :name('value'), $op[0] ))
});

# repr-level aggregate operations
QAST::Operations.add_core_pirop_mapping('r_atpos', 'repr_at_pos_obj', 'PPi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('r_atpos_i', 'repr_at_pos_int', 'IPi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('r_atpos_n', 'repr_at_pos_num', 'NPi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('r_bindpos', 'repr_bind_pos_obj', '2PiP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('r_bindpos_i', 'repr_bind_pos_int', '2Pii', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('r_bindpos_n', 'repr_bind_pos_num', '2Pin', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('r_elems', 'repr_elems', 'IP', :inlinable(1));

# object opcodes
QAST::Operations.add_core_pirop_mapping('bindattr', 'setattribute', '3PPsP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindattr_i_nh', 'repr_bind_attr_int', '3PPsi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindattr_i_h', 'repr_bind_attr_int', '3PPsii', :inlinable(1));
QAST::Operations.add_core_op('bindattr_i', :inlinable(1), -> $qastcomp, $op {
    if +@($op) != 4 {
        nqp::die('bindattr_i requires four operands');
    }
    my $hint := -1;
    if nqp::istype($op[1], QAST::WVal) && str_or_want($op[2]) {
        $hint := pir::repr_hint_for__IPs($op[1].value, val_from_str_or_want($op[2]));
    }
    if $hint != -1 {
        $qastcomp.as_post(QAST::Op.new(
            :op('bindattr_i_h'),
            $op[0],
            $op[1],
            $op[2],
            QAST::IVal.new(:value($hint)),
            $op[3]
        ));
    } else {
        $qastcomp.as_post(QAST::Op.new(
            :op('bindattr_i_nh'),
            $op[0],
            $op[1],
            $op[2],
            $op[3]
        ));
    }
});
QAST::Operations.add_core_pirop_mapping('bindattr_n', 'repr_bind_attr_num', '3PPsn', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindattr_s', 'repr_bind_attr_str', '3PPss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindattr_s_nh', 'repr_bind_attr_str', '3PPss', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('bindattr_s_h', 'repr_bind_attr_str', '3PPsis', :inlinable(1));
QAST::Operations.add_core_op('bindattr_s', :inlinable(1), -> $qastcomp, $op {
    if +@($op) != 4 {
        nqp::die('bindattr_s requires four operands');
    }
    my $hint := -1;
    if nqp::istype($op[1], QAST::WVal) && str_or_want($op[2]) {
        $hint := pir::repr_hint_for__IPs($op[1].value, val_from_str_or_want($op[2]));
    }
    if $hint != -1 {
        $qastcomp.as_post(QAST::Op.new(
            :op('bindattr_s_h'),
            $op[0],
            $op[1],
            $op[2],
            QAST::IVal.new(:value($hint)),
            $op[3]
        ));
    } else {
        $qastcomp.as_post(QAST::Op.new(
            :op('bindattr_s_nh'),
            $op[0],
            $op[1],
            $op[2],
            $op[3]
        ));
    }
});
QAST::Operations.add_core_pirop_mapping('getattr', 'getattribute', 'PPPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('getattr_i_nh', 'repr_get_attr_int', 'IPPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('getattr_i_h', 'repr_get_attr_int', 'IPPsi', :inlinable(1));
QAST::Operations.add_core_op('getattr_i', :inlinable(1), -> $qastcomp, $op {
    if +@($op) != 3 {
        nqp::die('getattr_i requires three operands');
    }
    my $hint := -1;
    if nqp::istype($op[1], QAST::WVal) && str_or_want($op[2]) {
        $hint := pir::repr_hint_for__IPs($op[1].value, val_from_str_or_want($op[2]));
    }
    if $hint != -1 {
        $qastcomp.as_post(QAST::Op.new(
            :op('getattr_i_h'),
            $op[0],
            $op[1],
            $op[2],
            QAST::IVal.new(:value($hint))
        ));
    } else {
        $qastcomp.as_post(QAST::Op.new(
            :op('getattr_i_nh'),
            $op[0],
            $op[1],
            $op[2]
        ));
    }
});
QAST::Operations.add_core_pirop_mapping('getattr_n', 'repr_get_attr_num', 'NPPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('getattr_s_nh', 'repr_get_attr_str', 'SPPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('getattr_s_h', 'repr_get_attr_str', 'SPPsi', :inlinable(1));
QAST::Operations.add_core_op('getattr_s', :inlinable(1), -> $qastcomp, $op {
    if +@($op) != 3 {
        nqp::die('getattr_s requires three operands');
    }
    my $hint := -1;
    if nqp::istype($op[1], QAST::WVal) && str_or_want($op[2]) {
        $hint := pir::repr_hint_for__IPs($op[1].value, val_from_str_or_want($op[2]));
    }
    if $hint != -1 {
        $qastcomp.as_post(QAST::Op.new(
            :op('getattr_s_h'),
            $op[0],
            $op[1],
            $op[2],
            QAST::IVal.new(:value($hint))
        ));
    } else {
        $qastcomp.as_post(QAST::Op.new(
            :op('getattr_s_nh'),
            $op[0],
            $op[1],
            $op[2]
        ));
    }
});
QAST::Operations.add_core_pirop_mapping('attrinited', 'repr_is_attr_initialized', 'IPPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('create', 'repr_instance_of', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('clone', 'repr_clone', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isconcrete', 'repr_defined', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isnull', 'isnull', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isnull_s', 'isnull', 'IS', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('istrue', 'istrue', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('isfalse', 'isfalse', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('istype', 'type_check', 'IPP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('null', 'null', 'P', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('null_s', 'null', 'S', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('unbox_i', 'repr_unbox_int', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('unbox_n', 'repr_unbox_num', 'NP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('unbox_s', 'repr_unbox_str', 'SP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('box_i', 'repr_box_int', 'PiP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('box_n', 'repr_box_num', 'PnP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('box_s', 'repr_box_str', 'PsP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('what', 'get_what', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('how', 'get_how', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('who', 'get_who', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('where', 'get_id', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('findmethod', 'find_method', 'PPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('defined', 'defined', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('can', 'can', 'IPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('reprname', 'repr_name', 'SP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('newtype', 'repr_type_object_for', 'PPs', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('composetype', 'repr_compose', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('setwho', 'set_who', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('rebless', 'repr_change_type', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('knowhow', 'get_knowhow', 'P', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('knowhowattr', 'get_knowhow_attribute', 'P', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('setboolspec', 'set_boolification_spec', '0PiP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('setmethcache', 'publish_method_cache', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('setmethcacheauth', 'set_method_cache_authoritativeness', '0Pi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('settypecache', 'publish_type_check_cache', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('settypecheckmode', 'stable_set_type_check_mode', '0Pi', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('objprimspec', 'repr_get_primitive_type_spec', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('setinvokespec', 'set_invocation_spec', '0PPsP', :inlinable(1));

# container related
QAST::Operations.add_core_pirop_mapping('setcontspec', 'set_container_spec', '0PsP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('iscont', 'is_container', 'IP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('decont', 'nqp_decontainerize', 'PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('assign', 'nqp_assign', '0PP', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('assignunchecked', 'nqp_assignunchecked', '0PP', :inlinable(1));
QAST::Operations.add_core_op('eqaddr', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new(
        :op('iseq_i'),
        QAST::Op.new( :op('where'), $op[0] ),
        QAST::Op.new( :op('where'), $op[1] )
    ))
});

# lexical related opcodes
QAST::Operations.add_core_pirop_mapping('getlex', 'find_lex', 'Ps');
QAST::Operations.add_core_pirop_mapping('getlex_i', 'find_lex', 'Is');
QAST::Operations.add_core_pirop_mapping('getlex_n', 'find_lex', 'Ns');
QAST::Operations.add_core_pirop_mapping('getlex_s', 'find_lex', 'Ss');
QAST::Operations.add_core_pirop_mapping('bindlex', 'store_lex', '1sP');
QAST::Operations.add_core_pirop_mapping('bindlex_i', 'store_lex', '1si');
QAST::Operations.add_core_pirop_mapping('bindlex_n', 'store_lex', '1sn');
QAST::Operations.add_core_pirop_mapping('bindlex_s', 'store_lex', '1ss');
QAST::Operations.add_core_pirop_mapping('getlexdyn', 'find_dynamic_lex', 'Ps');
QAST::Operations.add_core_pirop_mapping('bindlexdyn', 'store_dynamic_lex', '1sP');
QAST::Operations.add_core_pirop_mapping('getlexcaller', 'find_caller_lex', 'Ps');
QAST::Operations.add_core_pirop_mapping('getlexouter', 'nqp_getlexouter', 'Ps');
QAST::Operations.add_core_pirop_mapping('getlexrel', 'nqp_getlexrel', 'PPs');
QAST::Operations.add_core_pirop_mapping('getlexreldyn', 'nqp_getlexreldyn', 'PPs');
QAST::Operations.add_core_pirop_mapping('getlexrelcaller', 'nqp_getlexrelcaller', 'PPs');
QAST::Operations.add_core_op('locallifetime', :inlinable(1), -> $qastcomp, $op {
    if +@($op) < 1 {
        nqp::die('locallifetime requires at least one operand');
    }

    $qastcomp.as_post( $op[0] );
});

# code object related opcodes
QAST::Operations.add_core_pirop_mapping('takeclosure', 'newclosure', 'PP');
QAST::Operations.add_core_pirop_mapping('getcodeobj', 'get_sub_code_object', 'PP');
QAST::Operations.add_core_pirop_mapping('setcodeobj', 'set_sub_code_object', '1PP');
QAST::Operations.add_core_pirop_mapping('getcodename', 'set', 'SP');
QAST::Operations.add_core_pirop_mapping('setcodename', 'assign', '1Ps');
QAST::Operations.add_core_op('getcodecuid', -> $qastcomp, $op {
    if +@($op) != 1 {
        nqp::die('getcodecuid requires one operand');
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('get_subid'),
        $op[0]
    ))
});
QAST::Operations.add_core_op('forceouterctx', -> $qastcomp, $op {
    if +@($op) != 2 {
        nqp::die('forceouterctx requires two operands');
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('set_outer_ctx'),
        $op[0], $op[1]
    ))
});
QAST::Operations.add_core_pirop_mapping('freshcoderef', 'nqp_fresh_stub', 'PP');
QAST::Operations.add_core_pirop_mapping('replacecoderef', 'assign', '0PP');
QAST::Operations.add_core_op('markcodestatic', -> $qastcomp, $op {
    if +@($op) != 1 {
        nqp::die('markcodestatic requires one operand');
    }
    my $ops := PIRT::Ops.new();
    my $code := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    $ops.push($code);
    $ops.push_pirop('setprop', $code, "'STATIC_CODE_REF'", $code);
    $ops.result($code);
    $ops
});
QAST::Operations.add_core_op('markcodestub', -> $qastcomp, $op {
    if +@($op) != 1 {
        nqp::die('markcodestatic requires one operand');
    }
    my $ops := PIRT::Ops.new();
    my $code := $qastcomp.coerce($qastcomp.as_post($op[0]), 'P');
    $ops.push($code);
    $ops.push_pirop('setprop', $code, "'COMPILER_STUB'", $code);
    $ops.result($code);
    $ops
});
QAST::Operations.add_core_op('getstaticcode', -> $qastcomp, $op {
    if +@($op) != 1 {
        nqp::die('getcodecuid requires one operand');
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('get_static_code'),
        QAST::Op.new(
            :op('callmethod'), :name('get_lexinfo'),
            $op[0]
        )))
});
QAST::Operations.add_core_pirop_mapping('setdispatcher', 'nqp_setdispatcher', '0P');
QAST::Operations.add_core_pirop_mapping('takedispatcher', 'nqp_takedispatcher', '0s');

# serialization context related opcodes
QAST::Operations.add_core_pirop_mapping('sha1', 'nqp_sha1', 'Ss');
QAST::Operations.add_core_pirop_mapping('createsc', 'nqp_create_sc', 'Ps');
QAST::Operations.add_core_pirop_mapping('scsetobj', 'set', '1QiP');
QAST::Operations.add_core_pirop_mapping('scsetcode', 'nqp_add_code_ref_to_sc', '2PiP');
QAST::Operations.add_core_pirop_mapping('scgetobj', 'set', 'PQi');
QAST::Operations.add_core_pirop_mapping('scgetcode', 'nqp_get_sc_code_ref', 'Psi');
QAST::Operations.add_core_op('scgethandle', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('handle'), :returns(str),
        $op[0]
    ))
});
QAST::Operations.add_core_op('scgetdesc', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('description'), :returns(str),
        $op[0]
    ))
});
QAST::Operations.add_core_op('scgetobjidx', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('slot_index_for'), :returns(int),
        $op[0], $op[1]
    ))
});
QAST::Operations.add_core_op('scsetdesc', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('set_description'),
        $op[0], $op[1]
    ))
});
QAST::Operations.add_core_op('scobjcount', -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('elems'),
        $op[0]
    ))
});
QAST::Operations.add_core_pirop_mapping('setobjsc', 'nqp_set_sc_for_object', '0PP');
QAST::Operations.add_core_pirop_mapping('getobjsc', 'nqp_get_sc_for_object', 'PP');
QAST::Operations.add_core_pirop_mapping('serialize', 'nqp_serialize_sc', 'SPP');
QAST::Operations.add_core_pirop_mapping('deserialize', 'nqp_deserialize_sc', '0sPPPP');
QAST::Operations.add_core_pirop_mapping('wval', 'nqp_get_sc_object', 'Psi');
QAST::Operations.add_core_op('scwbdisable', -> $qastcomp, $op {
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('nqp_disable_sc_write_barrier');
    $ops.result('0');
    $ops
});
QAST::Operations.add_core_op('scwbenable', -> $qastcomp, $op {
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('nqp_enable_sc_write_barrier');
    $ops.result('0');
    $ops
});
QAST::Operations.add_core_pirop_mapping('pushcompsc', 'nqp_push_compiling_sc', '0P');
QAST::Operations.add_core_op('popcompsc', -> $qastcomp, $op {
    my $ops := PIRT::Ops.new();
    $ops.push_pirop('nqp_pop_compiling_sc');
    $ops.result('0');
    $ops
});

# hll related opcodes
QAST::Operations.add_core_pirop_mapping('getcomp', 'compreg', 'Ps');
QAST::Operations.add_core_pirop_mapping('bindcomp', 'compreg', '1sP');
QAST::Operations.add_core_pirop_mapping('getcurhllsym', 'get_hll_global', 'Ps');
QAST::Operations.add_core_pirop_mapping('bindcurhllsym', 'set_hll_global', '1sP');
QAST::Operations.add_core_pirop_mapping('loadbytecode', 'load_bytecode', '0s');
QAST::Operations.add_core_op('gethllsym', -> $qastcomp, $op {
    if +@($op) != 2 {
        nqp::die('gethllsym requires two operands');
    }
    $qastcomp.as_post(QAST::VM.new(
        :pirop('get_root_global__PPs'),
        QAST::Op.new( :op('list_s'), $op[0] ),
        $op[1]
    ))
});
QAST::Operations.add_core_op('bindhllsym', -> $qastcomp, $op {
    if +@($op) != 3 {
        nqp::die('bindhllsym requires three operands');
    }
    $qastcomp.as_post(QAST::VM.new(
        :pirop('set_root_global__2PsP'),
        QAST::Op.new( :op('list_s'), $op[0] ),
        $op[1],
        $op[2]
    ))
});
QAST::Operations.add_core_pirop_mapping('sethllconfig', 'nqp_sethllconfig', 'PsP');
QAST::Operations.add_core_pirop_mapping('settypehll', 'nqp_settypehll', '0Ps');
QAST::Operations.add_core_pirop_mapping('settypehllrole', 'nqp_settypehllrole', '0Pi');
QAST::Operations.add_core_pirop_mapping('hllize', 'nqp_hllize', 'PP');
QAST::Operations.add_core_pirop_mapping('hllizefor', 'nqp_hllizefor', 'PPs');

# regex engine related opcodes
QAST::Operations.add_core_pirop_mapping('nfafromstatelist', 'nqp_nfa_from_statelist', 'PPP');
QAST::Operations.add_core_pirop_mapping('nfatostatelist', 'nqp_nfa_to_statelist', 'PP');
QAST::Operations.add_core_pirop_mapping('nfarunproto', 'nqp_nfa_run_proto', 'PPsi');
QAST::Operations.add_core_pirop_mapping('nfarunalt', 'nqp_nfa_run_alt', '0PsiPPP');

# process related opcodes
QAST::Operations.add_core_pirop_mapping('exit', 'exit', '0i', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('sleep', 'sleep', '0n', :inlinable(1));
QAST::Operations.add_core_pirop_mapping('gethostname', 'nqp_gethostname', 'S');
QAST::Operations.add_core_pirop_mapping('spawn', 'nqp_spawn', 'IPsP');
QAST::Operations.add_core_pirop_mapping('shell', 'nqp_shell', 'IssP');
QAST::Operations.add_core_pirop_mapping('getenvhash', 'nqp_getenvhash', 'P');

QAST::Operations.add_core_op('getpid', -> $qastcomp, $op {
    if +@($op) != 0 {
        nqp::die('getpid requires no operands');
    }
    $qastcomp.as_post(QAST::Op.new(
        :op('callmethod'), :name('getpid'), :returns(int),
        QAST::VM.new( :pirop('getinterp__P') )
    ))
});
