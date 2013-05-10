package org.perl6.nqp.sixmodel;

import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;

/**
 * A code_pair container uses a pair of methods (fetch/store) to provide the
 * container semantics.
 */
public class CodePairContainerSpec extends ContainerSpec {
    public SixModelObject fetchCode;
    public SixModelObject storeCode;
    
    /* Fetches a value out of a container. Used for decontainerization. */
    public SixModelObject fetch(ThreadContext tc, SixModelObject cont) {
        Ops.invokeDirect(tc, fetchCode, Ops.invocantCallSite, new Object[] { cont });
        return Ops.result_o(tc.curFrame);
    }
    
    /* Stores a value in a container. Used for assignment. */
    public void store(ThreadContext tc, SixModelObject cont, SixModelObject obj) {
        Ops.invokeDirect(tc, storeCode, Ops.storeCallSite, new Object[] { cont, obj });
    }
    
    /* Stores a value in a container, without any checking of it (this
     * assumes an optimizer or something else already did it). Used for
     * assignment. */
    public void storeUnchecked(ThreadContext tc, SixModelObject cont, SixModelObject obj) {
        store(tc, cont, obj);
    }
    
    /* Name of this container specification. */
    public String name() {
        return "code_pair";
    }
    
    /* Serializes the container data, if any. */
    public void serialize(ThreadContext tc, STable st, SerializationWriter writer) {
        writer.writeRef(fetchCode);
        writer.writeRef(storeCode);
    }
    
    /* Deserializes the container data, if any. */
    public void deserialize(ThreadContext tc, STable st, SerializationReader reader) {
        fetchCode = reader.readRef();
        storeCode = reader.readRef();
    }
}
