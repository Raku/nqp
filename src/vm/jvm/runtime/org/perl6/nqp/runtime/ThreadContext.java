package org.perl6.nqp.runtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import org.perl6.nqp.sixmodel.reprs.CallCaptureInstance;
import org.perl6.nqp.sixmodel.reprs.SCRefInstance;
import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * State of a currently running thread.
 */
public class ThreadContext {
    /**
     * The global context for the NQP runtime support.
     */
    public GlobalContext gc;
    
    /**
     * The current call frame.
     */
    public CallFrame curFrame;
    
    /**
     * When we wish to access optional parameters, we need to convey
     * if there was a value as well as to supply it. However, the JVM
     * gives no good way to do that (no ref parameters, for example)
     * short of allocating an object, which is overkill. So we use
     * this field to convey if the last optional parameter fetched is
     * valid or not. 
     */
    public int lastParameterExisted;
    
    /**
     * Holds just-processed args in the case we have a flattening. 
     */
    public Object[] flatArgs;
    
    /**
     * When we wish to look up or bind native or inlined things in an
     * object, we need a way to pass around some native value. The
     * following set of slots, along with a flag indicating value
     * type, provide a way to do that.
     */
    public long native_i;
    public double native_n;
    public String native_s;
    public Object native_j;
    public int native_type;
    public static final int NATIVE_INT = 1;
    public static final int NATIVE_NUM = 2;
    public static final int NATIVE_STR = 3;
    public static final int NATIVE_JVM_OBJ = 4;
    
    /**
     * The current unwind exception.
     */
    public UnwindException unwinder;
    
    /**
     * Stack of handlers we're currently in.
     */
    public ArrayList<HandlerInfo> handlers;
    
    /**
     * The current lexotic we're throwing.
     */
    public LexoticException theLexotic;
    
    /**
     * The currently saved capture for custom processing.
     */
    public CallCaptureInstance savedCC;
    
    /**
     * The currently set dispatcher, for the next interested call to take.
     */
    public SixModelObject currentDispatcher;
    
    /**
     * Serialization context write barrier disabled depth (anything non-zero
     * means disabled).
     */
    public int scwbDisableDepth;
    
    /**
     * Any serialization contexts we are compiling; null if none.
     */
    public ArrayList<SCRefInstance> compilingSCs;

    /**
     * A dummy frame into which return values are set when there is no real caller.
     */
    public CallFrame dummyCaller;

    Object hllThreadData;
    ContextKey<?,?> hllThreadKey;
    HashMap<ContextKey<?,?>, Object> hllThreadAll;

    Object hllGlobalData;
    ContextKey<?,?> hllGlobalKey;
    HashMap<ContextKey<?,?>, Object> hllGlobalAllCache;

    Random random;

    // odds and ends for nqp
    ArrayList<Integer> fates = new ArrayList<Integer>(), curst = new ArrayList<Integer>(), nextst = new ArrayList<Integer>();

    public ThreadContext(GlobalContext gc) {
        this.gc = gc;
        this.theLexotic = new LexoticException();
        this.unwinder = new UnwindException();
        this.handlers = new ArrayList<HandlerInfo>();
        this.hllThreadAll = new HashMap<ContextKey<?,?>, Object>();
        this.hllGlobalAllCache = new HashMap<ContextKey<?,?>, Object>();
        this.random = new Random();
        if (gc.CallCapture != null) {
            savedCC = (CallCaptureInstance)gc.CallCapture.st.REPR.allocate(this, gc.CallCapture.st);
        }
        this.dummyCaller = new CallFrame();
    }

    public CallFrame resultFrame() {
        return curFrame != null ? curFrame : dummyCaller;
    }
}
