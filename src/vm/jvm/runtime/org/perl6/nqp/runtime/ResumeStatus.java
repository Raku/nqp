package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;

/**
 * Represents a composable continuation.
 */
public class ResumeStatus {
    /**
     * Represents one saved, not-currently-executing execution frame.
     */
    public static class Frame {
        /** Identifies the method that was executing. */
        public final MethodHandle method;
        /** Identifies the call site within the method. */
        public final int resumePoint;
        /** Local variables saved for the method. */
        public final Object[] saveSpace;
        /** If present, this frame should be set as the running frame on reentry. */
        public final CallFrame callFrame;
        /** The next deeper frame. */
        public final Frame next;

        /** Constructor which sets all fields. */
        public Frame(MethodHandle method, int resumePoint, Object[] saveSpace, CallFrame callFrame, Frame next) {
            this.method = method;
            this.resumePoint = resumePoint;
            this.saveSpace = saveSpace;
            this.callFrame = callFrame;
            this.next = next;
        }
    }

    /** The first frame of this continuation.  Subsequent frames can be accessed using {@link Frame#next}. */
    public Frame top;

    /** Builds a new continuation from the stack stored in a {@link SaveStackException}. */
    public ResumeStatus(SaveStackException ex) {
        this.top = ex.top;
    }
}
