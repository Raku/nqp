package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.Function;

import org.perl6.nqp.sixmodel.SixModelObject;

public class NativeCallInstance extends SixModelObject {
    /* Constants. Might be more idiomatic Java to move these to an enum. */
    public static final byte ARG_VOID      = 0;
    public static final byte ARG_CHAR      = 2;
    public static final byte ARG_SHORT     = 4;
    public static final byte ARG_INT       = 6;
    public static final byte ARG_LONG      = 8;
    public static final byte ARG_LONGLONG  = 10;
    public static final byte ARG_FLOAT     = 12;
    public static final byte ARG_DOUBLE    = 14;
    public static final byte ARG_ASCIISTR  = 16;
    public static final byte ARG_UTF8STR   = 18;
    public static final byte ARG_UTF16STR  = 20;
    public static final byte ARG_CSTRUCT   = 22;
    public static final byte ARG_CARRAY    = 24;
    public static final byte ARG_CALLBACK  = 26;
    public static final byte ARG_CPOINTER  = 28;
    public static final byte ARG_TYPE_MASK = 30;

    /* Flag for whether we should free a string after passing it or not. These
     * are going away once the array handling is refactored.*/
    public static final byte ARG_NO_FREE_STR   = 0;
    public static final byte ARG_FREE_STR      = 1;
    public static final byte ARG_FREE_STR_MASK = 1;

    public Function entry_point;
}
