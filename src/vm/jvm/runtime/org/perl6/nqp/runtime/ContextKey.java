package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;

/**
 * Provides a simple way for HLL authors to hang data off of ThreadContext and GlobalContext.  The implementation uses a monomorphic thread-local cache for speed when a single HLL is running most of the time.
 */
public class ContextKey<T,G> {
    Class<T> tclass;
    Class<G> gclass;
    MethodHandle tcon;
    MethodHandle gcon;

    /**
     * Allocates a new key for an HLL to store a thread object of type T and a global object of type G.  T and G must have constructors that take a single ThreadContext argument; they will be called as needed to initialize.
     */
    public ContextKey(Class<T> tclass, Class<G> gclass) {
        this.tclass = tclass;
        this.gclass = gclass;

        MethodType typ = MethodType.methodType(void.class, ThreadContext.class);
        try {
            tcon = MethodHandles.publicLookup().findConstructor(tclass, typ);
            gcon = MethodHandles.publicLookup().findConstructor(gclass, typ);
        } catch (Exception ex) {
            throw new RuntimeException("Required constructors not found for ContextKey", ex);
        }
    }

    /** Gets the thread context extension, creating it if needed. */
    @SuppressWarnings("unchecked")
    public T getTC(ThreadContext tc) {
        if (tc.hllThreadKey == this)
            return (T) tc.hllThreadData;
        return (T) getTCHeavy(tc);
    }

    private Object getTCHeavy(ThreadContext tc) {
        Object t = tc.hllThreadAll.get(this);

        if (t == null) {
            try {
                t = tcon.invoke(tc);
            } catch (Throwable ex) {
                throw new RuntimeException(ex);
            }
            tc.hllThreadAll.put(this, t);
        }

        tc.hllThreadKey = this;
        tc.hllThreadData = t;

        return t;
    }


    /** Gets the global context extension, creating it if needed. */
    @SuppressWarnings("unchecked")
    public G getGC(ThreadContext tc) {
        if (tc.hllGlobalKey == this)
            return (G) tc.hllGlobalData;
        return (G) getGCHeavy(tc);
    }

    private Object getGCHeavy(ThreadContext tc) {
        Object g = tc.hllGlobalAllCache.get(this);

        if (g == null) {
            synchronized (tc.gc.hllGlobalAllLock) {
                g = tc.gc.hllGlobalAll.get(this);

                if (g == null) {
                    try {
                        g = gcon.invoke(tc);
                    } catch (Throwable ex) {
                        throw new RuntimeException(ex);
                    }
                    tc.gc.hllGlobalAll.put(this, g);
                }
            }

            tc.hllGlobalAllCache.put(this, g);
        }

        tc.hllGlobalKey = this;
        tc.hllGlobalData = g;

        return g;
    }
}
