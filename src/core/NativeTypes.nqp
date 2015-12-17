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

my native int is repr('P6int') { }
#?if moar
my native int64 is repr('P6int') is nativesize(64) { }
my native int32 is repr('P6int') is nativesize(32) { }
my native int16 is repr('P6int') is nativesize(16) { }
my native int8  is repr('P6int') is nativesize( 8) { }

my native uint is repr('P6int') is unsigned { }
my native uint64 is repr('P6int') is nativesize(64) is unsigned { }
my native uint32 is repr('P6int') is nativesize(32) is unsigned { }
my native uint16 is repr('P6int') is nativesize(16) is unsigned { }
my native uint8  is repr('P6int') is nativesize( 8) is unsigned { }
#?endif

my native num is repr('P6num') { }
#?if moar
my native num64 is repr('P6num') is nativesize(64) { }
my native num32 is repr('P6num') is nativesize(32) { }
#?endif

my native str is repr('P6str') { }
