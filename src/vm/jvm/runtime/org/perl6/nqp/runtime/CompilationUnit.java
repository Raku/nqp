package org.perl6.nqp.runtime;

import java.util.HashMap;
import java.util.Map;

import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * All compilation units inherit from this class. A compilation unit contains
 * code generated from a single QAST::CompUnit, with each QAST::Block turning
 * into a method in the compilation unit.
 */
public abstract class CompilationUnit {
    /**
     * Mapping of compilation unit unqiue IDs to matching code reference.
     */
    private Map<String, CodeRef> cuidToCodeRef = new HashMap<String, CodeRef>(); 
    
    /**
     * Array of all code references.
     */
    public CodeRef[] codeRefs;
    
    /**
     * Call site descriptors used in this compilation unit.
     */
    public CallSiteDescriptor[] callSites;
    
    /**
     * HLL configuration for this compilation unit.
     */
    public HLLConfig hllConfig;
    
    /**
     * When a compilation unit is serving as the main entry point, its main
     * method will just delegate to here. Thus this needs to trigger some
     * initialization work and then invoke the required main code.
     */
    public static void enterFromMain(Class<?> cuType, int entryCodeRefIdx, String[] argv)
            throws Exception {
        ThreadContext tc = (new GlobalContext()).mainThread;
        CompilationUnit cu = setupCompilationUnit(tc, cuType);
        Ops.invokeMain(tc, cu.codeRefs[entryCodeRefIdx], cuType.getName(), argv);
    }
    
    /**
     * Takes the class object for some compilation unit and sets it up. 
     */
    public static CompilationUnit setupCompilationUnit(ThreadContext tc, Class<?> cuType)
            throws InstantiationException, IllegalAccessException {
        CompilationUnit cu = (CompilationUnit)cuType.newInstance();
        cu.initializeCompilationUnit(tc);
        return cu;
    }
    
    /**
     * Does initialization work for the compilation unit.
     */
    public void initializeCompilationUnit(ThreadContext tc) {
        /* Place code references into a lookup table by unique ID. Also
         * make sure each code ref has the appropriate STable. */
        STable BOOTCodeSTable = tc.gc.BOOTCode == null ? null : tc.gc.BOOTCode.st;
    	codeRefs = getCodeRefs();
        for (CodeRef c : codeRefs) {
            c.st = BOOTCodeSTable;
        	cuidToCodeRef.put(c.staticInfo.uniqueId, c);
        }
        
        /* Wire up outer relationships. */
        int[] outerMap = getOuterMap();
        for (int i = 0; i < outerMap.length; i += 2)
            codeRefs[outerMap[i]].staticInfo.outerStaticInfo = 
                codeRefs[outerMap[i + 1]].staticInfo; 
        
        /* Build callsite descriptors. */
        callSites = getCallSites();
        
        /* Get HLL configuration object. */
        hllConfig = tc.gc.getHLLConfigFor(this.hllName());
        
        /* Run any deserialization code. */
        int dIdx = deserializeIdx();
        if (dIdx >= 0)
        	try {
        		Ops.invokeArgless(tc, codeRefs[dIdx]);
        	}
        	catch (Exception e)
        	{
        		throw ExceptionHandling.dieInternal(tc, e.getMessage());
        	}
    }
    
    /**
     * Runs code in the on-load hook, if one is available.
     */
    public void runLoadIfAvailable(ThreadContext tc) {
    	int lIdx = loadIdx();
        if (lIdx >= 0)
        	try {
        		Ops.invokeArgless(tc, codeRefs[lIdx]);
        	}
        	catch (Exception e)
        	{
        		throw ExceptionHandling.dieInternal(tc, e.getMessage());
        	}
    }
    
    /**
     * Turns a compilation unit unique ID into the matching code-ref.
     */
    public CodeRef lookupCodeRef(String uniqueId) {
        return cuidToCodeRef.get(uniqueId);
    }
    
    /**
     * Installs a static lexical value.
     */
    public SixModelObject setStaticLex(SixModelObject value, String name, String uniqueId) {
    	CodeRef cr = cuidToCodeRef.get(uniqueId);
    	Integer idx = cr.staticInfo.oTryGetLexicalIdx(name);
    	if (idx == null)
    		new RuntimeException("Invalid lexical name '" + name + "' in static lexical installation");
    	cr.staticInfo.oLexStatic[idx] = value;
    	return value;
    }
    
    /**
     * Code generation emits this to build up the various CodeRef related
     * data structures.
     */
    public abstract CodeRef[] getCodeRefs();
    
    /**
     * Code generation emits this to describe outer relationships between
     * the static code references.
     */
    public abstract int[] getOuterMap();
    
    /**
     * Code generation emits this to build up all the callsite descriptors
     * that are used by this compilation unit.
     */
    public abstract CallSiteDescriptor[] getCallSites();
    
    /**
     * Code generation emits this to supply the HLL name from QAST::CompUnit.
     */
    public abstract String hllName();
    
    /**
     * Code generation overrides this if there's an SC to deserialize.
     */
    public int deserializeIdx() {
    	return -1;
    }
    
    /**
     * Code generation overrides this if there's an SC to deserialize.
     */
    public int loadIdx() {
    	return -1;
    }
    
    /**
     * Code generation overrides this with the mainline blcok.
     */
    public int mainlineIdx() {
    	return -1;
    }
}
