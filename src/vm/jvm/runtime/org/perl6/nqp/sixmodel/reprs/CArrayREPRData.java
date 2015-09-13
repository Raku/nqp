package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.SixModelObject;

public class CArrayREPRData {
    public short          elem_size;
    public SixModelObject elem_type;
    public ElemKind       elem_kind;
    public int            jna_size;

    public enum ElemKind { INTEGER, NUMERIC, STRING, CPOINTER, CARRAY, CSTRUCT, CPPSTRUCT, CUNION }
}
