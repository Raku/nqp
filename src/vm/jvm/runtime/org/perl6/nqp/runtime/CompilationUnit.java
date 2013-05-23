package org.perl6.nqp.runtime;

import java.lang.annotation.*;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodHandles.Lookup;
import java.lang.reflect.Method;
import java.util.ArrayList;
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
        /* Look through methods for code refs. */
        STable BOOTCodeSTable = tc.gc.BOOTCode == null ? null : tc.gc.BOOTCode.st;
        ArrayList<CodeRef> codeRefList = new ArrayList<CodeRef>();
        ArrayList<String> outerCuid = new ArrayList<String>();
        Lookup l = MethodHandles.lookup();
        boolean codeRefsFound = false;
        try {
            for (Method m : this.getClass().getDeclaredMethods()) {
                if (m.isAnnotationPresent(CodeRefAnnotation.class)) {
                    /* Got a code ref annotation. Turn to method handle. */
                    CodeRefAnnotation cra = m.getAnnotation(CodeRefAnnotation.class);
                    MethodHandle mh = l.unreflect(m).bindTo(this);
                    
                    /* Munge handlers. */
                    long[] flatHandlers = cra.handlers();
                    int hptr = 0;
                    int numHandlers = (int)flatHandlers[hptr++];
                    long[][] handlers = new long[numHandlers][];
                    for (int i = 0; i < numHandlers; i++) {
                        int handlerThings = (int)flatHandlers[hptr++];
                        handlers[i] = new long[handlerThings];
                        for (int j = 0; j < handlerThings; j++)
                            handlers[i][j] = flatHandlers[hptr++];
                    }
                    
                    /* Create and store. */
                    String cuid = cra.cuid();
                    CodeRef cr = new CodeRef(this, mh, cra.name(), cuid,
                        cra.oLexicalNames(), cra.iLexicalNames(),
                        cra.nLexicalNames(), cra.sLexicalNames(),
                        handlers);
                    cr.st = BOOTCodeSTable;
                    codeRefList.add(cr);
                    cuidToCodeRef.put(cuid, cr);
                    
                    /* Stash outer, for later resolution. */
                    outerCuid.add(cra.outerCuid());
                    
                    codeRefsFound = true;
                }
            }
            
            /* Resolve outers. */
            codeRefs = codeRefList.toArray(new CodeRef[0]);
            for (int i = 0; i < codeRefs.length; i++) {
                CodeRef outer = cuidToCodeRef.get(outerCuid.get(i));
                if (outer != null)
                    codeRefs[i].staticInfo.outerStaticInfo = outer.staticInfo;
            }
        }
        catch (Throwable e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        
        /* If we didn't find any by annotations, this is the fallback. */
        if (!codeRefsFound) {
            codeRefs = getCodeRefs();
            for (CodeRef c : codeRefs) {
                c.st = BOOTCodeSTable;
                cuidToCodeRef.put(c.staticInfo.uniqueId, c);
            }
        }
        
        /* Build callsite descriptors. */
        callSites = getCallSites();
        
        /* Get HLL configuration object. */
        hllConfig = tc.gc.getHLLConfigFor(this.hllName());
        
        /* Run any deserialization code. */
        CodeRef desCodeRef = null;
        String desCuid = deserializeCuid();
        if (desCuid != null)
            desCodeRef = lookupCodeRef(desCuid);
        if (desCodeRef != null)
            try {
                Ops.invokeArgless(tc, desCodeRef);
            }
            catch (ControlException e) {
                throw e;
            }
            catch (Exception e) {
                throw ExceptionHandling.dieInternal(tc, e.toString());
            }
    }
    
    /**
     * Runs code in the on-load hook, if one is available.
     */
    public void runLoadIfAvailable(ThreadContext tc) {
        CodeRef loadCodeRef = null;
        String loadCuid = loadCuid();
        if (loadCuid != null)
            loadCodeRef = lookupCodeRef(loadCuid);
        if (loadCodeRef != null)
            try {
                Ops.invokeArgless(tc, loadCodeRef);
            }
            catch (Exception e)
            {
                throw ExceptionHandling.dieInternal(tc, e.toString());
            }
    }
    
    /**
     * Turns a compilation unit unique ID into the matching code-ref.
     */
    public CodeRef lookupCodeRef(String uniqueId) {
        return cuidToCodeRef.get(uniqueId);
    }
    
    /**
     * Parses a bunch of info on static lexical values for a block and
     * installs each of them. TODO: lazify so we don't do it for blocks we
     * never execute.
     */
     public void setLexValues(ThreadContext tc, String uniqueId, String toParse) {
        CodeRef cr = cuidToCodeRef.get(uniqueId);
        String[] bits = toParse.split("\\x00");
        for (int i = 0; i < bits.length; i += 4) {
            String lexName = bits[i];
            String handle  = bits[i + 1];
            int    scIdx   = Integer.parseInt(bits[i + 2]);
            int    flags   = Integer.parseInt(bits[i + 3]);
            Integer idx = cr.staticInfo.oTryGetLexicalIdx(lexName);
            if (idx == null)
                new RuntimeException("Invalid lexical name '" + lexName + "' in static lexical installation");
            cr.staticInfo.oLexStatic[idx] = tc.gc.scs.get(handle).root_objects.get(scIdx);
            cr.staticInfo.oLexStaticFlags[idx] = (byte)flags;
        }
     }
    
    /**
     * Code generation emits this to build up the various CodeRef related
     * data structures.
     */
    public CodeRef[] getCodeRefs() { return null; }
    
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
    public String deserializeCuid() {
        return null;
    }
    
    /**
     * Code generation overrides this if there's an SC to deserialize.
     */
    public String loadCuid() {
        return null;
    }
    
    /**
     * Code generation overrides this with the mainline blcok.
     */
    public String mainlineCuid() {
        return null;
    }
}
