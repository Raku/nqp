package org.raku.nqp.runtime;

/** Throw this to propagate a specific Java exception into Javaland. */
public class JavaCallinException extends ControlException {
    public JavaCallinException(Throwable raw) { initCause(raw); }
}
