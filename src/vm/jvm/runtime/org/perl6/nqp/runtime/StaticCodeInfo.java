package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
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
     * The expected arguments needed to invoke the method handle.
     */
    public short argsExpectation;

    /**
     * Curried method handle for resuming.
     */
    MethodHandle mhResume;

    /**
     * Method name for correlation with stack traces.
     */
    public String methodName;
    
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
     * Flags for each static lexical usage.
     */
    public byte[] oLexStaticFlags;
    
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
    
    /**
     * Does this code object have a block exit handler?
     */
    public boolean hasExitHandler;
    
    public Integer oTryGetLexicalIdx(String name) {
        if (oLexicalNames != null) {
            if (oLexicalMap == null) {
                HashMap<String, Integer> map = new HashMap<String, Integer>(oLexicalNames.length);
                for (int i = 0; i < oLexicalNames.length; i++)
                    map.put(oLexicalNames[i], i);
                oLexicalMap = map;
            }
            return oLexicalMap.get(name);
        } else {
            return null;
        }
    }
    
    public Integer iTryGetLexicalIdx(String name) {
        if (iLexicalNames != null) {
            if (iLexicalMap == null) {
                HashMap<String, Integer> map = new HashMap<String, Integer>(iLexicalNames.length);
                for (int i = 0; i < iLexicalNames.length; i++)
                    map.put(iLexicalNames[i], i);
                iLexicalMap = map;
            }
            return iLexicalMap.get(name);
        } else {
            return null;
        }
    }
    
    public Integer nTryGetLexicalIdx(String name) {
        if (nLexicalNames != null) {
            if (nLexicalMap == null) {
                HashMap<String, Integer> map = new HashMap<String, Integer>(nLexicalNames.length);
                for (int i = 0; i < nLexicalNames.length; i++)
                    map.put(nLexicalNames[i], i);
                nLexicalMap = map;
            }
            return nLexicalMap.get(name);
        } else {
            return null;
        }
    }
    
    public Integer sTryGetLexicalIdx(String name) {
        if (sLexicalNames != null) {
            if (sLexicalMap == null) {
                HashMap<String, Integer> map = new HashMap<String, Integer>(sLexicalNames.length);
                for (int i = 0; i < sLexicalNames.length; i++)
                    map.put(sLexicalNames[i], i);
                sLexicalMap = map;
            }
            return sLexicalMap.get(name);
        } else {
            return null;
        }
    }
    
    /**
     * Initializes the static code info data structure.
     */
    public StaticCodeInfo(CompilationUnit compUnit, MethodHandle mh,
            String uniqueId,
            String[] oLexicalNames, String[] iLexicalNames,
            String[] nLexicalNames, String[] sLexicalNames,
            long[][] handlers, SixModelObject staticCode,
            short argsExpectation) {
        this.compUnit = compUnit;
        this.mh = mh;
        this.uniqueId = uniqueId;
        this.oLexicalNames = oLexicalNames;
        this.iLexicalNames = iLexicalNames;
        this.nLexicalNames = nLexicalNames;
        this.sLexicalNames = sLexicalNames;
        this.handlers = handlers;
        this.staticCode = staticCode;
        if (oLexicalNames != null) {
            this.oLexStatic = new SixModelObject[oLexicalNames.length];
            this.oLexStaticFlags = new byte[oLexicalNames.length];
        }
        this.argsExpectation = argsExpectation;
        MethodType t = mh.type();
        if (t.parameterCount() == 5 && (t.parameterType(4) == ResumeStatus.Frame.class)) {
            /* Old way; goes away after bootstrap. */
            mhResume = MethodHandles.insertArguments(mh, 0, null, null, null, null);
            this.mh = MethodHandles.insertArguments(mh, 4, (Object)null);
        }
        else if (t.parameterCount() >= 4 && (t.parameterType(3) == ResumeStatus.Frame.class)) {
            mhResume = MethodHandles.insertArguments(mh, 0, null, null, null);
            switch (argsExpectation) {
            case ArgsExpectation.USE_BINDER:
                mhResume = MethodHandles.insertArguments(mhResume, 1, (Object)null);
                break;
            case ArgsExpectation.NO_ARGS:
                /* Nothing to insert. */
                break;
            case ArgsExpectation.OBJ:
                mhResume = MethodHandles.insertArguments(mhResume, 1, (SixModelObject)null);
                break;
            case ArgsExpectation.OBJ_OBJ:
                mhResume = MethodHandles.insertArguments(mhResume, 1,
                    (SixModelObject)null, (SixModelObject)null);
                break;
            default:
                throw new RuntimeException("Unhandled ArgsExpectation in StaticCodeInfo");
            }
            this.mh = MethodHandles.insertArguments(mh, 3, (Object)null);
        }
    }
    
    public StaticCodeInfo clone() {
        try {
            StaticCodeInfo result = (StaticCodeInfo)super.clone();
            if (result.oLexStatic != null) {
                result.oLexStatic = result.oLexStatic.clone();
                result.oLexStaticFlags = result.oLexStaticFlags.clone();
            }
            return result;
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
