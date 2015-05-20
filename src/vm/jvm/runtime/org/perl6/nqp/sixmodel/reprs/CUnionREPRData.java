package org.perl6.nqp.sixmodel.reprs;

import java.util.HashMap;

import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

public class CUnionREPRData {
    /* The Class object for the subclass of com.sun.jna.Union we use to to
     * represent our unions in JNA space. */
    public Class<?> structureClass;

    public HashMap<String, AttrInfo> fieldTypes = new HashMap<String, AttrInfo>();

    public static class AttrInfo {
        String name;
        SixModelObject type;
        ArgType argType;
        short inlined;
        short bits;
    }
}
