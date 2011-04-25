use nqpmo;

# We'll re-export all of the HOWs that we import from the meta-objects
# library. (Questionable whether we should need to do this - maybe the
# set of mappings the setting has should just be taken as the default
# for any program using it. OTOH, there's not a good way to factor
# this just yet.)
my module EXPORTHOW {
    ($?PACKAGE.WHO)<module>  := NQPModuleHOW;
    ($?PACKAGE.WHO)<class>   := NQPClassHOW;
    ($?PACKAGE.WHO)<grammar> := NQPClassHOW;
    ($?PACKAGE.WHO)<role>    := NQPParametricRoleHOW;
    ($?PACKAGE.WHO)<native>  := NQPNativeHOW;
}

my native int is repr('P6int') { }

my native num is repr('P6num') { }

my native str is repr('P6str') { }
