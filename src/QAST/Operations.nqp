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
    method add_core_pir_mapping($op, $pirop, $sig) {
        %core_ops{$op} := pirop_mapper($pirop, $sig);
    }
    
    # Adds a HLL op that maps to a PIR op.
    method add_hll_pir_mapping($hll, $op, $pirop, $sig) {
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := pirop_mapper($pirop, $sig);
    }
}

INIT {
}
