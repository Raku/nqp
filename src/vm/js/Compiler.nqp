class QAST::CompilerJS does DWIMYNameMangling does SerializeOnce {
    has $!nyi;

    has $!cps; # If it's set to "off" we don't support continuations

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
    my class BlockInfo {
        has $!qast;             # The QAST::Block
        has $!outer;            # Outer block's BlockInfo
        has @!js_lexicals;      # javascript variables we need to declare for the block
        has $!tmp;              # We use a bunch of TMP{$n} to store intermediate javascript results
        has $!ctx;              # The object we keep dynamic variables and exception handlers in
        has %!lexotic;          
        has @!params;           # the parameters the block takes
        has @!variables;        # the variables declared in this block
        has %!cloned_inners;    # Mapping of CUIDs of blocks we clone to register with the clone

        has %!need_cps;       # Do we need to clone the CPS version of a block
        has %!need_direct;    # Do we need to clone the none-CPS version of a block

        has %!captured_inners;  # Mapping of CUIDs of blocks we statically clone to register with the code

        has %!var_types;    # Mapping of lexical names to types

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
            $!tmp := 0;
            %!lexotic := nqp::hash();
            %!cloned_inners := nqp::hash();
            %!captured_inners := nqp::hash();
            %!need_cps := nqp::hash();
            %!need_direct := nqp::hash();
            %!var_types := nqp::hash();
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

        method add_variable($var) {
            @!variables.push($var);
        }

        method register_lexotic($name) {
            %!lexotic{$name} := 0;
        }

        method mark_local_lexotic_usage($name) {
            %!lexotic{$name} := 1;
        }

        method is_lexotic_used($name) {
            %!lexotic{$name} == 1;
        }

        method is_local_lexotic($name) {
            nqp::existskey(%!lexotic, $name);
        }

        method mark_lexotic_usage($name) {
            my $block := self;
            while $block {
                if $block.is_local_lexotic($name) {
                    $block.mark_local_lexotic_usage($name);
                    return;
                }
                $block := $block.outer;
            }
        }
        method is_lexotic($name) {
            my $block := self;
            while $block {
                if $block.is_local_lexotic($name) {
                    return 1;
                }
                $block := $block.outer;
            }
            return 0;
        }

        method add_tmp() {
            $!tmp := $!tmp + 1;
            'TMP'~$!tmp;
        }

        method add_param($param) {
            @!params.push($param);
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

        method var_type($var) { %!var_types{$var.name} }
        method register_var_type($var, $type) { %!var_types{$var.name} := $type }

        method js_lexicals() { @!js_lexicals }
        method outer() { $!outer }
        method qast() { $!qast }
        method ctx(*@value) { $!ctx := @value[0] if @value;$!ctx}
        method params() { @!params }
        method variables() { @!variables }
    }

    method is_valid_js_identifier($identifier) {
        # TODO - implement a simplified version of https://mathiasbynens.be/notes/javascript-identifiers
        0;
    }

    sub join_exprs($delim, @chunks) {
        my @exprs;
        for @chunks -> $chunk {
            @exprs.push($chunk.expr);
        }
        nqp::join($delim, @exprs);
    }

    # TODO improve comments
    # turns a list of arguments for a call into a js code according to our most generall calling convention
    # $args is the list of QAST::Node arguments
    # returns either a js code string which contains the arguments, or a list of js code strings that when executed create arrays of arguments (suitable for concatenating and passing into Function.apply) 

    method args($args, :$cont) {
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
                        my $unwraped := Chunk.new($T_OBJ, "nqp.unwrap_named({$arg_chunk.expr})", [$arg_chunk]);
                        @named_groups.push($unwraped);
                    } else {
                        @groups.push(self.as_js($arg, :want($T_OBJ),:$cps));
                        @groups.push([]);
                    }
                }
                elsif $arg.named {
                    my $compiled_arg := self.as_js($arg, :want($T_OBJ), :$cps);
                    @named.push($compiled_arg);
                    @named_exprs.push(quote_string($arg.named) ~ ":" ~ $compiled_arg.expr);

                }
                else {
                    @groups[@groups-1].push(self.as_js($arg, :want($T_OBJ), :$cps));
                }
            } else {
                @groups[@groups-1].push(self.as_js($arg, :want($T_OBJ), :$cps));
            }
        }

        # We want to always have at leat 1 thing to pass as the named argument
        if @named || @named_groups == 0 {
            @named_groups.push(Chunk.new($T_OBJ,'{' ~ nqp::join(',',@named_exprs) ~ '}', @named));
        }
        if $cont {
            @groups[0].unshift($cont);
        }

        if +@named_groups > 1 {
            @groups[0].unshift(Chunk.new($T_NONVAL, 'nqp.named([' ~ join_exprs(',', @named_groups) ~ '])', @named_groups));
        } else {
            @groups[0].unshift(@named_groups[0]);
        }

        @groups[0].unshift($*CTX);
        

        my sub chunkify(@group, $pre = '', $post = '') {
            my @exprs;
            my @setup;
            for @group -> $arg {
                if nqp::isstr($arg) {
                    @exprs.push($arg);
                } else {
                    @exprs.push($arg.expr);
                    @setup.push($arg);
                }
            }
            Chunk.new($T_NONVAL, $pre ~ nqp::join(',', @exprs) ~ $post, @setup);
        } 

        if +@groups == 1 {
            return chunkify(@groups[0]);
        }

        my @js_args;
        for @groups -> $group {
            if nqp::islist($group) {
                @js_args.push(chunkify($group, '[', ']')) if +$group
            } else {
                @js_args.push($group);
            }
        }
        @js_args;
    }


    my %array_methods := nqp::hash(
        'unshift', 1,
        'shift', 1,
        'pop', 1,
        'push', 1,
    );

    # when calling a method on an javascript Array we need to wrap it
    method wrap_for_call($obj, $method_name) {
        # do we now the method name and is this a method name that an Array dosn't support? 
        if $method_name && (!nqp::existskey(%array_methods, $method_name)) {
            $obj;
        } else {
            "nqp.wrapObj($obj)";
        }
    }

    method merge_arg_groups($groups) {
        if nqp::islist($groups) {
            my @exprs;

            for $groups -> $group {
                @exprs.push($group.expr);
            }

            Chunk.new($T_NONVAL, @exprs.shift ~ '.concat(' ~ nqp::join(',', @exprs) ~ ')', $groups);
        }
    }

    method compile_sig(@params, :$cps) {
        my $slurpy_named; # *%foo
        my $slurpy;       # *@foo

        my @sig := ['caller_ctx','_NAMED'];
        my @setup;

        if $cps {
            @sig.push($cps);
        }


        my $bind_named := '';
        for @params {
            if $_.slurpy {
                if $_.named {
                    # TODO
                    $slurpy_named := $_; 
                } else {
                    $slurpy := $_;
                }
                $*BLOCK.add_js_lexical(self.mangle_name($_.name));
            } elsif $_.named {
                my $quoted := quote_string($_.named);
                @*KNOWN_NAMED.push($quoted);
                my $value := "_NAMED[$quoted]";
                if $_.default {
                    # TODO types

                    my $default := self.as_js($_.default, :want($T_OBJ), :$cps);
                    @setup.push($default);
                    $value := "(_NAMED.hasOwnProperty($quoted) ? $value : {$default.expr})";
                }
                # TODO required named arguments and defaultless optional ones

                if self.is_dynamic_var($_) {
                    @setup.push("{$*CTX}[{quote_string($_.name)}] = $value;\n");
                }
                else {
                    $*BLOCK.add_js_lexical(self.mangle_name($_.name));
                    @setup.push("{self.mangle_name($_.name)} = $value;\n");
                }

            } elsif self.is_dynamic_var($_) {
               my $tmp := self.unique_var('param');
               @sig.push($tmp);

               my $set := "{$*CTX}[{quote_string($_.name)}] = ";

               if $_.default {
                   my $default_value := self.as_js($_.default, :want($T_OBJ), :$cps);

                   @setup.push(Chunk.void(
                       "if (arguments.length < {+@sig}) \{\n",
                        $default_value,
                        "$set {$default_value.expr};\n\} else \{\n$set $tmp;\n\}\n"
                   ));
               } else {
                   @setup.push($set ~ $tmp ~ ";\n");
                }
            } else {
                my $default := '';
                my $name := self.mangle_name($_.name);
                if $_.default {
                    # Overwriting a parameter makes the v8 optimizer bail out so to avoid that we introduce a new variable
                    my $tmp := self.unique_var($name~'_');

                    $*BLOCK.add_js_lexical($name);
                    @sig.push($tmp);
                    my $default_value := self.as_js($_.default, :want($T_OBJ));
                    @setup.push(Chunk.void(
                        "if (arguments.length < {+@sig}) \{\n",
                         $default_value,
                         "$name = {$default_value.expr};\n\} else \{\n$name = $tmp;\n\}\n"
                    ));

                } else {
                    @sig.push($name);
                }
            }
        }

        if $slurpy {
            @setup.push("{self.mangle_name($slurpy.name)} = Array.prototype.slice.call(arguments,{+@sig});\n");
        }
        if $slurpy_named {
            @setup.push("{self.mangle_name($slurpy_named.name)} = nqp.slurpy_named(_NAMED, {known_named(@*KNOWN_NAMED)});\n");
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
                    return Chunk.new($T_NUM, $chunk.expr, [$chunk]);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_NUM, "({$chunk.expr} ? 1 : 0)", [$chunk]);
                }
                if $got == $T_STR {
                    my $tmp := $*BLOCK.add_tmp();
                    return Chunk.new($T_NUM, "(isNaN($tmp) ? 0 : $tmp)", [$chunk,"$tmp = parseFloat({$chunk.expr});\n"]);
                }
            }

            if $desired == $T_INT {
                if $got == $T_STR {
                    return Chunk.new($T_INT, "parseInt({$chunk.expr})", [$chunk]);
                }
                if $got == $T_NUM {
                    return Chunk.new($T_INT, "({$chunk.expr}|0)", [$chunk]);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_INT, "({$chunk.expr} ? 1 : 0)", [$chunk]);
                }
            }

            if $got == $T_OBJ {
                my %convert;
                %convert{$T_STR} := 'to_str';
                %convert{$T_NUM} := 'to_num';
                %convert{$T_INT} := 'to_int';
                %convert{$T_BOOL} := 'to_bool';
                return Chunk.new($desired, 'nqp.' ~ %convert{$desired} ~ '(' ~ $chunk.expr ~ ", {$*CTX})", [$chunk]);
            }

            if $desired == $T_STR {
                if $got == $T_INT || $got == $T_NUM {
                    return Chunk.new($T_STR, $chunk.expr ~ '.toString()', [$chunk]);
                }
                if $got == $T_BOOL {
                    return Chunk.new($T_STR, "({$chunk.expr} ? '1' : '0')", [$chunk]);
                }
            }

            if $desired == $T_OBJ {
                if $got == $T_NUM || $got == $T_STR {
                    return $chunk;
                } elsif $got == $T_INT {
                    return Chunk.new($T_OBJ, "new nqp.NQPInt({$chunk.expr})", [$chunk]);
                } elsif $got == $T_BOOL {
                    return Chunk.new($T_OBJ, "({$chunk.expr} ? 1 : 0)", [$chunk]);
                } elsif $got == $T_VOID {
                    # TODO think what's the correct thing here
                    return Chunk.new($T_OBJ, "null", [$chunk]);
                }
            }

            if $desired == $T_BOOL {
                if $got == $T_INT || $got == $T_NUM || $got == $T_STR {
                    return Chunk.new($T_BOOL, $chunk.expr, [$chunk]);
                }
            }


            return Chunk.new($desired, "nqp.coercion($got, $desired, {$chunk.expr})", []) #TODO
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
        } else {
            $body;
        }
    }


    # It's more usefull for me during this development to emit partial code instead of quiting
    method NYI($msg) {
        if $!nyi eq 'ignore' {
        } elsif $!nyi eq 'warn' {
            nqp::printfh(nqp::getstderr(), "NYI: $msg\n");
        }
        Chunk.new($T_VOID,"nqp.NYI({quote_string($msg)})",["console.trace(\"NYI: \"+{quote_string($msg)});\n"]);
        #nqp::die("NYI: $msg");
    }


    method declare_js_vars(@vars) {
        if +@vars {
            'var '~nqp::join(",\n",@vars)~";\n";
        } else {
            '';
        }
    }

    sub want($node, $desired) {
        # TODO
    }

    proto method as_js($node, :$want, :$cps) {
        if nqp::defined($want) {
            if nqp::istype($node, QAST::Want) {
                self.NYI("QAST::Want");
#                self.coerce(self.as_jast(want($node, $*WANT)), $*WANT)
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

        my $needs_cont;
        my $cont_expr;

        my $used_cps := 0;

        my sub compile_statements($i) {
            if $i >= $n {
                return;
            }

            my $chunk := @chunks[$i];
            if nqp::istype($chunk, ChunkCPS) {
                $used_cps := 1;
                if $i == $n - 1 {
                    if $i == $result_child {
                        $needs_cont := $chunk.cont;
                        $cont_expr  := $chunk.expr;
                    } else {
                        $needs_cont := self.unique_var('cont');
                        $cont_expr := self.unique_var('result');
                        @setup.push("var {$chunk.cont} = function({$chunk.expr}) \{\n");
                        @setup.push("return function() \{return $needs_cont\($result\)\}\n");
                        @setup.push("\};\n");
                    }
                } else {
                    @setup.push("var {$chunk.cont} = function({$chunk.expr}) \{\n");
                    $result := $chunk.expr if $i == $result_child;
                    compile_statements($i+1);
                    @setup.push("\};\n");
                }
                @setup.push($chunk);
            } elsif nqp::istype($chunk, Chunk) || nqp::isstr($chunk) {

                my $chunk_expr := nqp::isstr($chunk) ?? $chunk !! $chunk.expr;

                nqp::push(@setup, $chunk);

                if $i == $result_child {
                    if $result_var {
                        @setup.push("$result_var = $chunk_expr;\n");
                    } else {
                        $result := $chunk_expr;
                    }
                }

                compile_statements($i+1);

                if $i == $n - 1 && $used_cps {
                    $needs_cont := self.unique_var('cont');
                    $cont_expr := self.unique_var('result');
                    @setup.push("return function() \{return $needs_cont\($result\)\}\n");
                }
            } else {
                nqp::die("Unknown type seen by compile_all_the_statements");
            }
        }

        compile_statements(0);

        if $needs_cont {
            ChunkCPS.new($type, $cont_expr, @setup, $needs_cont, :$node);
        } else {
            Chunk.new($type, $result, @setup, :$node);
        }
    }
    
    method compile_all_the_statements(QAST::Stmts $node, $want, :$result_child = +$node.list -1, :$cps) {
        my @chunks;
        my @stmts := $node.list;

        my $i := 0;
        for @stmts -> $stmt {
            my $chunk := self.as_js(@stmts[$i], :want($i == $result_child ?? $want !! $T_VOID), :$cps);
            @chunks.push($chunk);
            $i := $i + 1;
        }
        self.chunk_sequence($want, @chunks, :$result_child, :$node);
    }

    proto method cpsify_chunk($chunk) { * }
    multi method cpsify_chunk(ChunkCPS $chunk) { $chunk }
    multi method cpsify_chunk(Chunk $chunk) {
        my $ret := self.chunk_sequence($chunk.type, $chunk.setup, :expr($chunk.expr), :node($chunk.node));
        $ret;
    }

    multi method as_js(QAST::Block $node, :$want, :$cps) {
        my $outer     := try $*BLOCK;
        my $outer_loop := try $*LOOP;
        self.compile_block($node, $outer, $outer_loop, :$want);
    }

    method mangled_cuid($cuid) {
        my $ret := '';
        for nqp::split('',$cuid) -> $c {
            $ret := $ret ~ ($c eq '.' ?? '_' !! $c); 
        }
        $ret;
    }


    has %!cuids;

    method register_cuid($node) {
        %!cuids{$node.cuid} := $node;
    }

    method is_known_cuid($node) {
        nqp::existskey(%!cuids, $node.cuid);
    }

    method setup_cuids() {
        my @cuids;
        for %!cuids {
            @cuids.push("{self.mangled_cuid($_.key)} = new nqp.CodeRef({quote_string($_.value.name)},{quote_string($_.key)})");
        }
        self.declare_js_vars(@cuids);
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
            Chunk.void($chunk, $chunk.expr~";\n");
        } else {
            my $tmp := $*BLOCK.add_tmp();
            Chunk.new($chunk.type, $tmp, [$chunk, "$tmp = {$chunk.expr};\n"]);
        }
    }

    # We try to use native js lexpads as much as we can to have a chance of decent programs
    # Instead of implementing forceouterctx we use this hack to support settings.
    method setup_setting($node) {
        if nqp::eqaddr($node, $*SETTING_TARGET) {
            my @imported;
            for $node.symtable -> $symbol {
                @imported.push("{self.mangle_name($symbol.key)} = setting[{quote_string($symbol.key)}]");
            }
            "var setting = nqp.setup_setting({quote_string($*SETTING_NAME)});\n"
            ~ self.declare_js_vars(@imported);
        } else {
            '';
        }
    }


    has %!serialized_code_ref_info;

    my class SerializedCodeRefInfo {
        has $!closure_template;
        has $!static_info;
        has $!ctx;
        has $!outer_ctx;
        method ctx() {$!ctx}
        method outer_ctx() {$!outer_ctx}
        method static_info() {$!static_info}
        method closure_template() {$!closure_template}
    }

    method static_info_for_lexicals(BlockInfo $block) {
        my @static_info;
        for $block.variables -> $var {
            nqp::push(@static_info,quote_string($var.name)
                ~ ': [' ~ nqp::objprimspec($var.returns) ~ ',' ~ quote_string(self.mangle_name($var.name)) ~ ']');
        }
        '{' ~ nqp::join(',', @static_info) ~ '}';
    }

    method clone_inners($block) {
        my @clone_inners;
        for $block.cloned_inners {
            my $reg   := $_.value;
            my $cuid := self.mangled_cuid($_.key);

            if !$block.need_direct{$_.key} {
                # we know the block won't be ever called in direct mode
                @clone_inners.push("$reg = $cuid");
            } elsif %*BLOCKS_DONE{$_.key} {
                @clone_inners.push("$reg = $cuid.closure");
                @clone_inners.push(%*BLOCKS_DONE{$_.key});
            } elsif %*BLOCKS_DONE_CPS{$_.key} {
                # we are unable to emit a direct version of the block
                @clone_inners.push("$reg = $cuid.onlyCPS()");
            } else {
                nqp::die("//Broken block: {$_.key}");
            }

            if !$block.need_cps{$_.key} || $!cps eq 'off' {
                # we know the block won't be ever called in cps mode
                @clone_inners.push(";\n");
            } elsif %*BLOCKS_DONE_CPS{$_.key} {
                @clone_inners.push(".CPS");
                @clone_inners.push(%*BLOCKS_DONE_CPS{$_.key});
                @clone_inners.push(";\n");
            } else {
                # we can just use the direct version of the block in CPS mode
                @clone_inners.push(".sameCPS();\n");
            }
        }
        Chunk.void(|@clone_inners);
    }

    method capture_inners($block) {
        my @capture_inners;
        for $block.captured_inners {
            my $cuid := self.mangled_cuid($_.key);
            my $reg   := $_.value;

            @capture_inners.push("$reg = $cuid.capture");
            @capture_inners.push(%*BLOCKS_DONE{$_.key});
            @capture_inners.push(";\n");
        }
        Chunk.void(|@capture_inners);
    }

    method compile_block(QAST::Block $node, $outer, $outer_loop, :$want, :@extra_args=[], :$cps) {

        my $outer_ctx := try $*CTX // "null";

        if self.is_known_cuid($node) {
        } else {
            self.register_cuid($node);

            my @*KNOWN_NAMED;
            my $*BINDVAL := 0;
            my $*BLOCK := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu));

            my $*LOOP := BlockBarrier.new($*BLOCK, $outer_loop);

            my $*CTX;
            my $create_ctx := self.create_fresh_ctx();

            my $body_want := $node.blocktype eq 'immediate' ?? $want !! $T_OBJ;

            my $stmts := self.compile_all_the_statements($node, $body_want);

            if nqp::istype($stmts, ChunkCPS) {
            } else {
                my $sig := self.compile_sig($*BLOCK.params);

                my @function := [
                    "function({$sig.expr}) \{\n",
                    self.setup_setting($node),
                    self.declare_js_vars($*BLOCK.tmps),
                    self.declare_js_vars($*BLOCK.js_lexicals),
                    $create_ctx,
                    $sig,
                    self.clone_inners($*BLOCK),
                    self.capture_inners($*BLOCK),
                    $stmts,
                    "return {$stmts.expr};\n",
                    "\}"
                ];
                %*BLOCKS_DONE{$node.cuid} := Chunk.void("(", |@function, ")");

                if self.is_block_part_of_sc($node) {
                    if $node.blocktype eq 'immediate' {
                        # TODO think about that, and find a way to test this
                        #say("// it's an immediate one");
                    } else {
                        %!serialized_code_ref_info{$node.cuid} := SerializedCodeRefInfo.new(
                            closure_template => Chunk.new($T_OBJ, "", @function).join(),
                            ctx => $*CTX,
                            outer_ctx => (nqp::defined($*BLOCK.outer) ?? $*BLOCK.outer.ctx !! ""),
                            static_info => self.static_info_for_lexicals($*BLOCK)
                        );
                    }
                }
            }


            # The CPS version

            # TODO recreate other things than block

            if $!cps ne 'off' {
                my @*KNOWN_NAMED;
                my $*BLOCK := BlockInfo.new($node, (nqp::defined($outer) ?? $outer !! NQPMu));

                my $stmts_cps := self.compile_all_the_statements($node, $body_want, :cps);

                if nqp::istype($stmts_cps, ChunkCPS) {
                    self.compile_sig($*BLOCK.params, :cps($stmts_cps.cont));
                    self.compile_sig($*BLOCK.params, :cps($stmts_cps.cont));
                    self.compile_sig($*BLOCK.params, :cps($stmts_cps.cont));
                    self.compile_sig($*BLOCK.params, :cps($stmts_cps.cont));

                    my $sig_cps := self.compile_sig($*BLOCK.params, :cps($stmts_cps.cont));


                    my @function_cps := [
                        "function({$sig_cps.expr}) \{\n",
                        self.setup_setting($node),
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
                } else {
                    #say("/* SKIPPING: {$stmts_cps.join} */\n");
                }
            }




                

        }

        if $node.blocktype eq 'immediate' {
            my $setup := [];
            my $cloned_block := $outer.clone_inner($node, :cps($cps), :direct(!$cps));

            if $cps {
                my $cont := self.unique_var('cont');
                my $result := self.unique_var('result');

                my @args := [$outer_ctx,'{}'];

                @args.push($cont);

                for @extra_args -> $arg {
                    @args.push($arg.expr);
                    $setup.push($arg);
                }

                $setup.push('return ' ~ $cloned_block ~ ".\$callCPS({nqp::join(',', @args)})");

                ChunkCPS.new($T_OBJ, $result, $setup, $cont, :$node);
            } else {
                my @args := [$outer_ctx,'{}'];
                for @extra_args -> $arg {
                    @args.push($arg.expr);
                    $setup.push($arg);
                }

                self.stored_result(Chunk.new($want, $cloned_block~".\$call({nqp::join(',', @args)})", $setup, :$node), :$want);
            }
        } elsif $node.blocktype eq 'declaration' ||  $node.blocktype eq '' {
            if $want == $T_VOID {
                Chunk.void();
            } else {
                my $cloned_block := $outer.clone_inner($node);
                Chunk.new($T_OBJ, $cloned_block, []);
            }
        } elsif $node.blocktype eq 'declaration_static' {
            my $cloned_block := $outer.capture_inner($node);
            Chunk.new($T_OBJ, $cloned_block, []);
        } else {
            self.NYI("unknown blocktype: {$node.blocktype}");
        }
    }

    has $!unique_vars;

    # TODO avoid accidental name collisions 
    method unique_var($prefix) {
        $!unique_vars := $!unique_vars + 1;
        $prefix~$!unique_vars;
    }

    method create_fresh_ctx() {
        $*CTX := self.unique_var('ctx');
        $*BLOCK.ctx($*CTX);
        self.create_ctx($*CTX);
    }

    method outer_ctx() {
        $*BLOCK.outer ?? $*BLOCK.outer.ctx !! 'null';
    }

    method create_ctx($name) {
        # TODO think about contexts
        #"var $name = new nqp.Ctx(caller_ctx,{self.outer_ctx},'$name');\n";
        "var $name = new nqp.Ctx(caller_ctx, {self.outer_ctx});\n";
    }

    multi method as_js(QAST::IVal $node, :$want, :$cps) {
        Chunk.new($T_INT,'('~$node.value()~')',[],:$node);
    }

    multi method as_js(QAST::NVal $node, :$want, :$cps) {
        Chunk.new($T_NUM,'('~$node.value()~')',[],:$node);
    }

    multi method as_js(QAST::SVal $node, :$want, :$cps) {
        Chunk.new($T_STR,quote_string($node.value()),[],:$node);
    }

    multi method as_js(QAST::BVal $node, :$want, :$cps) {
        self.as_js($node.value, :$want);
    }

    # Helps with register allocation on other backends
    # We don't do allocate registers so just ignore that
    multi method as_js(QAST::Stmt $node, :$want, :$cps) {
        self.as_js($node[0], :$want, :$cps);
    }

    multi method as_js(QAST::Stmts $node, :$want, :$cps) {
        # for performance purposes we use the native js lexicals as much as possible, that means we need hacks for things that other backends can do easily with all the various ctx ops
        if self.is_ctxsave($node) {
            my @lexicals;
            for $*BLOCK.variables -> $var {
                @lexicals.push(quote_string($var.name) ~ ': ' ~ self.mangle_name($var.name));
            }
            Chunk.void("nqp.ctxsave(\{{nqp::join(',', @lexicals)}\});\n");
        } else {
            self.compile_all_the_statements($node, $want, :$cps);
        }
    }

    multi method as_js(QAST::VM $node, :$want, :$cps) {
        # We ignore QAST::VM as we don't support a js specific one, and the ones nqp generate contain parrot specific stuff we don't care about.
        Chunk.new($T_VOID,'',[]);
    }

    multi method as_js(QAST::Op $node, :$want, :$cps) {
        QAST::OperationsJS.compile_op(self, $node, :$want, :$cps);
    }

    method create_sc($ast) {
        my @sh;
        my $sc := $ast.sc;

        my $sc_tuple := self.serialize_sc($sc);
        my $sc_data := $sc_tuple[0];
        my $sc_sh := $sc_tuple[1];


        my $i := 0;
        while $i < nqp::elems($sc_sh) {
            my $s := nqp::atpos_s($sc_sh,$i);
            my $got := nqp::isnull_s($s) ?? 'null' !! quote_string($s);
            @sh.push($got);
            $i := $i + 1;
        }

        my $quoted_data := nqp::isnull_s($sc_data) ?? 'null' !! quote_string($sc_data);

        my $code_ref_blocks := $ast.code_ref_blocks();

        my @blocks;
        for $code_ref_blocks -> $block {
            @blocks.push(self.mangled_cuid($block.cuid));
        }

        my $set_info := '';
        for $code_ref_blocks -> $block {
            if nqp::existskey(%!serialized_code_ref_info, $block.cuid) {
                my $info := %!serialized_code_ref_info{$block.cuid};
                
                $set_info := $set_info
                    ~ self.mangled_cuid($block.cuid)
                    ~ ".setInfo("
                    ~ quote_string($info.ctx) ~ ","
                    ~ quote_string($info.outer_ctx) ~ ","
                    ~ quote_string($info.closure_template) ~ ","
                    ~ $info.static_info
                    ~ ");\n";
            }
        }

        "var sh=[{nqp::join(',',@sh)}];\n"
        ~ "var sc = nqp.op.createsc({quote_string(nqp::scgethandle($sc))});\n"
        ~ "var code_refs = [{nqp::join(',',@blocks)}];\n" # TODO
        ~ $set_info
        ~ "nqp.op.deserialize($quoted_data,sc,sh,code_refs,null);\n"
        ~ "nqp.op.scsetdesc(sc,{quote_string(nqp::scgetdesc($sc))});\n"
    }

    method do_control($type, $loop) {
        if $type eq 'last' {
            "break;\n";
        } elsif $type eq 'next' {
            "continue;\n";
        } elsif $type eq 'redo' {
            "{$loop.redo} = 1;\n;continue;\n";
        }
    }

    my sub ucfirst($str) {
        nqp::uc(nqp::substr($str, 0, 1)) ~ nqp::substr($str, 1);
    }

    method throw_control_exception($type, $loop, $label) {
        while nqp::defined($loop) {
            if $loop ~~ LoopInfo {
                if $label {
                    # TODO compare labels which are WVals to reduce the number of loops that catch exceptions
                    $loop.handle($type);
                } else {
                    $loop.handle($type);
                    return Chunk.void("throw new nqp.{ucfirst($type)}(null);\n");
                }
            }
            $loop := $loop.outer;
        }

        if $label {
            my $compiled_label := self.as_js($label, :want($T_OBJ));
            Chunk.void($compiled_label, "throw new nqp.{ucfirst($type)}({$compiled_label.expr});\n");
        } else {
            self.NYI("can't find surrounding loop for last");
        }
    }

    multi method as_js(QAST::CompUnit $node, :$want, :$cps) {
        # Should have a single child which is the outer block.
        if +@($node) != 1 || !nqp::istype($node[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
        }

        my $*COMPUNIT := $node;

        my $*SETTING_NAME;
        my $*SETTING_TARGET;

        # Blocks we've seen while compiling.
        my %*BLOCKS_DONE;
        my %*BLOCKS_DONE_CPS;

        # A fake outer block 
        my $*BLOCK := BlockInfo.new(NQPMu, NQPMu);
        $*BLOCK.ctx("null");

        my $pre := '';

        for $node.pre_deserialize -> $obj {
            if nqp::istype($obj, QAST::Stmts) {
                for $obj.list -> $op {
                    if nqp::istype($op, QAST::Op) && $op.op eq 'forceouterctx' {
                        $*SETTING_NAME := $op[1][1].value;
                        $*SETTING_TARGET := $op[0].value;
                        $pre := $pre ~ "nqp.load_setting({quote_string($*SETTING_NAME)});\n";
                        # HACK to get nqp::sprintf to work
                        $pre := $pre ~ "require('sprintf');\n"; 
                    } elsif nqp::istype($op, QAST::Op)
                        && $op.op eq 'callmethod'
                        && $op.name eq 'load_module' {
                        $pre := $pre ~ "nqp.load_module({quote_string($op[1].value)});\n";
                    } else {
#                        self.log($op.dump);
                    }
                }
            }
        }

        my @post;
        for $node.post_deserialize -> $node {
            self.log($node.dump);
            @post.push(self.as_js($node, :want($T_VOID)));
        }
        my $post := Chunk.new($T_VOID, "", @post);

        # Compile the block.
        my $block_js := self.as_js($node[0], :want($T_VOID));

        my $body;

        if nqp::defined($node.main) {
            my $main_block := QAST::Block.new($node.main);

            my $main := self.as_js($main_block, :want($T_OBJ));

            $body := Chunk.void($block_js, $main, $main.expr ~ ".\$apply([null, \{\}].concat(nqp.args(module)));\n");
            
        } else {
            $body := $block_js;
        }

        Chunk.void(self.setup_cuids(), $pre , self.create_sc($node), self.set_code_objects,  self.declare_js_vars($*BLOCK.tmps), self.capture_inners($*BLOCK), self.clone_inners($*BLOCK), $post, $body);
    }


    method is_block_part_of_sc($block) {
        return 0 unless try $*COMPUNIT;
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
            my @types := [$T_OBJ, $T_INT, $T_NUM, $T_STR];
            my $type := @types[nqp::objprimspec($node.returns)];
            $*BLOCK.register_var_type($node, $type);
            self.log("type {$node.name} = $type");
        }

        if $node.decl eq 'var' || $node.decl eq 'static' {
            $*BLOCK.add_variable($node);
            my $static := $node.decl eq 'static' ?? " = {self.value_as_js($node.value)}" !! '';

            $*BLOCK.add_js_lexical(self.mangle_name($node.name) ~ $static);
        } elsif $node.decl eq 'param' {
            $*BLOCK.add_variable($node);
            if $node.scope eq 'local' || $node.scope eq 'lexical' {
                $*BLOCK.add_param($node);
            } else {
                nqp::die("Parameter cannot have scope '{$node.scope}'; use 'local' or 'lexical'");
            }
        } elsif $node.decl eq '' {
        } else {
            nqp::die("Unimplemented var declaration type {$node.decl}");
        }
    }

    multi method as_js(QAST::Var $node, :$want, :$cps) {
        self.declare_var($node);
        self.compile_var($node);
    }

    multi method as_js(QAST::VarWithFallback $node, :$want, :$cps) {
        # TODO CPS
        my $var := self.compile_var($node);
        if $var.type == $T_OBJ {
            my $fallback := self.as_js($node.fallback, :want($T_OBJ));
            my $tmp := $*BLOCK.add_tmp();
            Chunk.new($T_OBJ, $tmp, [
                $var,
                "if ({$var.expr} == null) \{\n"
                    ,$fallback
                    ,"$tmp = {$fallback.expr};\n\} else \{\n$tmp = {$var.expr};\n\}\n"
                    ]);
        } else {
            $var;
        }
    }

    multi method as_js(QAST::Regex $node, :$want, :$cps) {
        # TODO CPS 
        RegexCompiler.new(compiler => self).compile($node);
    }

    method value_as_js($value) {
        my $sc     := nqp::getobjsc($value);
        my $handle := nqp::scgethandle($sc);
        my $idx    := nqp::scgetobjidx($sc, $value);
        "nqp.wval({quote_string($handle)},$idx)";
    }

    multi method as_js(QAST::WVal $node, :$want, :$cps) {
        Chunk.new($T_OBJ, self.value_as_js($node.value), []);
    }
    
    method var_is_lexicalish(QAST::Var $var) {
        $var.scope eq 'lexical' || $var.scope eq 'typevar';
    }

    method as_js_clear_bindval($node, :$want, :$cps) {
        my $*BINDVAL := 0;
        self.as_js($node, :$want, :$cps);
    }

    method is_dynamic_var($var) {
        # HACK due to a nqp misdesign we need a HACK
        # TODO Make nqp mark dynamic variables explicitly
        my $name := $var.name;
        if nqp::chars($name) > 2 {
            my str $sigil := nqp::substr($name, 0, 1);
            my str $twigil := nqp::substr($name, 1, 1);
            if $twigil eq '*' {
              return 1;
            }
        }
        return 0;
    }

    method atpos($array, $index, :$node) {
        my $array_chunk := self.as_js($array, :want($T_OBJ));
        my $index_chunk := self.as_js($index, :want($T_INT));
        Chunk.new($T_OBJ, "nqp.op.atpos({$array_chunk.expr},{$index_chunk.expr})", [$array_chunk, $index_chunk], :node($node));
    }


    method figure_out_type(QAST::Var $var) {
        self.log("searching for type {$var.name}");

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
                    self.log("found type {$var.name} -> $type");
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

    method compile_var(QAST::Var $var, :$cps) {
        if self.var_is_lexicalish($var) && self.is_dynamic_var($var) {
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ), :$cps);
                if $var.decl eq 'var' {
                    self.stored_result(Chunk.new($T_OBJ, "({$*CTX}[{quote_string($var.name)}] = {$bindval.expr})",  [$bindval]));
                } else {
                    self.stored_result(Chunk.new($T_OBJ, "{$*CTX}.bind({quote_string($var.name)}, {$bindval.expr})",  [$bindval]));
                }
            } else {
                if $var.decl eq 'var' {
                    self.stored_result(Chunk.new($T_OBJ, "({$*CTX}[{quote_string($var.name)}] = null)",  []));
                } else {
                    Chunk.new($T_OBJ, "{$*CTX}.lookup({quote_string($var.name)})", [], :node($var));
                }
            }
        } elsif self.var_is_lexicalish($var) || $var.scope eq 'local' {
            my $type := self.figure_out_type($var);
            my $mangled := self.mangle_name($var.name);
            if $*BINDVAL {
                # TODO better source mapping
                # TODO use the proper type 
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($type), :$cps);
                self.cpsify_chunk(Chunk.new($type,$mangled, [$bindval,'('~$mangled~' = ('~ $bindval.expr ~ "));\n"]));
            } else {
                # TODO get the proper type 
                self.cpsify_chunk(Chunk.new($type, $mangled, [], :node($var)));
            }
        } elsif ($var.scope eq 'positional') {
            # TODO work on things other than nqp lists
            # TODO think about nulls and missing elements
            if $*BINDVAL {
                my $bindval := $*BINDVAL;
                {
                    my $*BINDVAL;
                    self.bind_pos($var[0], $var[1], $bindval, :node($var));
                }
            } else {
                self.atpos($var[0], $var[1], :node($var));
            }
        } elsif ($var.scope eq 'associative') {
            # TODO think about nulls and missing elements
            if $*BINDVAL {
                my $bindval := $*BINDVAL;
                {
                    my $*BINDVAL;
                    self.bind_key($var[0], $var[1], $bindval, :node($var));
                }
            } else {
                my $hash := self.as_js($var[0], :want($T_OBJ));
                my $key := self.as_js($var[1], :want($T_STR));
                Chunk.new($T_OBJ, "{$hash.expr}.\$\$atkey({$key.expr})", [$hash, $key], :node($var));
            }
        } elsif ($var.scope eq 'attribute') {
            # TODO take second argument into account
            # TODO figure out if the second argument can be always assumed to be a WVal 
            # TODO types
            my $self := self.as_js_clear_bindval($var[0], :want($T_OBJ), :$cps);
            my $attr := Chunk.new($T_OBJ, "{$self.expr}[{quote_string($var.name)}]", [$self]);
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ), :$cps);
                Chunk.new($T_OBJ, $bindval.expr, [$attr, $bindval, "{$attr.expr} = {$bindval.expr};\n"]);
            } else {
                $attr;
            }
        } elsif ($var.scope eq 'contextual') {
            if $*BINDVAL {
                my $bindval := self.as_js_clear_bindval($*BINDVAL, :want($T_OBJ), :$cps);
                self.stored_result(Chunk.new($T_OBJ, "{$*CTX}.bind_dynamic({quote_string($var.name)},{$bindval.expr})", [$bindval]));
            } else {
                Chunk.new($T_OBJ, "{$*CTX}.lookup_dynamic({quote_string($var.name)})", []);
            }
        } else {
            self.NYI("Unimplemented QAST::Var scope: " ~ $var.scope);
        }
    }

    method bind_key($hash, $key, $value, :$node, :$cps) {
        # TODO CPS
        my $hash_chunk := self.as_js($hash, :want($T_OBJ));
        my $key_chunk := self.as_js($key, :want($T_STR));
        my $value_chunk := self.as_js($value, :want($T_OBJ));

        Chunk.new($T_OBJ, $value_chunk.expr, [$hash_chunk, $key_chunk, $value_chunk, "{$hash_chunk.expr}.\$\$bindkey({$key_chunk.expr},{$value_chunk.expr});\n"], :node($node));
    }

    method bind_pos($array, $index, $value, :$node, :$cps) {
        # TODO CPS
        my $array_chunk := self.as_js($array, :want($T_OBJ));
        my $index_chunk := self.as_js($index, :want($T_INT));
        my $value_chunk := self.as_js($value, :want($T_OBJ));

        Chunk.new($T_OBJ, $value_chunk.expr, [$array_chunk, $index_chunk, $value_chunk, "nqp.op.bindpos({$array_chunk.expr},{$index_chunk.expr},{$value_chunk.expr});\n"], :node($node));
    }



    multi method as_js($unknown, :$want, :$cps) {
        self.NYI("Unimplemented QAST node type: " ~ $unknown.HOW.name($unknown));
    }


    method as_js_with_prelude($ast) {
        Chunk.void(
            "var nqp = require('nqp-runtime');\n",
            "\nvar top_ctx = nqp.top_context();\n",
            # temporary HACK
            "var ARGS = process.argv;\n",
            self.as_js($ast, :want($T_VOID))
        );
    }

    method emit($ast) {
       self.as_js_with_prelude($ast).join
    }

    # return a json datastructure we later process into a source map
    method emit_with_source_map($ast) {
       self.as_js_with_prelude($ast).with_source_map_info
    }
}
