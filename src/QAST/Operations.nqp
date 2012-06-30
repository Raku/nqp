class QAST::Operations {
    # Maps operations to code that will handle them. Hash of code.
    my %core_ops;
    
    # Maps HLL-specific operations to code that will handle them.
    # Hash of hash of code.
    my %hll_ops;
    
    # Cached pirop compilers.
    my %cached_pirops;
    
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
        my $pirop_mapper := pirop_mapper($pirop, $sig);
        %core_ops{$op} := -> $qastcomp, $op {
            $pirop_mapper($qastcomp, $op.op, $op.list)
        };
    }
    
    # Adds a HLL op that maps to a PIR op.
    method add_hll_pirop_mapping($hll, $op, $pirop, $sig) {
        my $pirop_mapper := pirop_mapper($pirop, $sig);
        %hll_ops{$hll} := {} unless %hll_ops{$hll};
        %hll_ops{$hll}{$op} := -> $qastcomp, $op {
            $pirop_mapper($qastcomp, $op.op, $op.list)
        };
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
            my $num_args := +@op_args;
            if +@arg_types != $num_args {
                pir::die("Operation '$op_name' requires " ~
                    +@arg_types ~ " operands, but got $num_args");
            }
            my $i := 0;
            my $last_argtype_was_Q := 0;
            my $aggregate := '';
            while $i < $num_args {
                if @arg_types[$i] eq 'Q' {
                    my $post := $qastcomp.coerce($qastcomp.as_post(@op_args[$i]), 'p');
                    $ops.push($post);
                    $aggregate := $post.result;
                    $last_argtype_was_Q := 1;
                }
                elsif $last_argtype_was_Q {
                    my $post := $qastcomp.coerce($qastcomp.as_post(@op_args[$i]), @arg_types[$i]);
                    $ops.push($post);
                    @args.push("$aggregate[" ~ $post.result ~ "]");
                    $last_argtype_was_Q := 0;
                }
                else {
                    my $post := $qastcomp.coerce($qastcomp.as_post(@op_args[$i]), @arg_types[$i]);
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

QAST::Operations.add_core_op('list_i', -> $qastcomp, $op {
    # Create register for the resulting list and make an empty one.
    my $list_reg := $*REGALLOC.fresh_p();
    my $ops := $qastcomp.post_new('Ops', :result($list_reg));
    $ops.push_pirop('new', $list_reg, "'ResizableIntegerArray'");

    # Push all the things.
    for $op.list {
        my $post := $qastcomp.coerce($qastcomp.as_post($_), 'i');
        $ops.push($post);
        $ops.push_pirop('push', $list_reg, $post.result);
    }

    $ops
});

QAST::Operations.add_core_op('hash', -> $qastcomp, $op {
    # Create register for the resulting hash and make an empty one.
    my $hash_reg := $*REGALLOC.fresh_p();
    my $ops := $qastcomp.post_new('Ops', :result($hash_reg));
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

# Loops.
for <while until> -> $op_name {
    QAST::Operations.add_core_op($op_name, -> $qastcomp, $op {
        # Check operand count.
        my $operands := +$op.list;
        pir::die("Operation '$op_name' needs 2 operands")
            if $operands != 2;

        # Create labels.
        my $while_id := $qastcomp.unique($op_name);
        my $loop_lbl := $qastcomp.post_new('Label', :result($while_id ~ '_loop'));
        my $last_lbl := $qastcomp.post_new('Label', :result($while_id ~ '_last'));

        # Compile each of the children; we'll need to look at the result
        # types and pick an overall result type if in non-void context.
        my @comp_ops;
        for $op.list {
            my $comp := $qastcomp.as_post($_);
            @comp_ops.push($comp);
        }
        my $res_type := 'i';
        my $res_reg := $*REGALLOC."fresh_$res_type"();

        # Evaluate the condition; store result if needed.
        my $ops := $qastcomp.post_new('Ops');

        # Emit loop label.
        $ops.push($loop_lbl);
        $ops.result($res_reg);

        my $coerced := $qastcomp.coerce(@comp_ops[0], $res_type);
        $ops.push($coerced);
        $ops.push_pirop('set', $res_reg, $coerced.result);

        # Emit the exiting jump.
        $ops.push_pirop(($op_name eq 'while' ?? 'unless ' !! 'if ') ~
            @comp_ops[0].result ~ ' goto ' ~ $last_lbl.result);

        # Emit the loop body; stash the result.
        my $body := $qastcomp.coerce(@comp_ops[1], $res_type);
        $ops.push($body);
        $ops.push_pirop('set', $res_reg, $body.result);

        # Emit the iteration jump.
        $ops.push_pirop('goto ' ~ $loop_lbl.result);

        # Emit last label and tag ops with result.
        $ops.push($last_lbl);
        $ops.result($res_reg);
        $ops;
    });
}

for <repeat_while repeat_until> -> $op_name {
    QAST::Operations.add_core_op($op_name, -> $qastcomp, $op {
        # Check operand count.
        my $operands := +$op.list;
        pir::die("Operation '$op_name' needs 2 operands")
            if $operands != 2;

        # Create labels.
        my $while_id := $qastcomp.unique($op_name);
        my $loop_lbl := $qastcomp.post_new('Label', :result($while_id ~ '_loop'));

        # Compile each of the children; we'll need to look at the result
        # types and pick an overall result type if in non-void context.
        my @comp_ops;
        for $op.list {
            my $comp := $qastcomp.as_post($_);
            @comp_ops.push($comp);
        }
        my $res_type := 'i';
        my $res_reg := $*REGALLOC."fresh_$res_type"();

        # Evaluate the condition; store result if needed.
        my $ops := $qastcomp.post_new('Ops');

        # Emit loop label.
        $ops.push($loop_lbl);
        $ops.result($res_reg);

        my $coerced := $qastcomp.coerce(@comp_ops[0], $res_type);
        $ops.push($coerced);
        $ops.push_pirop('set', $res_reg, $coerced.result);

        # Emit the loop body; stash the result.
        my $body := $qastcomp.coerce(@comp_ops[1], $res_type);
        $ops.push($body);
        $ops.push_pirop('set', $res_reg, $body.result);

        # Emit the conditional iteration jump.
        $ops.push_pirop(($op_name eq 'repeat_while' ?? 'if ' !! 'unless ') ~
            @comp_ops[0].result ~ ' goto ' ~ $loop_lbl.result);

        $ops;
    });
}

# Binding
QAST::Operations.add_core_op('bind', -> $qastcomp, $op {
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
sub handle_arg($arg, $qastcomp, $ops, @arg_results) {
    my $arg_post := $qastcomp.as_post($arg);
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
    @arg_results.push($result);
}

QAST::Operations.add_core_op('call', -> $qastcomp, $op {
    # Work out what callee is.
    my $callee;
    my @args := $op.list;
    if $op.name {
        $callee := $qastcomp.post_new('Ops', :result($qastcomp.escape($op.name)));
    }
    elsif +@args {
        $callee := $qastcomp.as_post(@args.shift());
    }
    else {
        pir::die("No name for call and empty children list");
    }
    
    # Process arguments.
    my $ops := $qastcomp.post_new('Ops');
    my @arg_results;
    for @args {
        handle_arg($_, $qastcomp, $ops, @arg_results);
    }
    
    # Figure out result register type and allocate a register for it.
    my $res_type := $qastcomp.type_to_register_type($op.returns);
    my $res_reg := $*REGALLOC."fresh_{nqp::lc($res_type)}"();
    
    # Generate call.
    $ops.push($callee);
    $ops.push_pirop('call', $callee.result, |@arg_results, :result($res_reg));
    
    # Result is the result of the call.
    $ops.result($res_reg);
    $ops
});
QAST::Operations.add_core_op('callmethod', -> $qastcomp, $op {
    # Ensure we at least have an invocant.
    my @args := $op.list;
    if +@args == 0 {
        pir::die('Method call node requires at least one child');
    }
    
    # Where is the name coming from?
    my $name;
    if $op.name {
        $name := $qastcomp.post_new('Ops', :result($qastcomp.escape($op.name)));
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
    my $ops := $qastcomp.post_new('Ops');
    my @arg_results;
    for @args {
        handle_arg($_, $qastcomp, $ops, @arg_results);
    }
    
    # Figure out result register type and allocate a register for it.
    my $res_type := $qastcomp.type_to_register_type($op.returns);
    my $res_reg := $*REGALLOC."fresh_{nqp::lc($res_type)}"();
    
    # Generate method call.
    $ops.push($name);
    $ops.push_pirop('callmethod', $name.result, |@arg_results, :result($res_reg));
    
    # Result is the result of the call.
    $ops.result($res_reg);
    $ops
});

# I/O opcodes
QAST::Operations.add_core_pirop_mapping('print', 'print', '0s');
QAST::Operations.add_core_pirop_mapping('say', 'say', '0s');

# terms
QAST::Operations.add_core_pirop_mapping('time_i', 'time', 'I');
QAST::Operations.add_core_pirop_mapping('time_n', 'time', 'N');

# arithmetic opcodes
QAST::Operations.add_core_pirop_mapping('add_i', 'add', 'Iii');
QAST::Operations.add_core_pirop_mapping('add_I', 'nqp_bigint_add', 'PPPP');
QAST::Operations.add_core_pirop_mapping('add_n', 'add', 'Nnn');
QAST::Operations.add_core_pirop_mapping('sub_i', 'sub', 'Iii');
QAST::Operations.add_core_pirop_mapping('sub_I', 'nqp_bigint_sub', 'PPPP');
QAST::Operations.add_core_pirop_mapping('sub_n', 'sub', 'Nnn');
QAST::Operations.add_core_pirop_mapping('mul_i', 'mul', 'Iii');
QAST::Operations.add_core_pirop_mapping('mul_I', 'nqp_bigint_mul', 'PPPP');
QAST::Operations.add_core_pirop_mapping('mul_n', 'mul', 'Nnn');
QAST::Operations.add_core_pirop_mapping('div_i', 'div', 'Iii');
QAST::Operations.add_core_pirop_mapping('div_I', 'nqp_bigint_div', 'PPPP');
QAST::Operations.add_core_pirop_mapping('div_In', 'nqp_bigint_div_num', 'NPP');
QAST::Operations.add_core_pirop_mapping('div_n', 'div', 'Nnn');
QAST::Operations.add_core_pirop_mapping('mod_i', 'mod', 'Iii');
QAST::Operations.add_core_pirop_mapping('mod_I', 'nqp_bigint_mod', 'PPPP');
QAST::Operations.add_core_pirop_mapping('expmod_I', 'nqp_bigint_exp_mod', 'PPPPP');
QAST::Operations.add_core_pirop_mapping('mod_n', 'mod', 'Nnn');
QAST::Operations.add_core_pirop_mapping('pow_n', 'pow', 'Nnn');
QAST::Operations.add_core_pirop_mapping('pow_I', 'nqp_bigint_pow', 'PPPPP');
QAST::Operations.add_core_pirop_mapping('neg_i', 'neg', 'Ii');
QAST::Operations.add_core_pirop_mapping('neg_I', 'nqp_bigint_neg', 'PPP');
QAST::Operations.add_core_pirop_mapping('neg_n', 'neg', 'Nn');
QAST::Operations.add_core_pirop_mapping('abs_i', 'abs', 'Ii');
QAST::Operations.add_core_pirop_mapping('abs_I', 'nqp_bigint_abs', 'PPP');
QAST::Operations.add_core_pirop_mapping('abs_n', 'abs', 'Nn');

QAST::Operations.add_core_pirop_mapping('gcd_i', 'gcd', 'Ii');
QAST::Operations.add_core_pirop_mapping('gcd_I', 'nqp_bigint_gcd', 'PPP');
QAST::Operations.add_core_pirop_mapping('lcm_i', 'lcm', 'Ii');
QAST::Operations.add_core_pirop_mapping('lcm_I', 'nqp_bigint_lcm', 'PPP');

QAST::Operations.add_core_pirop_mapping('ceil_n', 'ceil', 'Nn');
QAST::Operations.add_core_pirop_mapping('floor_n', 'floor', 'NN');
QAST::Operations.add_core_pirop_mapping('ln_n', 'ln', 'Nn');
QAST::Operations.add_core_pirop_mapping('sqrt_n', 'sqrt', 'Nn');
QAST::Operations.add_core_pirop_mapping('radix', 'nqp_radix', 'Pisii');
QAST::Operations.add_core_pirop_mapping('radix_I', 'nqp_bigint_radix', 'PisiiP');
QAST::Operations.add_core_pirop_mapping('log_n', 'ln', 'NN');
QAST::Operations.add_core_pirop_mapping('exp_n', 'exp', 'Nn');
QAST::Operations.add_core_pirop_mapping('isnanorinf', 'is_inf_or_nan', 'In');

# trig opcodes
QAST::Operations.add_core_pirop_mapping('sin_n', 'sin', 'NN');
QAST::Operations.add_core_pirop_mapping('asin_n', 'asin', 'NN');
QAST::Operations.add_core_pirop_mapping('cos_n', 'cos', 'NN');
QAST::Operations.add_core_pirop_mapping('acos_n', 'acos', 'NN');
QAST::Operations.add_core_pirop_mapping('tan_n', 'tan', 'NN');
QAST::Operations.add_core_pirop_mapping('atan_n', 'atan', 'NN');
QAST::Operations.add_core_pirop_mapping('atan2_n', 'atan', 'NNN');
QAST::Operations.add_core_pirop_mapping('sec_n', 'sec', 'NN');
QAST::Operations.add_core_pirop_mapping('asec_n', 'asec', 'NN');
QAST::Operations.add_core_pirop_mapping('sin_n', 'sin', 'NN');
QAST::Operations.add_core_pirop_mapping('asin_n', 'asin', 'NN');
QAST::Operations.add_core_pirop_mapping('sinh_n', 'sinh', 'NN');
QAST::Operations.add_core_pirop_mapping('cosh_n', 'cosh', 'NN');
QAST::Operations.add_core_pirop_mapping('tanh_n', 'tanh', 'NN');
QAST::Operations.add_core_pirop_mapping('sech_n', 'sech', 'NN');

# bitwise ops
QAST::Operations.add_core_pirop_mapping('bitor_i', 'bor', 'II');
QAST::Operations.add_core_pirop_mapping('bitor_I', 'nqp_bigint_bor', 'PPPP');
QAST::Operations.add_core_pirop_mapping('bitxor_i', 'bxor', 'II');
QAST::Operations.add_core_pirop_mapping('bitxor_I', 'nqp_bigint_bxor', 'PPPP');
QAST::Operations.add_core_pirop_mapping('bitand_i', 'band', 'II');
QAST::Operations.add_core_pirop_mapping('bitand_I', 'nqp_bigint_band', 'PPPP');
QAST::Operations.add_core_pirop_mapping('bitneg_i', 'bnot', 'II');
QAST::Operations.add_core_pirop_mapping('bitneg_I', 'nqp_bigint_bnot', 'PP');
QAST::Operations.add_core_pirop_mapping('bitshiftl_i', 'shl', 'III');
QAST::Operations.add_core_pirop_mapping('bitshiftl_I', 'nqp_bigint_shl', 'PPIP');
QAST::Operations.add_core_pirop_mapping('bitshiftr_i', 'shr', 'III');
QAST::Operations.add_core_pirop_mapping('bitshiftr_I', 'nqp_bigint_shr', 'PPIP');

# string bitwise ops
QAST::Operations.add_core_pirop_mapping('bitor_s', 'bors', 'SS');
QAST::Operations.add_core_pirop_mapping('bitxor_s', 'bxors', 'SS');
QAST::Operations.add_core_pirop_mapping('bitand_s', 'bands', 'SS');

# string opcodes
QAST::Operations.add_core_pirop_mapping('chars', 'length', 'Is');
QAST::Operations.add_core_pirop_mapping('concat', 'concat', 'Sss');
QAST::Operations.add_core_pirop_mapping('join', 'join', 'SsP');
QAST::Operations.add_core_pirop_mapping('split', 'split', 'Pss');
QAST::Operations.add_core_pirop_mapping('index', 'index', 'Issi');
QAST::Operations.add_core_pirop_mapping('chr', 'chr', 'Si');
QAST::Operations.add_core_pirop_mapping('ord', 'ord', 'Isi');
QAST::Operations.add_core_pirop_mapping('lc', 'downcase', 'Ss');
QAST::Operations.add_core_pirop_mapping('uc', 'upcase', 'Ss');
QAST::Operations.add_core_pirop_mapping('substr', 'substr', 'Ssii');
QAST::Operations.add_core_pirop_mapping('x', 'repeat', 'Ssi');
QAST::Operations.add_core_pirop_mapping('iscclass', 'is_cclass', 'Iisi');
QAST::Operations.add_core_pirop_mapping('sprintf', 'sprintf', 'SsP');

# relational opcodes
QAST::Operations.add_core_pirop_mapping('cmp_i', 'cmp', 'Iii');
QAST::Operations.add_core_pirop_mapping('iseq_i', 'iseq', 'Iii');
QAST::Operations.add_core_pirop_mapping('isne_i', 'isne', 'Iii');
QAST::Operations.add_core_pirop_mapping('islt_i', 'islt', 'Iii');
QAST::Operations.add_core_pirop_mapping('isle_i', 'isle', 'Iii');
QAST::Operations.add_core_pirop_mapping('isgt_i', 'isgt', 'Iii');
QAST::Operations.add_core_pirop_mapping('isge_i', 'isge', 'Iii');

QAST::Operations.add_core_pirop_mapping('bool_I', 'nqp_bigint_bool', 'iP');
QAST::Operations.add_core_pirop_mapping('cmp_I', 'nqp_bigint_cmp', 'IPP');
QAST::Operations.add_core_pirop_mapping('iseq_I', 'nqp_bigint_eq', 'IPP');
QAST::Operations.add_core_pirop_mapping('isne_I', 'nqp_bigint_ne', 'IPP');
QAST::Operations.add_core_pirop_mapping('islt_I', 'nqp_bigint_lt', 'IPP');
QAST::Operations.add_core_pirop_mapping('isle_I', 'nqp_bigint_le', 'IPP');
QAST::Operations.add_core_pirop_mapping('isgt_I', 'nqp_bigint_gt', 'IPP');
QAST::Operations.add_core_pirop_mapping('isge_I', 'nqp_bigint_ge', 'IPP');

QAST::Operations.add_core_pirop_mapping('cmp_n', 'cmp', 'Inn');
QAST::Operations.add_core_pirop_mapping('iseq_n', 'iseq', 'Inn');
QAST::Operations.add_core_pirop_mapping('isne_n', 'isne', 'Inn');
QAST::Operations.add_core_pirop_mapping('islt_n', 'islt', 'Inn');
QAST::Operations.add_core_pirop_mapping('isle_n', 'isle', 'Inn');
QAST::Operations.add_core_pirop_mapping('isgt_n', 'isgt', 'Inn');
QAST::Operations.add_core_pirop_mapping('isge_n', 'isge', 'Inn');

QAST::Operations.add_core_pirop_mapping('cmp_s', 'cmp', 'Iss');
QAST::Operations.add_core_pirop_mapping('iseq_s', 'iseq', 'Iss');
QAST::Operations.add_core_pirop_mapping('isne_s', 'isne', 'Iss');
QAST::Operations.add_core_pirop_mapping('islt_s', 'islt', 'Iss');
QAST::Operations.add_core_pirop_mapping('isle_s', 'isle', 'Iss');
QAST::Operations.add_core_pirop_mapping('isgt_s', 'isgt', 'Iss');
QAST::Operations.add_core_pirop_mapping('isge_s', 'isge', 'Iss');

# bigint ops
QAST::Operations.add_core_pirop_mapping('fromstr_I', 'nqp_bigint_from_str', 'PsP');
QAST::Operations.add_core_pirop_mapping('tostr_I', 'nqp_bigint_to_str', 'SP');
QAST::Operations.add_core_pirop_mapping('base_I', 'nqp_bigint_to_str_base', 'SPI');
QAST::Operations.add_core_pirop_mapping('isbig_I', 'nqp_bigint_is_big', 'IP');
QAST::Operations.add_core_pirop_mapping('fromnum_I', 'nqp_bigint_from_num', 'PNP');
QAST::Operations.add_core_pirop_mapping('tonum_I', 'nqp_bigint_to_num', 'NP');

# native call ops
QAST::Operations.add_core_pirop_mapping('buildnativecall', 'nqp_native_call_build', 'vPsssPP');
QAST::Operations.add_core_pirop_mapping('nativecall', 'nqp_native_call', 'PPPP');

# boolean opcodes
QAST::Operations.add_core_pirop_mapping('not_i', 'not', 'Ii');

# aggregate opcodes, mapping to the Parrot v-table functions
QAST::Operations.add_core_pirop_mapping('atkey', 'set', 'PQs');
QAST::Operations.add_core_pirop_mapping('atpos', 'set', 'PQi');
QAST::Operations.add_core_pirop_mapping('atpos_i', 'set', 'IQi');
QAST::Operations.add_core_pirop_mapping('atpos_n', 'set', 'NQi');
QAST::Operations.add_core_pirop_mapping('atpos_s', 'set', 'SQi');
QAST::Operations.add_core_pirop_mapping('bindkey', 'set', '1QsP');
QAST::Operations.add_core_pirop_mapping('bindpos', 'set', '1QiP');
QAST::Operations.add_core_pirop_mapping('bindpos_i', 'set', '1Qii');
QAST::Operations.add_core_pirop_mapping('bindpos_n', 'set', '1Qin');
QAST::Operations.add_core_pirop_mapping('bindpos_s', 'set', '1Qis');
QAST::Operations.add_core_pirop_mapping('deletekey', 'delete', '0Qs');
QAST::Operations.add_core_pirop_mapping('deletepos', 'delete', '0Qi');
QAST::Operations.add_core_pirop_mapping('existskey', 'exists', 'IQs');
QAST::Operations.add_core_pirop_mapping('existspos', 'exists', 'IQi');
QAST::Operations.add_core_pirop_mapping('elems', 'elements', 'IP');
QAST::Operations.add_core_pirop_mapping('iterator', 'iter', 'PP');
QAST::Operations.add_core_pirop_mapping('push', 'push', '0PP');
QAST::Operations.add_core_pirop_mapping('push_s', 'push', '0Ps');
QAST::Operations.add_core_pirop_mapping('push_i', 'push', '0Pi');
QAST::Operations.add_core_pirop_mapping('push_n', 'push', '0Pn');
QAST::Operations.add_core_pirop_mapping('pop', 'pop', 'PP');
QAST::Operations.add_core_pirop_mapping('pop_s', 'pop', 'sP');
QAST::Operations.add_core_pirop_mapping('pop_i', 'pop', 'iP');
QAST::Operations.add_core_pirop_mapping('pop_n', 'pop', 'nP');
QAST::Operations.add_core_pirop_mapping('shift', 'shift', 'PP');
QAST::Operations.add_core_pirop_mapping('shift_s', 'shift', 'sP');
QAST::Operations.add_core_pirop_mapping('shift_i', 'shift', 'iP');
QAST::Operations.add_core_pirop_mapping('shift_n', 'shift', 'nP');
QAST::Operations.add_core_pirop_mapping('unshift', 'unshift', '0PP');
QAST::Operations.add_core_pirop_mapping('unshift_s', 'unshift', '0Ps');
QAST::Operations.add_core_pirop_mapping('unshift_i', 'unshift', '0Pi');
QAST::Operations.add_core_pirop_mapping('unshift_n', 'unshift', '0Pn');
QAST::Operations.add_core_pirop_mapping('splice', 'splice', '0PPii');

# repr-level aggregate operations
QAST::Operations.add_core_pirop_mapping('r_atpos', 'repr_at_pos_obj', 'PPi');
QAST::Operations.add_core_pirop_mapping('r_atpos_i', 'repr_at_pos_int', 'IPi');
QAST::Operations.add_core_pirop_mapping('r_atpos_n', 'repr_at_pos_num', 'NPi');
QAST::Operations.add_core_pirop_mapping('r_bindpos', 'repr_bind_pos_obj', '2PiP');
QAST::Operations.add_core_pirop_mapping('r_bindpos_i', 'repr_bind_pos_int', '2Pii');
QAST::Operations.add_core_pirop_mapping('r_bindpos_n', 'repr_bind_pos_num', '2Pin');

# object opcodes
QAST::Operations.add_core_pirop_mapping('bindattr', 'setattribute', '3PPsP');
QAST::Operations.add_core_pirop_mapping('bindattr_i', 'repr_bind_attr_int', '3PPsi');
QAST::Operations.add_core_pirop_mapping('bindattr_n', 'repr_bind_attr_num', '3PPsn');
QAST::Operations.add_core_pirop_mapping('bindattr_s', 'repr_bind_attr_str', '3PPss');
QAST::Operations.add_core_pirop_mapping('getattr', 'getattribute', 'PPPs');
QAST::Operations.add_core_pirop_mapping('getattr_i', 'repr_get_attr_int', 'IPPs');
QAST::Operations.add_core_pirop_mapping('getattr_n', 'repr_get_attr_num', 'NPPs');
QAST::Operations.add_core_pirop_mapping('getattr_s', 'repr_get_attr_str', 'SPPs');
QAST::Operations.add_core_pirop_mapping('create', 'repr_instance_of', 'PP');
QAST::Operations.add_core_pirop_mapping('clone', 'clone', 'PP');
QAST::Operations.add_core_pirop_mapping('isconcrete', 'repr_defined', 'IP');
QAST::Operations.add_core_pirop_mapping('iscont', 'is_container', 'IP');
QAST::Operations.add_core_pirop_mapping('isnull', 'isnull', 'IP');
QAST::Operations.add_core_pirop_mapping('isnull_s', 'isnull', 'IS');
QAST::Operations.add_core_pirop_mapping('istrue', 'istrue', 'IP');
QAST::Operations.add_core_pirop_mapping('istype', 'type_check', 'IPP');
QAST::Operations.add_core_pirop_mapping('null', 'null', 'P');
QAST::Operations.add_core_pirop_mapping('unbox_i', 'repr_unbox_int', 'IP');
QAST::Operations.add_core_pirop_mapping('unbox_n', 'repr_unbox_num', 'NP');
QAST::Operations.add_core_pirop_mapping('unbox_s', 'repr_unbox_str', 'SP');
QAST::Operations.add_core_pirop_mapping('box_i', 'repr_box_int', 'PiP');
QAST::Operations.add_core_pirop_mapping('box_n', 'repr_box_num', 'PnP');
QAST::Operations.add_core_pirop_mapping('box_s', 'repr_box_str', 'PsP');
QAST::Operations.add_core_pirop_mapping('where', 'get_id', 'IP');

# serialization context related opcodes
QAST::Operations.add_core_pirop_mapping('sha1', 'nqp_sha1', 'Ss');
