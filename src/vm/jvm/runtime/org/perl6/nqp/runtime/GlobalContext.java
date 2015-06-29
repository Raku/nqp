package org.perl6.nqp.runtime;

import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Timer;
import java.util.WeakHashMap;

import org.perl6.nqp.sixmodel.CodePairContainerConfigurer;
import org.perl6.nqp.sixmodel.ContainerConfigurer;
import org.perl6.nqp.sixmodel.KnowHOWBootstrapper;
import org.perl6.nqp.sixmodel.NativeRefContainerConfigurer;
import org.perl6.nqp.sixmodel.SerializationContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.CallCaptureInstance;

public class GlobalContext {
    /**
     * The KnowHOW.
     */
    public SixModelObject KnowHOW;
    
    /**
     * The KnowHOWAttribute.
     */
    public SixModelObject KnowHOWAttribute;
    
    /**
     * BOOTArray type; a basic, method-less type with the VMArray REPR.
     */
    public SixModelObject BOOTArray;
    
    /**
     * BOOTHash type; a basic, method-less type with the VMHash REPR.
     */
    public SixModelObject BOOTHash;
    
    /**
     * BOOTIter type; a basic, method-less type with the VMIter REPR.
     */
    public SixModelObject BOOTIter;
    
    /**
     * BOOTInt type; a basic, method-less type with the P6int REPR.
     */
    public SixModelObject BOOTInt;
    
    /**
     * BOOTNum type; a basic, method-less type with the P6num REPR.
     */
    public SixModelObject BOOTNum;
    
    /**
     * BOOTStr type; a basic, method-less type with the P6str REPR.
     */
    public SixModelObject BOOTStr;
    
    /**
     * BOOTCode type; a basic, method-less type with the CodeRef REPR.
     */
    public SixModelObject BOOTCode;
    
    /**
     * SCRef type; a basic, method-less type with the SCRef REPR.
     */
    public SixModelObject SCRef;
    
    /**
     * Continuation type; a basic, method-less type with the Continuation REPR.
     */
    public SixModelObject Continuation;

    /**
     * Lexotic type; a basic, method-less type with the Lexotic REPR.
     */
    public SixModelObject Lexotic;
    
    /**
     * ContextRef type; a basic, method-less type with the ContextRef REPR.
     */
    public SixModelObject ContextRef;
    
    /**
     * CallCapture type; a basic, method-less type with the CallContext REPR.
     */
    public SixModelObject CallCapture;
    
     /**
     * Thread type; a basic, method-less type with the Thread REPR.
     */
    public SixModelObject Thread;

    /**
     * BOOTException type; a basic, method-less type with the VMException REPR. 
     */
    public SixModelObject BOOTException;
    
    /**
     * BOOTIO type; a basic, method-less type with the IOHandle REPR.
     */
    public SixModelObject BOOTIO;

    /**
     * BOOTJava type; a basic, method-less type with the JavaWrap REPR.
     */
    public SixModelObject BOOTJava;
    
    /**
     * Typed VMArrays.
     */
    public SixModelObject BOOTIntArray;
    public SixModelObject BOOTNumArray;
    public SixModelObject BOOTStrArray;
    
    /**
     * Multi-dispatch cache type.
     */
    public SixModelObject MultiCache;
    
    /**
     * The main, startup thread's ThreadContext.
     */
    public ThreadContext mainThread;
    
    /**
     * Timer object, used by nqp::timer.
     */
    public Timer timer;

    /**
     * Active HLL configuration (maps HLL name to the configuration).
     */
    private HashMap<String, HLLConfig> hllConfiguration;
    
    /**
     * HLL configuration of the compiler. We need to distinguish it from
     * the HLL configuration of the code being compiled in bootstrap.
     */
    private HashMap<String, HLLConfig> compilerHLLConfiguration;
    
    /**
     * HLL configuration of the compilee (see above).
     */
    private HashMap<String, HLLConfig> compileeHLLConfiguration;
    
    /**
     * HLL global symbols.
     */
    public HashMap<String, HashMap<String, SixModelObject>> hllSyms;
    
    /**
     * Compiler registry.
     */
    public HashMap<String, SixModelObject> compilerRegistry;
    
    /**
     * Container configurer registry.
     */
    public HashMap<String, ContainerConfigurer> contConfigs;
    
    /**
     * Serialization context lookup hash.
     */
    public HashMap<String, SerializationContext> scs;
    
    /**
     * Serialization context wrapper object hash.
     */
    public HashMap<String, SixModelObject> scRefs;

    /**
     * Set of library filenames which have been loaded so far.
     */
    public HashSet<String> loaded;

    /**
     * Whether to dump VM-level stack traces for all exceptions.
     */
    public boolean noisyExceptions;

    /**
     * The global ByteClassLoader instance, used to load classes generated at
     * runtime.
     */
    public ByteClassLoader byteClassLoader;

    /** Redirected output for eval-server. */
    public PrintStream out;
    /** Redirected error for eval-server. */
    public PrintStream err;
    /** Redirected input for eval-server. */
    public InputStream in = System.in;
    /** Whether to disallow exit. */
    public boolean interceptExit;
    /** If true, we're killing all threads, so disable exception handling. */
    public volatile boolean shuttingDown;
    /** Exit status or -1. */
    public int exitStatus = -1;

    // odds and ends nqp wants
    int compileeDepth;

    /** If true, libraries will be loaded in shared mode by default. */
    public boolean sharingHint;
    /** Interop object used for jvmbootinterop. */
    public BootJavaInterop bootInterop;

    HashMap<ContextKey<?,?>,Object> hllGlobalAll;
    Object hllGlobalAllLock;

    ThreadLocal<WeakReference<ThreadContext>> currentThreadCtxRef;
    WeakHashMap<Thread, ThreadContext> allThreads;

    /** Objects we will never repossess. */
    public WeakHashMap<SixModelObject, Object> neverRepossess;

    /**
     * Initializes the runtime environment.
     */
    public GlobalContext()
    {
        try {
            out = new PrintStream(System.out, true, "UTF-8");
            err = new PrintStream(System.err, true, "UTF-8");
        }
        catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }

        compileeHLLConfiguration = new HashMap<String, HLLConfig>();
        hllConfiguration = compileeHLLConfiguration;
        getHLLConfigFor("");
        compilerHLLConfiguration = new HashMap<String, HLLConfig>();
        hllConfiguration = compilerHLLConfiguration;
        getHLLConfigFor("");
        
        scs = new HashMap<String, SerializationContext>();
        scRefs = new HashMap<String, SixModelObject>();
        compilerRegistry = new HashMap<String, SixModelObject>();
        hllSyms = new HashMap<String, HashMap<String, SixModelObject>>();
        loaded = new HashSet<String>();
        
        contConfigs = new HashMap<String, ContainerConfigurer>();
        contConfigs.put("code_pair", new CodePairContainerConfigurer());
        contConfigs.put("native_ref", new NativeRefContainerConfigurer());
        
        currentThreadCtxRef = new ThreadLocal< >();
        allThreads = new WeakHashMap< >();

        mainThread = getCurrentThreadContext();
        timer = new Timer(true);
        KnowHOWBootstrapper.bootstrap(mainThread);
        bootInterop = new BootJavaInterop(this);
        
        // BOOT* not available earlier; fixup some stuff.
        setupConfig(compileeHLLConfiguration.get(""));
        setupConfig(compilerHLLConfiguration.get(""));
        mainThread.savedCC = (CallCaptureInstance)CallCapture.st.REPR.allocate(mainThread, CallCapture.st);
        noisyExceptions = System.getenv("NQP_VERBOSE_EXCEPTIONS") != null;

        hllGlobalAll = new HashMap<ContextKey<?,?>, Object>();
        hllGlobalAllLock = new Object();

        neverRepossess = new WeakHashMap<SixModelObject, Object>();

        byteClassLoader = new ByteClassLoader(GlobalContext.class.getClassLoader());
    }
    
    /**
     * Gets HLL configuration object for the specified language.
     */
    public HLLConfig getHLLConfigFor(String language) {
        synchronized (hllConfiguration) {
            HLLConfig config = hllConfiguration.get(language);
            if (config == null) {
                config = new HLLConfig();
                config.name = language;
                setupConfig(config);
                hllConfiguration.put(language, config);
            }
            return config;
        }
    }

    private void setupConfig(HLLConfig config) {
        config.intBoxType = BOOTInt;
        config.numBoxType = BOOTNum;
        config.strBoxType = BOOTStr;
        config.listType = BOOTArray;
        config.hashType = BOOTHash;
        config.slurpyArrayType = BOOTArray;
        config.slurpyHashType = BOOTHash;
        config.arrayIteratorType = BOOTIter;
        config.hashIteratorType = BOOTIter;
        config.exceptionType = BOOTException;
        config.ioType = BOOTIO;
    }

    public void useCompileeHLLConfig() {
        this.hllConfiguration = this.compileeHLLConfiguration;
    }

    public void useCompilerHLLConfig() {
        this.hllConfiguration = this.compilerHLLConfiguration;
    }

    public void exit(int status) {
        if (!interceptExit) System.exit(status);

        if (exitStatus < 0) exitStatus = status;
        shuttingDown = true;
        throw new ThreadDeath();
    }

    /** Gets the context object for the current thread, creating one if needed. */
    public ThreadContext getCurrentThreadContext() {
        // The implementation here is complicated by GC concerns.  A simple
        // ThreadLocal<ThreadContext> would, with the current (1.7)
        // implementation of ThreadLocal, indefinitely retain a strong
        // reference to the ThreadContext - and anything that can leak
        // references that retain a GlobalContext is potentially very bad.
        // OTOH, we do want to reuse threadcontexts (they include important
        // states like srand seeds), so we can't have them garbage collected at
        // random just because no NQP code is running.

        // Note that this implementation *does* retain strong references from
        // the GlobalContext to the ThreadContext longer than strictly
        // necessary.  This is judged to be a minor issue, because
        // ThreadContexts retain much less than the full GlobalContext.

        WeakReference<ThreadContext> tcRef = currentThreadCtxRef.get();

        // the ref cannot be cleared while the thread is alive because the object
        // is retained by the allThreads map
        if (tcRef != null) return tcRef.get();

        ThreadContext tc = new ThreadContext(this);
        synchronized(this) { allThreads.put(java.lang.Thread.currentThread(), tc); }
        currentThreadCtxRef.set(new WeakReference< >(tc));
        return tc;
    }
}
