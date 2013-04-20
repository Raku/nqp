package org.perl6.nqp.runtime;

import java.util.HashMap;

import org.perl6.nqp.sixmodel.KnowHOWBootstrapper;
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
     * ContextRef type; a basic, method-less type with the ContextRef REPR.
     */
    public SixModelObject ContextRef;
    
    /**
     * CallCapture type; a basic, method-less type with the CallContext REPR.
     */
    public SixModelObject CallCapture;
    
    /**
     * BOOTException type; a basic, method-less type with the VMException REPR. 
     */
    public SixModelObject BOOTException;
    
    /**
     * BOOTIO type; a basic, method-less type with the IOHandle REPR.
     */
    public SixModelObject BOOTIO;
    
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
     * Serialization context lookup hash.
     */
    public HashMap<String, SerializationContext> scs;
    
    /**
     * Serialization context wrapper object hash.
     */
    public HashMap<String, SixModelObject> scRefs;
    
    /**
     * Initializes the runtime environment.
     */
    public GlobalContext()
    {
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
        
        mainThread = new ThreadContext(this);
        KnowHOWBootstrapper.bootstrap(mainThread);
        
        // BOOT* not available earlier; fixup some stuff.
        setupConfig(compileeHLLConfiguration.get(""));
        setupConfig(compilerHLLConfiguration.get(""));
        mainThread.savedCC = (CallCaptureInstance)CallCapture.st.REPR.allocate(mainThread, CallCapture.st);
        mainThread.savedCC.initialize(mainThread);
    }
    
    /**
     * Gets HLL configuration object for the specified language.
     */
    public HLLConfig getHLLConfigFor(String language) {
        synchronized (hllConfiguration) {
            HLLConfig config = hllConfiguration.get(language);
            if (config == null) {
                config = new HLLConfig();
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
}
