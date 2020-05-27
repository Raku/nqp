package org.raku.nqp.sixmodel;

import org.raku.nqp.runtime.ThreadContext;

/**
 * A native_ref container spec is for use with the NativeRef REPR, and makes
 * the references decontainerizable and assignable.
 */
public class NativeRefContainerConfigurer extends ContainerConfigurer {
    /* Sets this container spec in place for the specified STable. */
    @Override
    public void setContainerSpec(ThreadContext tc, STable st) {
        st.ContainerSpec = new NativeRefContainerSpec();
    }

    /* Configures the container spec with the specified info. */
    @Override
    public void configureContainerSpec(ThreadContext tc, STable st, SixModelObject config) {
        /* Nothing to configure here. */
    }
}
