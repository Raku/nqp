package org.perl6.nqp.truffle.sixmodel;

/**
 * Specification of how we turn something into a boolean.
 */
public class BoolificationSpec {
    /**
     * Boolification mode flags.
     */
    public static final int MODE_CALL_METHOD = 0;
    public static final int MODE_UNBOX_INT = 1;
    public static final int MODE_UNBOX_NUM = 2;
    public static final int MODE_UNBOX_STR_NOT_EMPTY = 3;
    public static final int MODE_UNBOX_STR_NOT_EMPTY_OR_ZERO = 4;
    public static final int MODE_NOT_TYPE_OBJECT = 5;
    public static final int MODE_BIGINT = 6;
    public static final int MODE_ITER = 7;
    public static final int MODE_HAS_ELEMS = 8;

    /**
     * Boolification mode.
     */
    public int mode;

    /**
     * A method to call to boolify, if applicable.
     */
    public Object method;
}
