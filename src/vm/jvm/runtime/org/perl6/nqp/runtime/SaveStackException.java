package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import org.perl6.nqp.sixmodel.SixModelObject;

/** Thrown by dcshift operations to cause all currently executing frames to save their state. */

@SuppressWarnings("serial")
public class SaveStackException extends ControlException {
    /** Topmost frame saved so far. */
    public ResumeStatus.Frame top;
    /** Tag identifying a specific instance of reset. */
    public SixModelObject key;
    /** If true, the reset should reinstate itself while running the handler. */
    public boolean protect;
    /** Handler function passed to control. */
    public SixModelObject handler;

    public SaveStackException(SixModelObject key, boolean protect, SixModelObject handler) {
        this.key = key;
        this.protect = protect;
        this.handler = handler;
    }

    public SaveStackException pushFrame(int resumePoint, MethodHandle method, Object[] saveSpace, CallFrame callFrame) {
        if (method == null) method = callFrame.codeRef.staticInfo.mhResume;
        top = new ResumeStatus.Frame(method, resumePoint, saveSpace, callFrame, top);
        if (callFrame != null) callFrame.tc.curFrame = callFrame.caller;
        return this;
    }
}
