class QAST::CompilerJS does DWIMYNameMangling does SerializeOnce {
    has $!nyi;

    #= If the env var NQPJS_LOG is set log to nqpjs.log
    method log(*@msgs) {
        my %env := nqp::getenvhash();
        if %env<NQPJS_LOG> {
            my $log := open('nqpjs.log', :a);
            $log.say(nqp::join(',', @msgs));
            close($log);
        }
    }

    # Holds information about the QAST::Block we're currently compiling.
    # The currently compiled block is stored in $*BLOCK
    my class BlockInfo does DWIMYNameMangling {
        has $!qast;             # The QAST::Block
        has $!outer;            # Outer block's BlockInfo
        has @!js_lexicals;      # javascript variables we need to declare for the block
        has int $!tmp;              # We use a bunch of TMP{$n} to store intermediate javascript results
        has str $!ctx;              # The object we keep dynamic variables and exception handlers in
        has @!params;           # the parameters the block takes
        has @!variables;        # the variables declared in this block
        has %!variables;        # the variables declared in this block
        has %!cloned_inners;    # Mapping of CUIDs of blocks we clone to register with the clone

        has %!captured_inners;  # Mapping of CUIDs of blocks we statically clone to register with the code

        has %!var_types;    # Mapping of lexical names to types

        has %!mangled_lexicals;

        has %!lexicalref_types;

        has @!var_setup;

        has %!statevars;

        has int $!pass_on_exceptions;

        method new($qast, $outer) {
            my $obj := nqp::create(self);
            $obj.BUILD($qast, $outer);
            $obj
        }

        method BUILD($qast, $outer) {
            $!qast := $qast;
            $!outer := $outer;
            @!js_lexicals := nqp::list();
            @!params := nqp::list();
            @!variables := nqp::list();
            %!variables := nqp::hash();
            $!tmp := 0;
            %!cloned_inners := nqp::hash();
            %!captured_inners := nqp::hash();
            %!var_types := nqp::hash();
            %!mangled_lexicals := nqp::hash();
            %!lexicalref_types := nqp::hash();
            @!var_setup := nqp::list();
            %!statevars := nqp::hash();
            $!pass_on_exceptions := 0;
        }

        method pass_on_exceptions() {
            $!pass_on_exceptions;
        }

        method use_passing_on_of_exceptions() {
            $!pass_on_exceptions := 1;
        }

        method add_var_setup($setup) {
            @!var_setup.push($setup);
        }

        method var_setup() {
            nqp::join('', @!var_setup);
        }

        method add_mangled_var(QAST::Var $var) {
            $var.scope eq 'local' ?? self.mangle_local($var.name) !! self.add_mangled_lexical($var.name);
        }

        my int $unique := 0;
        method add_mangled_lexical($name) {
            $unique := $unique + 1;
            %!mangled_lexicals{$name} := self.mangle_name($name) ~ $unique;
        }

        method mangle_own_lexical($name) {
            if nqp::existskey(%!mangled_lexicals, $name) {
                %!mangled_lexicals{$name}
            } else {
                nqp::null();
            }
        }

        method mangle_var(QAST::Var $var) {
            $var.scope eq 'local' ?? self.mangle_local($var.name) !! self.mangle_lexical($var.name);
        }

        method mangle_local($name) {
            self.mangle_name($name) ~ '$local';
        }


        method mangle_lexical($name) {
            my $info := self;
            while $info {
                if $info.mangle_own_lexical($name) -> $mangled {
                    return $mangled;
                }
                $info := $info.outer;
            }

            nqp::die("can't mangle $name");
        }

        method clone_inner($block) {
            my int $cuid    := $block.cuid;
            my str $already := %!cloned_inners{$cuid};

            if $already {
                $already
            }
            else {
                my str $reg := self.add_tmp;
                %!cloned_inners{$cuid} := $reg;
                $reg
            }
        }

        method cloned_inners() { %!cloned_inners }

        method capture_inner($block) {
            my int $cuid    := $block.cuid;
            my str $already := %!captured_inners{$cuid};
            if $already {
                $already
            }
            else {
                my str $reg := self.add_tmp;
                %!captured_inners{$cuid} := $reg;
                $reg
            }
        }

        method captured_inners() { %!captured_inners }

        method add_js_lexical($name) {
            @!js_lexicals.push($name);
        }

        method add_js_lexical_with_value($name, $value) {
            @!js_lexicals.push($name ~ " = $value");
        }

        method add_variable($var) {
            if $var.scope ne 'local' {
                @!variables.push($var);
                %!variables{$var.name} := $var;
            }
        }

        method register_lexicalref($var, $type) {
            %!lexicalref_types{$var.name} := $type;
        }

        method lexicalref_type($var) { %!lexicalref_types{$var.name} }

        method has_own_variable($name) {
            nqp::existskey(%!variables, $name);
        }

        method add_tmp() {
            $!tmp := $!tmp + 1;
            'TMP'~$!tmp;
        }

        method add_param($param) {
            @!params.push($param);
        }

        method statevars() {
            %!statevars;
        }

        method add_statevar($value) {
            my str $js_var := QAST::Node.unique('statevar');
            %!statevars{$js_var} := $value;
            $js_var;
        }

        method tmps() {
            my @tmps;
            my int $i := 1;
            while $i <= $!tmp {
                @tmps.push('TMP'~$i);
                $i := $i+1;
            }
            @tmps;
        }

        method cuid() {
            $!qast ?? $!qast.cuid !! NQPMu;
        }

        method var_type($var) { %!var_types{$var.name} }
        method register_var_type($var, $type) { %!var_types{$var.name} := $type }

        method js_lexicals() { @!js_lexicals }
        method outer() { $!outer }
        method qast() { $!qast }
        method ctx(*@value) { $!ctx := @value[0] if @value;$!ctx}
        method params() { @!params }
        method variables() { @!variables }

        has str $!first_time_marker;
        method first_time_marker() {
            if !$!first_time_marker {
                $!first_time_marker :=  QAST::Node.unique('first_time');
            }
            $!first_time_marker;

        }
        method maybe_first_time_marker() {
            $!first_time_marker;
        }


        method ctx_for_var($var, :$from_outer) {
            my $info := self;
            my int $depth := 0;

            my $reached_closure_template := 0;

            if $from_outer {
                $reached_closure_template := $info.qast.blocktype ne 'immediate';
                $depth := $depth + 1 if $reached_closure_template;
                $info := $info.outer;
            }


            while $info {
                return NQPMu if $info.qast && $info.qast.ann('DYN_COMP_WRAPPER');

                $reached_closure_template := $reached_closure_template || $info.qast.blocktype ne 'immediate';

                if $info.has_own_variable($var.name) {
                    %*USED_CTXS{$info.ctx} := $depth unless nqp::existskey(%*USED_CTXS, $info.ctx);
                    return $info.ctx;
                }
                $info := $info.outer;

                $depth := $depth + 1 if $reached_closure_template;

            }
        }

        method try_get_bind_scope($var) {
            if nqp::istype($var, QAST::Var) && $var.scope eq 'lexicalref' {
                # Make sure we've got the lexical itself in scope to bind to.
                my $info := self;
                while $info {
                    return NQPMu if $info.qast && $info.qast.ann('DYN_COMP_WRAPPER');
                    if nqp::defined($info.lexicalref_type($var)) {
                        return NQPMu;
                    }
                    if $info.has_own_variable($var.name) {
                        return 'lexical';
                    }
                    $info := $info.outer;
                }
            }
            return NQPMu;
        }
    }

    method is_dynamic_var(BlockInfo $info, QAST::Var $var) {
        # HACK due to a nqp misdesign we need to check the name for the * twigil
        # TODO Make nqp mark dynamic variables explicitly
        my str $name := $var.name;
        if nqp::chars($name) > 2 {
            my str $sigil := nqp::substr($name, 0, 1);
            my str $twigil := nqp::substr($name, 1, 1);
            if $twigil eq '*' || $twigil eq '?' {
              return 1;
            }
        }

        return 0 if $var.scope eq 'local';

        if $*HLL eq 'Raku' { # To make binding of signatures work
            return 1;
        }

        while $info {
            if $info.has_own_variable($name) {
                return ($info.qast ?? self.are_children_serializable($info.qast.cuid) !! 1);
            }
            if $info.qast && $info.qast.symbol($name) -> $symbol {
                return 1;
            }
            $info := $info.outer;
        }
        return 1;

    }

    # Boxes/unboxes the return value when neccessary
    method get_return_value(str $expr, @setup, :$want, :$node) {
        my int $unpack_as_type :=
          ($want == $T_INT || $want == $T_STR || $want == $T_NUM)
          ?? $want
          !! $T_OBJ;

        my str $suffix := self.suffix_from_type($unpack_as_type);
        my str $unpacked :=
          $want == $T_VOID
            ?? $expr
            !! "(/*await*/ nqp.retval$suffix({$unpack_as_type == $T_OBJ ?? 'HLL' !! $*CTX}, $expr))";

        self.stored_result(Chunk.new($unpack_as_type, $unpacked, @setup, :$node), :$want);
    }

    # turns a list of arguments for a call into a js code according to our most general calling convention
    # $args is the list of QAST::Node arguments
    # returns a Chunk containing either a comma separated list of arguments or an expression that evaluates to a array of arguments

    method args($args, :$invocant) {
        my @setup;
        my @args;

        my @named;
        my @named_exprs;

        my @named_groups;

        my @groups := [[]];

        for $args -> $arg {
            if $arg.flat {
                if $arg.named {
                    my $arg_chunk := self.as_js($arg, :want($T_OBJ));
                    @setup.push($arg_chunk);

                    if @named_exprs != 0 {
                        @named_groups.push('{' ~ nqp::join(',',@named_exprs) ~ '}');
                        nqp::setelems(@named_exprs, 0);
                    }

                    @named_groups.push("nqp.unwrapNamed({$arg_chunk.expr})");
                }
                else {
                    my $arg_chunk := self.as_js($arg, :want($T_OBJ));
                    @setup.push($arg_chunk);
                    @groups.push("({$arg_chunk.expr}).\$\$flatArgs()");
                    @groups.push([]);
                }
            }
            elsif $arg.named {
                my $compiled_arg := self.as_js($arg, :want($T_CALL_ARG));
                @setup.push($compiled_arg);
                @named_exprs.push(quote_string($arg.named) ~ ":" ~ $compiled_arg.expr);

            }
            else {
                my $compiled_arg := self.as_js($arg, :want($T_CALL_ARG));
                @setup.push($compiled_arg);
                @groups[@groups-1].push($compiled_arg.expr);
            }
        }

        # We want to always have at leat 1 thing to pass as the named argument
        if @named_exprs || @named_groups == 0 {
            if @named_exprs == 0 {
                @named_groups.push('null');
            }
            else {
                @named_groups.push('{' ~ nqp::join(',',@named_exprs) ~ '}');
            }
        }

        if $invocant {
            @groups[0].unshift($invocant);
        }

        if +@named_groups > 1 {
            @groups[0].unshift('nqp.named([' ~ nqp::join(',', @named_groups) ~ '])');
        }
        else {
            @groups[0].unshift(@named_groups[0]);
        }

        @groups[0].unshift($*CTX);


        if +@groups == 1 {
            return Chunk.new($T_ARGS, nqp::join(',', @groups[0]), @setup);
        }

        my @js_args;
        for @groups -> $group {
            if nqp::islist($group) {
                @js_args.push('[' ~ nqp::join(',', $group) ~ ']') if +$group;
            }
            else {
                @js_args.push($group);
            }
        }

        Chunk.new($T_ARGS_ARRAY, @js_args.shift ~ '.concat(' ~ nqp::join(',', @js_args) ~ ')', @setup);
    }

    method compile_sig(@params) {
        my @sig := ['caller_ctx','_NAMED'];
        my @setup;

        my sub set_variable($var, $value) {
            if self.is_dynamic_var($*BLOCK, $var) {
                @setup.push("{$*CTX}[{quote_string($var.name)}] = $value;\n");
            }
            else {
                my str $mangled := $*BLOCK.mangle_var($var);
                $*BLOCK.add_js_lexical($mangled);
                @setup.push("$mangled = $value;\n");
            }
        }

        my int $pos_slurpy := 0;
        my int $pos_required := 0;
        my int $pos_optional := 0;

        my int $named_slurpy := 0;

        my @known_named;

        for @params -> $param {
            if $param.slurpy {
                if $param.named {
                    $named_slurpy := 1;
                    set_variable($param, "nqp.slurpyNamed(HLL, _NAMED, {known_named(@known_named)})");
                }
                else {
                    $pos_slurpy := 1;
                    set_variable($param, "nqp.slurpyPos(HLL, arguments, {+@sig})");
                }
            } else {
                my int $type := self.type_from_typeobj($param.returns);
                my str $suffix := self.suffix_from_type($type);
                my sub unpack($value) {
                    if self.is_fancy_int($type) {
                        self.int_to_fancy_int($type, "nqp.arg_i($*CTX, $value)");
                    }
                    else {
                        "nqp.arg$suffix({$type == $T_OBJ ?? 'HLL' !! $*CTX}, $value)";
                    }
                }
                if $param.named {

                    my @names := nqp::islist($param.named) ?? $param.named !! nqp::list($param.named);

                    for @names -> $name {
                        my str $quoted := quote_string($name);
                        @known_named.push($quoted);

                        @setup.push("if (_NAMED !== null && _NAMED.hasOwnProperty($quoted)) \{\n");

                        set_variable($param, unpack("_NAMED[$quoted]"));

                        @setup.push("\} else ");
                    }

                    @setup.push("\{\n");

                    if $param.default {
                        my $default := self.as_js($param.default, :want($type));
                        @setup.push($default);
                        set_variable($param, $default.expr);
                    }
                    else {
                        my str $required := quote_string(@names[nqp::elems(@names) - 1]);
                        @setup.push("nqp.missingNamed($required);\n");
                    }

                    @setup.push("\}\n");
                }
                else {
                    my str $tmp := self.unique_var('param');
                    @sig.push($tmp);


                    my str $set;

                    if self.is_dynamic_var($*BLOCK, $param) {
                       $set := "{$*CTX}[{quote_string($param.name)}] = ";
                    } else {
                        my str $name := $*BLOCK.mangle_var($param);
                        $*BLOCK.add_js_lexical($name);
                        $set := "$name = ";
                    }

                    if $param.default {
                        if $pos_slurpy {
                            nqp::die("Optional positionals must come before all slurpy positionals");
                        }
                        $pos_optional := $pos_optional + 1;
                        my $default_value := self.as_js($param.default, :want($type));
                        @setup.push(Chunk.void(
                            "if (arguments.length < {+@sig}) \{\n",
                             $default_value,
                             "$set {$default_value.expr};\n\} else \{\n$set {unpack($tmp)};\n\}\n"
                        ));
                    }
                    else {
                        if $pos_optional {
                            nqp::die("Required positionals must come before all optional positionals");
                        }
                        if $pos_slurpy {
                            nqp::die("Required positionals must come before all slurpy positionals");
                        }
                        $pos_required := $pos_required + 1;
                        @setup.push($set ~ unpack($tmp) ~ ";\n");
                    }
                }
            }

            for $param.list -> $param_setup {
                @setup.push(self.as_js($param_setup, :want($T_OBJ)));
            }
        }

        if ($pos_required) {
            @setup.unshift("if (arguments.length < {$pos_required+2}) nqp.tooFewPos(arguments.length, {$pos_required+2});");
        }

        if (!$pos_slurpy) {
            my $max := $pos_required + $pos_optional + 2;
            @setup.unshift("if (arguments.length > $max) nqp.tooManyPos(arguments.length, $max);");
        }

        if !$named_slurpy {
            if +@known_named {
                @setup.unshift("if (_NAMED !== null) \{nqp.checkNamed({known_named(@known_named)}, _NAMED)\}\n");
            } else {
                @setup.unshift("if (_NAMED !== null) \{nqp.noNamed(_NAMED)\}\n");
            }
        }

        Chunk.new($T_NONVAL, nqp::join(',', @sig), @setup);
    }

    method is_fancy_int(int $type) {
        $type == $T_INT8
            || $type == $T_INT16
            || $type == $T_UINT8
            || $type == $T_UINT16
            || $type == $T_UINT32;
    }

    #= Convert a 32bit integer which is a result of js expr $expr into integer type $type for storage
    method int_to_fancy_int(int $type, str $expr) {
        if $type == $T_INT8 || $type == $T_INT16 {
            my int $shift := 32 - self.bits($type);
            "($expr << $shift >> $shift)";
        } elsif $type == $T_UINT8 || $type == $T_UINT16 || $type == $T_UINT32 {
            my int $shift := 32 - self.bits($type);
            "($expr << $shift >>> $shift)";
        } else {
            $expr;
        }
    }

    method bits(int $type) {
        if $type == $T_INT8 || $type == $T_UINT8 {
            8;
        } elsif $type == $T_INT16 || $type == $T_UINT16 {
            16;
        } elsif $type == $T_INT || $type == $T_UINT32 {
            32;
        } else {
            nqp::die("We can't determine the number of bits for $type");
        }
    }

    method coerce(Chunk $chunk, $desired) {
        my int $got := $chunk.type;
        my int $got_int := $got == $T_INT || (self.is_fancy_int($got) && $got != $T_UINT32);

        if $got != $desired {
            if $desired == $T_VOID {
                return Chunk.new($T_VOID, "", $chunk.setup);
            }

            if $desired == $T_RETVAL {
                if $got == $T_OBJ {
                    return Chunk.new($T_RETVAL, $chunk.expr, $chunk);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_RETVAL, "({$chunk.expr} ? 1 : 0)", $chunk);
                }
                if $got_int {
                    return Chunk.new($T_RETVAL, $chunk.expr, $chunk);
                }
                if $got == $T_UINT32 {
                    return Chunk.new($T_RETVAL, "new nqp.NativeUIntRet({$chunk.expr})", $chunk);
                }
                if $got == $T_NUM {
                    return Chunk.new($T_RETVAL, "new nqp.NativeNumRet({$chunk.expr})", $chunk);
                }
                if $got == $T_STR {
                    return Chunk.new($T_RETVAL, $chunk.expr, $chunk);
                }
                if $got == $T_VOID {
                    return Chunk.new($T_RETVAL, "nqp.Null", $chunk);
                }
                if $got == $T_INT64 || $got == $T_UINT64 {
                    return Chunk.new($T_RETVAL, "nqp.int64ToObj(HLL, {$chunk.expr})", $chunk);
                }
            }

            if $desired == $T_CALL_ARG {
                if $got == $T_OBJ {
                    return Chunk.new($T_CALL_ARG, $chunk.expr, $chunk);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_CALL_ARG, "new nqp.NativeIntArg({$chunk.expr} ? 1 : 0)", $chunk);
                }
                if $got_int {
                    return Chunk.new($T_CALL_ARG, "new nqp.NativeIntArg({$chunk.expr})", $chunk);
                }
                if $got == $T_UINT32 {
                    return Chunk.new($T_CALL_ARG, "new nqp.NativeUIntArg({$chunk.expr})", $chunk);
                }
                if $got == $T_INT64 || $got == $T_UINT64 {
                    return Chunk.new($T_CALL_ARG, "nqp.int64ToObj(HLL, {$chunk.expr})", $chunk);
                }
                if $got == $T_NUM {
                    return Chunk.new($T_CALL_ARG, "new nqp.NativeNumArg({$chunk.expr})", $chunk);
                }
                if $got == $T_STR {
                    return Chunk.new($T_CALL_ARG, "new nqp.NativeStrArg({$chunk.expr})", $chunk);
                }
            }

            if $desired == $T_NUM {
                if $got_int || $got == $T_UINT32 {
                    # we store both as a javascript number, and 32bit integers fit into doubles
                    return Chunk.new($T_NUM, $chunk.expr, $chunk);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_NUM, "({$chunk.expr} ? 1 : 0)", $chunk);
                }
                if $got == $T_STR {
                    return Chunk.new($T_NUM, "nqp.strToNum({$chunk.expr})", $chunk);
                }
            }

            if $desired == $T_INT {
                if $got == $T_STR {
                    return Chunk.new($T_INT, "parseInt({$chunk.expr})", $chunk);
                }
                if $got == $T_NUM || $got == $T_UINT32 {
                    return Chunk.new($T_INT, "({$chunk.expr}|0)", $chunk);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_INT, "({$chunk.expr} ? 1 : 0)", $chunk);
                }
                if $got_int {
                    return Chunk.new($T_INT, $chunk.expr, $chunk);
                }
            }

            if $got == $T_OBJ {
                if $desired == $T_BOOL {
                    return Chunk.new($desired, "(/*await*/ (/*await*/ {$chunk.expr}.\$\$decont($*CTX)).\$\$toBool($*CTX))", $chunk);
                }
                return QAST::OperationsJS.unbox(self, $*HLL, $desired, $chunk);
            }

            if $desired == $T_STR {
                if $got_int || $got == $T_UINT32 || $got == $T_INT64 || $got == $T_UINT64 {
                    return Chunk.new($T_STR, $chunk.expr ~ '.toString()', $chunk);
                }
                elsif $got == $T_NUM {
                    return Chunk.new($T_STR, "nqp.numToStr({$chunk.expr})", $chunk);
                }
                elsif $got == $T_BOOL {
                    return Chunk.new($T_STR, "({$chunk.expr} ? '1' : '0')", $chunk);
                }
            }

            if $desired == $T_OBJ {
                if $got == $T_BOOL {
                    $chunk := Chunk.new($T_INT, "({$chunk.expr} ? 1 : 0)", $chunk);
                    $got := $T_INT;
                }
                elsif $got == $T_VOID {
                    # TODO think what's the correct thing here
                    return Chunk.new($T_OBJ, "nqp.Null", $chunk);
                }

                if $*HLL eq 'nqp' {
                    if $got == $T_NUM {
                        return Chunk.new($T_OBJ, "new nqp.NQPNum({$chunk.expr})", $chunk);
                    }
                    elsif $got == $T_STR {
                        return Chunk.new($T_OBJ, "new nqp.NQPStr({$chunk.expr})", $chunk);
                    }
                    elsif $got == $T_INT {
                        return Chunk.new($T_OBJ, "new nqp.NQPInt({$chunk.expr})", $chunk);
                    }
                }
                else {
                    my %convert;
                    %convert{$T_INT} := 'intToObj';
                    %convert{$T_INT8} := 'intToObj';
                    %convert{$T_INT16} := 'intToObj';
                    %convert{$T_INT64} := 'int64ToObj';
                    %convert{$T_UINT8} := 'intToObj';
                    %convert{$T_UINT16} := 'intToObj';
                    %convert{$T_UINT32} := 'intToObj';
                    %convert{$T_UINT64} := 'int64ToObj';
                    %convert{$T_NUM} := 'numToObj';
                    %convert{$T_STR} := 'strToObj';
                    %convert{$T_RETVAL} := 'retval';
                    nqp::die("Can't coerce $got to OBJ") unless nqp::existskey(%convert, $got);
                    return Chunk.new($T_OBJ, "nqp.{%convert{$got}}(HLL, {$chunk.expr})", $chunk);
                }
            }

            if $desired == $T_BOOL {
                if $got_int || $got == $T_UINT32 {
                    return Chunk.new($T_BOOL, $chunk.expr, $chunk);
                } elsif $got == $T_NUM {
                    return Chunk.new($T_BOOL, "({$chunk.expr} !== 0)", $chunk);
                } elsif $got == $T_STR {
                    return Chunk.new($T_BOOL, "({$chunk.expr} && {$chunk.expr} !== nqp.null_s)", $chunk);
                }
            }

            if $desired == $T_UINT64 {
                if $got == $T_INT64 {
                    return Chunk.new($T_UINT64, "nqp.asUintN(64, {$chunk.expr})", $chunk);
                }
                if $got == $T_INT {
                    return Chunk.new($T_UINT64, "nqp.BigInt({$chunk.expr} >>> 0)", $chunk);
                }
            }

            if $desired == $T_INT64 {
                if $got == $T_UINT64 {
                    return Chunk.new($T_INT64, "nqp.asIntN(64, {$chunk.expr})", $chunk);
                }
                if $got == $T_INT {
                    return Chunk.new($T_INT64, "nqp.BigInt({$chunk.expr})", $chunk);
                }
            }

            if self.is_fancy_int($desired) {
                my $int_chunk := $got == $T_INT ?? $chunk !! self.coerce($chunk, $T_INT);
                return Chunk.new($desired, self.int_to_fancy_int($desired, $int_chunk.expr) , $int_chunk);
            }

            return Chunk.new($desired, "nqp.coercion($got, $desired, {$chunk.expr})") #TODO
        }
        $chunk;
    }

    my %control_id;
    %control_id<last> := 1;
    %control_id<redo> := 2;
    %control_id<next> := 3;

    my @handle_all := <last next redo>;
    method handle_control($loop, $ctx, $body) {
        my @handled := $*HLL eq 'nqp' ?? $loop.handled !! @handle_all;
        if nqp::elems(@handled) > 0 {
            my @setup;

            if $loop.label {
                my $label := self.as_js($loop.label, :want($T_OBJ));
                @setup.push($label);
                @setup.push("$ctx.\$\$label = {$label.expr};\n");
            }


            my @handle_exceptions;

            my str $action := $*BLOCK.add_tmp;

            for @handled -> $type {
                my int $id := %control_id{$type};
                @setup.push("$ctx.\$\${nqp::uc($type)} = function() \{$action = $id\};\n");
                @handle_exceptions.push("if ($action === $id) \{ {self.do_control($type, $loop) } \}\n");
            }

            my str $unwind_marker := $*BLOCK.add_tmp;
            Chunk.new($body.type, $body.expr, [
                "$action = 0;\n",
                "try \{\n",
                "$ctx = new nqp.CtxJustHandler($*CTX, $*CTX, $*CTX.\$\$callThis);\n",
                Chunk.void(|@setup),
                "$unwind_marker = \{\};\n",
                "$ctx.\$\$unwind = $unwind_marker;\n",
                $body,
                "\} catch (e) \{\n",
                "if (e === $unwind_marker) \{\n",
                Chunk.void(|@handle_exceptions),
                "\}\n",
                "throw (e);",
                "\}\n"
            ]);
        }
        else {
            Chunk.new($body.type, $body.expr, ["$ctx = $*CTX;", $body]);
        }
    }


    # It's more useful for me during this development to emit partial code instead of quitting
    method NYI($msg) {
        if $!nyi eq 'ignore' {
        }
        elsif $!nyi eq 'warn' {
            note("NYI: $msg");
        }
        Chunk.new($T_OBJ,"nqp.NYI({quote_string($msg)})",["console.trace(\"NYI: \"+{quote_string($msg)});\n"]);
        #nqp::die("NYI: $msg");
    }


    method declare_js_vars(@vars) {
        if +@vars {
            'var '~nqp::join(",\n",@vars)~";\n";
        }
        else {
            '';
        }
    }

    has %!is_serializable;

    method is_serializable($cuid) {
        nqp::existskey(%!is_serializable, $cuid) ?? %!is_serializable{$cuid} !! 3;
    }

    method are_children_serializable($cuid) {
        nqp::existskey(%!is_serializable, $cuid) ?? %!is_serializable{$cuid} == 2 !! 3;
    }

    proto method mark_serializable($node) {*}

    method mark_children_serializable(QAST::Children $node) {
        my int $serializable := 0;
        for $node.list -> $child {
            my int $is_child_serializable := self.is_ctxsave($node) || self.mark_serializable($child);
            $serializable := $serializable || $is_child_serializable;
        }
        $serializable;
    }

    multi method mark_serializable(QAST::Block $node) {
        my int $children_serializable := self.mark_children_serializable($node);
        %!is_serializable{$node.cuid} := $children_serializable ?? 2 !! $node.blocktype ne 'immediate';
    }


    multi method mark_serializable(QAST::Children $node) {
        self.mark_children_serializable($node);
    }

    multi method mark_serializable($other) {
    }

    my %want_char := nqp::hash($T_INT, 'I', $T_NUM, 'N', $T_STR, 'S', $T_VOID, 'v');
    my sub want($node, $type) {
        my @possibles := nqp::clone($node.list);
        my $best := @possibles.shift;
        return $best unless %want_char{$type};
        my $char := %want_char{$type};
        for @possibles -> $sel, $ast {
            if nqp::index($sel, $char) >= 0 {
                $best := $ast;
            }
        }
        $best
    }

    proto method as_js($node, :$want) {
        if nqp::defined($want) {
            if nqp::istype($node, QAST::Want) {
                self.coerce(self.as_js(want($node, $want), :$want), $want)
            }
            else {
                self.coerce({*}, $want)
            }
        }
        else {
            nqp::die("Unknown want");
        }
    }


    # detect the result of HLL::Compiler.CTXSAVE, we need to handle this specially as for performance reasons we store some lexicals as actual javascript lexicals instead of on the context
    method is_ctxsave($node) {
        +$node.list == 2
        && nqp::istype($node[0], QAST::Op)
        && $node[0].op eq 'bind'
        && +$node[0].list == 2
        && nqp::istype($node[0][0], QAST::Var)
        && $node[0][0].name eq 'ctxsave';
    }

    method chunk_sequence($type, @chunks, :$node, :$result_child = -1, :$expr) {
        if nqp::defined($expr) && $result_child != -1 {
            nqp::die("Can't pass both a :expr and :result_child");
        }

        my @setup;

        my int $n := nqp::elems(@chunks);

        my str $result_var;

        my str $result := 'nqp.Null';

        if nqp::defined($expr) {
            $result := $expr;
        }


        if $result_child != -1 && $result_child != $n - 1 {
            $result_var := $*BLOCK.add_tmp;
            $result := $result_var;
        }

        my int $i := 0;
        while $i < $n {
            my $chunk := @chunks[$i];

            my str $chunk_expr := nqp::isstr($chunk) ?? $chunk !! $chunk.expr;

            nqp::push(@setup, $chunk);

            if $i == $result_child {
                if $result_var {
                    @setup.push("$result_var = $chunk_expr;\n");
                }
                else {
                    $result := $chunk_expr;
                }
            }

            $i := $i + 1;
        }

        Chunk.new($type, $result, @setup, :$node);
    }

    method compile_all_the_statements(QAST::Stmts $node, $want, :$result_child) {
        my @chunks;
        my @stmts := $node.list;

        if $want == $T_VOID {
            $result_child := -1;
        }
        elsif !nqp::defined($result_child) {
            $result_child := +$node.list - 1;
        }

        my int $i := 0;
        for @stmts -> $stmt {
            my $chunk := self.as_js(@stmts[$i], :want($i == $result_child ?? $want !! $T_VOID));
            @chunks.push($chunk);
            $i := $i + 1;
        }
        self.chunk_sequence($want, @chunks, :$result_child, :$node);
    }

    multi method as_js(QAST::Block $node, :$want) {
        my $outer     := try $*BLOCK;
        my $outer_loop := try $*LOOP;
        self.compile_block($node, $outer, $outer_loop, :$want);
    }

    method mangled_cuid($cuid) {
        'cuid'~$cuid;
    }


    has %!cuids;

    method register_cuid($node) {
        %!cuids{$node.cuid} := $node;
    }

    method is_known_cuid($node) {
        nqp::existskey(%!cuids, $node.cuid);
    }

    has %!serialized_code_ref_info;

    my class SerializedCodeRefInfo {
        has $!closure_template;
        has $!lexicals_type_info;
        has $!outer_cuid;
        has $!static_lexicals;
        has $!contvar_lexicals;
        has $!source_offset;
        has $!statevars;
        method outer_cuid() {$!outer_cuid}
        method lexicals_type_info() {$!lexicals_type_info}
        method closure_template() {$!closure_template}
        method static_lexicals() {$!static_lexicals}
        method contvar_lexicals() {$!contvar_lexicals}
        method statevars() {$!statevars}
        method source_offset() {$!source_offset}
    }

    method setup_cuids() {
        my @declared;
        my @vars;
        for %!cuids {
            my str $var := self.mangled_cuid($_.key);
            @vars.push($var);

            my int $has_statevars := nqp::existskey(%!serialized_code_ref_info, $_.key) && %!serialized_code_ref_info{$_.key}.statevars;

            my $class := $has_statevars ?? 'CodeRefWithStateVars' !! 'CodeRef';
            @declared.push("$var = new nqp.$class({quote_string($_.value.name)},{quote_string($_.key)})");
        }
        @declared.push("cuids = [{nqp::join(',', @vars)}]");
        self.declare_js_vars(@declared);
    }

    method set_code_objects() {
        my str $set := "";
        for %!cuids {
            my $code_obj := $_.value.code_object;
            if nqp::isconcrete($code_obj) {
                $set := $set ~ "{self.mangled_cuid($_.key)}.setCodeObj({self.value_as_js($code_obj)});\n";
            }
        }
        $set;
    }

    method set_is_thunk_flags() {
        my str $set := "";
        for %!cuids {
            if $_.value.is_thunk {
                $set := $set ~ "{self.mangled_cuid($_.key)}.isThunk = true;\n";
            }
        }
        $set;
    }

    method stored_result($chunk, :$want) {
        if $chunk.type == $T_VOID || $want == $T_VOID {
            Chunk.void($chunk, $chunk.expr~";\n", :node($chunk.node));
        }
        else {
            my str $tmp := $*BLOCK.add_tmp();
            Chunk.new($chunk.type, $tmp, [$chunk, "$tmp = {$chunk.expr};\n"], :node($chunk.node));
        }
    }


    method type_info_for_lexicals(BlockInfo $block) {
        my @type_info;
        for $block.variables -> $var {
            if self.is_dynamic_var($block, $var) {
                nqp::push(@type_info,quote_string($var.name)
                    ~ ': ' ~ nqp::objprimspec($var.returns));
            }
        }

        '{' ~ nqp::join(',', @type_info) ~ '}';
    }

    method wrap_static_block($expected_outer, @output, $block) {
        my int $missing_outer := $expected_outer.cuid ne $*BLOCK.cuid && $expected_outer.ctx ne 'null';
        if $missing_outer {
            @output.push("//Static wrapping\n");
            @output.push("(function() \{\n");
            @output.push("var {$expected_outer.ctx} = null;\n");
        }

        $block();

        if $missing_outer {
            @output.push("\})();\n");
        }
    }

    method has_closure_template($block_info) {
        $block_info.qast.blocktype ne 'immediate'
    }

    method clone_inners($block) {
        my @clone_inners;
        for $block.cloned_inners -> $kv {
            my str $reg   := $kv.value;
            my str $cuid := self.mangled_cuid($kv.key);
            my $block_info := %*BLOCKS_INFO{$kv.key};

            if nqp::existskey(%*BLOCKS_STATEVARS, $kv.key) && !self.has_closure_template($block_info) {
                @clone_inners.push(%*BLOCKS_STATEVARS{$kv.key});
            }

            self.wrap_static_block($block_info.outer, @clone_inners, -> {
                my $outer := $block_info.outer.ctx;
                if self.has_closure_template($block_info) {
                    if nqp::existskey($block.captured_inners, $kv.key) {
                        @clone_inners.push("$reg = $cuid.captureAndClosureCtx($outer);\n");
                    }
                    else {
                        @clone_inners.push("$reg = $cuid.closureCtx($outer);\n");
                    }
                }
                else {
                    unless %*BLOCKS_DONE{$kv.key} {
                        nqp::die("//clone_inners - broken block: {$kv.key}");
                    }

                    # Avoid emitting duplicated code with both .capture and .closure
                    if nqp::existskey($block.captured_inners, $kv.key) {
                        my $set_outer := self.is_serializable($kv.key) ?? $outer !! 'null';
                        @clone_inners.push("$reg = $cuid.captureAndClosure($set_outer, ");
                        @clone_inners.push(%*BLOCKS_DONE{$kv.key});
                        @clone_inners.push(");\n");
                    }
                    else {
                        @clone_inners.push("$reg = $cuid.closure");
                        @clone_inners.push(%*BLOCKS_DONE{$kv.key});
                        if self.is_serializable($kv.key) {
                            @clone_inners.push(".setOuter($outer);\n");
                        }
                        else {
                            @clone_inners.push(";\n");
                        }
                    }
                }
            });
        }
        Chunk.void(|@clone_inners);
    }

    method capture_inners($block) {
        my @capture_inners;
        for $block.captured_inners -> $kv {
            if nqp::existskey($block.cloned_inners, $kv.key) && %*BLOCKS_DONE{$kv.key} {
                # We emit captureAndClosure in clone_inners
            }
            else {
                my str $cuid := self.mangled_cuid($kv.key);
                my str $reg   := $kv.value;

                if nqp::existskey(%*BLOCKS_STATEVARS, $kv.key) {
                    @capture_inners.push(%*BLOCKS_STATEVARS{$kv.key});
                }

                my $block_info := %*BLOCKS_INFO{$kv.key};
                self.wrap_static_block($block_info.outer, @capture_inners, -> {
                    if self.has_closure_template($block_info) {
                        @capture_inners.push("$reg = $cuid.captureCtx({$block_info.outer.ctx});\n");
                    } else {
                        @capture_inners.push("$reg = $cuid.capture");

                        @capture_inners.push(%*BLOCKS_DONE{$kv.key});

                        if 1 { # TODO check if we need to have this closure serializable
                            @capture_inners.push(".setOuter(" ~ $block_info.outer.ctx ~ ")");
                        }
                        @capture_inners.push(";\n");
                    }

                });
            }

        }
        Chunk.void(|@capture_inners);
    }

    method compile_block(QAST::Block $node, $outer, $outer_loop, :$want, :@extra_args=[], :$hll) {

        my str $outer_ctx := try $*CTX // "null";

        my $outer_used_ctx := try %*USED_CTXS;


        if self.is_known_cuid($node) {
        }
        else {
            self.register_cuid($node);

            my $*BINDVAL := 0;
            my $*BLOCK := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu));

            my $*LOOP := BlockBarrier.new($*BLOCK, $outer_loop);

            my $*CTX := self.unique_var('ctx');
            $*BLOCK.ctx($*CTX);

            %*BLOCKS_INFO{$node.cuid} := $*BLOCK;

            my int $body_want := $node.blocktype eq 'immediate' ?? $want !! $T_RETVAL;

            my int $has_closure_template := $node.blocktype ne 'immediate';

            my %*USED_CTXS;

            %*USED_CTXS := $outer_used_ctx unless $has_closure_template;

            my $stmts := self.compile_all_the_statements($node, $body_want);


            my $outer_ctx := $has_closure_template ?? "this.getOuterCtx()" !! ($*BLOCK.outer ?? $*BLOCK.outer.ctx !! 'null');
            my str $create_ctx :=  "var $*CTX = new nqp.Ctx(caller_ctx, $outer_ctx, this);\n"
                ~ ($hll ?? "$*CTX.\$\$hll = nqp.getHLL({quote_string($hll)});\n" !! '');

            %*USED_CTXS{$*CTX} := 0;

            my $sig := $node.custom_args ?? Chunk.new($T_NONVAL, 'caller_ctx') !! self.compile_sig($*BLOCK.params);

            my str $first_time_marker := $*BLOCK.maybe_first_time_marker;

            my str $pass_exceptions := '';

            my int $wrap_in_try := 0;
            my str $exit_handler;
            my str $result_for_exit_handler;
            my $result_for_exit_handler_chunk;

            if $node.has_exit_handler {
              $result_for_exit_handler := $*BLOCK.add_tmp;
              $result_for_exit_handler_chunk := self.coerce(Chunk.new($stmts.type, $stmts.expr), $T_OBJ);
              $wrap_in_try := 1;
              $exit_handler := "\} finally \{/*await*/ nqp.exitHandler($*CTX, HLL, $result_for_exit_handler);\n";
            }

            if $*BLOCK.pass_on_exceptions {
                $wrap_in_try := 1;
                $pass_exceptions :=
                    ~ "\} catch (e) \{\n"
                    ~ "if (e instanceof nqp.PassExceptionToCaller) \{\n"
                    ~ "throw e.exception;\n"
                    ~ "\} else \{"
                    ~ "throw e;\n"
            }

            my str $save_args := $*BLOCK.has_own_variable('$*DISPATCHER') ?? "$*CTX.\$\$args = Array.prototype.slice.call(arguments);\n" !! '';

            my @function := [
                "/*async*/ function {self.mangled_cuid($node.cuid)}({$sig.expr}) \{\n" ,
                $first_time_marker ?? "let {$first_time_marker}Init = $first_time_marker;\n" !! '',
                $first_time_marker ?? "$first_time_marker = 0;\n" !! '',
                self.declare_js_vars($*BLOCK.tmps),
                self.declare_js_vars($*BLOCK.js_lexicals),
                $create_ctx,
                $save_args,
                $*BLOCK.var_setup,
                $sig,
                self.clone_inners($*BLOCK),
                self.capture_inners($*BLOCK),
                $wrap_in_try ?? "try \{\n" !! '',
                $stmts,
                $result_for_exit_handler ?? "$result_for_exit_handler = {$result_for_exit_handler_chunk.expr};\n" !! '',
                "return {$stmts.expr};\n",
                $pass_exceptions,
                $exit_handler,
                $wrap_in_try ?? "\}\n" !! '',
                "\}"
            ];

            if $*BLOCK.statevars || $first_time_marker {
                my @vars;
                for $*BLOCK.statevars -> $kv {
                    @vars.push($kv.key ~ " = " ~ "{self.value_as_js($kv.value)}.\$\$clone()");
                }
                if $first_time_marker {
                    @vars.push($first_time_marker ~ " = 1");
                }
                %*BLOCKS_STATEVARS{$node.cuid} := "var " ~ nqp::join(',', @vars) ~ ";\n";
            }

            my $outer_cuid;
            if nqp::defined($*BLOCK.outer) && $*BLOCK.outer.cuid {
                $outer_cuid := self.mangled_cuid($*BLOCK.outer.cuid);
            }
            my str $lexicals_type_info := self.type_info_for_lexicals($*BLOCK);
            my $closure_template;

            my int $statevars;

            if $has_closure_template {
                my @used_ctxs;
                for %*USED_CTXS -> $kv {
                    my int $depth := $kv.value;
                    next if $depth == 0;
                    my str $ctx := 'this.getOuterCtx()';
                    while $depth > 1 {
                        $ctx := $ctx ~ '.$$outer';
                        $depth := $depth - 1;
                    }
                    @used_ctxs.push("let {$kv.key} = $ctx;\n");
                }

                nqp::splice(@function, @used_ctxs, 5, 0);

                $statevars := nqp::existskey(%*BLOCKS_STATEVARS, $node.cuid);

                if $statevars {
                    @function.unshift(
                        "function() \{\n"
                        ~ %*BLOCKS_STATEVARS{$node.cuid}
                        ~ "return ");
                    @function.push('}');
                }

                $closure_template := Chunk.new($T_NONVAL, '', @function);
            }
            else {
                %*BLOCKS_DONE{$node.cuid} := Chunk.void("(", |@function, ")");
            }

            my $var;
            my @static;
            my @contvar;

            for $*BLOCK.variables -> $var {
                my $name_value_pair;
                if $var.decl eq 'static' || $var.decl eq 'contvar' {
                    if $*COMPUNIT && $*COMPUNIT.sc && $*COMPUNIT.compilation_mode {
                        my $sc     := nqp::getobjsc($var.value);
                        my int $idx    := nqp::scgetobjidx($sc, $var.value);
                        $name_value_pair := quote_string($var.name) ~ ':' ~ (
                            ($sc =:= $*COMPUNIT.sc)
                            ?? $idx
                            !! "[{quote_string(nqp::scgethandle($sc))}, $idx]");
                    }
                    else {
                        $name_value_pair := quote_string($var.name) ~ ':' ~ self.value_as_js($var.value);
                    }
                }

                if $var.decl eq 'static' {
                    @static.push($name_value_pair);
                } elsif $var.decl eq 'contvar' {
                    @contvar.push($name_value_pair);
                }
            }

            my $static_lexicals;
            if +@static {
               $static_lexicals := '{' ~ nqp::join(',', @static) ~ '}';
            }

            my $contvar_lexicals;
            if +@contvar {
               $contvar_lexicals := '{' ~ nqp::join(',', @contvar) ~ '}';
            }

            my int $source_offset := $node.node ?? $node.node.from !! -1;

            %!serialized_code_ref_info{$node.cuid} := SerializedCodeRefInfo.new(
                :$statevars,
                :$closure_template,
                :$outer_cuid,
                :$lexicals_type_info,
                :$static_lexicals,
                :$contvar_lexicals,
                :$source_offset
            );
        }

        if $node.blocktype eq 'raw' {
            Chunk.void();
        } elsif $node.blocktype eq 'immediate' {
            my $setup := [];
            my $cloned_block := $outer.clone_inner($node);

            my @args := [$outer_ctx, 'null'];
            for @extra_args -> $arg {
                @args.push($arg);
            }

            self.stored_result(Chunk.new($want, "/*await*/ " ~ $cloned_block~".\$\$call({nqp::join(',', @args)})", $setup, :$node), :$want);
        }
        elsif $node.blocktype eq 'declaration' ||  $node.blocktype eq '' {
            if $want == $T_VOID {
                Chunk.void();
            }
            else {
                my $cloned_block := $outer.clone_inner($node);
                Chunk.new($T_OBJ, $cloned_block);
            }
        }
        elsif $node.blocktype eq 'declaration_static' {
            $outer.capture_inner($node);
            if $want == $T_VOID {
                Chunk.void();
            }
            else {
                my $cloned_block := $outer.clone_inner($node);
                Chunk.new($T_OBJ, $cloned_block);
            }
        }
        else {
            self.NYI("unknown blocktype: {$node.blocktype}");
        }
    }

    has $!unique_vars;

    # TODO avoid accidental name collisions
    method unique_var($prefix) {
        $!unique_vars := $!unique_vars + 1;
        $prefix~$!unique_vars;
    }


    multi method as_js(QAST::IVal $node, :$want) {
        if $want == $T_INT64 || $want == $T_UINT64 {
            Chunk.new($want,'nqp.BigInt("'~$node.value()~'")', :$node);
        } else {
            # TODO think about 64bit values
            Chunk.new($T_INT,'('~$node.value()~')', :$node);
        }
    }

    multi method as_js(QAST::NVal $node, :$want) {
        if nqp::iseq_n($node.value, nqp::inf) {
            Chunk.new($T_NUM,'Infinity', :$node);
        } elsif nqp::iseq_n($node.value, nqp::neginf) {
            Chunk.new($T_NUM,'(-Infinity)', :$node);
        } else {
            Chunk.new($T_NUM,'('~$node.value()~')', :$node);
        }
    }

    multi method as_js(QAST::SVal $node, :$want) {
        Chunk.new($T_STR,quote_string($node.value()), :$node);
    }

    multi method as_js(QAST::BVal $node, :$want) {
        Chunk.new($T_OBJ, self.mangled_cuid($node.value.cuid), :$node);
    }

    # Helps with register allocation on other backends
    # We don't do allocate registers so just ignore that
    multi method as_js(QAST::Stmt $node, :$want) {
        self.compile_all_the_statements($node, $want, :result_child($node.resultchild));
    }

    multi method as_js(QAST::Stmts $node, :$want) {
        self.compile_all_the_statements($node, $want, :result_child($node.resultchild));
    }

    multi method as_js(QAST::VM $node, :$want) {
        if $node.supports('js') {
            self.as_js($node.alternative('js'), :$want);
        }
        else {
            self.NYI("To compile on the JS backend, QAST::VM must have an alternative 'js'|" ~ $node.dump);
        }
    }

    multi method as_js(QAST::Op $node, :$want) {
        QAST::OperationsJS.compile_op(self, $node, $*HLL, :$want);
    }

    method set_static_info() {
        my @setup;

        for %!cuids -> $kv {
            if nqp::existskey(%!serialized_code_ref_info, $kv.key) {
                my $cuid := $kv.key;
                my $info := %!serialized_code_ref_info{$cuid};

                @setup.push(
                    ~ self.mangled_cuid($cuid)
                    ~ ".setInfo("
                    ~ ($info.outer_cuid // "null") ~ ",");

                @setup.push($info.closure_template // "null");

                @setup.push(
                    ~ "," ~ $info.lexicals_type_info
                    ~ "," ~ ($info.static_lexicals // 'null')
                    ~ "," ~ ($info.contvar_lexicals // 'null')
                    ~ "," ~ ($info.source_offset)
                    ~ ");\n");
            }
        }

        Chunk.new($T_VOID, "", @setup);
    }

    method emit_code_refs_list($ast) {
        my @blocks;

        if $ast.code_ref_blocks() -> $code_ref_blocks {
            for $code_ref_blocks -> $block {
                self.register_cuid($block);
                @blocks.push(self.mangled_cuid($block.cuid));
            }
         }

        "var code_refs = nqp.createArray([{nqp::join(',',@blocks)}]);\n" # TODO
    }

    my sub encode_as_base64($buf) {
        my @base64 := nqp::split('', "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");

        my @str;

        my int $i := 0;

        my int $size := nqp::elems($buf);

        while $i < $size {
            my int $c := nqp::atpos_i($buf, $i++);
            $c := $c * 256;
            if $i < $size {
                $c := $c + nqp::atpos_i($buf, $i);
            }

            $i++;

            $c := $c * 256;
            if $i < $size {
                $c := $c + nqp::atpos_i($buf, $i);
            }
            $i++;

            nqp::push(@str, @base64[nqp::bitshiftr_i($c +& 0x00fc0000, 18)]);
            nqp::push(@str, @base64[nqp::bitshiftr_i($c +& 0x0003f000, 12)]);

            if $i > $size + 1 {
                nqp::push(@str, '=');
            } else {
                nqp::push(@str, @base64[nqp::bitshiftr_i($c +& 0x00000fc0, 6)]);
            }

            if $i > $size {
                nqp::push(@str, '=');
            } else {
                nqp::push(@str, @base64[$c +& 0x0000003f]);
            }
        }

        nqp::join('', @str);
    }

    method create_sc($ast) {
        my @sh;
        my $sc := $ast.sc;

        # TODO refactor
        if !nqp::defined($ast.sc) {
            # TODO the code_refs are empty here - think what to do about it
            return self.emit_code_refs_list($ast) ~ self.setup_wvals;
        }

        my $sc_tuple := self.serialize_sc($sc);
        my str $sc_data := nqp::isstr($sc_tuple[0]) ?? $sc_tuple[0] !! encode_as_base64($sc_tuple[0]);
        my $sc_sh := $sc_tuple[1];


        my int $i := 0;
        while $i < nqp::elems($sc_sh) {
            my $s := nqp::atpos_s($sc_sh,$i);
            my str $got := nqp::isnull_s($s) ?? 'nqp.null_s' !! quote_string($s);
            @sh.push($got);
            $i := $i + 1;
        }

        my str $quoted_data := nqp::isnull_s($sc_data) ?? 'null' !! quote_string($sc_data);

        self.declare_var(QAST::Var.new( :name('conflicts'), :scope('local'), :decl('var')));

        my $resolve_conflicts;
        if $ast.repo_conflict_resolver {
            $resolve_conflicts := $ast.repo_conflict_resolver;
            $resolve_conflicts.push(QAST::Var.new( :name('conflicts'), :scope('local') ));
        } else {
            $resolve_conflicts := QAST::Op.new(
                :op('die_s'),
                QAST::SVal.new( :value('Repossession conflicts occurred during deserialization') )
            );
        }

        my $resolve_conflicts_chunk := self.as_js(QAST::Op.new(
            :op('if'),
            QAST::Op.new(
                :op('elems'),
                QAST::Var.new( :name('conflicts'), :scope('local') )
            ),
            $resolve_conflicts
        ), :want($T_VOID));

        Chunk.void(
            "var sh = nqp.createArray([{nqp::join(',',@sh)}]);\n"
            ~ "var sc = nqp.op.createsc({quote_string(nqp::scgethandle($sc))});\n"
            ~ self.emit_code_refs_list($ast)
            ~ "{$*BLOCK.mangle_local('conflicts')} = nqp.list(HLL, []);\n"
            , "nqp.op.deserialize(HLL, $quoted_data,sc,sh,code_refs,{$*BLOCK.mangle_local('conflicts')},cuids,function() \{{self.setup_wvals}\});\n"
            ~ "nqp.op.scsetdesc(sc,{quote_string(nqp::scgetdesc($sc))});\n",
            $resolve_conflicts_chunk
        );
    }

    method do_control($type, $loop) {
        my str $label := " {$loop.js_label}";
        if $type eq 'last' {
            "break$label;\n";
        }
        elsif $type eq 'next' {
            "continue$label;\n";
        }
        elsif $type eq 'redo' {
            "{$loop.redo} = true;\n;continue{$loop.redo_label ?? ' ' ~ $loop.redo_label !! $label};\n";
        }
    }

    my sub ucfirst($str) {
        nqp::uc(nqp::substr($str, 0, 1)) ~ nqp::substr($str, 1);
    }

    method throw_control_exception($type, $loop, $label) {
        my int $direct := 1;
        while nqp::defined($loop) {
            if nqp::istype($loop, LoopInfo) {
                if $label {
                    if nqp::istype($loop.label, QAST::WVal) && nqp::eqaddr($loop.label.value, $label.value) {
                        if $direct {
                            return Chunk.void(self.do_control($type, $loop));
                        }
                        else {
                            $loop.handle($type);
                        }
                    }
                    else {
                        # TODO - make the loop have a label in javascript land
                        $direct := 0;
                    }
                }
                else {
                    if $direct {
                        return Chunk.void(self.do_control($type, $loop));
                    }
                    else {
                        $loop.handle($type);
                        return Chunk.void("/*await*/ $*CTX.$type();\n");
                    }
                }
            }
            elsif nqp::istype($loop, BlockBarrier) {
                $direct := 0;
            }
            $loop := $loop.outer;
        }

        if $label {
            my $compiled_label := self.as_js($label, :want($T_OBJ));
            Chunk.void($compiled_label, "/*await*/ $*CTX.{$type}Labeled({$compiled_label.expr});\n");
        }
        else {
            self.NYI("can't find surrounding loop for $type");
        }
    }


    my sub loadable($name) {
        # workaround for webpack
        my str $path := literal_subst($name, '::', '/');
        quote_string($name) ~ ", function() \{return require({quote_string($path)})\}";
    }

    method is_op($node, $op) {
        nqp::istype($node, QAST::Op) && $node.op eq $op;
    }


    my @types := [$T_OBJ, $T_INT, $T_NUM, $T_STR, $T_INT64, $T_UINT64];
    method type_from_typeobj($typeobj) {
        my int $type := nqp::objprimspec($typeobj);
        if $type == 1 {
            my int $bits := nqp::objprimbits($typeobj);
            my int $unsigned := nqp::objprimunsigned($typeobj);
            if $bits == 8 {
                $unsigned ?? $T_UINT8 !! $T_INT8;
            }
            elsif $bits == 16 {
                $unsigned ?? $T_UINT16 !! $T_INT16;
            }
            elsif $bits == 32 {
                $unsigned ?? $T_UINT32 !! $T_INT;
            }
            else {
                $T_INT;
            }
        }
        else {
          @types[$type];
        }
    }

    my @suffix := ['', '_i', '_n', '_s'];
    @suffix[$T_INT64] := '_i64';
    @suffix[$T_UINT64] := '_u64';

    method suffix_from_type($type) {
        self.is_fancy_int($type) ?? '_i' !! @suffix[$type];
    }

    method run_with_module($code) {
        "/*await*/ " ~ $code ~ ".\$\$apply([nqp.loaderCtx, null].concat(nqp.args(isMain)));\n";
    }

    multi method as_js(QAST::CompUnit $node, :$want) {
        # Should have a single child which is the outer block.
        if nqp::elems(@($node)) != 1 || !nqp::istype($node[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
        }

        my $*COMPUNIT := $node;

        my $*HLL := '';
        if $node.hll {
            $*HLL := $node.hll;
        }

        # A fake outer block
        my $*BLOCK := BlockInfo.new(NQPMu, NQPMu);
        $*BLOCK.ctx("null");
        my $*CTX := "null";

        my $*RETURN;

        my @pre;
        {
            my $*IN_PRE_SERIALIZE := 1;
            # We create this context so that dependencies are loaded relative to this file
            my $*CTX := 'ctxWithPath';
            @pre.push(
                "var ctxWithPath = new nqp.Ctx(null, null, null);\n"
                ~ "ctxWithPath['\$*LOADBYTECODE_FROM'] = module;\n");
            for $node.pre_deserialize -> $node {
                @pre.push(self.as_js($node, :want($T_VOID)));
            }
        }
        my $pre := Chunk.new($T_VOID, "", @pre);

        my $instant := try $*INSTANT;


        # TODO needs thinking about, it seems there is really nothing to capture here and a setting is forced as outer
        self.mark_serializable($node[0]);

        # Compile the block.
        my $block_js := self.compile_block($node[0], $*BLOCK, $*LOOP, :hll($node.hll), :want($T_OBJ));

        my @post;
        for $node.post_deserialize -> $node {
            @post.push(self.as_js($node, :want($T_VOID)));
        }
        my $post := Chunk.new($T_VOID, "", @post);


        my $body;

        if nqp::defined($node.main) {
            my $main_block := QAST::Block.new($node.main);

            my $main := self.as_js($main_block, :want($T_OBJ));

            $body := $instant ?? Chunk.void($block_js, $main, self.run_with_module($main.expr)) !! $main;
            
        }
        else {
            $body := $instant ?? Chunk.void($block_js, self.run_with_module($block_js.expr)) !! $block_js;
        }


        # TODO nested compunits, we need to handle is_nested the same as the moar backend

        my int $comp_mode := $node.compilation_mode;

        my $perl6_filename := quote_string((try $*PERL6_FILENAME) || '');

        my str $set_hll := "nqp.setCodeRefHLL(cuids, HLL, __filename, $perl6_filename);\n";

        my $set_code_objects := self.set_code_objects;
        my $create_sc := $comp_mode ?? self.create_sc($node) !! '';
        my @setup := [$pre , self.declare_js_vars($*BLOCK.js_lexicals), $create_sc, $set_code_objects,  self.declare_js_vars($*BLOCK.tmps), self.capture_inners($*BLOCK), self.clone_inners($*BLOCK), $set_hll, $post, $body];
        if !$instant {
            @setup.push("return new nqp.EvalResult({$body.expr}, nqp.createArray(cuids))");
        }

        @setup.unshift("return nqp.run(/*async*/ function() \{\n");
        @setup.push("\}, isMain);\n");
        Chunk.new($T_VOID, "", @setup);
    }


    method is_block_part_of_sc($block) {
        return 0 unless try $*COMPUNIT && $*COMPUNIT.code_ref_blocks();
        for $*COMPUNIT.code_ref_blocks() -> $block_in_compunit {
            if nqp::eqaddr($block, $block_in_compunit) {
                return 1;
            }
        }
        return 0;
    }

    multi method as_js(QAST::ParamTypeCheck $node, :$want) {
        my $check := self.as_js($node[0], :want($T_BOOL));
        Chunk.void($check, "if (!{$check.expr}) return nqp.paramcheckfailed(HLL, $*CTX, Array.prototype.slice.call(arguments));\n");
    }

    my %default_value := nqp::hash($T_OBJ, 'nqp.Null', $T_INT, '0', $T_NUM, '0', $T_STR, 'nqp.null_s', $T_INT16, '0', $T_INT8, '0', $T_UINT8, '0', $T_UINT16, '0', $T_UINT32, '0', $T_UINT64, 'nqp.ZERO',  $T_INT64, 'nqp.ZERO');

    method declare_var(QAST::Var $node) {
        my int $type := self.type_from_typeobj($node.returns);

        if $node.decl eq 'var' && ($node.scope eq 'local' || $node.scope eq 'lexical') {
            $*BLOCK.register_var_type($node, $type);
        }

        if $node.decl eq 'var' && $node.scope eq 'lexicalref' {
            $*BLOCK.register_lexicalref($node, self.type_from_typeobj($node.returns));
            $*BLOCK.add_variable($node);
            if !self.is_dynamic_var($*BLOCK, $node) {
                $*BLOCK.add_js_lexical($*BLOCK.add_mangled_var($node));
            }
        }
        elsif $node.decl eq 'var' || $node.decl eq 'contvar' || $node.decl eq 'static' || $node.decl eq 'statevar' {
            $*BLOCK.add_variable($node);

            if !self.is_dynamic_var($*BLOCK, $node) {
                my str $mangled_name := $*BLOCK.add_mangled_var($node);
                if $node.decl eq 'contvar' {
                    $*BLOCK.add_js_lexical_with_value($mangled_name, "{self.value_as_js($node.value)}.\$\$clone()");
                }
                elsif $node.decl eq 'static' {
                    $*BLOCK.add_js_lexical_with_value($mangled_name, self.value_as_js($node.value));
                }
                elsif $node.decl eq 'statevar' {
                    $*BLOCK.add_js_lexical_with_value($mangled_name, $*BLOCK.add_statevar($node.value));
                }
                else {
                    $*BLOCK.add_js_lexical_with_value($mangled_name, %default_value{$type});
                }
            }
        }
        elsif $node.decl eq 'param' {
            $*BLOCK.add_variable($node);
            if $node.scope eq 'local' || $node.scope eq 'lexical' {
                $*BLOCK.register_var_type($node, $type);
                if !self.is_dynamic_var($*BLOCK, $node) {
                    $*BLOCK.add_mangled_var($node);
                }
                $*BLOCK.add_param($node);
            }
            else {
                nqp::die("Parameter cannot have scope '{$node.scope}'; use 'local' or 'lexical'");
            }
        }
        elsif $node.decl eq '' {
        }
        else {
            nqp::die("Unimplemented var declaration type {$node.decl}");
        }
    }

    multi method as_js(QAST::Var $node, :$want) {
        self.declare_var($node);
        self.compile_var($node, :$want);
    }

    multi method as_js(QAST::VarWithFallback $node, :$want) {
        my $compiled := self.compile_var($node, :$want);
        my int $can_be_null :=
          $compiled.type == $T_OBJ
          || $compiled.type == $T_CALL_ARG
          || $compiled.type == $T_RETVAL;

        if $*BINDVAL || !$can_be_null {
            $compiled
        }
        else {
            my $fallback := self.as_js($node.fallback, :want($T_OBJ));
            my str $tmp := $*BLOCK.add_tmp();

            # We can put a T_OBJ into a T_CALL_ARG or T_RETVAL without casting
            Chunk.new($compiled.type, $tmp, [
                $compiled,
                "if ({$compiled.expr} === nqp.Null) \{\n"
                    ,$fallback
                    ,"$tmp = {$fallback.expr};\n\} else \{\n$tmp = {$compiled.expr};\n\}\n"
                    ]);
        }
    }

    multi method as_js(QAST::Regex $node, :$want) {
        RegexCompiler.new(compiler => self).compile($node);
    }

    has %!wval;
    has %!wval_mangling;

    method value_as_js($value) {
        my $sc     := nqp::getobjsc($value);
        my str $handle := nqp::scgethandle($sc);
        my int $idx    := nqp::scgetobjidx($sc, $value);

        if $*IN_PRE_SERIALIZE {
            # We can't setup all the wvals yet
            return "nqp.wval({quote_string($handle)},$idx)";
        }

        my str $key := $handle ~ "@" ~ $idx;

        if !nqp::existskey(%!wval, $key) {
          %!wval{$key} := "nqp.wval({quote_string($handle)},$idx)";
          %!wval_mangling{$key} := 'wval' ~ +%!wval_mangling;
        }
        %!wval_mangling{$key};
    }

    method setup_wvals() {
       my str $setup := '';
       for %!wval_mangling -> $kv {
           $setup := $setup ~ $kv.value ~ ' = ' ~ %!wval{$kv.key} ~ "\n";
       }
       $setup;
    }

    method declare_wvals() {
       my @vars;
       for %!wval_mangling -> $kv {
           @vars.push($kv.value);
       }
       self.declare_js_vars(@vars);
    }

    multi method as_js(QAST::WVal $node, :$want) {
        Chunk.new($T_OBJ, self.value_as_js($node.value));
    }

    method var_is_lexicalish(QAST::Var $var) {
        $var.scope eq 'lexical' || $var.scope eq 'typevar';
    }

    method as_js_clear_bindval($node, :$want) {
        my $*BINDVAL := 0;
        self.as_js($node, :$want);
    }

    method figure_out_type(QAST::Var $var) {
        my $type := $*BLOCK.var_type($var);
        if nqp::defined($type) {
            return $type;
        }

        if $var.scope eq 'lexical' || $var.scope eq 'typevar' {
            # Try to find it in an outer scope.
            my $cur_block := $*BLOCK.outer();
            while nqp::istype($cur_block, BlockInfo) {
                $type := $cur_block.var_type($var);
                if nqp::defined($type) {
                    return $type;
                }
                else {
                    $cur_block := $cur_block.outer();
                }
            }
        }

        # TODO var not found and has .returns

        $T_OBJ;
    }

    method figure_out_lexicalref_type(QAST::Var $var) {
        my $cur_block := $*BLOCK;
        while nqp::istype($cur_block, BlockInfo) {
            my $type := $cur_block.lexicalref_type($var);
            if nqp::defined($type) {
                return $type;
            }
            else {
                $cur_block := $cur_block.outer();
            }
        }
        NQPMu;
    }

    method compile_var_as_js_var(QAST::Var $var) {
        my $type := self.figure_out_type($var);
        if $*BINDVAL {
            # TODO better source mapping
            my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type));
            self.stored_result(Chunk.new($type, self.set_var($var, $bindval.expr), [$bindval]));
        }
        else {
            Chunk.new($type, self.get_var($var), :node($var));
        }
    }

    method compile_var_as_part_of_ctx(QAST::Var $var, :$want) {
        my $type := self.figure_out_type($var);
        if $*BINDVAL {
            my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type));
            if $var.decl eq 'var' {
                self.stored_result(Chunk.new($type, "({$*BLOCK.ctx}[{quote_string($var.name)}] = {$bindval.expr})",  $bindval), :$want);
            }
            else {
                if $*BLOCK.ctx_for_var($var) -> $ctx {
                    self.stored_result(Chunk.new($type, "({$ctx}[{quote_string($var.name)}] = {$bindval.expr})",  $bindval), :$want);
                }
                else {
                    # nqp::die("we can't find ctx for {$var.name}");
                    self.stored_result(Chunk.new($type, "{$*BLOCK.ctx}.bind({quote_string($var.name)}, {$bindval.expr})",  $bindval), :$want);
                }
            }
        }
        else {
            if $var.decl && $var.decl ne 'param' {
                my str $initial_value;
                if $var.decl eq 'var' {
                    $initial_value := %default_value{$type};
                }
                elsif $var.decl eq 'contvar' {
                    $initial_value := "{self.value_as_js($var.value)}.\$\$clone()";
                }
                elsif $var.decl eq 'static' {
                    $initial_value := self.value_as_js($var.value);
                }
                elsif $var.decl eq 'statevar' {
                    $initial_value := $*BLOCK.add_statevar($var.value);
                }
                else {
                    nqp::die("can't handle:" ~ $var.decl);
                }

                $*BLOCK.add_var_setup("{$*BLOCK.ctx}[{quote_string($var.name)}] = $initial_value;\n");

                Chunk.new($type, "{$*BLOCK.ctx}[{quote_string($var.name)}]", :node($var));
            }
            else {
                if $*BLOCK.ctx_for_var($var) -> $ctx {
                    Chunk.new($type, "$ctx[{quote_string($var.name)}]", :node($var));
                }
                else {
                    # nqp::die("we can't find ctx for {$var.name}");
                    Chunk.new($type, "{$*BLOCK.ctx}.lookup({quote_string($var.name)})", :node($var));
                }
            }
        }
    }

    method set_var($var, $js_expr) {
        if self.is_dynamic_var($*BLOCK, $var) {
            if $*BLOCK.ctx_for_var($var) -> $ctx {
                "{$ctx}[{quote_string($var.name)}] = $js_expr;\n";
            }
            else {
                "{$*BLOCK.ctx}.bind({quote_string($var.name)}, $js_expr);\n";
            }
        }
        else {
            my str $mangled := $*BLOCK.mangle_var($var);
            '('~$mangled~' = ('~ $js_expr ~ "));\n"
        }
    }

    method get_var($var) {
        if self.is_dynamic_var($*BLOCK, $var) {
            if $*BLOCK.ctx_for_var($var) -> $ctx {
                "$ctx[{quote_string($var.name)}]";
            }
            else {
                "{$*BLOCK.ctx}.lookup({quote_string($var.name)})";
            }
        }
        else {
            $*BLOCK.mangle_var($var);
        }
    }

    method compile_var(QAST::Var $var, :$want) {
        if $var.scope eq 'local' {
            self.compile_var_as_js_var($var);
        }
        elsif $var.scope eq 'lexicalref' {
            my $ref_type := self.figure_out_lexicalref_type($var);
            if nqp::defined($ref_type) {
                if $*BINDVAL {
                    my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                    self.stored_result(Chunk.new($T_OBJ, self.set_var($var, $bindval.expr), [$bindval]));
                }
                else {
                    Chunk.new($T_OBJ, self.get_var($var), :node($var));
                }
            }
            else {
                if $*BINDVAL {
                    nqp::die('Cannot bind to QAST::Var resolving to a lexicalref');
                }
                else {
                    my $type := self.figure_out_type($var);
                    unless $type {
                        $type := self.type_from_typeobj($var.returns);
                    }
                    if $type == $T_OBJ {
                        nqp::die('Cannot take a reference to a non-native lexical');
                    }

                    my str $suffix := self.suffix_from_type($type);
                    my str $get := self.get_var($var);
                    my str $set := self.set_var($var, self.int_to_fancy_int($type, 'value'));

                    Chunk.new($T_OBJ, "nqp.lexRef{$suffix}(HLL, function() \{return $get\}, function(value) \{$set\})", :node($var));
                }
            }
        }
        elsif self.var_is_lexicalish($var) {
            if $var.scope eq 'lexical' {
                my $ref_type := self.figure_out_lexicalref_type($var);
                if nqp::defined($ref_type) {
                    if $*BINDVAL {
                        nqp::die('Cannot bind to QAST::Var resolving to a lexicalref');
                    }
                    else {
                        my str $suffix := self.suffix_from_type($ref_type);
                        return Chunk.new($ref_type, self.get_var($var) ~ ".\$\$decont{$suffix}()", :node($var));
                    }
                }
            }
            if self.is_dynamic_var($*BLOCK, $var) {
                self.compile_var_as_part_of_ctx($var, :$want);
            }
            else {
                self.compile_var_as_js_var($var);
            }
        }
        elsif $var.scope eq 'positional' {
            return self.as_js_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('bindpos'), $var[0], $var[1], $*BINDVAL)
                !! QAST::Op.new( :op('atpos'), $var[0], $var[1]), :$want);
        }
        elsif $var.scope eq 'associative' {
            return self.as_js_clear_bindval($*BINDVAL
                ?? QAST::Op.new( :op('bindkey'), $var[0], $var[1], $*BINDVAL)
                !! QAST::Op.new( :op('atkey'), $var[0], $var[1]), :$want);
        }
        elsif $var.scope eq 'attributeref' {
            if +$var.list != 2 {
                nqp::die("An attribute lookup needs an object and a class handle");
            }

            if $*BINDVAL {
                nqp::die("Cannot bind to QAST::Var '{$var.name}' with scope attributeref");
            }

            my $type := self.type_from_typeobj($var.returns);
            if $type == $T_OBJ {
                nqp::die("Attribute references can only be to native types");
            }


            my @setup;
            my str $get;
            my str $set;

            my $self := self.as_js_clear_bindval($var[0], :want($T_OBJ));

            @setup.push($self);

            my str $suffix := self.suffix_from_type($type);

            my $class_handle := self.as_js($var[1], :want($T_OBJ));
            @setup.push($class_handle);

            my str $name := quote_string($var.name);
            my str $value := self.int_to_fancy_int($type, 'value');

            # We use a tmp variable as $self.expr might contain an await
            my str $obj := $*BLOCK.add_tmp;

            $get := "$obj.\$\$getattr{$suffix}({$class_handle.expr}, $name)";
            $set := "$obj.\$\$bindattr{$suffix}({$class_handle.expr}, $name, $value)";

            Chunk.new($T_OBJ, "nqp.attrRef{$suffix}(HLL, function() \{return $get\}, function(value) \{$set\})", :node($var), [$self, $class_handle, "$obj = {$self.expr};\n"]);
        }
        elsif $var.scope eq 'attribute' {
            my @types := [$T_OBJ, $T_INT, $T_NUM, $T_STR];
            my $type := self.type_from_typeobj($var.returns);
            # Get lookup hint if possible.
            my int $hint := -1;
            if $var[1].has_compile_time_value {
                #disabled till we handle hints with multi-inheritance correctly
                #$hint := nqp::hintfor($var[1].compile_time_value, $var.name);
            }

            my str $suffix := self.suffix_from_type($type);

            my $self := self.as_js_clear_bindval($var[0], :want($T_OBJ));

            if $hint == -1 {
                my $class_handle := self.as_js_clear_bindval($var[1], :want($T_OBJ));
                my $name := quote_string($var.name);
                if $*BINDVAL {
                    my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type));
                    Chunk.new($type, $bindval.expr, [$self, $class_handle, $bindval,
                        "{$self.expr}.\$\$bindattr$suffix({$class_handle.expr}, $name, {$bindval.expr});\n"
                    ]);
                }
                else {
                    Chunk.new($type, "{$self.expr}.\$\$getattr$suffix({$class_handle.expr}, $name)", [$self, $class_handle]);
                }
            } else {
                if $type == $T_OBJ {
                    if $*BINDVAL {
                        my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                        Chunk.new($T_OBJ, $bindval.expr, [$self, $bindval, "{$self.expr}.\$\$bindattr\${$hint}({$bindval.expr});\n"]);
                    }
                    else {
                        Chunk.new($T_OBJ, "{$self.expr}.\$\$getattr\${$hint}()", $self);
                    }
                }
                else {
                    my str $attr := $self.expr ~ '.attr$' ~ $hint;
                    if $*BINDVAL {
                        my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type));
                        Chunk.new($type, $bindval.expr, [$self, $bindval, "$attr = {$bindval.expr};\n", "if ({$self.expr}.\$\$SC !== undefined) {$self.expr}.\$\$scwb();\n"]);
                    }
                    else {
                        Chunk.new($type, $attr, $self);
                    }
                }
            }
        }
        elsif $var.scope eq 'contextual' {
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ));
                self.stored_result(Chunk.new($T_OBJ, "{$*CTX}.bindDynamic({quote_string($var.name)},{$bindval.expr})", $bindval), :$want);
            }
            else {
                Chunk.new($T_OBJ, "{$*CTX}.lookupDynamic({quote_string($var.name)})");
            }
        }
        else {
            self.NYI("Unimplemented QAST::Var scope: " ~ $var.scope);
        }
    }

    multi method as_js($unknown, :$want) {
        self.NYI("Unimplemented QAST node type: " ~ $unknown.HOW.name($unknown));
    }

    method wrap_in_fake_block($code) {
        # A fake outer block
        my $*BLOCK := BlockInfo.new(NQPMu, NQPMu);
        $*BLOCK.ctx("null");

        my $chunk := $code();

        Chunk.new($chunk.type, $chunk.expr, [self.declare_js_vars($*BLOCK.tmps), self.capture_inners($*BLOCK), self.clone_inners($*BLOCK), $chunk]);
    }

    method as_js_with_prelude($ast, :$instant, :$shebang, :$nqp-runtime, :$file) {
        my $*INSTANT := $instant;

        # We handle wval in the pre-serialization code specially.
        my $*IN_PRE_SERIALIZE := 0;

        # Blocks we've seen while compiling.
        my %*BLOCKS_DONE;
        my %*BLOCKS_INFO;
        my %*BLOCKS_STATEVARS;

        my $*COMPUNIT;

        my $*LOOP;

        my $*PERL6_FILENAME := $file;

        my int $got_compunit := nqp::istype($ast, QAST::CompUnit);

        my $compile_block := -> {self.as_js($ast, :want($instant ?? $T_VOID !! $T_OBJ))};

        my $chunk := $got_compunit ??
            $compile_block()
            !! self.wrap_in_fake_block($compile_block);

        my int $deserializes := $got_compunit && $ast.compilation_mode;

        my $libpath := '';

        if try $*LIBPATH {
            my @libpath;
            for $*LIBPATH -> $dir {
                nqp::push(@libpath, quote_string($dir));
            }
            $libpath := "nqp.libpath([{nqp::join(',', @libpath)}]);\n";
        }

        my $require_nqp := "require({quote_string($nqp-runtime || 'nqp-runtime')})";

        Chunk.void(
            $shebang ?? "#!/usr/bin/env node\n" !! '',
            "'use strict';\n",
            $instant ?? "const body = function(nqp, isMain) \{\n" !! 'const isMain = "immediate";',
            $libpath,
            (try $*EXECNAME) ?? "nqp.execname({quote_string($*EXECNAME)});\n" !! '',
            "const HLL=nqp.getHLL({quote_string($got_compunit ?? $ast.hll !! '')});\n",
            self.declare_wvals,
            $deserializes ?? '' !! self.setup_wvals,
            self.setup_cuids,
            self.set_is_thunk_flags,
            self.set_static_info,
            $chunk,
            $instant ?? "\};\nif (require.main === module) \{body($require_nqp, true);\} else \{module.exports = body;\};" !! '',
        );
    }

    method emit($ast, :$substagestats, *%named) {

        my num $timestamp := nqp::time_n();
        my $chunk := self.as_js_with_prelude($ast, |%named);
        stderr().print(nqp::sprintf("[as_js %.3f] ", [nqp::time_n() - $timestamp])) if $substagestats;

        $timestamp := nqp::time_n();
        my $source := $chunk.join();
        stderr().print(nqp::sprintf("[join %.3f] ", [nqp::time_n() - $timestamp])) if $substagestats;
        $source;
    }

    method emit_with_source_map($ast, @strs, @mapping, *%named) {
        self.as_js_with_prelude($ast, |%named).collect_with_source_map_info(0, @strs, @mapping);
    }

    method quote_string($str) {
        quote_string($str);
    }
}

# Copy the MoarVM design, for now only support adding ops
class Shim {
    method operations() {
        QAST::OperationsJS
    }
}

# Register as the QAST compiler.
if nqp::isnull(nqp::getcomp('QAST')) {
    nqp::bindcomp('QAST', Shim);
}
