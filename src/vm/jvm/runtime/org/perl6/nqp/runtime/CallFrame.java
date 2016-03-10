package org.perl6.nqp.runtime;

import java.util.HashMap;

import org.perl6.nqp.runtime.profiler.ProfileThreadData;
import org.perl6.nqp.sixmodel.InvocationSpec;
import org.perl6.nqp.sixmodel.SerializationContext;
import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * Represents a call frame that is currently executing, and holds state
 * relating to it. Call frames are created by the callee after arguments are
 * passed in but before argument checking.
 */
public class CallFrame implements Cloneable {
    /**
     * The thread context that created this call frame.
     */
    public ThreadContext tc;
    
    /**
     * The next entry in the static (lexical) chain.
     */
    public CallFrame outer;
    
    /**
     * The next entry in the dynamic (caller) chain.
     */
    public CallFrame caller;
    
    /**
     * The code reference for this frame.
     */
    public CodeRef codeRef;
    
    /**
     * Lexical storage, by type.
     */
    public SixModelObject[] oLex;
    public long[] iLex;
    public double[] nLex;
    public String[] sLex;
    
    /**
     * Return value storage. Note that all the basic types are available and
     * the returning function picks the one it has.
     */
    public SixModelObject oRet;
    public long iRet;
    public double nRet;
    public String sRet;
    
    /**
     * Flag for what return type we have.
     */
    public byte retType;
    public static final int RET_OBJ = 0;
    public static final int RET_INT = 1;
    public static final int RET_NUM = 2;
    public static final int RET_STR = 3;
    
    /**
     * The current handler we're in, in this block. 0 if none.
     */
    public long curHandler = 0;
    
    /**
     * Current working copy of the named arguments data.
     */
    public HashMap<String, Integer> workingNameMap;
    
    /**
     * Serialization context this frame is associated with, if any.
     */
    public SerializationContext sc;
    
    /**
     * This this invocation do the initial setup of state vars?
     */
    public boolean stateInit;
    
    /**
     * Flags that this frame should leave immediately upon unwinding from the
     * current exception handler.
     */
    public boolean exitAfterUnwind;
    
    /**
     * The call site descriptor of the callsite that invoked us,
     * possibly exploded. Not set by default, only for things that
     * do custom binding and want to keep this around.
     */
    public CallSiteDescriptor csd;
    
    /**
     * The arguments passed to this call. Not set by default, only
     * for things that do custom binding and want to keep this around.
     */
    public Object[] args;
    
    // Empty constructor for things that want to fake one up.
    public CallFrame()
    {
    }
    
    // Normal constructor.
    public CallFrame(ThreadContext tc, CodeRef cr) {
        this.tc = tc;
        this.codeRef = cr;
        this.caller = tc.curFrame;
        
        // Set outer; if it's explicitly in the code ref, use that. If not,
        // go hunting for one. Fall back to outer's prior invocation.
        StaticCodeInfo sci = cr.staticInfo;
        if (cr.outer != null) {
            this.outer = cr.outer;
        }
        else {
            StaticCodeInfo wanted = sci.outerStaticInfo;
            if (wanted != null) {
                CallFrame checkFrame = tc.curFrame;
                while (checkFrame != null) {
                    if (checkFrame.codeRef.staticInfo.mh == wanted.mh &&
                            checkFrame.codeRef.staticInfo.compUnit == wanted.compUnit) {
                        this.outer = checkFrame;
                        break;
                    }
                    checkFrame = checkFrame.caller;
                }
                if (this.outer == null)
                    this.outer = wanted.priorInvocation;
                if (this.outer == null)
                    this.autoClose(wanted);
            }
        }
        
        // Set up lexical storage.
        if (sci.oLexicalNames != null) {
            int numoLex = sci.oLexStatic.length;
            this.oLex = new SixModelObject[numoLex];
            for (int i = 0; i < numoLex; i++) {
                switch (sci.oLexStaticFlags[i]) {
                case 0:
                    this.oLex[i] = sci.oLexStatic[i];
                    break;
                case 1:
                    this.oLex[i] = sci.oLexStatic[i].clone(tc);
                    break;
                case 2:
                    if (cr.oLexState == null) {
                        cr.oLexState = new SixModelObject[sci.oLexStatic.length];
                        this.stateInit = true;
                    }
                    if (cr.oLexState[i] == null)
                        this.oLex[i] = cr.oLexState[i] = sci.oLexStatic[i].clone(tc);
                    else
                        this.oLex[i] = cr.oLexState[i];
                    break;
                }
            }
        }
        if (sci.iLexicalNames != null)
            this.iLex = new long[sci.iLexicalNames.length];
        if (sci.nLexicalNames != null)
            this.nLex = new double[sci.nLexicalNames.length];
        if (sci.sLexicalNames != null)
            this.sLex = new String[sci.sLexicalNames.length];

        // Current call frame becomes this new one.
        tc.curFrame = this;

        if (tc.gc.isProfiling()) {
            ProfileThreadData.logEnter(tc, this);
        }
    }
    
    // Constructor supporting auto-close.
    private CallFrame(ThreadContext tc, StaticCodeInfo sci) {
        this.tc = tc;
        
        // Figure out a code ref.
        if (sci.staticCode instanceof CodeRef) {
            this.codeRef = (CodeRef)sci.staticCode;
        }
        else {
            InvocationSpec is = sci.staticCode.st.InvocationSpec;
            if (is == null)
                throw ExceptionHandling.dieInternal(tc, "Can not invoke this object");
            if (is.ClassHandle != null)
                this.codeRef = (CodeRef)sci.staticCode.get_attribute_boxed(tc, is.ClassHandle, is.AttrName, is.Hint);
            else
                this.codeRef = (CodeRef)is.InvocationHandler;
        }
        
        // Set outer.
        StaticCodeInfo wanted = sci.outerStaticInfo;
        if (wanted != null) {
            CallFrame checkFrame = tc.curFrame;
            while (checkFrame != null) {
                if (checkFrame.codeRef.staticInfo.mh == wanted.mh &&
                        checkFrame.codeRef.staticInfo.compUnit == wanted.compUnit) {
                    this.outer = checkFrame;
                    break;
                }
                checkFrame = checkFrame.caller;
            }
            if (this.outer == null)
                this.outer = wanted.priorInvocation;
            if (this.outer == null)
                this.autoClose(wanted);
        }
        
        // Set up lexical storage.
        if (sci.oLexicalNames != null)
            this.oLex = sci.oLexStatic.clone();
        if (sci.iLexicalNames != null)
            this.iLex = new long[sci.iLexicalNames.length];
        if (sci.nLexicalNames != null)
            this.nLex = new double[sci.nLexicalNames.length];
        if (sci.sLexicalNames != null)
            this.sLex = new String[sci.sLexicalNames.length];

        if (tc.gc.isProfiling()) {
            ProfileThreadData.logEnter(tc, this);
        }
    }
    
    public void autoClose(StaticCodeInfo wanted) {
        this.outer = new CallFrame(tc, wanted);
        wanted.priorInvocation = this.outer;
    }
    
    // Does work needed to leave this callframe.
    private static final CallSiteDescriptor exitHandlerCallSite = new CallSiteDescriptor(
        new byte[] { CallSiteDescriptor.ARG_OBJ, CallSiteDescriptor.ARG_OBJ }, null);
    public void leave() {
        if (tc.gc.isProfiling()) {
            ProfileThreadData.logLeave(tc);
        }
        StaticCodeInfo sci = this.codeRef.staticInfo;
        sci.priorInvocation = this;
        if (sci.hasExitHandler) {
            UnwindException origUnwinder = tc.unwinder;
            tc.unwinder = new UnwindException();
            HLLConfig hll = sci.compUnit.hllConfig;
            Ops.invokeDirect(tc, hll.exitHandler, exitHandlerCallSite,
                new Object[] { this.codeRef, Ops.result_o(this.caller) });
            tc.unwinder = origUnwinder;
        }
        this.tc.curFrame = this.caller;
    }

    CallFrame cloneContinuation() {
        try {
            return (CallFrame)clone();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }
}
