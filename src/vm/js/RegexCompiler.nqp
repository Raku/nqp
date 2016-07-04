class RegexCompiler {
    has $!compiler; # a QAST::CompilerJS instance

    has $!label; # the label we will jump to on the next while loop iteration

    has $!js_loop_label; # we need this call break to stop the while loop 

    has $!unique_label; # we need a supply of unique labels

    has $!fail_label; # when we fail and need to backtrack
    has $!done_label; # when we can't backtrack no more
    has $!initial_label; # when we can't backtrack no more

    has $!cursor;
    has $!target; # the string we are matching against
    has $!pos; # the position in $!target we are currently at
    has $!cursor_type_runtime; # the register with class of the object in $!cursor
    has $!bstack;
    has $!restart;
    has $!cstack;
    has $!subcur;
    has $!rep;

    has $!has_cursor_type; # do we know the class of the object in $!cursor at compile time
    has $!cursor_type; # the class of the object in $!cursor - if we know it at compile time

    method set_cursor_var() {
        if $*BLOCK.is_dynamic_var(QAST::Var.new(:name('$¢'))) {
            "{$*CTX}.bind({quote_string('$¢')}, $!cursor);\n";
        } else {
            $!compiler.mangle_name('$¢') ~ " = $!cursor;\n";
        }
    }

    method compile($node) {
        # TODO better name for $start
        # we need to unpack the array we !cursor_start_all into a bunch of variables 
        my $start := $*BLOCK.add_tmp();

        my $jump := $*BLOCK.add_tmp();
        my $cstack_top := $*BLOCK.add_tmp();

        my $restart_label := self.new_label;

        $!has_cursor_type := $node.has_cursor_type();
        if $!has_cursor_type {
            $!cursor_type := $node.cursor_type();
        }

        my $self := $!compiler.mangle_name('self');

        Chunk.new($T_OBJ, $!cursor, [
            "{$!label} = {$!initial_label};\n",
            "$start = $self['!cursor_start_all']({$*CTX}, null, $self).array;\n",
            "{$!cursor} = $start[0];\n",
            self.set_cursor_var(),
            "{$!target} = $start[1];\n",
            "{$!pos} = nqp.toInt($start[2], $*CTX);\n",
            ($!has_cursor_type ?? '' !! "{$!cursor_type_runtime} = $start[3];\n"),
            "{$!bstack} = $start[4].array;\n",
            "{$!restart} = $start[5];\n",
            "if ($!pos > $!target.length) \{$!label = $!fail_label\}\n",
            "if ($!restart) \{$!label = $restart_label\}\n",
            "{$!js_loop_label}: while (1) \{\nswitch ({$!label}) \{\n",

            self.case($!initial_label),
            self.compile_rx($node),
            self.case($restart_label),
            "$!cstack = $!cursor[\"\$!cstack\"];",
            "if ($!cstack instanceof nqp.NQPArray) $!cstack = $!cstack.array;\n",
            self.case($!fail_label),
            "if ($!bstack.length == 0) \{{self.goto($!done_label)}\}\n",
            "$cstack_top = $!bstack.pop();\n",
            "if ($!cstack && $!cstack.length != 0) \{\n",
            "$!subcur = $!cstack[$cstack_top-1];\n",
            "\}\n",
            "$!rep = $!bstack.pop();\n$!pos=$!bstack.pop();\n$jump=$!bstack.pop();\n",
            "if ($!pos < -1) \{{self.goto($!done_label)}\}\n",
            "if ($!pos < 0) \{{self.fail}\}\n",
            "if ($jump == 0) \{{self.fail}\}\n",
            "if (!($!cstack instanceof Array)) \{{self.goto($jump)}\}\n",
            "if ($!bstack.length == 0) \{$!cstack.length = 0;{self.goto($jump)}\}\n",
            "$!cstack.length = $!bstack[$!bstack.length-1];\n",
            self.goto($jump),

            self.case($!done_label),
            "{$!cursor}['!cursor_fail']({$*CTX}, null, $!cursor);\n",
            "break {$!js_loop_label}\n",
            "\}\n\}\n"
        ]);
    }

    method compile_rx($node) {
        my $rxtype := $node.rxtype() || 'concat';
        if nqp::can(self, $rxtype) {
            self."$rxtype"($node);
        }
        else {
            $!compiler.NYI("NYI QAST::Regex rxtype = {$node.rxtype}");
        }
    }
    

    method goal($node) {
        self.compile_rx(QAST::Regex.new(
            :rxtype<concat>,
            $node[1],
            QAST::Regex.new( :rxtype<altseq>, $node[0], $node[2] )
        ));
    }

    method dba($node) {
        call($!cursor, "!dba", $!pos, quote_string($node.name)) ~ ";\n";
    }
    
    method concat($node) {
        my @setup;
        for $node.list {
            @setup.push(self.compile_rx($_));
        }
        Chunk.new($T_VOID, "", @setup);
    }

    method literal($node) {
        my $const := $node.subtype eq 'ignorecase' ?? nqp::lc($node[0]) !! $node[0];
        my $qconst := quote_string($const);
        my $constlen := nqp::chars($const);
        my $cmpop := $node.negate ?? '==' !! '!=';
        my $str := "{$!target}.substr({$!pos},$constlen)";
        if $node.subtype eq 'ignorecase' {
            $str := "$str.toLowerCase()";
        }
        "if ($str $cmpop $qconst) \{{self.fail}\}" ~
            ($node.subtype eq 'zerowidth' ?? "\n" !! " else \{{$!pos}+=$constlen\}\n");
    }

    method scan($node) {
        my $loop := self.new_label;
        my $scan := self.new_label;
        my $done := self.new_label;

        "if ({self.get_cursor_attr($!compiler.mangle_name('self'), '$!from')} != -1) \{{self.goto($done)}\}\n"
        ~ self.goto($scan)
        ~ self.case($loop)
        ~ "$!pos++;\n"
        ~ "if ($!pos >= $!target.length) \{{self.fail}\}\n"
        ~ self.set_cursor_attr($!cursor, '$!from', $!pos)
        ~ self.case($scan)
        ~ self.mark($loop,$!pos,0)
        ~ self.case($done);
    }

    method has_char() {
        "if ($!pos >= $!target.length) \{{self.fail()}\}";
    }

    method enumcharlist($node) {
        my $charlist := quote_string($node[0]);
        my $testop := $node.negate ?? '!=' !! '==';

        my $end_of_string := ($node.negate && $node.subtype eq 'zerowidth') ?? "$!pos < $!target.length &&" !! "$!pos >= $!target.length ||";

        "if ($end_of_string $charlist.indexOf($!target.substr($!pos,1)) $testop -1) \{{self.fail()}\}"
        ~ ($node.subtype eq 'zerowidth' ?? '' !! "$!pos++;\n")
    }

    method charrange($node) {
        if $node[0] eq 'ignorecase' {
            $!compiler.NYI("charrange with ignorecase");
        }
        else {
            my $lower := $node[1].value;
            my $upper := $node[2].value;

            self.has_char 
            ~ "if ({$node.negate ?? "" !! "!"} ($!target.charCodeAt($!pos) >= $lower && $!target.charCodeAt($!pos) <= $upper)) \{"
            ~ self.fail ~ "\}\n"
            ~ "$!pos++;\n"
        }
    }

    method cclass_check($cclass,:$pos=$!pos,:$negated=0) {
        "if ({$negated ?? '' !! '!'}nqp.op.iscclass({%const_map{$cclass}},$!target,$pos)) \{{self.fail}\}\n";
    }

    method anchor($node) {
        if $node.subtype eq 'eos' {
            "if ($!pos < $!target.length) \{{self.fail}\}\n";
        }
        elsif $node.subtype eq 'bos' {
            "if ($!pos != 0) \{{self.fail}\}\n";
        }
        elsif $node.subtype eq 'lwb' {
            "if ($!pos >= $!target.length) \{{self.fail}\}\n"
            ~ self.cclass_check('CCLASS_WORD')
            ~ self.cclass_check('CCLASS_WORD', :negated(1), :pos("$!pos-1"));
        }
        elsif $node.subtype eq 'rwb' {
            "if ($!pos <= 0) \{{self.fail}\}\n"
            ~ self.cclass_check('CCLASS_WORD', :negated(1), :pos($!pos))
            ~ self.cclass_check('CCLASS_WORD', :pos("$!pos-1"));
        }
        elsif $node.subtype eq 'bol' {
            my $done_label := self.new_label;

            "if ($!pos == 0) \{{self.goto($done_label)}\}\n"
            ~ "if ($!pos >= $!target.length) \{{self.fail}\}\n"
            ~ self.cclass_check('CCLASS_NEWLINE',:pos("$!pos-1"))
            ~ self.case($done_label);
        }
        elsif $node.subtype eq 'eol' {
            my $done_label := self.new_label;

            "if (nqp.op.iscclass({%const_map<CCLASS_NEWLINE>},$!target,$!pos)) \{{self.goto($done_label)}\}\n"
            ~ "if ($!pos != $!target.length) \{{self.fail}\}\n"
            ~ "if ($!pos == 0) \{{self.goto($done_label)}\}\n"
            ~ self.cclass_check('CCLASS_NEWLINE', :negated(1), :pos("$!pos-1"))
            ~ self.case($done_label);
        }
        elsif $node.subtype eq 'pass' || $node.subtype eq '' {
            '';
        }
        elsif $node.subtype eq 'fail' {
            self.fail;
        }
        else {
            $!compiler.NYI("anchor type: {$node.subtype}");
        }
    }


    method pass($node) {
        my $name;

        my @setup;
        
        @setup.push(
            "{$!cursor}['!cursor_pass']({$*CTX},"
            ~ "\{backtrack: {$node.backtrack ne 'r'}\}, $!cursor, {$!pos}"
        );

        if $node.name {
            @setup.push("," ~ quote_string($node.name));
        } 
        elsif +@($node) == 1 {
            $name := $!compiler.as_js($node[0], :want($T_STR));
            @setup.unshift($name);
            @setup.push(',');
            @setup.push($name.expr);
        }

        @setup.push(");\n" ~ "break {$!js_loop_label};\n");

        Chunk.new($T_VOID, "", @setup);
    }


    method cclass($node) {
        my %cclass_code;
        %cclass_code<.>  := %const_map<CCLASS_ANY>;
        %cclass_code<d>  := %const_map<CCLASS_NUMERIC>;
        %cclass_code<s>  := %const_map<CCLASS_WHITESPACE>;
        %cclass_code<w>  := %const_map<CCLASS_WORD>;
        %cclass_code<n>  := %const_map<CCLASS_NEWLINE>;

        my $cclass := %cclass_code{ $node.name };
        my $code := "if ($!pos >= $!target.length) \{{self.fail()}\}\n";

        if $node.name ne '.' {
            $code := $code ~ "if ({$node.negate ?? '' !! '!'}nqp.op.iscclass($cclass,$!target,$!pos)) \{{self.fail}\}\n";
            if $node.name eq 'n' {
                $code := $code ~ "if ($!target.substr($!pos,2) == \"\\r\\n\") \{$!pos++\}\n";
            } 
        }
        $code := $code ~ "$!pos++;\n" unless $node.subtype eq 'zerowidth';
        $code;
    }

    my sub call($invocant, $method, *@args) {
        nqp::unshift(@args, $invocant);
        nqp::unshift(@args, 'null');
        nqp::unshift(@args, $*CTX);
        $invocant ~ "[" ~ quote_string($method) ~ "](" ~ nqp::join(",", @args) ~ ")";
    }

    method cursor_attr($cursor, $attr) {
        my int $hint := nqp::hintfor($!cursor_type, $attr);
        if $hint == -1 {
            nqp::die("Can't get attr: $attr from the cursor");
        }
        $cursor ~ '.attr$' ~ $hint;
    }

    method get_cursor_attr($cursor, $attr) {
        if $!has_cursor_type {
            "nqp.toInt({self.cursor_attr($cursor, $attr)}, $*CTX)";
        }
        else {
            "nqp.toInt($cursor.\$\$getattr($!cursor_type_runtime, {quote_string($attr)}), $*CTX)";
        }
    }

    method pos_from_cursor($cursor) {
        self.get_cursor_attr($cursor, '$!pos');
    }
    
    method set_cursor_attr($cursor, $attr, $value) {
        if $!has_cursor_type {
            "{self.cursor_attr($cursor, $attr)} = $value;\n";
        }
        else {
            "$cursor.\$\$bindattr($!cursor_type_runtime, {quote_string($attr)}, $value);\n";
        }
    }

    method set_cursor_pos() {
        self.set_cursor_attr($!cursor, '$!pos', $!pos);
    }

    method subrule($node) {
        my $captured := 0;


        my $call;

        if nqp::istype($node[0][0], QAST::SVal) {
            my @args := nqp::clone($node[0].list);
            my $method := @args.shift.value;
            my $compiled_args := $!compiler.args(@args, :invocant($!cursor));

            my $invocation;
            if nqp::islist($compiled_args) {
                $compiled_args := $!compiler.merge_arg_groups($compiled_args);
                $invocation := ".apply({$!cursor},";
            }
            else {
                $invocation := '(';
            }

            $call := Chunk.new($T_OBJ,
                $!cursor ~ '[' ~ quote_string($method) ~ "]" ~ $invocation ~ $compiled_args.expr ~ ')',
                [$compiled_args]);
        }
        else {
            #TODO think if arguments are possible, etc.
            my $block := $!compiler.as_js($node[0][0], :want($T_OBJ));
            $call := Chunk.new($T_OBJ, $block.expr ~ ".\$call({$*CTX}, null, $!cursor)", [$block]);
        }

        my $testop := $node.negate ?? '>=' !! '<';


        my $capture_code := '';

        if $node.subtype ne 'zerowidth' {
            my $pass_label := self.new_label();
            if $node.backtrack eq 'r' {
                unless $node.subtype eq 'method' {
                    $capture_code := self.mark($pass_label,-1,0) ~ self.case($pass_label);
                }
            }
            else {


                my $back_label := self.new_label();

                $capture_code := $capture_code
                    ~ self.goto($pass_label)
                    ~ self.case($back_label)
                    ~ "$!subcur =" ~ call($!subcur, "!cursor_next") ~ ";\n"
                    ~ "if({self.pos_from_cursor($!subcur)} $testop 0) \{{self.fail}\};\n"
                    ~ self.case($pass_label);

                if $node.subtype eq 'capture' {
                    $capture_code := $capture_code
                        ~ "$!cstack = " 
                        ~ call($!cursor, "!cursor_capture", $!subcur, quote_string($node.name)) ~ ".array;\n";
                    $captured := 1;
                }
                else {
                    $capture_code := $capture_code
                        ~ "$!cstack = "
                        ~ call($!cursor, "!cursor_push_cstack", $!subcur) ~ ".array;\n";
                }
                $capture_code := $capture_code ~  "$!bstack.push($back_label, $!pos, 0, $!cstack.length);\n";
                
           }
        }

        if !$captured && $node.subtype eq 'capture' {
            $capture_code := $capture_code
                ~ "$!cstack = " ~
                call($!cursor, "!cursor_capture", $!subcur,  quote_string($node.name)) ~ ".array;\n"
        }

        Chunk.void(
            self.set_cursor_pos,
            $call,
            "$!subcur = {$call.expr};\n",
            "if ({self.pos_from_cursor($!subcur)} $testop 0) \{{self.fail}\}\n",
            $capture_code,

            ($node.subtype eq 'zerowidth' ?? '' !! "$!pos = {self.pos_from_cursor($!subcur)};\n")
        );
    }


    method subcapture($node) {
        my $done_label := self.new_label; 
        my $fail_label := self.new_label; 

        my $subcapture_from := $*BLOCK.add_tmp;

        Chunk.void(
            self.mark($fail_label,$!pos,0),
            self.compile_rx($node[0]),
            self.peek($fail_label,$subcapture_from),
            self.set_cursor_pos,
            "$!subcur = " ~ call($!cursor, '!cursor_start_subcapture', $subcapture_from) ~ ";\n",
            call($!subcur, '!cursor_pass', $!pos) ~ ";\n",
            "$!cstack = " ~ call($!cursor, '!cursor_capture', $!subcur, quote_string($node.name)) ~ ".array;\n",
            self.goto($done_label),
            self.case($fail_label),
            self.fail(),
            self.case($done_label)
        );
    }

    method qastnode($node) {
        my $code := $!compiler.as_js($node[0], :want($T_BOOL));

        Chunk.void(
            self.set_cursor_pos,
            $!compiler.mangle_name('$¢') ~ " = $!cursor;\n",
            $code,
            $node.subtype eq 'zerowidth' ??
                "if ({$node.negate ?? '' !! '!'}{$code.expr}) \{{self.fail}\}\n"
                !! ""
        );
    }

    method quant($node) {
        my $min       := $node.min;
        my $max       := $node.max;
        my $needrep   := $min > 1 || $max > 1;
        my $needmark  := $needrep || $node.backtrack eq 'r';
        my $sep       := $node[1];
        my $loop := self.new_label;
        my $done := self.new_label;

        my $rep := $*BLOCK.add_tmp();

        # TODO - think about removing irep

        if $min == 0 && $max == 0 {
            # Nothing to do, and nothing to backtrack into.
            "";
        }
        elsif $node.backtrack eq 'f' {
            my $irep := $*BLOCK.add_tmp();
            my $seplabel := self.new_label;

            Chunk.void(
                "$rep = 0;\n",
                 ($min < 1 ?? self.mark($loop,$!pos,$rep) ~ self.goto($done) !! ''),
                 ($sep ?? self.goto($seplabel) !! ''),
                 self.case($loop),
                 "$irep = $rep;\n",
                 ($sep ?? self.compile_rx($sep) ~ self.case($seplabel) !! ''),
                 ($sep ?? self.case($seplabel) !! ''),
                 self.compile_rx($node[0]),
                 self.case($loop),
                 "$rep = $irep;\n",
                 "$rep++;\n",
                 ($min > 1 ?? "if ($rep < $min) \{{self.goto($loop)}\}\n" !! ''),
                 ($max > 1 ?? "if ($rep >= $max) \{{self.goto($done)}\}\n" !! ''),
                 ($max != 1 ?? self.mark($loop, $!pos, $rep) !! ''),
                 self.case($done)
           );
        }
        else {
            my @code;

            @code.push("$rep = 0;\n");

            if $min == 0 { @code.push(self.mark($done,$!pos,0)) }
            elsif $needmark { @code.push(self.mark($done,-1,0)) }

            @code.push(self.case($loop));
            @code.push(self.compile_rx($node[0]));

            if $needmark {
                @code.push(self.peek($done, '*', $rep));
                @code.push($node.backtrack eq 'r' ?? self.commit($done)  !! '');
                @code.push("$rep++;\n");
                @code.push(($max > 1 ?? "if ($rep >= {$node.max}) \{{self.goto($done)}\}\n" !! ''));
            }
            unless $max == 1 {
                @code.push(self.mark($done, $!pos, $rep));
                @code.push($sep ?? self.compile_rx($sep) !! '');
                @code.push(self.goto($loop));
            }

            @code.push(self.case($done));
            @code.push($min > 1 ?? "if ($rep < {+$node.min}) \{{self.fail}\}" !! "");

            Chunk.new($T_VOID, "", @code);
        }
    }

    method altseq($node) {
        my @code;

        my $iter     := nqp::iterator($node.list);
        my $endlabel := self.new_label;
        my $altlabel := self.new_label;
        my $acode    := self.compile_rx(nqp::shift($iter));

        while $iter {
            @code.push(self.case($altlabel));
            $altlabel := self.new_label;

            @code.push(self.mark($altlabel, $!pos, 0));
            @code.push($acode);
            @code.push(self.goto($endlabel));

            $acode := self.compile_rx(nqp::shift($iter));
        }

        @code.push(self.case($altlabel));
        @code.push($acode);
        @code.push(self.case($endlabel));

        Chunk.void(|@code);
    }

    method alt($node) {
        unless $node.name {
            return self.altseq($node);
        }

        # Calculate all the branches to try, which populates the bstack
        # with the options. Then immediately fail to start iterating it.

        my $end_label := self.new_label;


        my @alt_code;
        my @alt_labels;

        # Emit all the possible alternations.
        my $iter     := nqp::iterator($node.list);
        while $iter {
            my $alt_label := self.new_label;

            @alt_code.push(self.case($alt_label));
            @alt_code.push(self.compile_rx(nqp::shift($iter)));
            @alt_code.push(self.goto($end_label));

            @alt_labels.push(~$alt_label);
        }

        Chunk.void(
            "$!subcur = [{nqp::join(',',@alt_labels)}];\n",
             self.mark($end_label, -1, 0),
             call($!cursor, '!alt', $!pos, quote_string($node.name), "new nqp.NQPArray($!subcur)") ~ ";\n",
             self.fail,
             Chunk.void(|@alt_code),
             self.case($end_label),
            ($node.backtrack eq 'r' ?? self.commit($end_label) !! '')
        );
    }

    method conjseq($node) {

        my $conj_label := self.new_label;
        my $first_label := self.new_label;

        my $iter := nqp::iterator($node.list);
        # make a mark that holds our starting position in the pos slot

        my $start_pos := $*BLOCK.add_tmp;
        my $end_pos := $*BLOCK.add_tmp;

        my @code;

        @code.push(
            self.mark($conj_label, $!pos, 0)
            ~ self.goto($first_label)
            ~ self.case($conj_label)
            ~ self.fail()

            # call the first child
            ~ self.case($first_label)
        );
        @code.push(self.compile_rx(nqp::shift($iter)));

        # use previous mark to make one with pos=start, rep=end
        @code.push(
            self.peek($conj_label, $start_pos)
            ~ self.mark($conj_label, $start_pos, $!pos));

        while $iter {
            @code.push("$!pos = $start_pos;\n");
            @code.push(self.compile_rx(nqp::shift($iter)));
            @code.push(
                self.peek($conj_label, $start_pos, $end_pos)
                ~ "if ($!pos != $end_pos) \{{self.fail()}\}\n"
            );
        }
        if $node.subtype eq 'zerowidth' {
            @code.push("$!pos = $start_pos;\n");
        }

        Chunk.void(|@code);
    }

    method conj($node) { self.conjseq($node) }

    method BUILD(:$compiler) {
        $!compiler := $compiler;

        $!unique_label := 0;

        $!label := $*BLOCK.add_tmp();

        $!cursor := $*BLOCK.add_tmp();
        $!target := $*BLOCK.add_tmp();
        $!pos := $*BLOCK.add_tmp();
        $!cursor_type_runtime := $*BLOCK.add_tmp();
        $!bstack := $*BLOCK.add_tmp();
        $!restart := $*BLOCK.add_tmp();
        $!cstack := $*BLOCK.add_tmp();
        $!subcur := $*BLOCK.add_tmp();
        $!rep := $*BLOCK.add_tmp();

        $!fail_label := self.new_label;
        $!done_label := self.new_label;
        $!initial_label := self.new_label;

        $!js_loop_label := QAST::Node.unique('js_regex_loop_label');
    }

    # labels are just integers the case statement matches on
    method new_label() {
        $!unique_label++;
    }

    method case($label) {
        "case $label:\n"
    }

    method goto($label) {
        "$!label = $label;break;\n"; 
    }

    method peek($mark, *@regs) {
        my $code := "var peek = nqp.regexPeek($!bstack, $mark);\n";
        for @regs {
            $code := $code ~ "peek++;\n";
            $code := $code ~ "$_ = $!bstack[peek]\n;" if $_ ne '*';
        }
        $code;
    }

    method commit($label) {
        "nqp.regexCommit($!bstack,$label);\n";
    }

    # push a new backtracking mark on the bstack with label $label, position $pos and count $count.
    # (all arguments are taken as js code snippets).
    method mark($label,$pos,$count) {
      "$!bstack.push($label,$pos,$count,$!bstack.length ? $!bstack[$!bstack.length-1] : 0);\n";
    }

    method fail() {
        self.goto($!fail_label);
    }


}
