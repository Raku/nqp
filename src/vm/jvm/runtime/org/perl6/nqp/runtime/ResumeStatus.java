package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * Represents a composable continuation.
 */
public class ResumeStatus extends SixModelObject {
    /**
     * Represents one saved, not-currently-executing execution frame.
     */
    public static final class Frame {
        /** Identifies the method that was executing.  Signature is (ResumeStatus$Frame)Void. */
        public final MethodHandle method;
        /** Identifies the call site within the method. */
        public final int resumePoint;
        /** Local variables saved for the method. */
        public final Object[] saveSpace;
        /** If present, this frame should be set as the running frame on reentry. */
        public final CallFrame callFrame;
        /** The next deeper frame.  Don't modify after exposing to the world. */
        public Frame next;
        /** Thread context which the frame is being restored on.  Only valid during restore. */
        public transient ThreadContext tc;
        /** Set during resume to a thunk which is called once the stack is restored. */
        public transient SixModelObject thunk;


        /** Constructor which sets all fields. */
        public Frame(MethodHandle method, int resumePoint, Object[] saveSpace, CallFrame callFrame, Frame next) {
            this.method = method;
            this.resumePoint = resumePoint;
            this.saveSpace = saveSpace;
            this.callFrame = callFrame;
            this.next = next;
        }

        /** Restores a frame to the VM stack. */
        public void resume() throws Throwable {
            if (callFrame != null) {
                callFrame.tc = tc;
                callFrame.caller = tc.curFrame;
                tc.curFrame = callFrame;
            }
            this.method.invokeExact(this);
        }

        /** Restores the next frame, if any. */
        public void resumeNext() throws Throwable {
            if (next != null) {
                next.resume();
            } else {
                if (thunk != null)
                    Ops.invokeDirect(tc, thunk, Ops.emptyCallSite, false, Ops.emptyArgList);
            }
        }

        /** Restores the next frame.  If it suspends, put this frame on the new continuation. */
        public void resumeNextSave() throws Throwable {
            try {
                resumeNext();
            } catch (SaveStackException sse) {
                throw sse.pushFrame(resumePoint, method, saveSpace, callFrame);
            }
        }
    }

    /** The first frame of this continuation.  Subsequent frames can be accessed using {@link Frame#next}. */
    public Frame top;
}
