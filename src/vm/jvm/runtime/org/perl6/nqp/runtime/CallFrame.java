package org.perl6.nqp.runtime;

import java.util.HashMap;

import org.perl6.nqp.sixmodel.SerializationContext;
import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * Represents a call frame that is to be or is currently executing, and holds
 * state relating to it. Call frames are created by the caller and arguments
 * placed into them. The rest is filled out when the invocation is made.
 */
public class CallFrame {
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
                    throw ExceptionHandling.dieInternal(tc, "Could not locate an outer for code reference " +
                        cr.staticInfo.uniqueId);
            }
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

        // Current call frame becomes this new one.
        tc.curFrame = this;
    }
    
    // Does work needed to leave this callframe.
    public void leave() {
    	this.codeRef.staticInfo.priorInvocation = this;
    	this.tc.curFrame = this.caller;
    }
}
