class JAST::Node {
}

class JAST::Class is JAST::Node {
    has str $!name;
    has str $!super;
    has str $!filename;
    has str $!serialized;
    has @!methods;
    has @!fields;
    
    method BUILD(:$name!, :$super!, :$filename) {
        $!name    := $name;
        $!super   := $super;
        $!filename := $filename;
        @!methods := [];
        @!fields  := [];
    }
    
    method add_method($method) {
        nqp::push(@!methods, $method);
    }
    
    method add_field($field) {
        nqp::push(@!fields, $field);
    }
    
    method name(*@value) { @value ?? ($!name := @value[0]) !! $!name }
    method super(*@value) { @value ?? ($!super := @value[0]) !! $!super }
    method serialized(*@value) { @value ?? ($!serialized := @value[0]) !! $!serialized }
    method methods() { @!methods }
    
    method dump() {
        my @dumped;
        nqp::push(@dumped, "+ class $!name");
        nqp::push(@dumped, "+ super $!super");
        nqp::push(@dumped, "+ filename $!filename");
        nqp::push(@dumped, "+ serialized $!serialized") unless nqp::isnull_s($!serialized);
        for @!fields {
            $_.dump(@dumped);
        }
        for @!methods {
            $_.dump(@dumped);
        }
        return @dumped;
    }
}

class JAST::Field {
    has str $!name;
    has str $!type;
    has int $!static;
    
    method BUILD(:$name!, :$type!, :$static = 0) {
        $!name   := $name;
        $!type   := $type;
        $!static := $static;
    }
    
    method name(*@value) { @value ?? ($!name := @value[0]) !! $!name }
    method type(*@value) { @value ?? ($!type := @value[0]) !! $!type }
    method static(*@value) { @value ?? ($!static := @value[0]) !! $!static }
    
    method dump(@dumped) {
        nqp::push(@dumped, "+ field $!name $!type " ~ ($!static ?? 'static' !! 'instance'))
    }
}

class JAST::InstructionList {
    has @!instructions;
    
    method append($ins) {
        nqp::push(@!instructions, $ins)
    }
    
    method instructions() { @!instructions }
    
    method dump(@dumped) {
        for @!instructions {
            $_.dump(@dumped);
        }
    }
}

class JAST::Local is JAST::Node {
    has str $!name;
    
    method new(:$name!) {
        my $node := nqp::create(JAST::Local);
        nqp::bindattr_s($node, JAST::Local, '$!name', $name);
        $node
    }
    
    method name() { $!name }
    
    method dump(@dumped) {
        nqp::push(@dumped, ":$!name")
    }
}

class JAST::Method is JAST::Node {
    has str $!name;
    has int $!static;
    has $!returns;
    has @!arguments;
    has @!locals;
    has @!instructions;
    has str $!cr_name;
    has str $!cr_cuid;
    has int $!cr_outer; # -1 = has no outer  -2 = not a coderef
    has @!cr_olex;
    has @!cr_ilex;
    has @!cr_nlex;
    has @!cr_slex;
    has @!cr_handlers;
    has int $!has_exit_handler;
    
    method BUILD(:$name!, :$returns!, :$static = 1) {
        $!name := $name;
        $!returns := $returns;
        $!static := $static;
        @!arguments := [];
        @!locals := [];
        @!instructions := [];
        $!cr_name := '';
        $!cr_cuid := '';
        $!cr_outer := -2;
        @!cr_olex := [];
        @!cr_ilex := [];
        @!cr_nlex := [];
        @!cr_slex := [];
        @!cr_handlers := [];
    }
    
    method add_argument($name, $type) {
        nqp::push(@!arguments, [$name, $type]);
    }
    
    method add_local($name, $type) {
        nqp::push(@!locals, [$name, $type]);
        JAST::Local.new(:name($name))
    }
    
    method append($ins) {
        nqp::push(@!instructions, $ins)
    }

    method name(*@value) { @value ?? ($!name := @value[0]) !! $!name }
    method static(*@value) { @value ?? ($!static := @value[0]) !! $!static }
    method returns(*@value) { @value ?? ($!returns := @value[0]) !! $!returns }
    method arguments() { @!arguments }
    method locals() { @!locals }
    method instructions() { @!instructions }
    
    method cr_name(*@value) { @value ?? ($!cr_name := @value[0]) !! $!cr_name }
    method cr_cuid(*@value) { @value ?? ($!cr_cuid := @value[0]) !! $!cr_cuid }
    method cr_outer(*@value) { @value ?? ($!cr_outer := @value[0]) !! $!cr_outer }
    method cr_olex(*@value) { @value ?? (@!cr_olex := @value[0]) !! @!cr_olex }
    method cr_ilex(*@value) { @value ?? (@!cr_ilex := @value[0]) !! @!cr_ilex }
    method cr_nlex(*@value) { @value ?? (@!cr_nlex := @value[0]) !! @!cr_nlex }
    method cr_slex(*@value) { @value ?? (@!cr_slex := @value[0]) !! @!cr_slex }
    method cr_handlers(*@value) { @value ?? (@!cr_handlers := @value[0]) !! @!cr_handlers }
    method has_exit_handler(*@value) { $!has_exit_handler := @value[0] if @value; $!has_exit_handler }
    
    method dump(@dumped) {
        nqp::push(@dumped, "+ method");
        nqp::push(@dumped, "++ name $!name");
        nqp::push(@dumped, "++ returns $!returns");
        if $!static {
            nqp::push(@dumped, "++ static");
        }
        for @!arguments {
            nqp::push(@dumped, "++ arg " ~ $_[0] ~ " " ~ $_[1]);
        }
        for @!locals {
            nqp::push(@dumped, "++ local " ~ $_[0] ~ " " ~ $_[1]);
        }
        nqp::push(@dumped, "++ crname $!cr_name");
        nqp::push(@dumped, "++ crcuid $!cr_cuid");
        nqp::push(@dumped, "++ crouterix $!cr_outer");
        for @!cr_olex { nqp::push(@dumped, "++ olex $_"); }
        for @!cr_ilex { nqp::push(@dumped, "++ ilex $_"); }
        for @!cr_nlex { nqp::push(@dumped, "++ nlex $_"); }
        for @!cr_slex { nqp::push(@dumped, "++ slex $_"); }
        nqp::push(@dumped, "++ handlers " ~ join(' ', @!cr_handlers));
        if $!has_exit_handler {
            nqp::push(@dumped, "++ has_exit_handler");
        }
        for @!instructions {
            $_.dump(@dumped);
        }
    }
}

class JAST::Label is JAST::Node {
    has str $!name;
    
    method new(:$name!) {
        my $node := nqp::create(JAST::Label);
        nqp::bindattr_s($node, JAST::Label, '$!name', $name);
        $node
    }
    
    method name() { $!name }
    
    method dump(@dumped) {
        nqp::push(@dumped, ":$!name")
    }
}

class JAST::Instruction is JAST::Node {
    has int $!op;
    has @!args;
    
    method new(:$op!, *@args) {
        my $node := nqp::create(JAST::Instruction);
        nqp::bindattr_i($node, JAST::Instruction, '$!op', opname2code($op));
        nqp::bindattr($node, JAST::Instruction, '@!args', @args);
        $node
    }
    
    method op() { $!op }
    method args() { @!args }
    
    method push($arg) { nqp::push(@!args, $arg); }
    method pop() { nqp::pop(@!args); }
    method unshift($arg) { nqp::unshift(@!args, $arg); }
    method shift() { nqp::shift(@!args); }
    
    method dump(@dumped) {
        my @processed;
        for @!args {
            nqp::push(@processed, nqp::istype($_, JAST::Node)
                ?? $_.name
                !! ~$_)
        }
        nqp::push(@dumped, "$!op " ~ nqp::join(" ", @processed))
    }
}

# Really an instruction, but makes things a bit more pleasant to work with.
# For now, we assume that the bootstrap method is static. Extra args are
# specified as JAST::PushIVal, etc.
class JAST::InvokeDynamic is JAST::Node {
    has $!name;
    has @!arg_types;
    has $!ret_type;
    has $!bsm_type;
    has $!bsm_name;
    has @!extra_args;
    
    method new($name, $ret_type, @arg_types, $bsm_type, $bsm_name, @extra_args?) {
        self.bless(:$name, :$ret_type, :@arg_types, :$bsm_type, :$bsm_name, :@extra_args)
    }
    
    method BUILD(:$name, :$ret_type, :@arg_types, :$bsm_type, :$bsm_name, :@extra_args) {
        $!name := $name;
        $!ret_type := $ret_type;
        @!arg_types := @arg_types;
        $!bsm_type := $bsm_type;
        $!bsm_name := $bsm_name;
        @!extra_args := @extra_args;
    }
    
    method dump(@dumped) {
        my @op_dump := [opname2code('invokedynamic'), $!name];
        nqp::push(@op_dump, '(' ~ join('', @!arg_types) ~ ')' ~ $!ret_type);
        nqp::push(@op_dump, $!bsm_type);
        nqp::push(@op_dump, $!bsm_name);
        nqp::push(@op_dump, +@!extra_args);
        nqp::push(@dumped, join(" ", @op_dump));
        for @!extra_args {
            $_.dump(@dumped);
        }
    }
}

class JAST::PushIVal is JAST::Node {
    has int $!value;
    
    method new(:$value) {
        my $node := nqp::create(JAST::PushIVal);
        nqp::bindattr_i($node, JAST::PushIVal, '$!value', $value);
        $node
    }
    
    method value() { $!value }
    method dump(@dumped) { nqp::push(@dumped, ".push_ic $!value") }
}

class JAST::PushIndex is JAST::Node {
    has int $!value;
    
    method new(:$value) {
        my $node := nqp::create(JAST::PushIndex);
        nqp::bindattr_i($node, JAST::PushIndex, '$!value', $value);
        $node
    }
    
    method value() { $!value }
    method dump(@dumped) { nqp::push(@dumped, ".push_idx $!value") }
}

class JAST::PushNVal is JAST::Node {
    has num $!value;
    
    method new(:$value) {
        my $node := nqp::create(JAST::PushNVal);
        nqp::bindattr_n($node, JAST::PushNVal, '$!value', $value);
        $node
    }
    
    method value() { $!value }
    method dump(@dumped) { nqp::push(@dumped, ".push_nc $!value") }
}

class JAST::PushSVal is JAST::Node {
    has str $!value;
    
    method new(:$value) {
        my $node := nqp::create(JAST::PushSVal);
        nqp::bindattr_s($node, JAST::PushSVal, '$!value', $value);
        $node
    }
    
    method value() { $!value }
    method dump(@dumped) {
        my @chars := nqp::split('', $!value);
        my int $i := 0;
        my int $n := nqp::elems(@chars);
        my $c;
        while $i < $n {
            $c := nqp::atpos(@chars, $i);
            if    $c eq "\\" { @chars[$i] := "\\\\"; }
            elsif $c eq "\n" { @chars[$i] := "\\n"; }
            elsif $c eq "\r" { @chars[$i] := "\\r"; }
            elsif $c eq "\t" { @chars[$i] := "\\t"; }
            $i++;
        }
        nqp::push(@dumped, ".push_sc " ~ nqp::join('', @chars))
    }
}

class JAST::PushCVal is JAST::Node {
    has str $!value;
    
    method new(:$value) {
        my $node := nqp::create(JAST::PushCVal);
        nqp::bindattr_s($node, JAST::PushCVal, '$!value', $value);
        $node
    }
    
    method value() { $!value }
    method dump(@dumped) { nqp::push(@dumped, ".push_cc $!value") }
}

class JAST::TryCatch is JAST::Node {
    has $!try;
    has $!catch;
    has str $!type;
    
    method BUILD(:$try!, :$catch!, str :$type!) {
        $!try   := $try;
        $!catch := $catch;
        $!type  := $type;
    }
    
    method try(*@value) { @value ?? ($!try := @value[0]) !! $!try }
    method catch(*@value) { @value ?? ($!catch := @value[0]) !! $!catch }
    method type(*@value) { @value ?? ($!type := @value[0]) !! $!type }
    
    method dump(@dumped) {
        nqp::push(@dumped, ".try");
        $!try.dump(@dumped);
        nqp::push(@dumped, ".catch $!type");
        $!catch.dump(@dumped);
        nqp::push(@dumped, ".endtry");
    }
}

class JAST::Annotation is JAST::Node {
    has int $!line;
    
    method BUILD(:$line!) {
        $!line := $line;
    }    
    
    method line() { $!line }
    
    method dump(@dumped) {
        nqp::push(@dumped, ".line $!line")
    }
}

my %opmap := nqp::hash(
    'nop', 0x00,
    'aconst_null', 0x01,
    'iconst_m1', 0x02,
    'iconst_0', 0x03,
    'iconst_1', 0x04,
    'iconst_2', 0x05,
    'iconst_3', 0x06,
    'iconst_4', 0x07,
    'iconst_5', 0x08,
    'lconst_0', 0x09,
    'lconst_1', 0x0a,
    'fconst_0', 0x0b,
    'fconst_1', 0x0c,
    'fconst_2', 0x0d,
    'dconst_0', 0x0e,
    'dconst_1', 0x0f,
    'bipush', 0x10,
    'sipush', 0x11,
    'ldc', 0x12,
    'ldc_w', 0x13,
    'ldc2_w', 0x14,
    'iload', 0x15,
    'lload', 0x16,
    'fload', 0x17,
    'dload', 0x18,
    'aload', 0x19,
    'iload_0', 0x1a,
    'iload_1', 0x1b,
    'iload_2', 0x1c,
    'iload_3', 0x1d,
    'lload_0', 0x1e,
    'lload_1', 0x1f,
    'lload_2', 0x20,
    'lload_3', 0x21,
    'fload_0', 0x22,
    'fload_1', 0x23,
    'fload_2', 0x24,
    'fload_3', 0x25,
    'dload_0', 0x26,
    'dload_1', 0x27,
    'dload_2', 0x28,
    'dload_3', 0x29,
    'aload_0', 0x2a,
    'aload_1', 0x2b,
    'aload_2', 0x2c,
    'aload_3', 0x2d,
    'iaload', 0x2e,
    'laload', 0x2f,
    'faload', 0x30,
    'daload', 0x31,
    'aaload', 0x32,
    'baload', 0x33,
    'caload', 0x34,
    'saload', 0x35,
    'istore', 0x36,
    'lstore', 0x37,
    'fstore', 0x38,
    'dstore', 0x39,
    'astore', 0x3a,
    'istore_0', 0x3b,
    'istore_1', 0x3c,
    'istore_2', 0x3d,
    'istore_3', 0x3e,
    'lstore_0', 0x3f,
    'lstore_1', 0x40,
    'lstore_2', 0x41,
    'lstore_3', 0x42,
    'fstore_0', 0x43,
    'fstore_1', 0x44,
    'fstore_2', 0x45,
    'fstore_3', 0x46,
    'dstore_0', 0x47,
    'dstore_1', 0x48,
    'dstore_2', 0x49,
    'dstore_3', 0x4a,
    'astore_0', 0x4b,
    'astore_1', 0x4c,
    'astore_2', 0x4d,
    'astore_3', 0x4e,
    'iastore', 0x4f,
    'lastore', 0x50,
    'fastore', 0x51,
    'dastore', 0x52,
    'aastore', 0x53,
    'bastore', 0x54,
    'castore', 0x55,
    'sastore', 0x56,
    'pop', 0x57,
    'pop2', 0x58,
    'dup', 0x59,
    'dup_x1', 0x5a,
    'dup_x2', 0x5b,
    'dup2', 0x5c,
    'dup2_x1', 0x5d,
    'dup2_x2', 0x5e,
    'swap', 0x5f,
    'iadd', 0x60,
    'ladd', 0x61,
    'fadd', 0x62,
    'dadd', 0x63,
    'isub', 0x64,
    'lsub', 0x65,
    'fsub', 0x66,
    'dsub', 0x67,
    'imul', 0x68,
    'lmul', 0x69,
    'fmul', 0x6a,
    'dmul', 0x6b,
    'idiv', 0x6c,
    'ldiv', 0x6d,
    'fdiv', 0x6e,
    'ddiv', 0x6f,
    'irem', 0x70,
    'lrem', 0x71,
    'frem', 0x72,
    'drem', 0x73,
    'ineg', 0x74,
    'lneg', 0x75,
    'fneg', 0x76,
    'dneg', 0x77,
    'ishl', 0x78,
    'lshl', 0x79,
    'ishr', 0x7a,
    'lshr', 0x7b,
    'iushr', 0x7c,
    'lushr', 0x7d,
    'iand', 0x7e,
    'land', 0x7f,
    'ior', 0x80,
    'lor', 0x81,
    'ixor', 0x82,
    'lxor', 0x83,
    'iinc', 0x84,
    'i2l', 0x85,
    'i2f', 0x86,
    'i2d', 0x87,
    'l2i', 0x88,
    'l2f', 0x89,
    'l2d', 0x8a,
    'f2i', 0x8b,
    'f2l', 0x8c,
    'f2d', 0x8d,
    'd2i', 0x8e,
    'd2l', 0x8f,
    'd2f', 0x90,
    'i2b', 0x91,
    'i2c', 0x92,
    'i2s', 0x93,
    'lcmp', 0x94,
    'fcmpl', 0x95,
    'fcmpg', 0x96,
    'dcmpl', 0x97,
    'dcmpg', 0x98,
    'ifeq', 0x99,
    'ifne', 0x9a,
    'iflt', 0x9b,
    'ifge', 0x9c,
    'ifgt', 0x9d,
    'ifle', 0x9e,
    'if_icmpeq', 0x9f,
    'if_icmpne', 0xa0,
    'if_icmplt', 0xa1,
    'if_icmpge', 0xa2,
    'if_icmpgt', 0xa3,
    'if_icmple', 0xa4,
    'if_acmpeq', 0xa5,
    'if_acmpne', 0xa6,
    'goto', 0xa7,
    'jsr', 0xa8,
    'ret', 0xa9,
    'tableswitch', 0xaa,
    'lookupswitch', 0xab,
    'ireturn', 0xac,
    'lreturn', 0xad,
    'freturn', 0xae,
    'dreturn', 0xaf,
    'areturn', 0xb0,
    'return', 0xb1,
    'getstatic', 0xb2,
    'putstatic', 0xb3,
    'getfield', 0xb4,
    'putfield', 0xb5,
    'invokevirtual', 0xb6,
    'invokespecial', 0xb7,
    'invokestatic', 0xb8,
    'invokeinterface', 0xb9,
    'invokedynamic', 0xba,
    'new', 0xbb,
    'newarray', 0xbc,
    'anewarray', 0xbd,
    'arraylength', 0xbe,
    'athrow', 0xbf,
    'checkcast', 0xc0,
    'instanceof', 0xc1,
    'monitorenter', 0xc2,
    'monitorexit', 0xc3,
    'wide', 0xc4,
    'multianewarray', 0xc5,
    'ifnull', 0xc6,
    'ifnonnull', 0xc7,
    'goto_w', 0xc8,
    'jsr_w', 0xc9
);
sub opname2code($name) {
    if nqp::existskey(%opmap, $name) {
        return %opmap{$name};
    }
    else {
        nqp::die("Opcode '$name' not recognized");
    }
}
