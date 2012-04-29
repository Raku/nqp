class QAST::Operations {
    # Maps operations to code that will handle them. Hash of code.
    my %core_ops;
    
    # Maps HLL-specific operations to code that will handle them.
    # Hash of hash of code.
    my %hll_ops;
    
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
    
    # Adds a core op handler.
    method add_core_op($op, $handler) {
        %core_ops{$op} := $handler;
    }
    
    # Adds a HLL op handler.
    method add_hll_op($hll, $op, $handler) {
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := $handler;
    }
    
    # Adds a core op that maps to a PIR op.
    method add_core_pirop_mapping($op, $pirop, $sig) {
        %core_ops{$op} := pirop_mapper($pirop, $sig);
    }
    
    # Adds a HLL op that maps to a PIR op.
    method add_hll_pirop_mapping($hll, $op, $pirop, $sig) {
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := pirop_mapper($pirop, $sig);
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
        
        -> $qastcomp, $op {
            my $ops := $qastcomp.post_new('Ops');
            
            # If we need a result register, create it and make it the
            # first argument.
            my @args;
            if $ret_meth {
                my $reg := $*REGALLOC."$ret_meth"();
                @args.push($reg);
                $ops.result($reg);
            }
            
            # Build the arguments list.
            # XXX keyed
            my $num_args := +$op.list;
            my $i := 0;
            if +@arg_types != $num_args {
                pir::die("Operation '" ~ $op.op ~ "' requires " ~
                    +@arg_types ~ " operands, but got $num_args");
            }
            while $i < $num_args {
                my $post := $qastcomp.coerce($qastcomp.as_post($op.list[$i]), @arg_types[$i]);
                $ops.push($post);
                @args.push($post.result);
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
QAST::Operations.add_core_op('list', -> $qastcomp, $op {
    # Create register for the resulting list and make an empty one.
    my $list_reg := $*REGALLOC.fresh_p();
    my $ops := $qastcomp.post_new('Ops', :result($list_reg));
    $ops.push_pirop('new', $list_reg, "'ResizablePMCArray'");
    
    # Push all the things.
    for $op.list {
        my $post := $qastcomp.coerce($qastcomp.as_post($_), 'P');
        $ops.push($post);
        $ops.push_pirop('push', $list_reg, $post.result);
    }
    
    $ops
});

# Conditionals.
for <if unless> -> $op_name {
    QAST::Operations.add_core_op($op_name, -> $qastcomp, $op {
        # Check operand count.
        my $operands := +$op.list;
        pir::die("Operation '$op_name' needs either 2 or 3 operands")
            if $operands < 2 || $operands > 3;
        
        # Create labels.
        my $if_id    := $qastcomp.unique($op_name);
        my $else_lbl := $qastcomp.post_new('Label', :result($if_id ~ '_else'));
        my $end_lbl  := $qastcomp.post_new('Label', :result($if_id ~ '_end'));
        
        # Compile each of the children; we'll need to look at the result
        # types and pick an overall result type if in non-void context.
        my @comp_ops;
        my @op_types;
        for $op.list {
            my $comp := $qastcomp.as_post($_);
            @comp_ops.push($comp);
            @op_types.push(nqp::uc($qastcomp.infer_type($comp.result)));
        }
        my $res_type := $operands == 3 ??
            (@op_types[1] eq @op_types[2] ?? nqp::lc(@op_types[1]) !! 'p') !!
            (@op_types[0] eq @op_types[1] ?? nqp::lc(@op_types[0]) !! 'p');
        my $res_reg := $*REGALLOC."fresh_$res_type"();
        
        # Evaluate the condition first; store result if needed.
        my $ops := $qastcomp.post_new('Ops');
        if $operands == 2 {
            my $coerced := $qastcomp.coerce(@comp_ops[0], $res_type);
            $ops.push($coerced);
            $ops.push_pirop('set', $res_reg, $coerced.result);
        }
        else {
            $ops.push(@comp_ops[0]);
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

# Straight mappings to Parrot opcodes.
QAST::Operations.add_core_pirop_mapping('add_i', 'add', 'Iii');
QAST::Operations.add_core_pirop_mapping('neg_i', 'neg', 'Ii');
QAST::Operations.add_core_pirop_mapping('fromstr_I', 'nqp_bigint_from_str', 'PsP');
