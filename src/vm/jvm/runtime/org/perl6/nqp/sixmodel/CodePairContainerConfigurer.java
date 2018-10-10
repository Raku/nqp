package org.perl6.nqp.sixmodel;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

/**
 * A code_pair container uses a pair of methods (fetch/store) to provide the
 * container semantics.
 */
public class CodePairContainerConfigurer extends ContainerConfigurer {

    /**
     * Sets this container spec in place for the specified STable.
     * @param tc the ThreadContext placeholder.
     * @param st the specified STable.
     */
    public void setContainerSpec(ThreadContext tc, STable st) {
        st.ContainerSpec = new CodePairContainerSpec();
    }

    /**
     * Configures the container spec with the specified info.
     * @param tc the ThreadContext placeholder.
     * @param st the specified STable.
     * @param config the specified info.
     */
    public void configureContainerSpec(ThreadContext tc, STable st, SixModelObject config) {
        final CodePairContainerSpec cs = (CodePairContainerSpec)st.ContainerSpec;
        final SixModelObject fetch = config.at_key_boxed(tc, "fetch");

        if (fetch == null) {
            throw ExceptionHandling.dieInternal(tc,
                "Container spec 'code_pair' must be configured with a fetch");
        }

        final SixModelObject store = config.at_key_boxed(tc, "store");
        if (store == null) {
            throw ExceptionHandling.dieInternal(tc,
                "Container spec 'code_pair' must be configured with a store");
        }

        cs.fetchCode = fetch;
        cs.storeCode = store;
    }
}
