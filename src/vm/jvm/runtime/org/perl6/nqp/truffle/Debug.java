package org.perl6.nqp.truffle;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
public class Debug {
    @TruffleBoundary
    public static RuntimeException wrongThing(String msg, Object value) {
        return new RuntimeException(msg + ": "  + value.getClass().getCanonicalName());
    }
}
