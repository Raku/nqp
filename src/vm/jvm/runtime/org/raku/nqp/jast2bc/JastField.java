package org.raku.nqp.jast2bc;

import org.objectweb.asm.Type;

import org.raku.nqp.runtime.ThreadContext;

import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.runtime.Ops;

public class JastField {
    private static long nameHint, typeHint, staticHint;

    public String name;
    public Type type;
    public boolean isStatic;

    public JastField(SixModelObject jast, SixModelObject jastField, ThreadContext tc) throws Exception {
        if (Ops.istype(jast, jastField, tc) == 0)
            throw new Exception("JAST node isn't a JAST::Field");

        name = Ops.getattr_s(jast, jastField, "$!name", nameHint, tc);
        type = JASTCompiler.processType(Ops.getattr_s(jast, jastField, "$!type", typeHint, tc));
        isStatic = Ops.getattr_i(jast, jastField, "$!static", staticHint, tc) != 0;
    }

    static public void setup(SixModelObject jastField, ThreadContext tc) {
        nameHint   = jastField.st.REPR.hint_for(tc, jastField.st, jastField, "$!name");
        typeHint   = jastField.st.REPR.hint_for(tc, jastField.st, jastField, "$!type");
        staticHint = jastField.st.REPR.hint_for(tc, jastField.st, jastField, "$!static");
    }
}
