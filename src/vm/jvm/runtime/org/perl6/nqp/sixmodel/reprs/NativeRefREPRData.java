package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;

public class NativeRefREPRData {
    /* Kinds of reference. */
    public static final short REF_LEXICAL = 1;
    public static final short REF_ATTRIBUTE = 2;
    public static final short REF_POSITIONAL = 3;

    /* The primitive type of native reference this is (one of the values that
     * is valid for StorageSpec.boxed_primitive). */
    public short primitive_type;

    /* The kind of reference this is. */
    public short ref_kind;
}
