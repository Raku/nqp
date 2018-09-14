my $buf := nqp::newtype(nqp::null(), 'VMArray');
nqp::composetype($buf, nqp::hash('array', nqp::hash('type', uint8)));
nqp::setmethcache($buf, nqp::hash(
    'new', method () {
        nqp::create($buf)
    },
    'push', method (uint8 $value) {
        nqp::push_i(self, $value)
    },
    'write_s', method (str $s) {
        my @subbuf := nqp::encode($s, 'utf8', nqp::create($buf));
        self.write_buf(@subbuf);
    },
    'write_uint32', method (uint32 $i) {
        self.push($i +& 0xFF);
        self.push(nqp::bitshiftr_i($i +& 0xFF00, 8));
        self.push(nqp::bitshiftr_i($i +& 0xFF0000, 16));
        self.push(nqp::bitshiftr_i($i +& 0xFF000000, 24));
    },
    'write_uint32_at', method (uint32 $i, uint16 $pos) {
        nqp::bindpos_i(self, $pos, $i +& 0xFF);
        nqp::bindpos_i(self, $pos + 1, nqp::bitshiftr_i($i +& 0xFF00, 8));
        nqp::bindpos_i(self, $pos + 2, nqp::bitshiftr_i($i +& 0xFF0000, 16));
        nqp::bindpos_i(self, $pos + 3, nqp::bitshiftr_i($i +& 0xFF000000, 24));
    },
    'write_uint16', method (uint16 $i) {
        self.push($i +& 0xFF);
        self.push(nqp::bitshiftr_i($i +& 0xFF00, 8));
    },
    'write_uint8', method (uint8 $i) {
        self.push($i);
    },
    'write_buf', method (@buf) {
        for @buf {
            self.push($_);
        }
    },
    'dump', method () {
        note(nqp::elems(self) ~ " bytes");
        for self {
            note($_);
        }
    }
));

my %uint_map;
my %int_map;
my %num_map;
%int_map<8> := 1;
%int_map<16> := 2;
%int_map<32> := 3;
%int_map<64> := 4;
%num_map<32> := 5;
%num_map<64> := 6;
%uint_map<8> := 17;
%uint_map<16> := 18;
%uint_map<32> := 19;
%uint_map<64> := 20;
sub type_to_local_type($t) {
    my $spec := nqp::objprimspec($t);
    if $spec == 0 {
        8
    }
    elsif $spec == 1 {
        (nqp::objprimunsigned($t) ?? %uint_map !! %int_map){nqp::objprimbits($t)}
    }
    elsif $spec == 2 {
        %num_map{nqp::objprimbits($t)}
    }
    elsif $spec == 3 {
        7
    }
    else {
        nqp::die("Unknwon local type: " ~ $t.HOW.name($t) ~ ": " ~ $spec);
    }
}

class MoarVM::Callsites {
    has $!callsites;
    has %!callsites;
    has $!string-heap;
    has $!done;
    method BUILD(:$string-heap) {
        $!string-heap := $string-heap;
        $!callsites   := $buf.new;
        %!callsites   := nqp::hash;
        $!done        := 0;
    }

    my $callsite_arg_named := 32;
    method get_callsite_id(@flags, @args) {
        nqp::die('get_callsite_id after serialization!') if $!done;
        my uint16 $elems := nqp::elems(@flags);
        my uint16 $align := $elems % 2;
        my @named_idxs := nqp::list;
        my int $num_nameds := 0;
        my int $i := 0;
        for @flags {
            if $_ +& $callsite_arg_named {
                my $name := @args[$i + $num_nameds++];
                nqp::push_i(@named_idxs, $!string-heap.add($name));
            }
            $i++;
        }

        my $identifier := $buf.new;
        $identifier.write_buf(@flags);
        for @named_idxs {
            $identifier.write_uint16($_);
        }
        my $identifier_s := nqp::decode($identifier, 'iso-8859-1'); # just turn the buf into a str without real interpretation
        if nqp::existskey(%!callsites, $identifier_s) {
            return %!callsites{$identifier_s};
        }

        my $callsite-idx := nqp::elems(%!callsites);
        %!callsites{$identifier_s} := $callsite-idx;
        $!callsites.write_uint16($elems);
        for @flags {
            $!callsites.write_uint8($_);
        }
        if $align > 0 {
            $!callsites.write_uint8(0);
        }
        for @named_idxs {
            $!callsites.write_uint32($_);
        }
        $callsite-idx
    }

    method elems() {
        nqp::elems(%!callsites)
    }

    method size() {
        $!done := 1;
        nqp::elems($!callsites)
    }

    method bytecode() {
        $!callsites
    }
}

class MoarVM::Frame {
    has str $!cuuid;
    has uint32 $!cuuid-idx;
    has str $!name;
    has uint32 $!name-idx;
    has $!writer;
    has $!mast;
    has $!bytecode;
    has uint32 $!bytecode-offset;
    has $!string-heap;
    has %!labels;
    has %!label-fixups;
    has $!callsites;
    has @!lexical-names;
    has $!annotations;
    has $!annotations-offset;
    has $!num-annotations;
    method BUILD(:$cuuid, :$name, :$string-heap, :$callsites, :$annotations, :$writer, :$mast) {
        $!cuuid              := $cuuid;
        $!name               := $name;
        $!writer             := $writer;
        $!mast               := $mast;
        $!bytecode           := $buf.new;
        $!string-heap        := $string-heap;
        $!cuuid-idx          := $string-heap.add($!cuuid);
        $!name-idx           := $string-heap.add($!name);
        $!callsites          := $callsites;
        $!annotations        := $annotations;
        $!num-annotations    := 0;
        %!labels             := nqp::hash;
        %!label-fixups       := nqp::hash;
        @!lexical-names      := nqp::list;
        $!annotations-offset := nqp::elems($!annotations);

        for nqp::getattr($!mast, MAST::Frame, '@!lexical_names') {
            nqp::push(@!lexical-names, self.add-string($_));
        }
        for $mast.instructions -> $i {
            self.write_instruction($i);
        }
    }
    method cuuid() { $!cuuid }
    method name() { $!name }
    method mast() { $!mast }
    method cuuid-idx() { $!cuuid-idx }
    method name-idx() { $!name-idx }
    method bytecode() { $!bytecode }
    method bytecode-length() { nqp::elems($!bytecode) }
    method bytecode-offset() { $!bytecode-offset }
    method annotations-offset() { $!annotations-offset }
    method set-bytecode-offset($offset) { $!bytecode-offset := $offset }
    method local_types() {
        nqp::getattr($!mast, MAST::Frame, '@!local_types')
    }
    method lexical_types() {
        nqp::getattr($!mast, MAST::Frame, '@!lexical_types')
    }
    method lexical-name-idxs() { @!lexical-names }
    method static_lex_values() {
        nqp::getattr($!mast, MAST::Frame, '@!static_lex_values')
    }
    method flags() {
        nqp::getattr($!mast, MAST::Frame, '$!flags');
    }
    method num-annotations() {
        $!num-annotations
    }
    method size() {
        50
            + 2  * nqp::elems(self.local_types)
            + 6  * nqp::elems(self.lexical_types)
            + 12 * nqp::elems(self.static_lex_values) / 4;
    }

    method add-string(str $s) {
        $!string-heap.add($s);
    }

    proto method write_instruction($i) { * }
    multi method write_instruction(MAST::Op $i) {
        if $i.op == %MAST::Ops::codes<const_i64> {
            my $value := nqp::getattr($i.operands[1], MAST::IVal, '$!value');
            if -32767 < $value && $value < 32768 {
                $!bytecode.write_uint16(%MAST::Ops::codes<const_i64_16>);
                self.write_operand($i, 0, $i.operands[0]);
                $!bytecode.write_uint16($value);
                return;
            }
            elsif -2147483647 < $value && $value < 2147483647 {
                $!bytecode.write_uint16(%MAST::Ops::codes<const_i64_16>);
                self.write_operand($i, 0, $i.operands[0]);
                $!bytecode.write_uint32($value);
                return;
            }
        }
        $!bytecode.write_uint16($i.op);
        my int $idx := 0;
        for $i.operands -> $o {
            self.write_operand($i, $idx++, $o);
        }
    }
    multi method write_instruction(MAST::Label $i) {
        my $pos := nqp::elems($!bytecode);
        my $key := nqp::objectid($i);
        if %!labels{$key} {
            nqp::die("Duplicate label at $pos");
        }
        %!labels{$key} := $pos;
        if nqp::existskey(%!label-fixups, $key) {
            for %!label-fixups{$key} {
                $!bytecode.write_uint32_at($pos, $_);
            }
        }
    }

    my $MVM_reg_int8  := 1;
    my $MVM_reg_int16 := 2;
    my $MVM_reg_int32 := 3;
    my $MVM_reg_int64 := 4;
    my $MVM_reg_num32 := 5;
    my $MVM_reg_num64 := 6;
    my $MVM_reg_str   := 7;
    my $MVM_reg_obj   := 8;

    my $MVM_operand_literal := 0;
    my $MVM_operand_read_reg := 1;
    my $MVM_operand_write_reg := 2;
    my $MVM_operand_read_lex := 3;
    my $MVM_operand_write_lex := 4;
    my $MVM_operand_rw_mask := 7;
    my $MVM_operand_int8 := 8;
    my $MVM_operand_int16 := 16;
    my $MVM_operand_int32 := 24;
    my $MVM_operand_int64 := 32;
    my $MVM_operand_num32 := 40;
    my $MVM_operand_num64 := 48;
    my $MVM_operand_str := 56;
    my $MVM_operand_obj := 64;
    my $MVM_operand_ins := 72;
    my $MVM_operand_type_var := 80;
    my $MVM_operand_lex_outer := 88;
    my $MVM_operand_coderef := 96;
    my $MVM_operand_callsite := 104;
    my $MVM_operand_type_mask := 120;
    my $MVM_operand_spesh_slot := 128;
    my $MVM_operand_uint8 := 136;
    my $MVM_operand_uint16 := 144;
    my $MVM_operand_uint32 := 152;
    my $MVM_operand_uint64 := 160;

    my @kind_to_args := [0,
        $Arg::int,  # $MVM_reg_int8            := 1;
        $Arg::int,  # $MVM_reg_int16           := 2;
        $Arg::int,  # $MVM_reg_int32           := 3;
        $Arg::int,  # $MVM_reg_int64           := 4;
        $Arg::num,  # $MVM_reg_num32           := 5;
        $Arg::num,  # $MVM_reg_num64           := 6;
        $Arg::str,  # $MVM_reg_str             := 7;
        $Arg::obj   # $MVM_reg_obj             := 8;
    ];
    method compile_operand($rw, $type, $arg) {
        if $rw == $MVM_operand_literal {
            if $type == $MVM_operand_int64 {
                nqp::die("literal in64 operand NYI");
            }
            elsif $type == $MVM_operand_int16 {
                nqp::die("literal int16 operand NYI");
            }
            elsif $type == $MVM_operand_num64 {
                nqp::die("literal num64 operand NYI");
            }
            elsif $type == $MVM_operand_str {
                nqp::die("literal str operand NYI");
            }
            elsif $type == $MVM_operand_ins {
                nqp::die("literal ins operand NYI");
            }
            elsif $type == $MVM_operand_coderef {
                nqp::die("Expected MAST::Frame, but didn't get one")
                    unless $arg.isa(MAST::Frame);
                $!bytecode.write_uint16($!writer.get_frame_index($arg));
            }
            else {
                nqp::die("literal operand type $type NYI");
            }
        }
        elsif $rw == $MVM_operand_read_reg || $rw == $MVM_operand_write_reg {
            if $arg.isa(MAST::Local) {
                my @local_types := self.local_types;
                my $index := $arg.index;
                if $arg.index > nqp::elems(self.local_types) {
                    nqp::die("MAST::Local index out of range");
                }
                my $local_type := @local_types[$index];
                if ($type != nqp::bitshiftl_i(type_to_local_type($local_type), 3) && $type != $MVM_operand_type_var) {
                    nqp::die("MAST::Local of wrong type specified");
                }

                $!bytecode.write_uint16($index);
            }
            else {
                nqp::die("Expected MAST::Local but didn't get one");
            }
        }
        elsif $rw == $MVM_operand_read_lex || $rw == $MVM_operand_write_lex {
            nqp::die("lex operand NYI");
        }
        else {
            nqp::die("Unknown operand mode $rw cannot be compiled");
        }
    }
    multi method write_instruction(MAST::Call $i) {
        my $target := nqp::getattr($i, MAST::Call, '$!target');
        my @flags  := nqp::getattr($i, MAST::Call, '@!flags');
        my @args   := nqp::getattr($i, MAST::Call, '@!args');
        my $result := nqp::getattr($i, MAST::Call, '$!result');
        my $op     := nqp::getattr($i, MAST::Call, '$!op');
        my $callsite-id := $!callsites.get_callsite_id(@flags, @args);

        $!bytecode.write_uint16(%MAST::Ops::codes<prepargs>);
        $!bytecode.write_uint16($callsite-id);

        my $call_op :=
            $op == 1
                ?? %MAST::Ops::codes<nativeinvoke_v>
                !! $op == 2
                    ?? %MAST::Ops::codes<speshresolve>
                    !! %MAST::Ops::codes<invoke_v>;

        my uint16 $arg_pos := $op == 1 ?? 1 !! 0;
        my uint16 $arg_out_pos := 0;
        for @flags -> $flag {
            if $flag +& $Arg::named {
                nqp::die("named args NYI");
            }
            elsif $flag +& $Arg::flat {
                nqp::die("Illegal flat arg to speshresolve") if $op == 2;
            }

            if $op == 2 && !($flag +& $Arg::obj) {
                nqp::die("Illegal non-object arg to speshresolve:\n" ~ $i.dump);
            }
            if $flag +& $Arg::obj {
                $!bytecode.write_uint16(%MAST::Ops::codes<arg_o>);
                $!bytecode.write_uint16($arg_out_pos);
                self.compile_operand($MVM_operand_read_reg, $MVM_operand_obj, @args[$arg_pos]);
            }
            elsif $flag +& $Arg::str {
                $!bytecode.write_uint16(%MAST::Ops::codes<arg_s>);
                $!bytecode.write_uint16($arg_out_pos);
                self.compile_operand($MVM_operand_read_reg, $MVM_operand_str, @args[$arg_pos]);
            }
            elsif $flag +& $Arg::int {
                nqp::die("int arg NYI");
            }
            elsif $flag +& $Arg::num {
                nqp::die("num arg NYI");
            }
            else {
                nqp::die("Unhandled arg type $flag");
            }
            $arg_pos++;
            $arg_out_pos++;
        }

	my $res_type;
        if $op == 2 {
            nqp::die("op 2 NYI");
        }
        elsif $result.isa(MAST::Local) {
            my @local_types := self.local_types;
            my $index := $result.index;
            if $result.index > nqp::elems(self.local_types) {
                nqp::die("MAST::Local index out of range");
            }
            my $op_name := $op == 0 ?? 'invoke_' !! 'nativeinvoke_';
            if @local_types[$index].isa(int) {
                $op_name := $op_name ~ 'i';
                $res_type := $MVM_operand_int64;
            }
            elsif @local_types[$index].isa(num) {
                $op_name := $op_name ~ 'n';
                $res_type := $MVM_operand_num64;
            }
            elsif @local_types[$index].isa(str) {
                $op_name := $op_name ~ 's';
                $res_type := $MVM_operand_str;
            }
            elsif nqp::objprimspec(@local_types[$index]) == 0 { # object
                $op_name := $op_name ~ 'o';
                $res_type := $MVM_operand_obj;
            }
            else {
                nqp::die('Invalid MAST::Local type ' ~ @local_types[$index] ~ ' for return value ' ~ $index);
            }
            $call_op := %MAST::Ops::codes{$op_name};
        }

        $!bytecode.write_uint16($call_op);
        if $call_op != %MAST::Ops::codes<invoke_v> && $call_op != %MAST::Ops::codes<nativeinvoke_v> {
            self.compile_operand($MVM_operand_read_reg, $res_type, $result);
        }
        if $op == 2 {
            self.compile_operand($MVM_operand_literal, $MVM_operand_str, $target);
        }
        else {
            self.compile_operand($MVM_operand_read_reg, $MVM_operand_obj, $target);
        }
        if $op == 1 {
            self.compile_operand($MVM_operand_read_reg, $MVM_operand_obj, @args[0]);
        }
    }
    multi method write_instruction(MAST::Annotated $i) {
        $!annotations.write_uint32(nqp::elems($!bytecode));
        $!annotations.write_uint32(self.add-string(nqp::getattr($i, MAST::Annotated, '$!file')));
        $!annotations.write_uint32(nqp::getattr($i, MAST::Annotated, '$!line'));
        for nqp::getattr($i, MAST::Annotated, '@!instructions') {
            self.write_instruction($_);
        }
        $!num-annotations++;
    }
    multi method write_instruction($i) {
        note("Instruction " ~ $i.HOW.name($i) ~ " NYI");
        note($i.dump);
    }
    proto method write_operand($i, $idx, $o) { * }
    multi method write_operand($i, $idx, MAST::IVal $o) {
        $!bytecode.write_uint16(nqp::getattr($o, MAST::IVal, '$!value')); # FIXME need to pick int size from op_info
    }
    multi method write_operand($i, $idx, MAST::Local $o) {
        $!bytecode.write_uint16($o.index);
    }
    multi method write_operand($i, $idx, MAST::SVal $o) {
        $!bytecode.write_uint32(self.add-string(nqp::getattr($o, MAST::SVal, '$!value')));
    }
    multi method write_operand($i, $idx, MAST::Label $o) {
        my $key := nqp::objectid($o);
        if nqp::existskey(%!labels, $key) {
            $!bytecode.write_uint32(%!labels{$key});
        }
        else {
            my @fixups := nqp::existskey(%!label-fixups, $key)
                ?? %!label-fixups{$key}
                !! (%!label-fixups{$key} := nqp::list);
            nqp::push(@fixups, nqp::elems($!bytecode));
            $!bytecode.write_uint32(0);
        }
    }
    multi method write_operand($i, $idx, $o) {
        my $flags := nqp::atpos_i(@MAST::Ops::values, nqp::atpos_i(@MAST::Ops::offsets, $i.op) + $idx);
        my $rw    := $flags +& $MVM_operand_rw_mask;
        my $type  := $flags +& $MVM_operand_type_mask;
        self.compile_operand($rw, $type, $o);
    }
}

class MoarVM::StringHeap {
    has @!strings;
    has %!strings;
    has $!done;
    method BUIILD() {
        @!strings := list();
        $!done := 0;
    }
    method add(str $s) {
        if $!done {
            nqp::die("add after size!");
        }
        if nqp::existskey(%!strings, $s) {
            return %!strings{$s};
        }

        my int $utf8 := 0;
        my int $i := 0;
        my $chars := nqp::chars($s);
        while $i < $chars {
            my $g := nqp::ordat($s, $i);
            if $g < 0 || $g >= 0xff || $g == 0x0d {
                $utf8 := 1;
                last;
            }
            $i++;
        }

        my $encoded := nqp::encode($s, ($utf8 ?? "utf8" !! "iso-8859-1"), nqp::create($buf));

        my $str := $buf.new;
        $str.write_uint32(nqp::elems($encoded) * 2 + $utf8); # LSB is UTF-8 flag
        my $pad := 4 - nqp::elems($encoded) % 4;
        $pad := 0 if $pad == 4;
        $encoded.push(0) while $pad--;
        $str.write_buf($encoded);
        nqp::push(@!strings, $str);

        %!strings{$s} := nqp::elems(@!strings) - 1
    }
    method size() {
        $!done := 1;
        my uint32 $size := 0;
        for @!strings {
            $size := $size + nqp::elems($_);
        }
        $size
    }
    method elems() {
        nqp::elems(@!strings)
    }
    method strings() {
        @!strings
    }
}

sub align_section($size) {
    my uint32 $aligned := nqp::ceil_n($size / 8) * 8;
    $aligned
}
class MoarVM::BytecodeWriter {
    has $!mbc;
    has $!string-heap;
    has $!callsites;
    has $!annotations;
    has $!compunit;
    has @!frames;
    has $!bytecode;
    has @!sc_handle_idxs;
    method BUILD(:$string-heap, :$callsites, :$annotations, :$compunit) {
        $!mbc            := $buf.new;
        $!bytecode       := $buf.new;
        $!string-heap    := $string-heap;
        $!callsites      := $callsites;
        $!annotations    := $annotations;
        $!compunit       := $compunit;
        @!frames         := nqp::list;
        @!sc_handle_idxs := nqp::list;
        self.collect_sc_deps;
    }
    method add-string(str $s) {
        $!string-heap.add($s);
    }
    method add-frame(MoarVM::Frame $f) {
        nqp::push(@!frames, $f);
    }
    method write_header() {
        # 92 bytes
        my $hll := self.add-string($!compunit.hll);

        my uint32 $header_size := +align_section(8 + 21 * 4);
        my uint32 $frames := nqp::elems(@!frames);
        my uint32 $frames_size := 0;
        for @!frames {
            my uint32 $size := +$_.size;
            $frames_size := $frames_size + $size;
        }
        $frames_size := +align_section($frames_size);
        my uint32 $callsites_size := +align_section($!callsites.size);
        my uint32 $string_heap_size := +align_section($!string-heap.size);
        my @sc_handles := nqp::getattr($!compunit, MAST::CompUnit, '@!sc_handles');
        my uint32 $sc_deps_size := +align_section(nqp::elems(@sc_handles) * 4);
        my uint32 $extops_size := 0;
        my uint32 $bytecode_size := +align_section(nqp::elems($!bytecode));
        my uint32 $annotations_size := nqp::elems($!annotations);

        my uint32 $offset := $header_size;
        $!mbc.write_s("MOARVM\r\n");
        $!mbc.write_uint32(5); # Version

        $!mbc.write_uint32($offset); # Offset of SC dependencies table
        $!mbc.write_uint32(nqp::elems(@sc_handles)); # Number of entries in SC dependencies table
        $offset := $offset + $sc_deps_size;

        $!mbc.write_uint32($offset); # Offset of extension ops table
        $!mbc.write_uint32(0); # Number of entries in extension ops table
        $offset := $offset + $extops_size;

        $!mbc.write_uint32($offset); # Offset of frames segment
        $!mbc.write_uint32($frames); # Number of frames
        $offset := $offset + $frames_size;

        $!mbc.write_uint32($offset); # Offset of callsites segment
        $!mbc.write_uint32($!callsites.elems); # Number of callsites
        $offset := $offset + $callsites_size;

        $!mbc.write_uint32($offset); # Offset of strings heap
        $!mbc.write_uint32($!string-heap.elems); # Number of strings in heap
        $offset := $offset + $string_heap_size;

        $!mbc.write_uint32(0); # Offset of SC data segment
        $!mbc.write_uint32(0); # Number of entries in SC data segment

        $!mbc.write_uint32($offset); # Offset of bytecode segment
        $!mbc.write_uint32(nqp::elems($!bytecode)); # Length of bytecode segment
        $offset := $offset + $bytecode_size;

        $!mbc.write_uint32($offset); # Offset of annotation segment
        $!mbc.write_uint32($annotations_size); # Length of annotation segment

        $!mbc.write_uint32($hll); # HLL Name
        my $main_frame := $!compunit.main_frame;
        if $main_frame {
            my uint32 $main_frame_idx := self.get_frame_index($main_frame) + 1;
            $!mbc.write_uint32($main_frame_idx); # Main entry point frame index + 1
        }
        else {
            $!mbc.write_uint32(0); # No main entry point frame
        }
        my $load_frame := $!compunit.load_frame;
        if $load_frame {
            my uint32 $load_frame_idx := self.get_frame_index($load_frame) + 1;
            $!mbc.write_uint32($load_frame_idx); # Library load frame index + 1
        }
        else {
            $!mbc.write_uint32(0); # No library load frame
        }
        my $deserialize_frame := $!compunit.deserialize_frame;
        if $deserialize_frame {
            my uint32 $deserialize_frame_idx := self.get_frame_index($deserialize_frame) + 1;
            $!mbc.write_uint32($deserialize_frame_idx); # Deserialization frame index + 1
        }
        else {
            $!mbc.write_uint32(0); # No deserialize frame
        }
    }
    method write_frame(MoarVM::Frame $f, int $idx) {
        # 11 * 4 + 3 * 2 = 50
        my @local_types := $f.local_types;
        my @lexical_types := $f.lexical_types;
        my @lexical_names := $f.lexical-name-idxs;
        my @static_lex_values := $f.static_lex_values;
        my uint16 $num_static_lex_values := nqp::elems(@static_lex_values) / 4;
        $!mbc.write_uint32($f.bytecode-offset); # Bytecode segment offset
        $!mbc.write_uint32($f.bytecode-length); # Bytecode length in bytes
        $!mbc.write_uint32(nqp::elems(@local_types)); # Number of locals/registers
        $!mbc.write_uint32(nqp::elems(@lexical_types)); # Number of lexicals
        $!mbc.write_uint32($f.cuuid-idx); # Compilation unit unique ID (string heap index)
        $!mbc.write_uint32($f.name-idx); # Name (string heap index)
        my $outer := nqp::getattr($f.mast, MAST::Frame, '$!outer');
        if nqp::defined($outer) {
            $!mbc.write_uint16(self.get_frame_index($outer)); # Outer
        }
        else {
            $!mbc.write_uint16($idx); # Outer
        }
        $!mbc.write_uint32($f.annotations-offset); # Annotation segment offset
        $!mbc.write_uint32($f.num-annotations); # Number of annotations
        $!mbc.write_uint32(0); # Number of handlers
        $!mbc.write_uint16($f.flags); # Frame flag bits
        $!mbc.write_uint16($num_static_lex_values); # Number of entries in static lexical values table
        $!mbc.write_uint32(0); # Code object SC dependency index + 1
        $!mbc.write_uint32(0); # SC object index
        for @local_types {
            $!mbc.write_uint16(type_to_local_type($_));
        }
        my int $i := 0;
        for @lexical_types {
            $!mbc.write_uint16(type_to_local_type($_));
            $!mbc.write_uint32(@lexical_names[$i++]);
        }
        $i := 0;
        while ($i < $num_static_lex_values) {
            $!mbc.write_uint16(nqp::atpos_i(@static_lex_values, 4 * $i));
            $!mbc.write_uint16(nqp::atpos_i(@static_lex_values, 4 * $i + 1));
            $!mbc.write_uint32(nqp::atpos_i(@static_lex_values, 4 * $i + 2));
            $!mbc.write_uint32(nqp::atpos_i(@static_lex_values, 4 * $i + 3));
            $i++;
        }
    }
    method collect_bytecode() {
        for @!frames {
            $_.set-bytecode-offset(nqp::elems($!bytecode));
            $!bytecode.write_buf($_.bytecode);
        }
    }
    method write_callsites() {
        $!mbc.write_buf($!callsites.bytecode);
    }
    method write_string_heap() {
        for $!string-heap.strings {
            $!mbc.write_buf($_);
        }
    }
    method collect_sc_deps() {
        my @sc_handles := nqp::getattr($!compunit, MAST::CompUnit, '@!sc_handles');
        for @sc_handles {
            nqp::push(@!sc_handle_idxs, self.add-string($_));
        }
    }
    method write_sc_deps_table() {
        for @!sc_handle_idxs {
            $!mbc.write_uint32($_);
        }
    }
    method write_annotations() {
        $!mbc.write_buf($!annotations);
    }
    method align() {
        my $off := nqp::elems($!mbc) % 8;
        if $off == 0 {
            return;
        }
        $off := 8 - $off;
        while $off-- > 0 {
            $!mbc.write_uint8(0);
        }
    }
    method assemble() {
        self.collect_bytecode;

        self.write_header;
        self.align;
        self.write_sc_deps_table;
        self.align;
        my int $idx := 0;
        for @!frames {
            self.write_frame($_, $idx++);
        }
        self.align;
        self.write_callsites;
        self.align;
        self.write_string_heap;
        self.align;
        $!mbc.write_buf($!bytecode);
        self.align;
        self.write_annotations;
        self.align;
    }
    method get_frame_index(MAST::Frame $f) {
        my $idx := 0;
        for nqp::getattr($!compunit, MAST::CompUnit, '@!frames') {
            return $idx if nqp::objectid($_) eq nqp::objectid($f);
            $idx++;
        }
        nqp::die("Could not find frame " ~ $f.name);
    }
    method save($filename) {
        my $io := nqp::open($filename, 'w');
        nqp::writefh($io, $!mbc);
        nqp::closefh($io);
    }
}

my $compiler := nqp::getcomp('nqp');
my @stages := $compiler.stages;
my $result := '1';
my %adverbs := nqp::hash;
%adverbs<target> := 'mbc';
#%adverbs<compunit_ok> := 0;
%adverbs<output> := 'test-orig.mbc';
my %*COMPILING<%?OPTIONS> := %adverbs;
my $lineposcache := nqp::hash;
my $*LINEPOSCACHE := $lineposcache;
for @stages {
    last if $_ eq 'mbc';
    $result := $compiler.execute_stage($_, $result, %adverbs);
}
my @cu_frames := nqp::getattr($result, MAST::CompUnit, '@!frames');

my $string-heap := MoarVM::StringHeap.new;
my $callsites := MoarVM::Callsites.new(:$string-heap);
my $annotations := $buf.new;
my $writer := MoarVM::BytecodeWriter.new(:$string-heap, :$callsites, :$annotations, :compunit($result));
my $i := 0;
for @cu_frames {
    note("Adding frame " ~ $_.name);
    my $frame := MoarVM::Frame.new(
        :cuuid($_.cuuid),
        :name($_.name),
        :mast($_),
        :$string-heap,
        :$callsites,
        :$annotations,
        :$writer,
    );
    $writer.add-frame($frame);
}
$writer.assemble;
$writer.save('test.mbc');
my $io := nqp::open('test.mbc', 'r');
class Context {
    method ctxsave() {
        note("ctxsave called!");
    }
}
my $*CTXSAVE := Context.new;
nqp::loadbytecodefh($io, 'test.mbc');
$result := $compiler.execute_stage('mbc', $result, %adverbs);
