package org.raku.nqp.sixmodel;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.HLLConfig;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.reprs.NativeRefInstance;
import org.raku.nqp.sixmodel.reprs.NativeRefREPRData;

public class NativeRefContainerSpec extends ContainerSpec {
    /* Fetches a value out of a container. Used for decontainerization. */
    @Override
    public SixModelObject fetch(ThreadContext tc, SixModelObject cont) {
        NativeRefREPRData rd = (NativeRefREPRData)cont.st.REPRData;
        HLLConfig hll = cont.st.hllOwner;
        if (hll == null)
            hll = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        switch (rd.primitive_type) {
            case StorageSpec.BP_INT:
                return Ops.box_i(fetch_i(tc, cont), hll.intBoxType, tc);
            case StorageSpec.BP_NUM:
                return Ops.box_n(fetch_n(tc, cont), hll.numBoxType, tc);
            case StorageSpec.BP_STR:
                return Ops.box_s(fetch_s(tc, cont), hll.strBoxType, tc);
            default:
                throw ExceptionHandling.dieInternal(tc,
                    "Unknown native reference primitive type");
        }
    }
    @Override
    public long fetch_i(ThreadContext tc, SixModelObject cont) {
        return ((NativeRefInstance)cont).fetch_i(tc);
    }
    @Override
    public double fetch_n(ThreadContext tc, SixModelObject cont) {
        return ((NativeRefInstance)cont).fetch_n(tc);
    }
    @Override
    public String fetch_s(ThreadContext tc, SixModelObject cont) {
        return ((NativeRefInstance)cont).fetch_s(tc);
    }

    /* Stores a value in a container. Used for assignment. */
    @Override
    public void store(ThreadContext tc, SixModelObject cont, SixModelObject obj) {
        NativeRefREPRData rd = (NativeRefREPRData)cont.st.REPRData;
        switch (rd.primitive_type) {
            case StorageSpec.BP_INT:
                store_i(tc, cont, obj.get_int(tc));
                break;
            case StorageSpec.BP_NUM:
                store_n(tc, cont, obj.get_num(tc));
                break;
            case StorageSpec.BP_STR:
                store_s(tc, cont, obj.get_str(tc));
                break;
            default:
                throw ExceptionHandling.dieInternal(tc,
                    "Unknown native reference primitive type");
        }
    }
    @Override
    public void store_i(ThreadContext tc, SixModelObject cont, long value) {
        ((NativeRefInstance)cont).store_i(tc, value);
    }
    @Override
    public void store_n(ThreadContext tc, SixModelObject cont, double value) {
        ((NativeRefInstance)cont).store_n(tc, value);
    }
    @Override
    public void store_s(ThreadContext tc, SixModelObject cont, String value) {
        ((NativeRefInstance)cont).store_s(tc, value);
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
        return "native_ref";
    }

    /* Serializes the container data, if any. */
    @Override
    public void serialize(ThreadContext tc, STable st, SerializationWriter writer) {
        /* Nothing to do. */
    }

    /* Deserializes the container data, if any. */
    @Override
    public void deserialize(ThreadContext tc, STable st, SerializationReader reader) {
        /* Nothing to do. */
    }
}
