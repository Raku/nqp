package org.perl6.nqp.sixmodel.reprs;

import java.lang.System;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class VMArrayInstanceBase extends SixModelObject {
    public long[] dimensions(ThreadContext tc) {
        return new long[] { this.elems(tc) };
    }

    public void set_dimensions(ThreadContext tc, long[] dims) {
        if (dims.length != 1)
            throw ExceptionHandling.dieInternal(tc, "A dynamic array can only have a single dimension");
        this.set_elems(tc, dims[0]);
    }

    public SixModelObject at_pos_multidim_boxed(ThreadContext tc, long[] indices) {
        if (indices.length != 1)
            throw ExceptionHandling.dieInternal(tc, "A dynamic array can only be indexed with a single dimension");
        return this.at_pos_boxed(tc, indices[0]);
    }

    public void at_pos_multidim_native(ThreadContext tc, long[] indices) {
        if (indices.length != 1)
            throw ExceptionHandling.dieInternal(tc, "A dynamic array can only be indexed with a single dimension");
        this.at_pos_native(tc, indices[0]);
    }

    public void bind_pos_multidim_boxed(ThreadContext tc, long[] indices, SixModelObject value) {
        if (indices.length != 1)
            throw ExceptionHandling.dieInternal(tc, "A dynamic array can only be indexed with a single dimension");
        this.bind_pos_boxed(tc, indices[0], value);
    }

    public void bind_pos_multidim_native(ThreadContext tc, long[] indices) {
        if (indices.length != 1)
            throw ExceptionHandling.dieInternal(tc, "A dynamic array can only be indexed with a single dimension");
        this.bind_pos_native(tc, indices[0]);
    }
}
