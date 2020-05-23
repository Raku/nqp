package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.REPR;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.TypeObject;

public class IOHandle extends REPR {
    @Override
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    @Override
    public SixModelObject allocate(ThreadContext tc, STable st) {
        IOHandleInstance obj = new IOHandleInstance();
        obj.st = st;
        return obj;
    }

    @Override
    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize an IO handle");
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize an IO handle");
    }
}
