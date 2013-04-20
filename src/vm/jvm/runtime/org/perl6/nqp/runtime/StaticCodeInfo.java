package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import java.util.HashMap;

import org.perl6.nqp.sixmodel.SixModelObject;

public class StaticCodeInfo implements Cloneable {
    /**
     * The compilation unit where the code lives.
     */
    public CompilationUnit compUnit;
    
    /**
     * Method handle for the code ref.
     */
    MethodHandle mh;
    
    /**
     * The (human-readable) name of the code-ref.
     */
    public String name;
    
    /**
     * The compilation-unit unique ID of the routine (from QAST cuuid).
     */
    public String uniqueId;
    
    /**
     * Static outer.
     */
    public StaticCodeInfo outerStaticInfo;
    
    /**
     * Most recent invocation, if any.
     */
    public CallFrame priorInvocation;

    /**
     * Static lexicals.
     */
    public SixModelObject[] oLexStatic;
    
    /**
     * Names of the lexicals we have of each of the base types.
     */
    public String[] oLexicalNames;
    public String[] iLexicalNames;
    public String[] nLexicalNames;
    public String[] sLexicalNames;
    
    /**
     * Map of handlers.
     */
    public long[][] handlers;
    
    /**
     * Static code object (base of any clones).
     */
    public SixModelObject staticCode;
    
    /**
     * Lexical name maps (produced lazily on first use). Note they are only
     * used when we do lexical lookup by name.
     */
    public HashMap<String, Integer> oLexicalMap;
    public HashMap<String, Integer> iLexicalMap;
    public HashMap<String, Integer> nLexicalMap;
    public HashMap<String, Integer> sLexicalMap;
    
    public Integer oTryGetLexicalIdx(String name) {
        if (oLexicalMap == null) {
            HashMap<String, Integer> map = new HashMap<String, Integer>();
            if (oLexicalNames != null)
                for (int i = 0; i < oLexicalNames.length; i++)
                    map.put(oLexicalNames[i], i);
            oLexicalMap = map;
        }
        return oLexicalMap.get(name);
    }
    
    public Integer iTryGetLexicalIdx(String name) {
        if (iLexicalMap == null) {
            HashMap<String, Integer> map = new HashMap<String, Integer>();
            if (iLexicalNames != null)
                for (int i = 0; i < iLexicalNames.length; i++)
                    map.put(iLexicalNames[i], i);
            iLexicalMap = map;
        }
        return iLexicalMap.get(name);
    }
    
    public Integer nTryGetLexicalIdx(String name) {
        if (nLexicalMap == null) {
            HashMap<String, Integer> map = new HashMap<String, Integer>();
            if (nLexicalNames != null)
                for (int i = 0; i < nLexicalNames.length; i++)
                    map.put(nLexicalNames[i], i);
            nLexicalMap = map;
        }
        return nLexicalMap.get(name);
    }
    
    public Integer sTryGetLexicalIdx(String name) {
        if (sLexicalMap == null) {
            HashMap<String, Integer> map = new HashMap<String, Integer>();
            if (sLexicalNames != null)
                for (int i = 0; i < sLexicalNames.length; i++)
                    map.put(sLexicalNames[i], i);
            sLexicalMap = map;
        }
        return sLexicalMap.get(name);
    }
    
    /**
     * Initializes the static code info data structure.
     */
    public StaticCodeInfo(CompilationUnit compUnit, MethodHandle mh,
    		String name, String uniqueId,
            String[] oLexicalNames, String[] iLexicalNames,
            String[] nLexicalNames, String[] sLexicalNames,
            long[][] handlers, SixModelObject staticCode) {
        this.compUnit = compUnit;
        this.mh = mh;
        this.name = name;
        this.uniqueId = uniqueId;
        this.oLexicalNames = oLexicalNames;
        this.iLexicalNames = iLexicalNames;
        this.nLexicalNames = nLexicalNames;
        this.sLexicalNames = sLexicalNames;
        this.handlers = handlers;
        this.staticCode = staticCode;
        if (oLexicalNames != null)
        	this.oLexStatic = new SixModelObject[oLexicalNames.length];
    }
    
    public StaticCodeInfo clone() {
    	try {
    		StaticCodeInfo result = (StaticCodeInfo)super.clone();
    		if (result.oLexStatic != null)
    			result.oLexStatic = result.oLexStatic.clone();
    		return result;
    	}
    	catch (Exception e) {
    		throw new RuntimeException(e);
    	}
    }
}
