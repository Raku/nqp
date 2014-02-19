# Bind the HOWs into the EXPORTHOW package under the package declarator
# names.
my knowhow EXPORTHOW {
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
