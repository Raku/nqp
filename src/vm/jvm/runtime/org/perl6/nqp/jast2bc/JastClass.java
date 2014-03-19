package org.perl6.nqp.jast2bc;

import java.nio.ByteBuffer;

import org.perl6.nqp.runtime.Base64;
import static org.perl6.nqp.runtime.Ops.*;
import org.perl6.nqp.runtime.ThreadContext;

import org.perl6.nqp.sixmodel.SixModelObject;

public class JastClass {
    private static SixModelObject jastClass;
    private static long nameHint, superHint, filenameHint, serializedHint, methodsHint, fieldsHint;

    public String className;
    public String superName;
    public String filename;
    public byte[] serialized;
    public SixModelObject methods;
    public SixModelObject fields;

    public JastClass(SixModelObject jast, ThreadContext tc) throws Exception {
        if (istype(jast, jastClass, tc) == 0)
            throw new Exception("JAST node isn't a JAST::Class");

        className = getattr_s(jast, jastClass, "$!name", nameHint, tc);
        superName = getattr_s(jast, jastClass, "$!super", superHint, tc);
        filename  = getattr_s(jast, jastClass, "$!filename", filenameHint, tc);
        methods   = jast.get_attribute_boxed(tc, jastClass, "@!methods", methodsHint);
        fields    = jast.get_attribute_boxed(tc, jastClass, "@!fields", fieldsHint);

        String serializedString = getattr_s(jast, jastClass, "$!serialized", serializedHint, tc);
        if (serializedString != null) {
            ByteBuffer sbuf = Base64.decode(serializedString);
            serialized = new byte[sbuf.remaining()];
            sbuf.get(serialized);
        }

        if (className == null)
            throw new Exception("Missing class name");
        if (superName == null)
            throw new Exception("Missing superclass name");
    }

    static public void setup(SixModelObject jastClass, ThreadContext tc) {
        JastClass.jastClass = jastClass;
        nameHint       = jastClass.st.REPR.hint_for(tc, jastClass.st, jastClass, "$!name");
        superHint      = jastClass.st.REPR.hint_for(tc, jastClass.st, jastClass, "$!super");
        filenameHint   = jastClass.st.REPR.hint_for(tc, jastClass.st, jastClass, "$!filename");
        serializedHint = jastClass.st.REPR.hint_for(tc, jastClass.st, jastClass, "$!serialized");
        methodsHint    = jastClass.st.REPR.hint_for(tc, jastClass.st, jastClass, "@!methods");
        fieldsHint     = jastClass.st.REPR.hint_for(tc, jastClass.st, jastClass, "@!fields");
    }
}
