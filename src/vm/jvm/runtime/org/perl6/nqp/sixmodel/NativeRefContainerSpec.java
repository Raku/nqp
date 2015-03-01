package org.perl6.nqp.sixmodel;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.reprs.NativeRefInstance;
import org.perl6.nqp.sixmodel.reprs.NativeRefREPRData;

public class NativeRefContainerSpec extends ContainerSpec {
    /* Fetches a value out of a container. Used for decontainerization. */
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
    public long fetch_i(ThreadContext tc, SixModelObject cont) {
        return ((NativeRefInstance)cont).fetch_i(tc);
    }
    public double fetch_n(ThreadContext tc, SixModelObject cont) {
        return ((NativeRefInstance)cont).fetch_n(tc);
    }
    public String fetch_s(ThreadContext tc, SixModelObject cont) {
        return ((NativeRefInstance)cont).fetch_s(tc);
    }
    
    /* Stores a value in a container. Used for assignment. */
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
    public void store_i(ThreadContext tc, SixModelObject cont, long value) {
        ((NativeRefInstance)cont).store_i(tc, value);
    }
    public void store_n(ThreadContext tc, SixModelObject cont, double value) {
        ((NativeRefInstance)cont).store_n(tc, value);
    }
    public void store_s(ThreadContext tc, SixModelObject cont, String value) {
        ((NativeRefInstance)cont).store_s(tc, value);
    }
    
    /* Stores a value in a container, without any checking of it (this
     * assumes an optimizer or something else already did it). Used for
     * assignment. */
    public void storeUnchecked(ThreadContext tc, SixModelObject cont, SixModelObject obj) {
        store(tc, cont, obj);
    }
    
    /* Name of this container specification. */
    public String name() {
        return "native_ref";
    }
    
    /* Serializes the container data, if any. */
    public void serialize(ThreadContext tc, STable st, SerializationWriter writer) {
        /* Nothing to do. */
    }
    
    /* Deserializes the container data, if any. */
    public void deserialize(ThreadContext tc, STable st, SerializationReader reader) {
        /* Nothing to do. */
    }
}
