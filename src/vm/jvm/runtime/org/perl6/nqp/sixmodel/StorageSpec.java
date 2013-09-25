package org.perl6.nqp.sixmodel;

/* This data structure describes what storage a given representation
 * needs if something of that representation is to be embedded in
 * another place. For any representation that expects to be used
 * as a kind of reference type, it will just want to be a pointer.
 * But for other things, they would prefer to be "inlined" into
 * the object. */
public class StorageSpec {
    /* Inlined or not. */
    public static final short REFERENCE = 0;
    public static final short INLINED = 1;

    /* Possible options for boxed primitives. */
    public static final short BP_NONE = 0;
    public static final short BP_INT = 1;
    public static final short BP_NUM = 2;
    public static final short BP_STR = 3;

    /* can_box bit field values. */
    public static final short CAN_BOX_INT = 1;
    public static final short CAN_BOX_NUM = 2;
    public static final short CAN_BOX_STR = 4;
    
    /* 0 if this is to be referenced, anything else otherwise. */
    public short inlineable;

    /* For things that want to be inlined, the number of bits of
     * storage they need. Ignored otherwise. */
    public short bits;

    /* For things that are inlined, if they are just storage of a
     * primitive type and can unbox, this says what primitive type
     * that they unbox to. */
    public short boxed_primitive;
    
    /* The types that this one can box/unbox to. */
    public short can_box;

    /* For ints, whether it's an unsigned value. */
    public short is_unsigned;

    public static final StorageSpec BOXED = new StorageSpec();
}
