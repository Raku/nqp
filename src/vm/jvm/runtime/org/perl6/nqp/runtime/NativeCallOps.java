package org.perl6.nqp.runtime;

import com.sun.jna.NativeLibrary;

import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.NativeCallInstance;

public final class NativeCallOps {
    public static long init() {
        /* Nothing to do here. The REPRs are all registered over in
         * REPRRegistry.java. */
        return 1L;
    }

    public static long build(SixModelObject target, String libname, String symbol, String convention, SixModelObject arguments, SixModelObject returns) {
        NativeCallInstance call = getNativeCallInstance(target);

        /* Load the library and locate the symbol. */
        /* TODO: Error handling! */
        NativeLibrary library = NativeLibrary.getInstance(libname);
        call.entry_point = library.getFunction(symbol);

        /* TODO: Set the calling convention. */

        /* Set up the argument types. */

        return 1L;
    }

    public static SixModelObject call(SixModelObject returns, SixModelObject call, SixModelObject arguments) {
        return null;
    }

    private static NativeCallInstance getNativeCallInstance(SixModelObject target) {
        NativeCallInstance call;
        if (target instanceof NativeCallInstance) {
            call = (NativeCallInstance) target;
        }
        else {
            /* TODO: Handle box target stuff here. */
            call = null;
        }
        return call;
    }
}
