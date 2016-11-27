class QAST::CompilerJS does DWIMYNameMangling does SerializeOnce {
    has $!nyi;

    has $!cps; # If it's set to "off" we don't support continuations

    my sub literal_subst($source, $pattern, $replacement) {
        my $where := 0;
        my $result := $source;
        while (my $found := nqp::index($result, $pattern, $where)) != -1 {
            $where := $found + nqp::chars($replacement);
            $result := nqp::replace($result, $found, nqp::chars($pattern), $replacement);
        };
        $result;
    }

    #= If the env var NQPJS_LOG is set log to nqpjs.log
    method log(*@msgs) {
        my %env := nqp::getenvhash();
        if %env<NQPJS_LOG> {
            my $log := nqp::open('nqpjs.log', 'wa');
            nqp::printfh($log, nqp::join(',', @msgs) ~ "\n");
            nqp::closefh($log);
        }
    }

    # Holds information about the QAST::Block we're currently compiling.
    # The currently compiled block is stored in $*BLOCK
    my class BlockInfo does DWIMYNameMangling {
        has $!qast;             # The QAST::Block
        has $!outer;            # Outer block's BlockInfo
        has @!js_lexicals;      # javascript variables we need to declare for the block
        has $!tmp;              # We use a bunch of TMP{$n} to store intermediate javascript results
        has $!ctx;              # The object we keep dynamic variables and exception handlers in
        has @!params;           # the parameters the block takes
        has @!variables;        # the variables declared in this block
        has %!variables;        # the variables declared in this block
        has %!cloned_inners;    # Mapping of CUIDs of blocks we clone to register with the clone

        has %!need_cps;       # Do we need to clone the CPS version of a block
        has %!need_direct;    # Do we need to clone the none-CPS version of a block

        has %!captured_inners;  # Mapping of CUIDs of blocks we statically clone to register with the code

        has %!var_types;    # Mapping of lexical names to types

        has %!mangled_lexicals;

        has %!lexicalref_types;

        has @!var_setup;

        has %!statevars;

        has $!pass_on_exceptions;

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
            %!need_cps := nqp::hash();
            %!need_direct := nqp::hash();
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

        method set_cont($chunk, $cont) {
            $*BLOCK.add_js_lexical($chunk.cont);
            "{$chunk.cont} = $cont;\n";
        }

        method clone_inner($block, :$cps = 1, :$direct = 1) {
            my $cuid    := $block.cuid;
            my $already := %!cloned_inners{$cuid};

            %!need_cps{$cuid} := $cps || %!need_cps{$cuid};
            %!need_direct{$cuid} := $direct || %!need_direct{$cuid};

            if $already {
                $already
            }
            else {
                my $reg := self.add_tmp;
                %!cloned_inners{$cuid} := $reg;
                $reg
            }
        }

        method cloned_inners() { %!cloned_inners }

        method capture_inner($block) {
            my $cuid    := $block.cuid;
            my $already := %!captured_inners{$cuid};
            if $already {
                $already
            }
            else {
                my $reg := self.add_tmp;
                %!captured_inners{$cuid} := $reg;
                $reg
            }
        }

        method captured_inners() { %!captured_inners }

        method need_direct() { %!need_direct }
        method need_cps() { %!need_cps }

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
            my $js_var := QAST::Node.unique('statevar');
            %!statevars{$js_var} := $value;
            $js_var;
        }

        method tmps() {
            my @tmps;
            my $i := 1;
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

        has $!first_time_marker;
        method first_time_marker() {
            if !$!first_time_marker {
                $!first_time_marker :=  QAST::Node.unique('first_time');
            }
            $!first_time_marker;

        }
        method maybe_first_time_marker() {
            $!first_time_marker;
        }


        method ctx_for_var($var) {
            my $info := self;
            while $info {
                if $info.has_own_variable($var.name) {
                    return $info.ctx;
                }
                $info := $info.outer;
            }
        }
    }

    method is_dynamic_var(BlockInfo $info, QAST::Var $var) {
        # HACK due to a nqp misdesign we need to check the name for the * twigil
        # TODO Make nqp mark dynamic variables explicitly
        my $name := $var.name;
        if nqp::chars($name) > 2 {
            my str $sigil := nqp::substr($name, 0, 1);
            my str $twigil := nqp::substr($name, 1, 1);
            if $twigil eq '*' {
              return 1;
            }
        }

        return 0 if $var.scope eq 'local';

        if $*HLL eq 'perl6' { # To make binding of signatures work
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

    method is_valid_js_identifier($identifier) {
        # TODO - implement a simplified version of https://mathiasbynens.be/notes/javascript-identifiers
        0;
    }

    # turns a list of arguments for a call into a js code according to our most general calling convention
    # $args is the list of QAST::Node arguments
    # returns a Chunk containing either a comma separated list of arguments or an expression that evaluates to a array of arguments

    method args($args, :$cont, :$invocant) {
        my @setup;
        my @args;

        my @named;
        my @named_exprs;

        my @named_groups;

        my @groups := [[]];
        
        my $cps := nqp::istrue($cont);

        for $args -> $arg {
            if nqp::istype($arg,QAST::SpecialArg) {
                if $arg.flat {
                    if $arg.named {
                        my $arg_chunk := self.as_js($arg, :want($T_OBJ), :$cps);
                        @setup.push($arg_chunk);
                        @named_groups.push("nqp.unwrapNamed({$arg_chunk.expr})");
                    }
                    else {
                        my $arg_chunk := self.as_js($arg, :want($T_OBJ), :$cps);
                        @setup.push($arg_chunk);
                        @groups.push("({$arg_chunk.expr}).array");
                        @groups.push([]);
                    }
                }
                elsif $arg.named {
                    my $compiled_arg := self.as_js($arg, :want($T_OBJ), :$cps);
                    @setup.push($compiled_arg);
                    @named_exprs.push(quote_string($arg.named) ~ ":" ~ $compiled_arg.expr);

                }
                else {
                    my $compiled_arg := self.as_js($arg, :want($T_OBJ), :$cps);
                    @setup.push($compiled_arg);
                    @groups[@groups-1].push($compiled_arg.expr);
                }
            }
            else {
                my $compiled_arg := self.as_js($arg, :want($T_OBJ), :$cps);
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

        if $cont {
            @groups[0].unshift($cont);
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

    method compile_sig(@params, :$cps) {
        my $slurpy_named; # *%foo
        my $slurpy;       # *@foo

        my @sig := ['caller_ctx','_NAMED'];
        my @setup;

        if $cps {
            @sig.push($cps);
        }

        my sub set_variable($var, $value) {
            if self.is_dynamic_var($*BLOCK, $var) {
                @setup.push("{$*CTX}[{quote_string($var.name)}] = $value;\n");
            }
            else {
                my $mangled := $*BLOCK.mangle_var($var);
                $*BLOCK.add_js_lexical($mangled);
                @setup.push("$mangled = $value;\n");
            }
        }

        my $bind_named := '';
        for @params -> $param {
            if $param.slurpy {
                if $param.named {
                    $slurpy_named := $param; 
                }
                else {
                    $slurpy := $param;
                }
            }
            elsif $param.named {
                my $quoted := quote_string($param.named);
                @*KNOWN_NAMED.push($quoted);
                my $value := "_NAMED[$quoted]";
                if $param.default {
                    # TODO types

                    my $default := self.as_js($param.default, :want($T_OBJ), :$cps);
                    @setup.push($default);
                    $value := "((_NAMED !== null && _NAMED.hasOwnProperty($quoted)) ? $value : {$default.expr})";
                }
                else {
                    $value := "(_NAMED !== null ? $value : null)";
                }

                # TODO required named arguments and defaultless optional ones

                set_variable($param, $value);
            }
            elsif self.is_dynamic_var($*BLOCK, $param) {
                my $set := "{$*CTX}[{quote_string($param.name)}] = ";

                my $tmp := self.unique_var('param');
                @sig.push($tmp);
                if $param.default {
                    my $default_value := self.as_js($param.default, :want($T_OBJ), :$cps);
                    @setup.push(Chunk.void(
                        "if (arguments.length < {+@sig}) \{\n",
                         $default_value,
                         "$set {$default_value.expr};\n\} else \{\n$set $tmp;\n\}\n"
                    ));
                }
                else {
                    @setup.push($set ~ $tmp ~ ";\n");
                }
            }
            else {
                my $default := '';
                my $name := $*BLOCK.mangle_var($param);

                if $param.default {
                    # Overwriting a parameter makes the v8 optimizer bail out so to avoid that we introduce a new variable
                    my $tmp := self.unique_var($name~'_');

                    $*BLOCK.add_js_lexical($name);
                    @sig.push($tmp);
                    my $default_value := self.as_js($param.default, :want($T_OBJ));
                    @setup.push(Chunk.void(
                        "if (arguments.length < {+@sig}) \{\n",
                         $default_value,
                         "$name = {$default_value.expr};\n\} else \{\n$name = $tmp;\n\}\n"
                    ));

                }
                else {
                    @sig.push($name);
                }
            }

            for $param.list -> $param_setup {
                @setup.push(self.as_js($param_setup, :want($T_OBJ)));
            }
        }

        if $slurpy {
            set_variable($slurpy, "new nqp.NQPArray(Array.prototype.slice.call(arguments,{+@sig}))");
        }
        if $slurpy_named {
            set_variable($slurpy_named, "nqp.slurpyNamed(_NAMED, {known_named(@*KNOWN_NAMED)})");
        }

        Chunk.new($T_NONVAL, nqp::join(',', @sig), @setup);
    }

    proto method coerce($chunk, $desired) { * }
    
    multi method coerce(ChunkCPS $chunk, $desired) {
        # TODO 
        $chunk;
    }

    multi method coerce(Chunk $chunk, $desired) {
        my $got := $chunk.type;
        if $got != $desired {
            if $desired == $T_VOID {
                return Chunk.new($T_VOID, "", $chunk.setup);
            }

            if $desired == $T_NUM {
                if $got == $T_INT {
                    # we store both as a javascript number, and 32bit integers fit into doubles
                    return Chunk.new($T_NUM, $chunk.expr, $chunk);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_NUM, "({$chunk.expr} ? 1 : 0)", $chunk);
                }
                if $got == $T_STR {
                    my $tmp := $*BLOCK.add_tmp();
                    return Chunk.new($T_NUM, "(isNaN($tmp) ? 0 : $tmp)", [$chunk,"$tmp = parseFloat({$chunk.expr});\n"]);
                }
            }

            if $desired == $T_INT {
                if $got == $T_STR {
                    return Chunk.new($T_INT, "parseInt({$chunk.expr})", $chunk);
                }
                if $got == $T_NUM {
                    return Chunk.new($T_INT, "({$chunk.expr}|0)", $chunk);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_INT, "({$chunk.expr} ? 1 : 0)", $chunk);
                }
            }

            if $got == $T_OBJ {
                if $desired == $T_BOOL {
                    return Chunk.new($desired, "{$chunk.expr}.\$\$decont($*CTX).\$\$toBool($*CTX)", $chunk);
                }
                my %convert;
                %convert{$T_STR} := 'toStr';
                %convert{$T_NUM} := 'toNum';
                %convert{$T_INT} := 'toInt';
                return Chunk.new($desired, 'nqp.' ~ %convert{$desired} ~ '(' ~ $chunk.expr ~ ", {$*CTX})", $chunk);
            }

            if $desired == $T_STR {
                if $got == $T_INT || $got == $T_NUM {
                    return Chunk.new($T_STR, $chunk.expr ~ '.toString()', $chunk);
                }
                if $got == $T_BOOL {
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
                    if $got == $T_NUM || $got == $T_STR {
                        return $chunk;
                    }
                    elsif $got == $T_INT {
                        return Chunk.new($T_OBJ, "new nqp.NQPInt({$chunk.expr})", $chunk);
                    }
                }
                else {
                    my %convert;
                    %convert{$T_INT} := 'intToObj';
                    %convert{$T_NUM} := 'numToObj';
                    %convert{$T_STR} := 'strToObj';
                    return Chunk.new($T_OBJ, "nqp.{%convert{$got}}({quote_string($*HLL)}, {$chunk.expr})", $chunk);
                }
            }

            if $desired == $T_BOOL {
                if $got == $T_INT || $got == $T_NUM {
                    return Chunk.new($T_BOOL, $chunk.expr, $chunk);
                } elsif $got == $T_STR {
                    return Chunk.new($T_BOOL, "({$chunk.expr} && {$chunk.expr} !== nqp.null_s)", $chunk);
                }
            }


            return Chunk.new($desired, "nqp.coercion($got, $desired, {$chunk.expr})") #TODO
        }
        $chunk;
    }

    method handle_control($loop, $body) {
        if nqp::elems($loop.handled) > 0 {
            my $setup_label := "";
            my $check_label := "e.label === null";

            if $loop.label {
                $setup_label := self.as_js($loop.label, :want($T_OBJ));
                $check_label := $check_label ~ ' || e.label === ' ~ $setup_label.expr;
            }


            my @handle_exceptions;

            for $loop.handled -> $type {
                @handle_exceptions.push("if (e instanceof nqp.{ucfirst($type)} && ($check_label)) \{ {self.do_control($type, $loop) } \}\n");
            }

            Chunk.new($body.type, $body.expr, [
                $setup_label,
                "try \{\n",
                $body,
                "\} catch (e) \{\n",
                Chunk.void(|@handle_exceptions),
                "throw (e);",
                "\}\n"
            ]);
        }
        else {
            $body;
        }
    }


    # It's more useful for me during this development to emit partial code instead of quitting
    method NYI($msg) {
        if $!nyi eq 'ignore' {
        }
        elsif $!nyi eq 'warn' {
            nqp::printfh(nqp::getstderr(), "NYI: $msg\n");
        }
        Chunk.new($T_VOID,"nqp.NYI({quote_string($msg)})",["console.trace(\"NYI: \"+{quote_string($msg)});\n"]);
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
            my $is_child_serializable := self.is_ctxsave($node) || self.mark_serializable($child);
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

    proto method as_js($node, :$want, :$cps) {
        if nqp::defined($want) {
            if nqp::istype($node, QAST::Want) {
                self.NYI("QAST::Want");
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

        my $result_var;

        my $result;

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
            if nqp::istype($chunk, ChunkCPS) {
                return self.NYI("CPS currently is broken");
            }
            elsif nqp::istype($chunk, Chunk) || nqp::isstr($chunk) {
                my $chunk_expr := nqp::isstr($chunk) ?? $chunk !! $chunk.expr;

                nqp::push(@setup, $chunk);

                if $i == $result_child {
                    if $result_var {
                        @setup.push("$result_var = $chunk_expr;\n");
                    }
                    else {
                        $result := $chunk_expr;
                    }
                }

            }
            $i := $i + 1;
        }

        Chunk.new($type, $result, @setup, :$node);
    }
    
    method compile_all_the_statements(QAST::Stmts $node, $want, :$result_child, :$cps) {
        my @chunks;
        my @stmts := $node.list;

        if $want == $T_VOID {
            $result_child := -1;
        }
        elsif !nqp::defined($result_child) {
            $result_child := +$node.list - 1;
        }

        my $i := 0;
        for @stmts -> $stmt {
            my $chunk := self.as_js(@stmts[$i], :want($i == $result_child ?? $want !! $T_VOID), :$cps);
            @chunks.push($chunk);
            $i := $i + 1;
        }
        self.chunk_sequence($want, @chunks, :$result_child, :$node);
    }

#    proto method cpsify_chunk($chunk) { * }
#    multi method cpsify_chunk(ChunkCPS $chunk) { $chunk }
#    multi method cpsify_chunk(Chunk $chunk) {
#        my $ret := self.chunk_sequence($chunk.type, $chunk.setup, :expr($chunk.expr), :node($chunk.node));
#        $ret;
#    }

    method cpsify_chunk($chunk) { $chunk }
    # TODO restore CPS

    multi method as_js(QAST::Block $node, :$want, :$cps) {
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

    my %code_ref_attr;
    method code_ref_attr($cuid) {
        if !nqp::existskey(%code_ref_attr, $cuid) {
            %code_ref_attr{$cuid} := '$codeRef$' ~ $cuid ~ '_' ~ literal_subst(nqp::time_n(), '.', '_');
        }
        %code_ref_attr{$cuid};
    }

    method setup_cuids() {
        my @declared;
        my @vars;
        for %!cuids {
            my $var := self.mangled_cuid($_.key);
            @vars.push($var);
            @declared.push("$var = new nqp.CodeRef({quote_string($_.value.name)},{quote_string($_.key)}).setCodeRefAttr({quote_string(self.code_ref_attr($_.key))})");
        }
        @declared.push("cuids = [{nqp::join(',', @vars)}]");
        self.declare_js_vars(@declared);
    }

    method set_code_objects() {
        my $set := "";
        for %!cuids {
            my $code_obj := $_.value.code_object;
            if nqp::isconcrete($code_obj) {
                $set := $set ~ "{self.mangled_cuid($_.key)}.setCodeObj({self.value_as_js($code_obj)});\n";
            }
        }
        $set;
    }

    method stored_result($chunk, :$want) {
        if $chunk.type == $T_VOID || $want == $T_VOID {
            Chunk.void($chunk, $chunk.expr~";\n", :node($chunk.node));
        }
        else {
            my $tmp := $*BLOCK.add_tmp();
            Chunk.new($chunk.type, $tmp, [$chunk, "$tmp = {$chunk.expr};\n"], :node($chunk.node));
        }
    }

    has %!serialized_code_ref_info;

    my class SerializedCodeRefInfo {
        has $!closure_template;
        has $!lexicals_type_info;
        has $!outer_cuid;
        has $!static_lexicals;
        method outer_cuid() {$!outer_cuid}
        method lexicals_type_info() {$!lexicals_type_info}
        method closure_template() {$!closure_template}
        method static_lexicals() {$!static_lexicals}
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
        my $missing_outer := $expected_outer.cuid ne $*BLOCK.cuid && $expected_outer.ctx ne 'null';
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

    method clone_inners($block) {
        my @clone_inners;
        for $block.cloned_inners -> $kv {
            my $reg   := $kv.value;
            my $cuid := self.mangled_cuid($kv.key);

            if nqp::existskey(%*BLOCKS_STATEVARS, $kv.key) {
                @clone_inners.push(%*BLOCKS_STATEVARS{$kv.key});
            }

            self.wrap_static_block(%*BLOCKS_INFO{$kv.key}.outer, @clone_inners, -> {
                if !$block.need_direct{$kv.key} {
                    # we know the block won't be ever called in direct mode
                    @clone_inners.push("$reg = $cuid");
                }
                elsif %*BLOCKS_DONE{$kv.key} {
                    @clone_inners.push("$reg = $cuid.closure");
                    @clone_inners.push(%*BLOCKS_DONE{$kv.key});
                    if self.is_serializable($kv.key) {
                        @clone_inners.push(".setOuter(" ~ %*BLOCKS_INFO{$kv.key}.outer.ctx ~ ")");
                    }
                }
                elsif %*BLOCKS_DONE_CPS{$kv.key} {
                    # we are unable to emit a direct version of the block
                    @clone_inners.push("$reg = $cuid.onlyCPS()");
                }
                else {
                    nqp::die("//Broken block: {$kv.key}");
                }

                if !$block.need_cps{$kv.key} || $!cps eq 'off' {
                    # we know the block won't be ever called in cps mode
                    @clone_inners.push(";\n");
                }
                elsif %*BLOCKS_DONE_CPS{$kv.key} {
                    @clone_inners.push(".CPS");
                    @clone_inners.push(%*BLOCKS_DONE_CPS{$kv.key});
                    @clone_inners.push(";\n");
                }
                else {
                    # we can just use the direct version of the block in CPS mode
                    @clone_inners.push(".sameCPS();\n");
                }
            });
        }
        Chunk.void(|@clone_inners);
    }

    method capture_inners($block) {
        my @capture_inners;
        for $block.captured_inners -> $kv {
            my $cuid := self.mangled_cuid($kv.key);
            my $reg   := $kv.value;

            if nqp::existskey(%*BLOCKS_STATEVARS, $kv.key) {
                @capture_inners.push(%*BLOCKS_STATEVARS{$kv.key});
            }

            self.wrap_static_block(%*BLOCKS_INFO{$kv.key}.outer, @capture_inners, -> {
                @capture_inners.push("$reg = $cuid.capture");

                @capture_inners.push(%*BLOCKS_DONE{$kv.key});

                if 1 { # TODO check if we need to have this closure serializable
                    @capture_inners.push(".setOuter(" ~ %*BLOCKS_INFO{$kv.key}.outer.ctx ~ ")");
                }

                @capture_inners.push(";\n");
            });


        }
        Chunk.void(|@capture_inners);
    }

    method outer_ctxs(BlockInfo $block) {
        my @ctxs;
        my $info := $block.outer;

        # Avoid the ctx from the fake outer ctx
        while $info && !($info.ctx eq 'null' && !$info.outer) {
            @ctxs.unshift($info.ctx);
            $info := $info.outer;
        }
        nqp::join(',', @ctxs);
    }

    method compile_block(QAST::Block $node, $outer, $outer_loop, :$want, :@extra_args=[], :$cps) {

        my $outer_ctx := try $*CTX // "null";

        if self.is_known_cuid($node) {
        }
        else {
            self.register_cuid($node);

            my @*KNOWN_NAMED;
            my $*BINDVAL := 0;
            my $*BLOCK := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu));

            my $*LOOP := BlockBarrier.new($*BLOCK, $outer_loop);

            my $*CTX := self.unique_var('ctx');
            $*BLOCK.ctx($*CTX);

            %*BLOCKS_INFO{$node.cuid} := $*BLOCK;

            my $body_want := $node.blocktype eq 'immediate' ?? $want !! $T_OBJ;

            my $stmts := self.compile_all_the_statements($node, $body_want);

            my $code_ref_attr := self.code_ref_attr($node.cuid);

            my $create_ctx := self.create_ctx($*CTX, :code_ref('this'), :code_ref_attr(quote_string($code_ref_attr)));
            if nqp::istype($stmts, ChunkCPS) {
            }
            else {
                my $sig := self.compile_sig($*BLOCK.params);

                my $first_time_marker := $*BLOCK.maybe_first_time_marker;

                my $pass_exceptions_start := '';
                my $pass_exceptions_end := '';

                if $*BLOCK.pass_on_exceptions {
                    $pass_exceptions_start := "try \{\n";
                    $pass_exceptions_end :=
                        ~ "\} catch (e) \{\n"
                        ~ "if (e instanceof nqp.PassExceptionToCaller) \{\n"
                        ~ "throw e.exception;\n"
                        ~ "\} else \{"
                        ~ "throw e;\n"
                        ~ "\}"
                        ~ "\}";
                }

                my @function := [
                    "function({$sig.expr}) \{\n" ,
                    $first_time_marker ?? "$first_time_marker = 1;\n" !! '',
                    self.declare_js_vars($*BLOCK.tmps),
                    self.declare_js_vars($*BLOCK.js_lexicals),
                    $create_ctx,
                    $*BLOCK.var_setup,
                    $sig,
                    self.clone_inners($*BLOCK),
                    self.capture_inners($*BLOCK),
                    $pass_exceptions_start,
                    $stmts,
                    "return {$stmts.expr};\n",
                    $pass_exceptions_end,
                    "\}"
                ];
                %*BLOCKS_DONE{$node.cuid} := Chunk.void("(", |@function, ")");

                if $*BLOCK.statevars {
                    my @vars;
                    for $*BLOCK.statevars -> $kv {
                        @vars.push($kv.key ~ " = " ~ "nqp.op.clone({self.value_as_js($kv.value)})");
                    }
                    if $first_time_marker {
                        @vars.push($first_time_marker ~ " = 0");
                    }
                    %*BLOCKS_STATEVARS{$node.cuid} := "var " ~ nqp::join(',', @vars) ~ ";\n";
                }

                if 1 { # TODO make sure that only blocks that take part in serialization have that info emitted
                    my $outer_cuid;
                    if nqp::defined($*BLOCK.outer) && $*BLOCK.outer.cuid {
                        $outer_cuid := self.mangled_cuid($*BLOCK.outer.cuid);
                    }
                    my $lexicals_type_info := self.type_info_for_lexicals($*BLOCK);
                    my $closure_template;
                    if $node.blocktype ne 'immediate' {
                        my @closure_template := nqp::clone(@function);
                        @closure_template.unshift("function({self.outer_ctxs($*BLOCK)}) \{ return ");
                        @closure_template.push("}");
                        $closure_template := Chunk.new($T_NONVAL, '', @closure_template);
                    }

                    my @static;
                    for $*BLOCK.variables -> $var {
                        if $var.decl eq 'static' {
                            @static.push(quote_string($var.name) ~ ': ' ~ self.value_as_js($var.value));
                        }
                    }

                    my $static_lexicals;
                    if +@static {
                       $static_lexicals := '{' ~ nqp::join(',', @static) ~ '}';
                    }

                    %!serialized_code_ref_info{$node.cuid} := SerializedCodeRefInfo.new(
                        :$closure_template,
                        :$outer_cuid,
                        :$lexicals_type_info,
                        :$static_lexicals
                    );
                }
            }


            # The CPS version

            # TODO recreate other things than block

            if $!cps ne 'off' {
                my @*KNOWN_NAMED;
                my $*BLOCK := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu));

                my $stmts_cps := self.compile_all_the_statements($node, $body_want, :cps);

                if nqp::istype($stmts_cps, ChunkCPS) {
                    my $sig_cps := self.compile_sig($*BLOCK.params, :cps($stmts_cps.cont));


                    my @function_cps := [
                        "function({$sig_cps.expr}) \{\n",
                        self.declare_js_vars($*BLOCK.tmps),
                        self.declare_js_vars($*BLOCK.js_lexicals),
                        $create_ctx,
                        $sig_cps,
                        self.clone_inners($*BLOCK),
                        self.capture_inners($*BLOCK),
                        $stmts_cps,
                        "\}"
                    ];
                    %*BLOCKS_DONE_CPS{$node.cuid} := Chunk.void("(", |@function_cps, ")");
                }
                else {
                    #say("/* SKIPPING: {$stmts_cps.join} */\n");
                }
            }




                

        }

        if $node.blocktype eq 'raw' {
            Chunk.void();
        } elsif $node.blocktype eq 'immediate' {
            my $setup := [];
            my $cloned_block := $outer.clone_inner($node, :cps($cps), :direct(!$cps));

            if $cps {
                my $cont := self.unique_var('cont');
                my $result := self.unique_var('result');

                my @args := [$outer_ctx, 'null'];

                @args.push($cont);

                for @extra_args -> $arg {
                    @args.push($arg.expr);
                    $setup.push($arg);
                }

                $setup.push('return ' ~ $cloned_block ~ ".\$\$callCPS({nqp::join(',', @args)})");

                ChunkCPS.new($T_OBJ, $result, $setup, $cont, :$node);
            }
            else {
                my @args := [$outer_ctx, 'null'];
                for @extra_args -> $arg {
                    @args.push($arg.expr);
                    $setup.push($arg);
                }

                self.stored_result(Chunk.new($want, $cloned_block~".\$\$call({nqp::join(',', @args)})", $setup, :$node), :$want);
            }
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

    method outer_ctx() {
        $*BLOCK.outer ?? $*BLOCK.outer.ctx !! 'null';
    }

    method create_ctx($name, :$code_ref, :$code_ref_attr) {
        "var $name = new nqp.Ctx(caller_ctx, this.forcedOuterCtx || {self.outer_ctx}, $code_ref, $code_ref_attr);\n";
    }

    multi method as_js(QAST::IVal $node, :$want, :$cps) {
        Chunk.new($T_INT,'('~$node.value()~')', :$node);
    }

    multi method as_js(QAST::NVal $node, :$want, :$cps) {
        Chunk.new($T_NUM,'('~$node.value()~')', :$node);
    }

    multi method as_js(QAST::SVal $node, :$want, :$cps) {
        Chunk.new($T_STR,quote_string($node.value()), :$node);
    }

    multi method as_js(QAST::BVal $node, :$want, :$cps) {
        Chunk.new($T_OBJ, self.mangled_cuid($node.value.cuid), :$node);
    }

    # Helps with register allocation on other backends
    # We don't do allocate registers so just ignore that
    multi method as_js(QAST::Stmt $node, :$want, :$cps) {
        self.compile_all_the_statements($node, $want, :$cps, :result_child($node.resultchild));
    }

    multi method as_js(QAST::Stmts $node, :$want, :$cps) {
        self.compile_all_the_statements($node, $want, :$cps, :result_child($node.resultchild));
    }

    multi method as_js(QAST::VM $node, :$want, :$cps) {
        if $node.supports('js') {
            self.as_js($node.alternative('js'), :$want, :$cps);
        }
        else {
            self.NYI("To compile on the JS backend, QAST::VM must have an alternative 'js'|" ~ $node.dump);
        }
    }

    multi method as_js(QAST::Op $node, :$want, :$cps) {
        QAST::OperationsJS.compile_op(self, $node, :$want, :$cps);
    }

    method set_static_vars() {
        my @setup;
        for %!cuids -> $kv {
            if nqp::existskey(%!serialized_code_ref_info, $kv.key) {
                my $cuid := $kv.key;
                my $info := %!serialized_code_ref_info{$cuid};

                if $info.static_lexicals {
                    @setup.push(
                        ~ self.mangled_cuid($cuid)
                        ~ ".setStaticVars(" ~ $info.static_lexicals ~ ");\n");
                }
            }
        }
        Chunk.new($T_VOID, "", @setup);
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

        "var code_refs = new nqp.NQPArray([{nqp::join(',',@blocks)}]);\n" # TODO
    }


    method create_sc($ast) {
        my @sh;
        my $sc := $ast.sc;

        # TODO refactor
        if !nqp::defined($ast.sc) {
            # TODO the code_refs are empty here - think what to do about it
            return self.emit_code_refs_list($ast);
        }

        my $sc_tuple := self.serialize_sc($sc);
        my $sc_data := $sc_tuple[0];
        my $sc_sh := $sc_tuple[1];


        my $i := 0;
        while $i < nqp::elems($sc_sh) {
            my $s := nqp::atpos_s($sc_sh,$i);
            my $got := nqp::isnull_s($s) ?? 'nqp.null_s' !! quote_string($s);
            @sh.push($got);
            $i := $i + 1;
        }

        my $quoted_data := nqp::isnull_s($sc_data) ?? 'null' !! quote_string($sc_data);


        Chunk.void(
            "var sh= new nqp.NQPArray([{nqp::join(',',@sh)}]);\n"
            ~ "var sc = nqp.op.createsc({quote_string(nqp::scgethandle($sc))});\n"
            ~ self.emit_code_refs_list($ast)
            , "nqp.op.deserialize($quoted_data,sc,sh,code_refs,null);\n"
            ~ "nqp.op.scsetdesc(sc,{quote_string(nqp::scgetdesc($sc))});\n");
    }

    method do_control($type, $loop) {
        if $type eq 'last' {
            "break;\n";
        }
        elsif $type eq 'next' {
            "continue;\n";
        }
        elsif $type eq 'redo' {
            "{$loop.redo} = 1;\n;continue;\n";
        }
    }

    my sub ucfirst($str) {
        nqp::uc(nqp::substr($str, 0, 1)) ~ nqp::substr($str, 1);
    }

    method throw_control_exception($type, $loop, $label) {
        my $direct := 1;
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
                        return Chunk.void("throw new nqp.{ucfirst($type)}(null);\n");
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
            Chunk.void($compiled_label, "throw new nqp.{ucfirst($type)}({$compiled_label.expr});\n");
        }
        else {
            self.NYI("can't find surrounding loop for $type");
        }
    }


    my sub loadable($name) {
        # workaround for webpack
        my $path := literal_subst($name, '::', '/');
        quote_string($name) ~ ", function() \{return require({quote_string($path)})\}";
    }

    method is_op($node, $op) {
        nqp::istype($node, QAST::Op) && $node.op eq $op;
    }


    my @types := [$T_OBJ, $T_INT, $T_NUM, $T_STR];
    method type_from_typeobj($typeobj) {
        @types[nqp::objprimspec($typeobj)];
    }

    my @suffix := ['', '_i', '_n', '_s'];

    method suffix_from_type($type) {
        @suffix[$type];
    }

    multi method as_js(QAST::CompUnit $node, :$want, :$cps) {
        # Should have a single child which is the outer block.
        if +@($node) != 1 || !nqp::istype($node[0], QAST::Block) {
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
                "var ctxWithPath = new nqp.Ctx(null, null, null, null);\n"
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
        my $block_js := self.as_js($node[0], :want(($instant && nqp::defined($node.main)) ?? $T_VOID !! $T_OBJ));

        my @post;
        for $node.post_deserialize -> $node {
            @post.push(self.as_js($node, :want($T_VOID)));
        }
        my $post := Chunk.new($T_VOID, "", @post);


        my $body;

        if nqp::defined($node.main) {
            my $main_block := QAST::Block.new($node.main);

            my $main := self.as_js($main_block, :want($T_OBJ));

            $body := $instant ?? Chunk.void($block_js, $main, $main.expr ~ ".\$\$apply([nqp.loaderCtx, null].concat(nqp.args(module)));\n") !! $main;
            
        }
        else {
            $body := $instant ?? Chunk.void($block_js, $block_js.expr ~ ".\$\$apply([nqp.loaderCtx, null].concat(nqp.args(module)));\n") !! $block_js;
        }


        # TODO nested compunits, we need to handle is_nested the same as the moar backend

        my $comp_mode := $node.compilation_mode;

        my $set_hll := $*HLL ?? "nqp.setCodeRefHLL(cuids, {quote_string($*HLL)});\n" !! '';

        my $set_code_objects := self.set_code_objects;
        my @setup := [$pre , $comp_mode ?? self.create_sc($node) !! '', self.setup_wvals, $set_code_objects,  self.declare_js_vars($*BLOCK.tmps), self.capture_inners($*BLOCK), self.clone_inners($*BLOCK), $set_hll, self.set_static_vars, $post, $body];
        if !$instant {
            @setup.push("new nqp.EvalResult({$body.expr}, new nqp.NQPArray(cuids))");
        }
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

    method declare_var(QAST::Var $node) {
        # TODO vars more complex the non-dynamic lexicals

        if $node.decl eq 'var' && ($node.scope eq 'local' || $node.scope eq 'lexical') {
            my $type := self.type_from_typeobj($node.returns);
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
                my $mangled_name := $*BLOCK.add_mangled_var($node);
                if $node.decl eq 'contvar' {
                    $*BLOCK.add_js_lexical_with_value($mangled_name, "nqp.op.clone({self.value_as_js($node.value)})");
                }
                elsif $node.decl eq 'static' {
                    $*BLOCK.add_js_lexical_with_value($mangled_name, self.value_as_js($node.value));
                }
                elsif $node.decl eq 'statevar' {
                    $*BLOCK.add_js_lexical_with_value($mangled_name, $*BLOCK.add_statevar($node.value));
                }
                else {
                    $*BLOCK.add_js_lexical($mangled_name);
                }
            }
        }
        elsif $node.decl eq 'param' {
            $*BLOCK.add_variable($node);
            if $node.scope eq 'local' || $node.scope eq 'lexical' {
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

    multi method as_js(QAST::Var $node, :$want, :$cps) {
        self.declare_var($node);
        self.compile_var($node, :$want);
    }

    # TODO CPS
    multi method as_js(QAST::VarWithFallback $node, :$want, :$cps) {
        my $compiled := self.compile_var($node, :$want);
        if $*BINDVAL || $compiled.type != $T_OBJ {
            $compiled
        }
        else {
            my $fallback := self.as_js($node.fallback, :want($T_OBJ));
            my $tmp := $*BLOCK.add_tmp();
            Chunk.new($T_OBJ, $tmp, [
                $compiled,
                "if ({$compiled.expr} === nqp.Null) \{\n"
                    ,$fallback
                    ,"$tmp = {$fallback.expr};\n\} else \{\n$tmp = {$compiled.expr};\n\}\n"
                    ]);
        }
    }

    multi method as_js(QAST::Regex $node, :$want, :$cps) {
        # TODO CPS 
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

        my $key := $handle ~ "@" ~ $idx;

        if !nqp::existskey(%!wval, $key) {
          %!wval{$key} := "nqp.wval({quote_string($handle)},$idx)";
          %!wval_mangling{$key} := 'wval' ~ +%!wval_mangling;
        }
        %!wval_mangling{$key};
    }

    method setup_wvals() {
       my $setup;
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

    multi method as_js(QAST::WVal $node, :$want, :$cps) {
        Chunk.new($T_OBJ, self.value_as_js($node.value));
    }
    
    method var_is_lexicalish(QAST::Var $var) {
        $var.scope eq 'lexical' || $var.scope eq 'typevar';
    }

    method as_js_clear_bindval($node, :$want, :$cps) {
        my $*BINDVAL := 0;
        self.as_js($node, :$want, :$cps);
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

    method compile_var_as_js_var(QAST::Var $var, :$cps) {
        my $type := self.figure_out_type($var);
        if $*BINDVAL {
            # TODO better source mapping
            my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type), :$cps);
            self.cpsify_chunk(Chunk.new($type, $bindval.expr, [$bindval, self.set_var($var, $bindval.expr)]));
        }
        else {
            self.cpsify_chunk(Chunk.new($type, self.get_var($var), :node($var)));
        }
    }

    method compile_var_as_part_of_ctx(QAST::Var $var, :$cps, :$want) {
        my $type := self.figure_out_type($var);
        if $*BINDVAL {
            my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type), :$cps);
            if $var.decl eq 'var' {
                self.stored_result(Chunk.new($type, "({$*CTX}[{quote_string($var.name)}] = {$bindval.expr})",  $bindval), :$want);
            }
            else {
                if $*BLOCK.ctx_for_var($var) -> $ctx {
                    self.stored_result(Chunk.new($type, "({$ctx}[{quote_string($var.name)}] = {$bindval.expr})",  $bindval), :$want);
                } 
                else {
                    # nqp::die("we can't find ctx for {$var.name}");
                    self.stored_result(Chunk.new($type, "{$*CTX}.bind({quote_string($var.name)}, {$bindval.expr})",  $bindval), :$want);
                }
            }
        }
        else {
            if $var.decl && $var.decl ne 'param' {
                my $initial_value;
                if $var.decl eq 'var' {
                    my %default_value := nqp::hash($T_OBJ, 'null', $T_INT, '0', $T_NUM, '0', $T_STR, '""');
                    $initial_value := %default_value{$type};
                }
                elsif $var.decl eq 'contvar' {
                    $initial_value := "nqp.op.clone({self.value_as_js($var.value)})";
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

                $*BLOCK.add_var_setup("{$*CTX}[{quote_string($var.name)}] = $initial_value;\n");

                Chunk.new($type, "$*CTX[{quote_string($var.name)}]", :node($var));
            }
            else {
                if $*BLOCK.ctx_for_var($var) -> $ctx {
                    Chunk.new($type, "$ctx[{quote_string($var.name)}]", :node($var));
                }
                else {
                    # nqp::die("we can't find ctx for {$var.name}");
                    Chunk.new($type, "{$*CTX}.lookup({quote_string($var.name)})", :node($var));
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
                "{$*CTX}.bind({quote_string($var.name)}, $js_expr);\n";
            }
        }
        else {
            my $mangled := $*BLOCK.mangle_var($var);
            '('~$mangled~' = ('~ $js_expr ~ "));\n"
        }
    }

    method get_var($var) {
        if self.is_dynamic_var($*BLOCK, $var) {
            if $*BLOCK.ctx_for_var($var) -> $ctx {
                "$ctx[{quote_string($var.name)}]";
            }
            else {
                "{$*CTX}.lookup({quote_string($var.name)})";
            }
        }
        else {
            $*BLOCK.mangle_var($var);
        }
    }

    method compile_var(QAST::Var $var, :$cps, :$want) {
        if $var.scope eq 'local' {
            self.compile_var_as_js_var($var, :$cps);
        }
        elsif $var.scope eq 'lexicalref' {
            my $ref_type := self.figure_out_lexicalref_type($var);
            if nqp::defined($ref_type) {
                if $*BINDVAL {
                    my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ), :$cps);
                    self.cpsify_chunk(Chunk.new($T_OBJ, $bindval.expr, [$bindval, self.set_var($var, $bindval.expr)]));
                }
                else {
                    self.cpsify_chunk(Chunk.new($T_OBJ, self.get_var($var), :node($var)));
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
                    my $suffix := self.suffix_from_type($type);
                    my $get := self.get_var($var);
                    my $set := self.set_var($var, 'value');
                    Chunk.new($T_OBJ, "nqp.op.getlexref{$suffix}({quote_string($*HLL)}, function() \{return $get\}, function(value) \{$set\})", :node($var));
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
                        my $suffix := self.suffix_from_type($ref_type);
                        return Chunk.new($ref_type, self.get_var($var) ~ ".\$\$decont{$suffix}()", :node($var));
                    }
                }
            }
            if self.is_dynamic_var($*BLOCK, $var) {
                self.compile_var_as_part_of_ctx($var, :$cps, :$want);
            }
            else {
                self.compile_var_as_js_var($var, :$cps);
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
            my $get;
            my $set;

            my $self := self.as_js_clear_bindval($var[0], :want($T_OBJ), :$cps);

            @setup.push($self);

            my $suffix := self.suffix_from_type($type);

            if 0 {
                # TODO - use hint
                # OPTIMALIZATION OPPORTUNITY 
                # use hint
            }
            else {
                my $class_handle := self.as_js($var[1], :want($T_OBJ), :$cps);
                @setup.push($class_handle);
                my $name := quote_string($var.name);

                $get := "{$self.expr}.\$\$getattr{$suffix}({$class_handle.expr}, $name)";
                $set := "{$self.expr}.\$\$bindattr{$suffix}({$class_handle.expr}, $name, value)";
            }


            Chunk.new($T_OBJ, "nqp.op.getattrref{$suffix}({quote_string($*HLL)}, function() \{return $get\}, function(value) \{$set\})", :node($var));
        }
        elsif $var.scope eq 'attribute' {
            my @types := [$T_OBJ, $T_INT, $T_NUM, $T_STR];
            my $type := self.type_from_typeobj($var.returns);
            # Get lookup hint if possible.
            my int $hint := -1;
            if $var[1].has_compile_time_value {
                $hint := nqp::hintfor($var[1].compile_time_value, $var.name);
            }

            my $suffix := self.suffix_from_type($type);

            my $self := self.as_js_clear_bindval($var[0], :want($T_OBJ), :$cps);

            if $hint == -1 {
                my $class_handle := self.as_js_clear_bindval($var[1], :want($T_OBJ), :$cps);
                my $name := quote_string($var.name);
                if $*BINDVAL {
                    my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type), :$cps);
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
                        my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ), :$cps);
                        Chunk.new($T_OBJ, $bindval.expr, [$self, $bindval, "{$self.expr}.\$\$bindattr\${$hint}({$bindval.expr});\n"]);
                    }
                    else {
                        Chunk.new($T_OBJ, "{$self.expr}.\$\$getattr\${$hint}()", $self);
                    }
                }
                else {
                    my $attr := $self.expr ~ '.attr$' ~ $hint;
                    if $*BINDVAL {
                        my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type), :$cps);
                        Chunk.new($type, $bindval.expr, [$self, $bindval, "$attr = {$bindval.expr};\n"]);
                    }
                    else {
                        Chunk.new($type, $attr, $self);
                    }
                }
            }
        }
        elsif $var.scope eq 'contextual' {
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ), :$cps);
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

    multi method as_js($unknown, :$want, :$cps) {
        self.NYI("Unimplemented QAST node type: " ~ $unknown.HOW.name($unknown));
    }

    method wrap_in_fake_block($code) {
        # A fake outer block 
        my $*BLOCK := BlockInfo.new(NQPMu, NQPMu);
        $*BLOCK.ctx("null");

        my $chunk := $code();

        Chunk.new($chunk.type, $chunk.expr, [self.setup_wvals, self.declare_js_vars($*BLOCK.tmps), self.capture_inners($*BLOCK), self.clone_inners($*BLOCK), $chunk]);
    }

    method as_js_with_prelude($ast, :$instant, :$shebang) {
        my $*INSTANT := $instant;

        # We handle wval in the pre-serialization code specially.
        my $*IN_PRE_SERIALIZE := 0;

        # Blocks we've seen while compiling.
        my %*BLOCKS_DONE;
        my %*BLOCKS_INFO;
        my %*BLOCKS_DONE_CPS;
        my %*BLOCKS_STATEVARS;

        my $compile_block := -> {self.as_js($ast, :want($instant ?? $T_VOID !! $T_OBJ))};

        my $chunk := nqp::istype($ast, QAST::CompUnit) ?? 
            $compile_block()
            !! self.wrap_in_fake_block($compile_block);

        Chunk.void(
            $shebang ?? "#!/usr/bin/env node\n" !! '',
            "'use strict'\n",
            "var nqp = require('nqp-runtime');\n",
            self.declare_wvals,
            self.setup_cuids,
            self.set_static_info,
            $chunk
        );
    }

    method emit($ast, :$instant, :$substagestats, :$shebang, :$snapshot) {

        my $timestamp := nqp::time_n();
        my $chunk := self.as_js_with_prelude($ast, :$instant, :$shebang);
        nqp::printfh(nqp::getstderr(), nqp::sprintf("[as_js %.3f] ", [nqp::time_n() - $timestamp])) if $substagestats;

        $snapshot() if $snapshot;

        $timestamp := nqp::time_n();
        my $source := $chunk.join();
        nqp::printfh(nqp::getstderr(), nqp::sprintf("[join %.3f] ", [nqp::time_n() - $timestamp])) if $substagestats;
        $source;
    }

    # return a json datastructure we later process into a source map
    method emit_with_source_map($ast, :$instant, :$shebang) {
       self.as_js_with_prelude($ast, :$instant, :$shebang).with_source_map_info
    }

    method emit_with_source_map_debug($ast, :$instant,  :$shebang) {
       self.as_js_with_prelude($ast, :$instant, :$shebang).source_map_debug
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
