package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.Function;

import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

/* Holds a description of a native call site. */
public class NativeCallBody {
    /* Flag for whether we should free a string after passing it or not. These
     * are going away once the array handling is refactored.*/
    public static final byte ARG_NO_FREE_STR   = 0;
    public static final byte ARG_FREE_STR      = 1;
    public static final byte ARG_FREE_STR_MASK = 1;
    
    public Function  entry_point;
    public ArgType[] arg_types;
    public SixModelObject[] arg_info;
    public ArgType   ret_type;
}
