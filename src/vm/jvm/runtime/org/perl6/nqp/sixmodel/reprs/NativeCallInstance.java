package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.Function;

import org.perl6.nqp.sixmodel.SixModelObject;

public class NativeCallInstance extends SixModelObject {
    /* Flag for whether we should free a string after passing it or not. These
     * are going away once the array handling is refactored.*/
    public static final byte ARG_NO_FREE_STR   = 0;
    public static final byte ARG_FREE_STR      = 1;
    public static final byte ARG_FREE_STR_MASK = 1;

    public Function entry_point;
    public ArgType[]   arg_types;
    public ArgType     ret_type;

    public enum ArgType {
        VOID,
        CHAR,
        SHORT,
        INT,
        LONG,
        LONGLONG,
        FLOAT,
        DOUBLE,
        ASCIISTR,
        UTF8STR,
        UTF16STR,
        CSTRUCT,
        CARRAY,
        CALLBACK,
        CPOINTER;
    }
}
