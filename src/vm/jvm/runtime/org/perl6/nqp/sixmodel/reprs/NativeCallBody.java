package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.Function;

/* Holds a description of a native call site. */
public class NativeCallBody {
    /* Flag for whether we should free a string after passing it or not. These
     * are going away once the array handling is refactored.*/
    public static final byte ARG_NO_FREE_STR   = 0;
    public static final byte ARG_FREE_STR      = 1;
    public static final byte ARG_FREE_STR_MASK = 1;
    
    /* The available native call argument types. */
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

    public Function  entry_point;
    public ArgType[] arg_types;
    public ArgType   ret_type;
}
