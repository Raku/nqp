package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.TypeObject;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class CStr extends REPR {

    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        final STable st = new STable(this, HOW);
        st.REPRData = null; /* No REPR data needed. */

        final SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;

        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        final SixModelObject obj = new CStrInstance();
        obj.st = st;

        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_stub a CStr object.");

        return null;
    }

    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_finish a CStr object.");
    }
}
