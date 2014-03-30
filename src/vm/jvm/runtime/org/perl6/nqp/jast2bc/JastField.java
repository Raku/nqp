package org.perl6.nqp.jast2bc;

import org.objectweb.asm.Type;

import static org.perl6.nqp.runtime.Ops.*;
import org.perl6.nqp.runtime.ThreadContext;

import org.perl6.nqp.sixmodel.SixModelObject;

public class JastField {
    private static long nameHint, typeHint, staticHint;

    public String name;
    public Type type;
    public boolean isStatic;

    public JastField(SixModelObject jast, SixModelObject jastField, ThreadContext tc) throws Exception {
        if (istype(jast, jastField, tc) == 0)
            throw new Exception("JAST node isn't a JAST::Field");

        name = getattr_s(jast, jastField, "$!name", nameHint, tc);
        type = JASTCompiler.processType(getattr_s(jast, jastField, "$!type", typeHint, tc));
        isStatic = getattr_i(jast, jastField, "$!static", staticHint, tc) != 0;
    }

    static public void setup(SixModelObject jastField, ThreadContext tc) {
        nameHint   = jastField.st.REPR.hint_for(tc, jastField.st, jastField, "$!name");
        typeHint   = jastField.st.REPR.hint_for(tc, jastField.st, jastField, "$!type");
        staticHint = jastField.st.REPR.hint_for(tc, jastField.st, jastField, "$!static");
    }
}
