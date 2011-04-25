# Bind the HOWs into the EXPORTHOW package under the package declarator
# names.
my knowhow EXPORTHOW {
    ($?PACKAGE.WHO)<module>  := NQPModuleHOW;
    ($?PACKAGE.WHO)<class>   := NQPClassHOW;
    ($?PACKAGE.WHO)<grammar> := NQPClassHOW;
    ($?PACKAGE.WHO)<role>    := NQPParametricRoleHOW;
    ($?PACKAGE.WHO)<native>  := NQPNativeHOW;
}
