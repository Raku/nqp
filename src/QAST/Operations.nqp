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
            # XXX coercions/boxings/unboxings
            if +$op.list != +@arg_types {
                pir::die("Operation '" ~ $op.op ~ "' requires " ~
                    +@arg_types ~ " operands, but got " ~ +$op.list);
            }
            for $op.list {
                my $post := $qastcomp.as_post($_);
                $ops.push($post);
                @args.push($post.result);
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

# Straight mappings to Parrot opcodes.
QAST::Operations.add_core_pirop_mapping('add_i', 'add', 'Iii');
