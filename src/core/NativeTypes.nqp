use nqpmo;

# We'll re-export all of the HOWs that we import from the meta-objects
# library. (Questionable whether we should need to do this - maybe the
# set of mappings the setting has should just be taken as the default
# for any program using it. OTOH, there's not a good way to factor
# this just yet.)
my module EXPORTHOW {
    nqp::scwbdisable();
    ($?PACKAGE.WHO)<module>       := NQPModuleHOW;
    ($?PACKAGE.WHO)<class>        := NQPClassHOW;
    ($?PACKAGE.WHO)<class-attr>   := NQPAttribute;
    ($?PACKAGE.WHO)<grammar>      := NQPClassHOW;
    ($?PACKAGE.WHO)<grammar-attr> := NQPAttribute;
    ($?PACKAGE.WHO)<role>         := NQPParametricRoleHOW;
    ($?PACKAGE.WHO)<role-attr>    := NQPAttribute;
    ($?PACKAGE.WHO)<native>       := NQPNativeHOW;
    nqp::scwbenable();
}

#?if js
my native int is repr('P6int') is nativesize(32) { }
#?endif
#?if !js
my native int is repr('P6int') { }
#?endif
my native int64 is repr('P6int') is nativesize(64) { }
my native int32 is repr('P6int') is nativesize(32) { }
my native int16 is repr('P6int') is nativesize(16) { }
my native int8  is repr('P6int') is nativesize( 8) { }

#?if js
my native uint is repr('P6int') is nativesize(32) is unsigned { }
#?endif
#?if !js
my native uint is repr('P6int') is unsigned { }
#?endif
my native uint64 is repr('P6int') is nativesize(64) is unsigned { }
my native uint32 is repr('P6int') is nativesize(32) is unsigned { }
my native uint16 is repr('P6int') is nativesize(16) is unsigned { }
my native uint8  is repr('P6int') is nativesize( 8) is unsigned { }

my native num is repr('P6num') { }
my native num64 is repr('P6num') is nativesize(64) { }
my native num32 is repr('P6num') is nativesize(32) { }

my native str is repr('P6str') { }

my stub atomicint metaclass NQPNativeHOW is repr('P6int') { ... };

my stub IntLexRef metaclass NQPNativeRefHOW { ... };
my stub UIntLexRef metaclass NQPNativeRefHOW { ... };
my stub NumLexRef metaclass NQPNativeRefHOW { ... };
my stub StrLexRef metaclass NQPNativeRefHOW { ... };
my stub IntAttrRef metaclass NQPNativeRefHOW { ... };
my stub UIntAttrRef metaclass NQPNativeRefHOW { ... };
my stub NumAttrRef metaclass NQPNativeRefHOW { ... };
my stub StrAttrRef metaclass NQPNativeRefHOW { ... };
my stub IntPosRef metaclass NQPNativeRefHOW { ... };
my stub UIntPosRef metaclass NQPNativeRefHOW { ... };
my stub NumPosRef metaclass NQPNativeRefHOW { ... };
my stub StrPosRef metaclass NQPNativeRefHOW { ... };
my stub IntMultidimRef metaclass NQPNativeRefHOW { ... };
my stub UIntMultidimRef metaclass NQPNativeRefHOW { ... };
my stub NumMultidimRef metaclass NQPNativeRefHOW { ... };
my stub StrMultidimRef metaclass NQPNativeRefHOW { ... };

#?if js
my stub Int64LexRef metaclass NQPNativeRefHOW { ... };
my stub Int64AttrRef metaclass NQPNativeRefHOW { ... };
my stub Int64PosRef metaclass NQPNativeRefHOW { ... };
my stub Int64MultidimRef metaclass NQPNativeRefHOW { ... };
#?endif

# Set up various native reference types.
sub setup_native_ref_type($type, $primitive, $ref_kind) {
    $type.HOW.set_native_type($type, $primitive);
    $type.HOW.set_ref_kind($type, $ref_kind);
    $type.HOW.compose_repr($type);
    nqp::setcontspec($type, 'native_ref', nqp::null());
}

nqp::scwbenable();
atomicint.HOW.set_nativesize(atomicint, nqp::const::C_TYPE_ATOMIC_INT);
atomicint.HOW.compose(atomicint);

setup_native_ref_type(IntLexRef, int, 'lexical');
setup_native_ref_type(UIntLexRef, uint, 'lexical');
setup_native_ref_type(NumLexRef, num, 'lexical');
setup_native_ref_type(StrLexRef, str, 'lexical');
setup_native_ref_type(IntAttrRef, int, 'attribute');
setup_native_ref_type(UIntAttrRef, uint, 'attribute');
setup_native_ref_type(NumAttrRef, num, 'attribute');
setup_native_ref_type(StrAttrRef, str, 'attribute');
setup_native_ref_type(IntPosRef, int, 'positional');
setup_native_ref_type(UIntPosRef, uint, 'positional');
setup_native_ref_type(NumPosRef, num, 'positional');
setup_native_ref_type(StrPosRef, str, 'positional');
setup_native_ref_type(IntMultidimRef, int, 'multidim');
setup_native_ref_type(UIntMultidimRef, uint, 'multidim');
setup_native_ref_type(NumMultidimRef, num, 'multidim');
setup_native_ref_type(StrMultidimRef, str, 'multidim');
#?if js
setup_native_ref_type(Int64LexRef, int64, 'lexical');
setup_native_ref_type(Int64AttrRef, int64, 'attribute');
setup_native_ref_type(Int64PosRef, int64, 'positional');
setup_native_ref_type(Int64MultidimRef, int64, 'multidim');
#?endif

IntLexRef.HOW.compose(IntLexRef);
UIntLexRef.HOW.compose(UIntLexRef);
NumLexRef.HOW.compose(NumLexRef);
StrLexRef.HOW.compose(StrLexRef);
IntAttrRef.HOW.compose(IntAttrRef);
UIntAttrRef.HOW.compose(UIntAttrRef);
NumAttrRef.HOW.compose(NumAttrRef);
StrAttrRef.HOW.compose(StrAttrRef);
IntPosRef.HOW.compose(IntPosRef);
UIntPosRef.HOW.compose(UIntPosRef);
NumPosRef.HOW.compose(NumPosRef);
StrPosRef.HOW.compose(StrPosRef);
IntMultidimRef.HOW.compose(IntMultidimRef);
UIntMultidimRef.HOW.compose(UIntMultidimRef);
NumMultidimRef.HOW.compose(NumMultidimRef);
StrMultidimRef.HOW.compose(StrMultidimRef);

#?if js
Int64LexRef.HOW.compose(Int64LexRef);
Int64AttrRef.HOW.compose(Int64AttrRef);
Int64PosRef.HOW.compose(Int64PosRef);
Int64MultidimRef.HOW.compose(Int64MultidimRef);
#?endif
nqp::scwbdisable();
