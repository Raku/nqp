package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.SixModelObject;

class CArrayREPRData {

    short elem_size;
    SixModelObject elem_type;
    ElemKind elem_kind;
    int jna_size;

    public enum ElemKind {
        INTEGER,
        NUMERIC,
        STRING,
        CPOINTER,
        CARRAY,
        CSTRUCT,
        CPPSTRUCT,
        CUNION }
}
