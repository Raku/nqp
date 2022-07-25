package org.raku.nqp.runtime;

import java.lang.reflect.Field;
import java.util.function.Consumer;
import java.util.function.Function;
import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;
import sun.misc.Unsafe;

public class Intrinsics {
    private static Unsafe unsafe;

    protected static synchronized Unsafe getUnsafe(ThreadContext tc) {
        if (unsafe == null)
            try {
                Field theUnsafe = Unsafe.class.getDeclaredField("theUnsafe");
                theUnsafe.setAccessible(true);
                unsafe = (Unsafe) theUnsafe.get(null);
                theUnsafe.setAccessible(false); // Clean up after ourselves.
            }
            catch (Exception e) {
                throw ExceptionHandling.dieInternal(tc, e);
            }
            finally {
                return unsafe;
            }
        else
            return unsafe;
    }

    /**
     * Map given the unsafe singleton.
     */
    public static <T> T butUnsafe(ThreadContext tc, Function<Unsafe, ? extends T> f) {
        return (T) f.apply(getUnsafe(tc));
    }

    /**
     * Foreach given the unsafe singleton.
     */
    public static void itsUnsafe(ThreadContext tc, Consumer<Unsafe> f) {
        f.accept(getUnsafe(tc));
    }
}

