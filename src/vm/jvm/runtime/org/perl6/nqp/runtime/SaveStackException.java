package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;

/** Thrown by dcshift operations to cause all currently executing frames to save their state. */

@SuppressWarnings("serial")
public class SaveStackException extends Exception {
    /** Topmost frame saved so far. */
    public ResumeStatus.Frame top;
    /** Tag identifying a specific instance of reset. */
    public int tag; /* make a sixmodelobject? */

    public SaveStackException(int tag) {
        this.tag = tag;
    }

    public void pushFrame(MethodHandle method, int resumePoint, Object[] saveSpace, CallFrame callFrame) {
        top = new ResumeStatus.Frame(method, resumePoint, saveSpace, callFrame, top);
    }
}
