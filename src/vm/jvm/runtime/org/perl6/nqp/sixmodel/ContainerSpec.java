package org.perl6.nqp.sixmodel;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.runtime.ExceptionHandling;

/**
 * A scalar container has a ContainerSpec hung off its STable. It should be a
 * subclass of this abstract base class.
 */
public abstract class ContainerSpec {
    /* Fetches a value out of a container. Used for decontainerization. */
    public abstract SixModelObject fetch(ThreadContext tc, SixModelObject cont);

    /* Native value fetches. */
    public abstract long fetch_i(ThreadContext tc, SixModelObject cont);
    public abstract double fetch_n(ThreadContext tc, SixModelObject cont);
    public abstract String fetch_s(ThreadContext tc, SixModelObject cont);

    /* Stores a value in a container. Used for assignment. */
    public abstract void store(ThreadContext tc, SixModelObject cont, SixModelObject obj);

    /* Native container stores. */
    public abstract void store_i(ThreadContext tc, SixModelObject cont, long value);
    public abstract void store_n(ThreadContext tc, SixModelObject cont, double value);
    public abstract void store_s(ThreadContext tc, SixModelObject cont, String value);

    /* Stores a value in a container, without any checking of it (this
     * assumes an optimizer or something else already did it). Used for
     * assignment. */
    public abstract void storeUnchecked(ThreadContext tc, SixModelObject cont, SixModelObject obj);

    /* Name of this container specification. */
    public abstract String name();

    /* Serializes the container data, if any. */
    public abstract void serialize(ThreadContext tc, STable st, SerializationWriter writer);

    /* Deserializes the container data, if any. */
    public abstract void deserialize(ThreadContext tc, STable st, SerializationReader reader);

    /* Can the container store values. Usually yes, so default to true. */
    public boolean canStore(ThreadContext tc, SixModelObject cont) {
        return true;
    }

    /* Atomic reference operations; not supported by default. */
    public SixModelObject cas(ThreadContext tc, SixModelObject cont,
                              SixModelObject expected, SixModelObject value) {
        throw ExceptionHandling.dieInternal(tc,
            "This kind of container does not support atomic compare and swap");
    }
    public SixModelObject atomic_load(ThreadContext tc, SixModelObject cont) {
        throw ExceptionHandling.dieInternal(tc,
            "This kind of container does not support atomic load");
    }
    public void atomic_store(ThreadContext tc, SixModelObject cont,
                             SixModelObject value) {
        throw ExceptionHandling.dieInternal(tc,
            "This kind of container does not support atomic store");
    }
}
