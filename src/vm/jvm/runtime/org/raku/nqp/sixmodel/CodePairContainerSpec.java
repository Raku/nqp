package org.raku.nqp.sixmodel;

import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;

/**
 * A code_pair container uses a pair of methods (fetch/store) to provide the
 * container semantics.
 */
public class CodePairContainerSpec extends ContainerSpec {
    public SixModelObject fetchCode;
    public SixModelObject storeCode;

    /* Fetches a value out of a container. Used for decontainerization. */
    @Override
    public SixModelObject fetch(ThreadContext tc, SixModelObject cont) {
        Ops.invokeDirect(tc, fetchCode, Ops.invocantCallSite, new Object[] { cont });
        return Ops.result_o(tc.curFrame);
    }
    @Override
    public long fetch_i(ThreadContext tc, SixModelObject cont) {
        Ops.invokeDirect(tc, fetchCode, Ops.invocantCallSite, new Object[] { cont });
        return Ops.result_i(tc.curFrame);
    }
    @Override
    public double fetch_n(ThreadContext tc, SixModelObject cont) {
        Ops.invokeDirect(tc, fetchCode, Ops.invocantCallSite, new Object[] { cont });
        return Ops.result_n(tc.curFrame);
    }
    @Override
    public String fetch_s(ThreadContext tc, SixModelObject cont) {
        Ops.invokeDirect(tc, fetchCode, Ops.invocantCallSite, new Object[] { cont });
        return Ops.result_s(tc.curFrame);
    }

    /* Stores a value in a container. Used for assignment. */
    @Override
    public void store(ThreadContext tc, SixModelObject cont, SixModelObject obj) {
        Ops.invokeDirect(tc, storeCode, Ops.storeCallSite, new Object[] { cont, obj });
    }
    @Override
    public void store_i(ThreadContext tc, SixModelObject cont, long value) {
        Ops.invokeDirect(tc, storeCode, Ops.storeCallSite_i, new Object[] { cont, value });
    }
    @Override
    public void store_n(ThreadContext tc, SixModelObject cont, double value) {
        Ops.invokeDirect(tc, storeCode, Ops.storeCallSite_n, new Object[] { cont, value });
    }
    @Override
    public void store_s(ThreadContext tc, SixModelObject cont, String value) {
        Ops.invokeDirect(tc, storeCode, Ops.storeCallSite_s, new Object[] { cont, value });
    }

    /* Stores a value in a container, without any checking of it (this
     * assumes an optimizer or something else already did it). Used for
     * assignment. */
    @Override
    public void storeUnchecked(ThreadContext tc, SixModelObject cont, SixModelObject obj) {
        store(tc, cont, obj);
    }

    /* Name of this container specification. */
    @Override
    public String name() {
        return "code_pair";
    }

    /* Serializes the container data, if any. */
    @Override
    public void serialize(ThreadContext tc, STable st, SerializationWriter writer) {
        writer.writeRef(fetchCode);
        writer.writeRef(storeCode);
    }

    /* Deserializes the container data, if any. */
    @Override
    public void deserialize(ThreadContext tc, STable st, SerializationReader reader) {
        fetchCode = reader.readRef();
        storeCode = reader.readRef();
    }
}
