package org.raku.nqp.sixmodel.reprs;

import java.util.HashMap;

import org.raku.nqp.sixmodel.SixModelObject;

public class CPPStructREPRData {
    /* The Class object for the subclass of com.sun.jna.Structure we use to
     * represent our structs in JNA space. */
    public Class<?> structureClass;

    public HashMap<String, AttrInfo> fieldTypes = new HashMap<String, AttrInfo>();

    public static class AttrInfo {
        String name;
        SixModelObject type;
        NativeCall.ArgType argType;
        short inlined;
        short bits;
    }
}
