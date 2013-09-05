package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.SixModelObject;

public final class NativeCallOps {
    public static long init() {
        /* Nothing to do here. The REPRs are all registered over in
         * REPRRegistry.java. */
        return 1L;
    }

    public static long build() {
        return 1L;
    }

    public static SixModelObject call() {
        return null;
    }
}
