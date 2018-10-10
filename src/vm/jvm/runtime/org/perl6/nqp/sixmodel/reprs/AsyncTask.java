package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

public class AsyncTask extends REPR {

    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        final STable st = new STable(this, HOW);
        final SixModelObject obj = new TypeObject();

        obj.st = st;
        st.WHAT = obj;

        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        final AsyncTaskInstance obj = new AsyncTaskInstance();

        obj.st = st;

        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize an async task handle");
    }

    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize an async task handle");
    }
}
