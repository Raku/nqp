package org.perl6.nqp.runtime;

import com.sun.jna.NativeLibrary;

import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.NativeCallInstance;
import org.perl6.nqp.sixmodel.reprs.NativeCallInstance.ArgType;

public final class NativeCallOps {
    public static long init() {
        /* Nothing to do here. The REPRs are all registered over in
         * REPRRegistry.java. */
        return 1L;
    }

    public static long build(SixModelObject target, String libname, String symbol, String convention, SixModelObject arguments, SixModelObject returns, ThreadContext tc) {
        NativeCallInstance call = getNativeCallInstance(target);

        /* Load the library and locate the symbol. */
        /* TODO: Error handling! */
        NativeLibrary library = NativeLibrary.getInstance(libname);
        call.entry_point = library.getFunction(symbol);

        /* TODO: Set the calling convention. */

        /* Set up the argument types. */
        int n = (int) arguments.elems(tc);
        call.arg_types = new ArgType[n];
        for (int i = 0; i < n; i++) {
            call.arg_types[i] = getArgType(tc, arguments.at_pos_boxed(tc, i), false);
        }

        call.ret_type = getArgType(tc, returns, true);

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

    private static ArgType getArgType(ThreadContext tc, SixModelObject info, boolean isReturn) {
        String type_name = info.at_key_boxed(tc, "type").get_str(tc);

        ArgType type = ArgType.VOID;
        try {
            type = ArgType.valueOf(ArgType.class, type_name.toUpperCase());
        }
        catch (IllegalArgumentException e) {
            ExceptionHandling.dieInternal(tc, String.format("Unknown type '%s' used for native call", type_name));
        }

        if (!isReturn && type == ArgType.VOID) {
            ExceptionHandling.dieInternal(tc, "Can only use 'void' type on native call return values");
        }

        return type;
    }
}
