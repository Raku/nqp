package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

/* Native attribute reference. */
public class NativeRefInstancePositional extends NativeRefInstance {
    public SixModelObject obj;
    public long idx;
    
    public long fetch_i(ThreadContext tc) {
        obj.at_pos_native(tc, idx);
        if (tc.native_type == ThreadContext.NATIVE_INT)
            return tc.native_i;
        else
            throw ExceptionHandling.dieInternal(tc,
                "This container does not reference a native int");
    }

    public double fetch_n(ThreadContext tc) {
        obj.at_pos_native(tc, idx);
        if (tc.native_type == ThreadContext.NATIVE_NUM)
            return tc.native_n;
        else
            throw ExceptionHandling.dieInternal(tc,
                "This container does not reference a native number");
    }

    public String fetch_s(ThreadContext tc) {
        obj.at_pos_native(tc, idx);
        if (tc.native_type == ThreadContext.NATIVE_STR)
            return tc.native_s;
        else
            throw ExceptionHandling.dieInternal(tc,
                "This container does not reference a native string");
    }

    public void store_i(ThreadContext tc, long value) {
        tc.native_i = value;
        obj.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_INT)
            throw ExceptionHandling.dieInternal(tc,
                "This container does not reference a native int");
        if (obj.sc != null)
            Ops.scwbObject(tc, obj);
    }

    public void store_n(ThreadContext tc, double value) {
        tc.native_n = value;
        obj.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_NUM)
            throw ExceptionHandling.dieInternal(tc,
                "This container does not reference a native number");
        if (obj.sc != null)
            Ops.scwbObject(tc, obj);
    }

    public void store_s(ThreadContext tc, String value) {
        tc.native_s = value;
        obj.bind_pos_native(tc, idx);
        if (tc.native_type != ThreadContext.NATIVE_STR)
            throw ExceptionHandling.dieInternal(tc,
                "This container does not reference a native string");
        if (obj.sc != null)
            Ops.scwbObject(tc, obj);
    }
}