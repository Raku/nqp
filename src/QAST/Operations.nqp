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
        pir::die("No registered operation handler for '$name'");
    }
    
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
    method add_core_op($op, $handler, :$pure) {
        %core_ops{$op} := $handler;
    }
    
    # Adds a HLL op handler.
    method add_hll_op($hll, $op, $handler, :$pure) {
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := $handler;
    }
    
    # Adds a core op that maps to a PIR op.
    method add_core_pirop_mapping($op, $pirop, $sig, :$pure) {
        my $pirop_mapper := pirop_mapper($pirop, $sig);
        %core_ops{$op} := -> $qastcomp, $op {
            $pirop_mapper($qastcomp, $op.op, $op.list)
        };
    }
    
    # Adds a HLL op that maps to a PIR op.
    method add_hll_pirop_mapping($hll, $op, $pirop, $sig, :$pure) {
        my $pirop_mapper := pirop_mapper($pirop, $sig);
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := -> $qastcomp, $op {
            $pirop_mapper($qastcomp, $op.op, $op.list)
        };
    }

    # Adds a HLL box handler.
    method add_hll_box($hll, $type, $handler) {
        unless $type eq 'i' || $type eq 'n' || $type eq 's' {
            nqp::die("Unknown box type '$type'");
        }
        %hll_box{$hll} := {} unless %hll_box{$hll};
        %hll_box{$hll}{$type} := $handler;
    }

    # Adds a HLL unbox handler.
    method add_hll_unbox($hll, $type, $handler) {
        unless $type eq 'i' || $type eq 'n' || $type eq 's' {
            nqp::die("Unknown unbox type '$type'");
        }
        %hll_unbox{$hll} := {} unless %hll_unbox{$hll};
        %hll_unbox{$hll}{$type} := $handler;
    }
    
    # Generates a box. Takes a POST tree.
    method box($qastcomp, $hll, $type, $post) {
        %hll_box{$hll}{$type}($qastcomp, $post)
    }
    
    # Generates an unbox. Takes a POST tree.
    method unbox($qastcomp, $hll, $type, $post) {
        %hll_unbox{$hll}{$type}($qastcomp, $post)
    }
    
    # Returns a mapper closure for turning an operation into a PIR op.
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
                pir::die("Operation '$op_name' requires " ~
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
                $ops.result(@args[+$ret_type]);
            }
            
            # Construct and return the op.
            $ops.push_pirop($pirop, |@args);
            $ops
        }
    }
}

# Data structures
QAST::Operations.add_core_op('list', :pure(1), -> $qastcomp, $op {
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

QAST::Operations.add_core_op('qlist', :pure(1), -> $qastcomp, $op {
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

QAST::Operations.add_core_op('list_i', :pure(1), -> $qastcomp, $op {
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

QAST::Operations.add_core_op('list_s', :pure(1), -> $qastcomp, $op {
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

QAST::Operations.add_core_op('list_b', :pure(1), -> $qastcomp, $op {
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

QAST::Operations.add_core_op('hash', :pure(1), -> $qastcomp, $op {
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
QAST::Operations.add_core_op('chain', :pure(1), -> $qastcomp, $op {
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
QAST::Operations.add_core_op('stmts', :pure(1), -> $qastcomp, $op {
    $qastcomp.as_post(QAST::Stmts.new( |@($op) ))
});

# Conditionals.
for <if unless> -> $op_name {
    QAST::Operations.add_core_op($op_name, :pure(1), -> $qastcomp, $op {
        # Check operand count.
        my $operands := +$op.list;
        pir::die("Operation '$op_name' needs either 2 or 3 operands")
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
        my $res_type := $operands == 3 ??
            (@op_types[1] eq @op_types[2] ?? nqp::lc(@op_types[1]) !! 'p') !!
            (@op_types[0] eq @op_types[1] ?? nqp::lc(@op_types[0]) !! 'p');
        my $res_reg := $*REGALLOC."fresh_$res_type"();
        
        # Evaluate the condition first; store result if needed.
        my $ops := PIRT::Ops.new();
        my $cond_result;
        if $operands == 2 {
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
        my $then := $qastcomp.coerce(@comp_ops[1], $res_type);
        $ops.push($then);
        $ops.push_pirop('set', $res_reg, $then.result);
        
        # Handle else branch if needed.
        if $operands == 3 {
            my $else := $qastcomp.coerce(@comp_ops[2], $res_type);
            $ops.push_pirop('goto', $end_lbl.result);
            $ops.push($else_lbl);
            $ops.push($else);
            $ops.push_pirop('set', $res_reg, $else.result);
        }
        
        # Emit end label and tag ops with result.
        $ops.push($end_lbl);
        $ops.result($res_reg);
        $ops;
    });
}

# XXX make 3-arg...
QAST::Operations.add_core_op('ifnull', :pure(1), -> $qastcomp, $op {
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
        QAST::Operations.add_core_op("$repness$op_name", :pure(1), -> $qastcomp, $op {
            # Check operand count.
            my $operands := +$op.list;
            pir::die("Operation '$repness$op_name' needs 2 or 3 operands")
                if $operands != 2 && $operands != 3;

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
            my $*IMM_ARG;
            for $op.list {
                my $*HAVE_IMM_ARG := $_.arity > 0 && $_ =:= $op.list[1];
                my $comp := $qastcomp.as_post($_);
                @comp_ops.push($comp);
                @comp_types.push($qastcomp.infer_type($comp.result));
                if $*HAVE_IMM_ARG && !$*IMM_ARG {
                    nqp::die("$op_name block expects an argument, but there's no immediate block to take it");
                }
            }
            my $res_type := @comp_types[0] eq @comp_types[1] ?? nqp::lc(@comp_types[0]) !! 'p';
            my $res_reg  := $*REGALLOC."fresh_$res_type"();

            # Emit the prelude.
            my $ops := PIRT::Ops.new();
            $ops.result($res_reg);
            my $exc_reg := $*REGALLOC.fresh_p();
            $ops.push_pirop('new', $exc_reg, "'ExceptionHandler'",
                '[.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]');
            $ops.push_pirop('set_label', $exc_reg, $hand_lbl);
            $ops.push_pirop('push_eh', $exc_reg);
            
            # Test the condition and jump to the loop end if it's
            # not met.
            my $coerced := $qastcomp.coerce(@comp_ops[0], $res_type);
            if $repness {
                # It's a repeat_ variant, need to go straight into the
                # loop body unconditionally.
                $ops.push_pirop('null', $coerced.result);
                $ops.push_pirop('goto', $redo_lbl);
            }
            $ops.push($test_lbl);
            $ops.push($coerced);
            $ops.push_pirop('set', $res_reg, $coerced.result);
            $ops.push_pirop(($op_name eq 'while' ?? 'unless ' !! 'if ') ~
                @comp_ops[0].result ~ ' goto ' ~ $done_lbl.result);

            # Handle immediate blocks wanting the value as an arg.
            if $*IMM_ARG {
                $*IMM_ARG($coerced.result);
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
            $ops.push($hand_lbl);
            $ops.push_pirop('.get_results', '(' ~ $exc_reg ~ ')');
            $ops.push_pirop('pop_upto_eh', $exc_reg);
            $ops.push_pirop('getattribute', $exc_reg, $exc_reg, "'type'");
            $ops.push_pirop('eq', $exc_reg, '.CONTROL_LOOP_NEXT',
                $operands == 3 ?? $next_lbl !! $test_lbl);
            $ops.push_pirop('eq', $exc_reg, '.CONTROL_LOOP_REDO', $redo_lbl);
            $ops.push($done_lbl);
            $ops.push_pirop('pop_eh');

            $ops;
        });
    }
}

QAST::Operations.add_core_op('for', :pure(1), -> $qastcomp, $op {
    if +$op.list != 2 {
        nqp::die("Operation 'for' needs 2 operands");
    }
    unless nqp::istype($op[1], QAST::Block) {
        nqp::die("Operation 'for' expects a block as its second operand");
    }
    if $op[1].blocktype eq 'immediate' {
        $op[1].blocktype('declaration');
    }
    
    # Evaluate the thing we'll iterate over and get an iterator.
    # Also evaluate the block.
    my $res       := $*REGALLOC.fresh_p();
    my $curval    := $*REGALLOC.fresh_p();
    my $iter      := $*REGALLOC.fresh_p();
    my $ops       := PIRT::Ops.new();
    my $listpost  := $qastcomp.coerce($qastcomp.as_post($op[0]), "P");
    my $blockpost := $qastcomp.coerce($qastcomp.as_post($op[1]), "P");
    $ops.push($listpost);
    $ops.push($blockpost);
    $ops.push_pirop('set', $res, $listpost);
    $ops.push_pirop('iter', $iter, $listpost);
    
    # Loop while we still have values.
    my $lbl_loop := PIRT::Label.new(:name('for_start'));
    my $lbl_end := PIRT::Label.new(:name('for_end'));
    $ops.push($lbl_loop);
    $ops.push_pirop('unless', $iter, $lbl_end);
    
    # Fetch values.
    my @valreg;
    my $arity := $op[1].arity || 1;
    while $arity > 0 {
        my $reg := $*REGALLOC.fresh_p();
        $ops.push_pirop('shift', $reg, $iter);
        nqp::push(@valreg, $reg);
        $arity := $arity - 1;
    }
    
    # Emit call.
    $ops.push_pirop('call', $blockpost, |@valreg, :result($res));
    
    # Loop.
    $ops.push_pirop('goto', $lbl_loop);
    $ops.push($lbl_end);
    
    # Set result.
    $ops.result($res);
    $ops
});

QAST::Operations.add_core_op('defor', :pure(1), -> $qastcomp, $op {
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

QAST::Operations.add_core_op('xor', :pure(1), -> $qastcomp, $op {
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
        $ops.'push_pirop'('new', $ops, '["Undef"]');
    }
    
    $ops.push($endlabel);
    
    $ops
});

# Binding
QAST::Operations.add_core_op('bind', :pure(1), -> $qastcomp, $op {
    # Sanity checks.
    my @children := $op.list;
    if +@children != 2 {
        pir::die("A 'bind' op must have exactly two children");
    }
    unless nqp::istype(@children[0], QAST::Var) {
        pir::die("First child of a 'bind' op must be a QAST::Var");
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
        pir::die("No name for call and empty children list");
    }
    
    # Process arguments.
    my $ops := PIRT::Ops.new();
    $ops.node($op.node) if $op.node;
    my @pos_arg_results;
    my @named_arg_results;
    for @args {
        handle_arg($_, $qastcomp, $ops, @pos_arg_results, @named_arg_results);
    }
    
    # Figure out result register type and allocate a register for it.
    my $res_type := $qastcomp.type_to_register_type($op.returns);
    my $res_reg := $*REGALLOC."fresh_{nqp::lc($res_type)}"();
    
    # Generate call.
    $ops.push($callee);
    $ops.push_pirop('call', $callee.result, |@pos_arg_results, |@named_arg_results, :result($res_reg));
    
    # Result is the result of the call.
    $ops.result($res_reg);
    $ops
});
QAST::Operations.add_core_op('callmethod', :pure(1), -> $qastcomp, $op {
    # Ensure we at least have an invocant.
    my @args := nqp::clone($op.list);
    if +@args == 0 {
        pir::die('Method call node requires at least one child');
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
        pir::die("Method call must either supply a name or have a child node that evaluates to the name");
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
    
    # Figure out result register type and allocate a register for it.
    my $res_type := $qastcomp.type_to_register_type($op.returns);
    my $res_reg := $*REGALLOC."fresh_{nqp::lc($res_type)}"();
    
    # Generate method call.
    $ops.push($name);
    $ops.push_pirop('callmethod', $name.result, |@pos_arg_results, |@named_arg_results, :result($res_reg));
    
    # Result is the result of the call.
    $ops.result($res_reg);
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
    $ops.'push_pirop'('.lex', $lexname, $handler);
    
    my $cpost := $qastcomp.compile_all_the_stmts($op.list());
    $ops.push($cpost);
    $ops.result($cpost);
    
    $ops.push_pirop('goto', $label2);
    $ops.push($label1);
    $ops.push_pirop('.get_results', '(' ~ $ops.result() ~ ')');
    $ops.push($label2);

    $ops
});

# Context introspection
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
    $ops.push($procpost);
    while $num_pops {
        $ops.push_pirop('pop_eh');
        $num_pops := $num_pops - 1;
    }
    $ops.push_pirop('goto', $skip_handler_label);
    
    # Now emit the handlers.
    my $*CUR_EXCEPTION := $reg;
    sub simple_handler($label, $handler_qast) {
        my $handler_post := $qastcomp.coerce($qastcomp.as_post($handler_qast), 'P');
        $ops.push($label);
        $ops.push_pirop(".get_results ($reg)");
        $ops.push($handler_post);
        $ops.push_pirop('finalize', $reg);
        $ops.push_pirop('pop_upto_eh', $reg);
        $ops.push_pirop('pop_eh');
        $ops.push_pirop('set', $procpost.result, $handler_post.result);
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
            $ops.push_pirop('set', $procpost.result, $handler_post.result);
            $ops.push_pirop('goto', $skip_handler_label);
        }
    }
    
    # Postlude.
    $ops.push($skip_handler_label);
    $ops.result($procpost.result);
    
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
}
QAST::Operations.add_hll_unbox('nqp', 'i', -> $qastcomp, $post {
    my $reg := $*REGALLOC.fresh_i();
    my $ops := PIRT::Ops.new();
    $ops.push($post);
    $ops.push_pirop('set', $reg, $post);
    $ops.result($reg);
    $ops
});
QAST::Operations.add_hll_unbox('nqp', 'n', -> $qastcomp, $post {
    my $reg := $*REGALLOC.fresh_n();
    my $ops := PIRT::Ops.new();
    $ops.push($post);
    $ops.push_pirop('set', $reg, $post);
    $ops.result($reg);
    $ops
});
QAST::Operations.add_hll_unbox('nqp', 's', -> $qastcomp, $post {
    my $reg := $*REGALLOC.fresh_s();
    my $ops := PIRT::Ops.new();
    $ops.push($post);
    $ops.push_pirop('set', $reg, $post);
    $ops.result($reg);
    $ops
});

# I/O opcodes
QAST::Operations.add_core_pirop_mapping('print', 'print', '0s', :pure(1));
QAST::Operations.add_core_pirop_mapping('say', 'say', '0s', :pure(1));
QAST::Operations.add_core_pirop_mapping('stat', 'stat', 'Isi', :pure(1)); # (?)
QAST::Operations.add_core_pirop_mapping('open', 'open', 'Pss', :pure(1)); # (?)

# terms
QAST::Operations.add_core_pirop_mapping('time_i', 'time', 'I', :pure(1));
QAST::Operations.add_core_pirop_mapping('time_n', 'time', 'N', :pure(1));

# arithmetic opcodes
QAST::Operations.add_core_pirop_mapping('add_i', 'add', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('add_I', 'nqp_bigint_add', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('add_n', 'add', 'Nnn', :pure(1));
QAST::Operations.add_core_pirop_mapping('sub_i', 'sub', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('sub_I', 'nqp_bigint_sub', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('sub_n', 'sub', 'Nnn', :pure(1));
QAST::Operations.add_core_pirop_mapping('mul_i', 'mul', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('mul_I', 'nqp_bigint_mul', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('mul_n', 'mul', 'Nnn', :pure(1));
QAST::Operations.add_core_pirop_mapping('div_i', 'div', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('div_I', 'nqp_bigint_div', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('div_In', 'nqp_bigint_div_num', 'NPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('div_n', 'div', 'Nnn', :pure(1));
QAST::Operations.add_core_pirop_mapping('mod_i', 'mod', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('mod_I', 'nqp_bigint_mod', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('expmod_I', 'nqp_bigint_exp_mod', 'PPPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('mod_n', 'mod', 'Nnn', :pure(1));
QAST::Operations.add_core_pirop_mapping('pow_n', 'pow', 'Nnn', :pure(1));
QAST::Operations.add_core_pirop_mapping('pow_I', 'nqp_bigint_pow', 'PPPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('neg_i', 'neg', 'Ii', :pure(1));
QAST::Operations.add_core_pirop_mapping('neg_I', 'nqp_bigint_neg', 'PPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('neg_n', 'neg', 'Nn', :pure(1));
QAST::Operations.add_core_pirop_mapping('abs_i', 'abs', 'Ii', :pure(1));
QAST::Operations.add_core_pirop_mapping('abs_I', 'nqp_bigint_abs', 'PPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('abs_n', 'abs', 'Nn', :pure(1));

QAST::Operations.add_core_pirop_mapping('gcd_i', 'gcd', 'Ii', :pure(1));
QAST::Operations.add_core_pirop_mapping('gcd_I', 'nqp_bigint_gcd', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('lcm_i', 'lcm', 'Ii', :pure(1));
QAST::Operations.add_core_pirop_mapping('lcm_I', 'nqp_bigint_lcm', 'PPPP', :pure(1));

QAST::Operations.add_core_pirop_mapping('ceil_n', 'ceil', 'Nn', :pure(1));
QAST::Operations.add_core_pirop_mapping('floor_n', 'floor', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('ln_n', 'ln', 'Nn', :pure(1));
QAST::Operations.add_core_pirop_mapping('sqrt_n', 'sqrt', 'Nn', :pure(1));
QAST::Operations.add_core_pirop_mapping('radix', 'nqp_radix', 'Pisii', :pure(1));
QAST::Operations.add_core_pirop_mapping('radix_I', 'nqp_bigint_radix', 'PisiiP', :pure(1));
QAST::Operations.add_core_pirop_mapping('log_n', 'ln', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('exp_n', 'exp', 'Nn', :pure(1));
QAST::Operations.add_core_pirop_mapping('isnanorinf', 'is_inf_or_nan', 'In', :pure(1));

# trig opcodes
QAST::Operations.add_core_pirop_mapping('sin_n', 'sin', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('asin_n', 'asin', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('cos_n', 'cos', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('acos_n', 'acos', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('tan_n', 'tan', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('atan_n', 'atan', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('atan2_n', 'atan', 'NNN', :pure(1));
QAST::Operations.add_core_pirop_mapping('sec_n', 'sec', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('asec_n', 'asec', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('sin_n', 'sin', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('asin_n', 'asin', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('sinh_n', 'sinh', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('cosh_n', 'cosh', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('tanh_n', 'tanh', 'NN', :pure(1));
QAST::Operations.add_core_pirop_mapping('sech_n', 'sech', 'NN', :pure(1));

# bitwise ops
QAST::Operations.add_core_pirop_mapping('bitor_i', 'bor', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitor_I', 'nqp_bigint_bor', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitxor_i', 'bxor', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitxor_I', 'nqp_bigint_bxor', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitand_i', 'band', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitand_I', 'nqp_bigint_band', 'PPPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitneg_i', 'bnot', 'Ii', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitneg_I', 'nqp_bigint_bnot', 'PPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitshiftl_i', 'shl', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitshiftl_I', 'nqp_bigint_shl', 'PPIP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitshiftr_i', 'shr', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitshiftr_I', 'nqp_bigint_shr', 'PPIP', :pure(1));

# string bitwise ops
QAST::Operations.add_core_pirop_mapping('bitor_s', 'bors', 'Sss', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitxor_s', 'bxors', 'Sss', :pure(1));
QAST::Operations.add_core_pirop_mapping('bitand_s', 'bands', 'Sss', :pure(1));

# string opcodes
QAST::Operations.add_core_pirop_mapping('chars', 'length', 'Is', :pure(1));
QAST::Operations.add_core_pirop_mapping('concat', 'concat', 'Sss', :pure(1));
QAST::Operations.add_core_pirop_mapping('concat_s', 'concat', 'Sss', :pure(1));
QAST::Operations.add_core_pirop_mapping('join', 'join', 'SsP', :pure(1));
QAST::Operations.add_core_pirop_mapping('split', 'split', 'Pss', :pure(1));
QAST::Operations.add_core_pirop_mapping('chr', 'chr', 'Si', :pure(1));
QAST::Operations.add_core_pirop_mapping('lc', 'downcase', 'Ss', :pure(1));
QAST::Operations.add_core_pirop_mapping('uc', 'upcase', 'Ss', :pure(1));
QAST::Operations.add_core_pirop_mapping('x', 'repeat', 'Ssi', :pure(1));
QAST::Operations.add_core_pirop_mapping('iscclass', 'is_cclass', 'Iisi', :pure(1));
QAST::Operations.add_core_pirop_mapping('findnotcclass', 'find_not_cclass', 'Iisii', :pure(1));
QAST::Operations.add_core_pirop_mapping('sprintf', 'sprintf', 'SsP', :pure(1));

# substr can take 2 or 3 args, so needs special handling.
QAST::Operations.add_core_pirop_mapping('substr2', 'substr', 'Ssi', :pure(1));
QAST::Operations.add_core_pirop_mapping('substr3', 'substr', 'Ssii', :pure(1));
QAST::Operations.add_core_op('substr', :pure(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 2
        ?? QAST::Op.new( :op('substr2'), |@operands )
        !! QAST::Op.new( :op('substr3'), |@operands ));
});

# ord can be on a the first char in a string or at a particular char.
QAST::Operations.add_core_pirop_mapping('ordfirst', 'ord', 'Is', :pure(1));
QAST::Operations.add_core_pirop_mapping('ordat', 'ord', 'Isi', :pure(1));
QAST::Operations.add_core_op('ord', :pure(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 1
        ?? QAST::Op.new( :op('ordfirst'), |@operands )
        !! QAST::Op.new( :op('ordat'), |@operands ));
});

# index may or may not take a starting position
QAST::Operations.add_core_pirop_mapping('indexfrom', 'index', 'Issi', :pure(1));
QAST::Operations.add_core_op('index', :pure(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 2
        ?? QAST::Op.new( :op('indexfrom'), |@operands, QAST::IVal.new( :value(0) ) )
        !! QAST::Op.new( :op('indexfrom'), |@operands ));
});
QAST::Operations.add_core_pirop_mapping('rindexfrom', 'rindex', 'Issi', :pure(1));
QAST::Operations.add_core_pirop_mapping('rindexfromend', 'rindex', 'Iss', :pure(1));
QAST::Operations.add_core_op('rindex', :pure(1), -> $qastcomp, $op {
    my @operands := $op.list;
    $qastcomp.as_post(+@operands == 2
        ?? QAST::Op.new( :op('rindexfromend'), |@operands )
        !! QAST::Op.new( :op('rindexfrom'), |@operands ));
});

# relational opcodes
QAST::Operations.add_core_pirop_mapping('cmp_i', 'cmp', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('iseq_i', 'iseq', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('isne_i', 'isne', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('islt_i', 'islt', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('isle_i', 'isle', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('isgt_i', 'isgt', 'Iii', :pure(1));
QAST::Operations.add_core_pirop_mapping('isge_i', 'isge', 'Iii', :pure(1));

QAST::Operations.add_core_pirop_mapping('bool_I', 'nqp_bigint_bool', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('cmp_I', 'nqp_bigint_cmp', 'IPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('iseq_I', 'nqp_bigint_eq', 'IPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('isne_I', 'nqp_bigint_ne', 'IPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('islt_I', 'nqp_bigint_lt', 'IPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('isle_I', 'nqp_bigint_le', 'IPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('isgt_I', 'nqp_bigint_gt', 'IPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('isge_I', 'nqp_bigint_ge', 'IPP', :pure(1));

QAST::Operations.add_core_pirop_mapping('cmp_n', 'cmp', 'Inn', :pure(1));
QAST::Operations.add_core_pirop_mapping('iseq_n', 'iseq', 'Inn', :pure(1));
QAST::Operations.add_core_pirop_mapping('isne_n', 'isne', 'Inn', :pure(1));
QAST::Operations.add_core_pirop_mapping('islt_n', 'islt', 'Inn', :pure(1));
QAST::Operations.add_core_pirop_mapping('isle_n', 'isle', 'Inn', :pure(1));
QAST::Operations.add_core_pirop_mapping('isgt_n', 'isgt', 'Inn, :pure(1)');
QAST::Operations.add_core_pirop_mapping('isge_n', 'isge', 'Inn', :pure(1));

QAST::Operations.add_core_pirop_mapping('cmp_s', 'cmp', 'Iss', :pure(1));
QAST::Operations.add_core_pirop_mapping('iseq_s', 'iseq', 'Iss', :pure(1));
QAST::Operations.add_core_pirop_mapping('isne_s', 'isne', 'Iss', :pure(1));
QAST::Operations.add_core_pirop_mapping('islt_s', 'islt', 'Iss', :pure(1));
QAST::Operations.add_core_pirop_mapping('isle_s', 'isle', 'Iss', :pure(1));
QAST::Operations.add_core_pirop_mapping('isgt_s', 'isgt', 'Iss', :pure(1));
QAST::Operations.add_core_pirop_mapping('isge_s', 'isge', 'Iss', :pure(1));

# bigint ops
QAST::Operations.add_core_pirop_mapping('fromstr_I', 'nqp_bigint_from_str', 'PsP', :pure(1));
QAST::Operations.add_core_pirop_mapping('tostr_I', 'nqp_bigint_to_str', 'SP', :pure(1));
QAST::Operations.add_core_pirop_mapping('base_I', 'nqp_bigint_to_str_base', 'SPI', :pure(1));
QAST::Operations.add_core_pirop_mapping('isbig_I', 'nqp_bigint_is_big', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('fromnum_I', 'nqp_bigint_from_num', 'PNP', :pure(1));
QAST::Operations.add_core_pirop_mapping('tonum_I', 'nqp_bigint_to_num', 'NP', :pure(1));

# native call ops
QAST::Operations.add_core_pirop_mapping('buildnativecall', 'nqp_native_call_build', 'vPsssPP');
QAST::Operations.add_core_pirop_mapping('nativecall', 'nqp_native_call', 'PPPP');

# boolean opcodes
QAST::Operations.add_core_pirop_mapping('not_i', 'not', 'Ii', :pure(1));

# aggregate opcodes, mapping to the Parrot v-table functions
QAST::Operations.add_core_pirop_mapping('atkey', 'set', 'PQs', :pure(1));
QAST::Operations.add_core_pirop_mapping('atpos', 'set', 'PQi', :pure(1));
QAST::Operations.add_core_pirop_mapping('atpos_i', 'set', 'IQi', :pure(1));
QAST::Operations.add_core_pirop_mapping('atpos_n', 'set', 'NQi', :pure(1));
QAST::Operations.add_core_pirop_mapping('atpos_s', 'set', 'SQi', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindkey', 'set', '1QsP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindpos', 'set', '1QiP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindpos_i', 'set', '1Qii', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindpos_n', 'set', '1Qin', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindpos_s', 'set', '1Qis', :pure(1));
QAST::Operations.add_core_pirop_mapping('deletekey', 'delete', '0Qs', :pure(1));
QAST::Operations.add_core_pirop_mapping('deletepos', 'delete', '0Qi', :pure(1));
QAST::Operations.add_core_pirop_mapping('existskey', 'exists', 'IQs', :pure(1));
QAST::Operations.add_core_pirop_mapping('existspos', 'exists', 'IQi', :pure(1));
QAST::Operations.add_core_pirop_mapping('elems', 'elements', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('iterator', 'iter', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('push', 'push', '0PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('push_s', 'push', '0Ps', :pure(1));
QAST::Operations.add_core_pirop_mapping('push_i', 'push', '0Pi', :pure(1));
QAST::Operations.add_core_pirop_mapping('push_n', 'push', '0Pn', :pure(1));
QAST::Operations.add_core_pirop_mapping('pop', 'pop', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('pop_s', 'pop', 'SP', :pure(1));
QAST::Operations.add_core_pirop_mapping('pop_i', 'pop', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('pop_n', 'pop', 'NP', :pure(1));
QAST::Operations.add_core_pirop_mapping('shift', 'shift', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('shift_s', 'shift', 'SP', :pure(1));
QAST::Operations.add_core_pirop_mapping('shift_i', 'shift', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('shift_n', 'shift', 'NP', :pure(1));
QAST::Operations.add_core_pirop_mapping('unshift', 'unshift', '0PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('unshift_s', 'unshift', '0Ps', :pure(1));
QAST::Operations.add_core_pirop_mapping('unshift_i', 'unshift', '0Pi', :pure(1));
QAST::Operations.add_core_pirop_mapping('unshift_n', 'unshift', '0Pn', :pure(1));
QAST::Operations.add_core_pirop_mapping('splice', 'splice', '0PPii', :pure(1));
QAST::Operations.add_core_pirop_mapping('islist', 'nqp_islist', 'IP', :pure(1));

# repr-level aggregate operations
QAST::Operations.add_core_pirop_mapping('r_atpos', 'repr_at_pos_obj', 'PPi', :pure(1));
QAST::Operations.add_core_pirop_mapping('r_atpos_i', 'repr_at_pos_int', 'IPi', :pure(1));
QAST::Operations.add_core_pirop_mapping('r_atpos_n', 'repr_at_pos_num', 'NPi', :pure(1));
QAST::Operations.add_core_pirop_mapping('r_bindpos', 'repr_bind_pos_obj', '2PiP', :pure(1));
QAST::Operations.add_core_pirop_mapping('r_bindpos_i', 'repr_bind_pos_int', '2Pii', :pure(1));
QAST::Operations.add_core_pirop_mapping('r_bindpos_n', 'repr_bind_pos_num', '2Pin', :pure(1));

# object opcodes
QAST::Operations.add_core_pirop_mapping('bindattr', 'setattribute', '3PPsP', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindattr_i', 'repr_bind_attr_int', '3PPsi', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindattr_n', 'repr_bind_attr_num', '3PPsn', :pure(1));
QAST::Operations.add_core_pirop_mapping('bindattr_s', 'repr_bind_attr_str', '3PPss', :pure(1));
QAST::Operations.add_core_pirop_mapping('getattr', 'getattribute', 'PPPs', :pure(1));
QAST::Operations.add_core_pirop_mapping('getattr_i', 'repr_get_attr_int', 'IPPs', :pure(1));
QAST::Operations.add_core_pirop_mapping('getattr_n', 'repr_get_attr_num', 'NPPs', :pure(1));
QAST::Operations.add_core_pirop_mapping('getattr_s', 'repr_get_attr_str', 'SPPs', :pure(1));
QAST::Operations.add_core_pirop_mapping('create', 'repr_instance_of', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('clone', 'clone', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('isconcrete', 'repr_defined', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('iscont', 'is_container', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('isnull', 'isnull', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('isnull_s', 'isnull', 'IS', :pure(1));
QAST::Operations.add_core_pirop_mapping('istrue', 'istrue', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('istype', 'type_check', 'IPP', :pure(1));
QAST::Operations.add_core_pirop_mapping('null', 'null', 'P', :pure(1));
QAST::Operations.add_core_pirop_mapping('null_s', 'null', 'S', :pure(1));
QAST::Operations.add_core_pirop_mapping('unbox_i', 'repr_unbox_int', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('unbox_n', 'repr_unbox_num', 'NP', :pure(1));
QAST::Operations.add_core_pirop_mapping('unbox_s', 'repr_unbox_str', 'SP', :pure(1));
QAST::Operations.add_core_pirop_mapping('box_i', 'repr_box_int', 'PiP', :pure(1));
QAST::Operations.add_core_pirop_mapping('box_n', 'repr_box_num', 'PnP', :pure(1));
QAST::Operations.add_core_pirop_mapping('box_s', 'repr_box_str', 'PsP', :pure(1));
QAST::Operations.add_core_pirop_mapping('what', 'get_what', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('how', 'get_how', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('who', 'get_who', 'PP', :pure(1));
QAST::Operations.add_core_pirop_mapping('where', 'get_id', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('findmethod', 'find_method', 'PPs', :pure(1));
QAST::Operations.add_core_pirop_mapping('defined', 'defined', 'IP', :pure(1));
QAST::Operations.add_core_pirop_mapping('can', 'can', 'IPs', :pure(1));

# serialization context related opcodes
QAST::Operations.add_core_pirop_mapping('sha1', 'nqp_sha1', 'Ss');
QAST::Operations.add_core_pirop_mapping('createsc', 'nqp_create_sc', 'Ps');
QAST::Operations.add_core_pirop_mapping('deserialize', 'nqp_deserialize_sc', 'vsPPP');

# process related opcodes
QAST::Operations.add_core_pirop_mapping('exit', 'exit', '0i', :pure(1));
QAST::Operations.add_core_pirop_mapping('sleep', 'sleep', '0n', :pure(1));
