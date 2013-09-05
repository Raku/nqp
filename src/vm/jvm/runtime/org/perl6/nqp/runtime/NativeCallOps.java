package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.SixModelObject;

public final class NativeCallOps {
    public static long init() {
        /* Nothing to do here. The REPRs are all registered over in
         * REPRRegistry.java. */
        return 1L;
    }

    public static long build(SixModelObject target, String libname, String symbol, String convention, SixModelObject arguments, SixModelObject returns) {
        return 1L;
    }

    public static SixModelObject call(SixModelObject returns, SixModelObject call, SixModelObject arguments) {
        return null;
    }
}
