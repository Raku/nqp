package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodHandles.Lookup;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.perl6.nqp.sixmodel.STable;

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
     * Mapping of local integer IDs to matching code reference.
     */
    public CodeRef[] qbidToCodeRef;

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
     * If true, the class corresponding to this CompilationUnit is shared between GlobalContexts.
     */
    public boolean shared;

    /**
     * When a compilation unit is serving as the main entry point, its main
     * method will just delegate to here. Thus this needs to trigger some
     * initialization work and then invoke the required main code.
     */
    public static void enterFromMain(Class<?> cuType, int entryCodeRefIdx, String[] argv)
            throws Exception {
        ThreadContext tc = (new GlobalContext()).mainThread;
        CompilationUnit cu = setupCompilationUnit(tc, cuType, false);
        Ops.invokeMain(tc, cu.qbidToCodeRef[entryCodeRefIdx], cuType.getName(), argv);
    }

    /**
     * Takes the class object for some compilation unit and sets it up.
     */
    public static CompilationUnit setupCompilationUnit(ThreadContext tc, Class<?> cuType, boolean shared)
            throws InstantiationException, IllegalAccessException {
        CompilationUnit cu = (CompilationUnit)cuType.newInstance();
        cu.shared = shared;
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
        ArrayList<CodeRefAnnotation> outerCuid = new ArrayList< >();
        boolean codeRefsFound = false;

        ReflectiveCodeInfo[] mlist = shared ? codeInfoStash.get(getClass()) : getCodeInfo(getClass());
        qbidToCodeRef = new CodeRef[mlist.length];

        for (ReflectiveCodeInfo m : mlist) {
            CodeRefAnnotation ann = m.annotation;

            String cuid = ann.cuid();
            CodeRef cr = new CodeRef(this, m.mh.bindTo(this), ann.name(), cuid,
                ann.oLexicalNames().length == 0 ? null : ann.oLexicalNames(),
                ann.iLexicalNames().length == 0 ? null : ann.iLexicalNames(),
                ann.nLexicalNames().length == 0 ? null : ann.nLexicalNames(),
                ann.sLexicalNames().length == 0 ? null : ann.sLexicalNames(),
                m.handlers, ann.argsExpectation());
            cr.staticInfo.methodName = m.methodName;
            cr.staticInfo.hasExitHandler = ann.hasExitHandler();
            cr.staticInfo.isThunk = ann.isThunk();
            cr.st = BOOTCodeSTable;
            codeRefList.add(cr);

            if (m.qbid >= 0 && m.qbid < qbidToCodeRef.length) qbidToCodeRef[m.qbid] = cr;

            /* Stash outer, for later resolution. */
            outerCuid.add(ann);
            codeRefsFound = true;
        }

        /* Resolve outers. */
        codeRefs = codeRefList.toArray(new CodeRef[0]);
        for (int i = 0; i < codeRefs.length; i++) {
            CodeRefAnnotation cra = outerCuid.get(i);
            int qbid = cra.outerQbid();

            CodeRef outer = qbid >= 0 ? qbidToCodeRef[qbid] : null;
            if (outer != null)
                codeRefs[i].staticInfo.outerStaticInfo = outer.staticInfo;
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
        if (deserializeQbid() >= 0)
            desCodeRef = lookupCodeRef(deserializeQbid());
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

    private static class ReflectiveCodeInfo {
        public MethodHandle mh;
        public long[][] handlers;
        public CodeRefAnnotation annotation;
        public String methodName;
        public int qbid;

        public ReflectiveCodeInfo(MethodHandles.Lookup l, Method m, CodeRefAnnotation cra) {
            annotation = cra;

            /* Got a code ref annotation. Turn to method handle. */
            try {
                mh = l.unreflect(m);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

            /* Munge handlers. */
            long[] flatHandlers = cra.handlers();
            int hptr = 0;
            int numHandlers = (int)flatHandlers[hptr++];
            handlers = new long[numHandlers][];
            for (int i = 0; i < numHandlers; i++) {
                int handlerThings = (int)flatHandlers[hptr++];
                handlers[i] = new long[handlerThings];
                for (int j = 0; j < handlerThings; j++)
                    handlers[i][j] = flatHandlers[hptr++];
            }

            methodName = m.getName();

            qbid = -1;
            if (methodName.startsWith("qb_")) {
                int i = 3;
                int imax = methodName.length();
                int acc = 0;
                while (i < imax) acc = acc * 10 + (int)methodName.charAt(i++) - (int)'0';
                if (acc >= 0) qbid = acc;
            }
        }
    }

    private static ReflectiveCodeInfo[] getCodeInfo(Class<?> cls) {
        ArrayList<ReflectiveCodeInfo> ret = new ArrayList< >();
        Lookup l = MethodHandles.lookup();
        for (Method m : cls.getDeclaredMethods()) {
            CodeRefAnnotation cra = m.getAnnotation(CodeRefAnnotation.class);
            if (cra != null) ret.add(new ReflectiveCodeInfo(l, m, cra));
        }
        return ret.toArray(new ReflectiveCodeInfo[0]);
    }

    private static final ClassValue<ReflectiveCodeInfo[]> codeInfoStash = new ClassValue<ReflectiveCodeInfo[]>() {
        @Override
        protected ReflectiveCodeInfo[] computeValue(Class<?> c) { return getCodeInfo(c); }
    };

    /**
     * Runs code in the on-load hook, if one is available.
     */
    public void runLoadIfAvailable(ThreadContext tc) {
        CodeRef loadCodeRef = null;
        if (loadQbid() >= 0)
            loadCodeRef = lookupCodeRef(loadQbid());
        if (loadCodeRef != null)
            try {
                Ops.invokeArgless(tc, loadCodeRef);
            }
            catch (ControlException e) {
                throw e;
            }
            catch (Exception e)
            {
                throw ExceptionHandling.dieInternal(tc, e.toString());
            }
    }

    /**
     * Turns a compilation unit unique ID into the matching code-ref.
     */
    public CodeRef lookupCodeRef(String uniqueId) { /*FOR_STAGE0*/
        return cuidToCodeRef.get(uniqueId);
    }

    /**
     * Turns a local integer ID into the matching code-ref.
     */
    public CodeRef lookupCodeRef(int localId) {
        return qbidToCodeRef[localId];
    }

    /**
     * Parses a bunch of info on static lexical values for a block and
     * installs each of them. TODO: lazify so we don't do it for blocks we
     * never execute.
     */
    public void setLexValues(ThreadContext tc, int localId, String toParse) {
        setLexValues(tc, qbidToCodeRef[localId], toParse);
    }

    private void setLexValues(ThreadContext tc, CodeRef cr, String toParse) {
        String[] bits = toParse.split("\\x00");
        for (int i = 0; i < bits.length; i += 4) {
            String lexName = bits[i];
            String handle  = bits[i + 1];
            int    scIdx   = Integer.parseInt(bits[i + 2]);
            int    flags   = Integer.parseInt(bits[i + 3]);
            Integer idx = cr.staticInfo.oTryGetLexicalIdx(lexName);
            if (idx == null)
                new RuntimeException("Invalid lexical name '" + lexName + "' in static lexical installation");
            cr.staticInfo.oLexStatic[idx] = tc.gc.scs.get(handle).getObject(scIdx);
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
    public int deserializeQbid() {
        return -1;
    }

    /**
     * Code generation overrides this if there's an SC to deserialize.
     */
    public int loadQbid() {
        return -1;
    }

    /**
     * Code generation overrides this with the mainline blcok.
     */
    public int mainlineQbid() {
        return -1;
    }

    /**
     * Code generation overrides this with the entry-point block, if any.
     */
    public int entryQbid() {
        return -1;
    }

    public int serializedCodeRefCount() {
        return -1;
    }
}
