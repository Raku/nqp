package org.perl6.nqp.sixmodel;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.CodeRef;
import org.perl6.nqp.runtime.StaticCodeInfo;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.reprs.VMHashInstance;

public class SerializationReader {

    // --------------------------------------------------
    // The current version of the serialization format
    // --------------------------------------------------

    private static final int CURRENT_VERSION = 11;

    // --------------------------------------------------
    // The minimum version of the serialization format
    // --------------------------------------------------

    private static final int MIN_VERSION = 4;

    // --------------------------------------------------
    // Various sizes (in bytes)
    // --------------------------------------------------

    private static final int V10_HEADER_SIZE           = 4 * 16;
    private static final int HEADER_SIZE               = 4 * 18;
    private static final int DEP_TABLE_ENTRY_SIZE      = 8;
    private static final int STABLES_TABLE_ENTRY_SIZE  = 12;
    private static final int OBJECTS_TABLE_ENTRY_SIZE  = 16;
    private static final int CLOSURES_TABLE_ENTRY_SIZE = 24;
    private static final int CONTEXTS_TABLE_ENTRY_SIZE = 16;
    private static final int REPOS_TABLE_ENTRY_SIZE    = 16;

    // --------------------------------------------------
    // Possible reference types we can serialize
    // --------------------------------------------------

    private static final short REFVAR_NULL               = 1;
    private static final short REFVAR_OBJECT             = 2;
    private static final short REFVAR_VM_NULL            = 3;
    private static final short REFVAR_VM_INT             = 4;
    private static final short REFVAR_VM_NUM             = 5;
    private static final short REFVAR_VM_STR             = 6;
    private static final short REFVAR_VM_ARR_VAR         = 7;
    private static final short REFVAR_VM_ARR_STR         = 8;
    private static final short REFVAR_VM_ARR_INT         = 9;
    private static final short REFVAR_VM_HASH_STR_VAR    = 10;
    private static final short REFVAR_STATIC_CODEREF     = 11;
    private static final short REFVAR_CLONED_CODEREF     = 12;

    // --------------------
    // Starting state
    // --------------------

    private final ThreadContext tc;
    private final SerializationContext sc;
    private final CodeRef[] cr;
    private final int crCount;
    private final ByteBuffer orig;
    private String[] sh;
    private CallFrame[] contexts;

    // --------------------------------------------------
    // The version of the serialization format we're currently reading
    // --------------------------------------------------

    public int version;

    // --------------------------------------------------
    // Various table offsets and entry counts
    // --------------------------------------------------

    private int depTableOffset;
    private int depTableEntries;
    private int stTableOffset;
    private int stTableEntries;
    private int stDataOffset;
    private int objTableOffset;
    private int objTableEntries;
    private int objDataOffset;
    private int closureTableOffset;
    private int closureTableEntries;
    private int contextTableOffset;
    private int contextTableEntries;
    private int contextDataOffset;
    private int reposTableOffset;
    private int reposTableEntries;
    private int stringHeapOffset;
    private int stringHeapEntries;

    // --------------------------------------------------
    // Serialization contexts we depend on
    // --------------------------------------------------

    private SerializationContext[] dependentSCs;

    // --------------------------------------------------
    // The object we are currently deserializing
    // --------------------------------------------------

    private SixModelObject curObject;

    public SerializationReader(
        ThreadContext tc,
        SerializationContext sc,
        String[] sh,
        CodeRef[] cr,
        int crCount,
        ByteBuffer orig
    ) {
        this.tc = tc;
        this.sc = sc;
        this.sh = sh;
        this.cr = cr;
        this.crCount = crCount;
        this.orig = orig;
    }

    public void deserialize() {
        // Serialized data is always little endian.
        orig.order(ByteOrder.LITTLE_ENDIAN);

        // Split the input into the various segments.
        checkAndDisectInput();

        deserializeStringHeap();

        resolveDependencies();

        // Put code refs in place.
        for (int i = 0; i < crCount; i++) {
            cr[i].isStaticCodeRef = true;
            cr[i].sc = sc;
            sc.addCodeRef(cr[i]);
        }

        // Handle any STable repossessions, then stub STables.
        sc.initSTableList(stTableEntries);
        if (reposTableEntries > 0) {
            repossess(1);
        }
        stubSTables();

        // Handle any object repossessions, then stub objects.
        sc.initObjectList(objTableEntries);
        if (reposTableEntries > 0) {
            repossess(0);
        }
        stubObjects();

        // Do first step of deserializing any closures.
        deserializeClosures();

        // Second passes over STables and objects.
        deserializeSTables();
        deserializeObjects();

        // Finish up contexts and closures.
        deserializeContexts();
        attachClosureOuters(crCount);
        attachContextOuters();
        fixUpContextOuters();
    }

    /**
     * Checks the header looks sane and all of the places it points to make sense.
     * Also disects the input string into the tables and data segments and populates
     * the reader data structure more fully.
     */
    private void checkAndDisectInput() {
        final int data_len = orig.limit();

        int prov_pos = 0;

        // ensure that we have enough space to read a version number and check it
        if (data_len < 4) {
            throw new RuntimeException("Serialized data too short to read a version number (< 4 bytes)");
        }

        version = orig.getInt();
        if (version < MIN_VERSION || version > CURRENT_VERSION) {
            throw new RuntimeException("Unknown serialization format version " + version);
        }

        // ensure that the data is at least as long as the header is expected to be
        int headerSize = version >= 11 ? HEADER_SIZE : V10_HEADER_SIZE;
        if (data_len < headerSize) {
            throw new RuntimeException("Serialized data shorter than header (< " + headerSize + " bytes)");
        }

        prov_pos += headerSize;

        // get size and location of dependencies table
        depTableOffset = orig.getInt();
        depTableEntries = orig.getInt();
        if (depTableOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (dependencies table starts before header ends)");
        }

        prov_pos += depTableEntries * DEP_TABLE_ENTRY_SIZE;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (dependencies table overruns end of data)");
        }

        // get size and location of STables table
        stTableOffset = orig.getInt();
        stTableEntries = orig.getInt();
        if (stTableOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (STables table starts before dependencies table ends)");
        }

        prov_pos += stTableEntries * STABLES_TABLE_ENTRY_SIZE;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (STables table overruns end of data)");
        }

        // get location of STables data
        stDataOffset = orig.getInt();
        if (stDataOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (STables data starts before STables table ends)");
        }

        prov_pos = stDataOffset;
        if (stDataOffset > data_len) {
            throw new RuntimeException("Corruption detected (STables data starts after end of data)");
        }

        // get size and location of objects table
        objTableOffset = orig.getInt();
        objTableEntries = orig.getInt();
        if (objTableOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (objects table starts before STables data ends)");
        }

        prov_pos = objTableOffset + objTableEntries * OBJECTS_TABLE_ENTRY_SIZE;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (objects table overruns end of data)");
        }

        // get location of objects data
        objDataOffset = orig.getInt();
        if (objDataOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (objects data starts before objects table ends)");
        }

        prov_pos = objDataOffset;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (objects data starts after end of data)");
        }

        // get size and location of closures table
        closureTableOffset = orig.getInt();
        closureTableEntries = orig.getInt();
        if (closureTableOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (Closures table starts before objects data ends)");
        }

        prov_pos = closureTableOffset + closureTableEntries * CLOSURES_TABLE_ENTRY_SIZE;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (Closures table overruns end of data)");
        }

        // get size and location of contexts table
        contextTableOffset = orig.getInt();
        contextTableEntries = orig.getInt();
        if (contextTableOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (contexts table starts before closures table ends)");
        }

        prov_pos = contextTableOffset + contextTableEntries * CONTEXTS_TABLE_ENTRY_SIZE;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (contexts table overruns end of data)");
        }

        // get location of contexts data
        contextDataOffset = orig.getInt();
        if (contextDataOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (contexts data starts before contexts table ends)");
        }

        prov_pos = contextDataOffset;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (contexts data starts after end of data)");
        }

        // get size and location of repossessions table
        reposTableOffset = orig.getInt();
        reposTableEntries = orig.getInt();
        if (reposTableOffset < prov_pos) {
            throw new RuntimeException("Corruption detected (repossessions table starts before contexts data ends)");
        }

        prov_pos = reposTableOffset + reposTableEntries * REPOS_TABLE_ENTRY_SIZE;
        if (prov_pos > data_len) {
            throw new RuntimeException("Corruption detected (repossessions table overruns end of data)");
        }

        if (version >= 11) {
            // get size and location of string heap
            stringHeapOffset = orig.getInt();
            stringHeapEntries = orig.getInt();
            if (stringHeapOffset < prov_pos) {
                throw new RuntimeException("Corruption detected (string table starts before repossessions tabke ends)");
            }

            prov_pos = stringHeapOffset;
            if (prov_pos > data_len) {
                throw new RuntimeException("Corruption detected (string table starts after end of data)");
            }
        }
    }

    private void deserializeStringHeap() {
        if (version >= 11) {
            sh = new String[stringHeapEntries + 1];
            sh[0] = null;

            orig.position(stringHeapOffset);
            for (int i = 1; i <= stringHeapEntries; i++) {
                final int len = orig.getInt();
                final byte[] bytes = new byte[len];
                orig.get(bytes, 0, len);
                sh[i] = new String(bytes, StandardCharsets.UTF_8);
            }
        }
    }

    private void resolveDependencies() {
        dependentSCs = new SerializationContext[depTableEntries];
        orig.position(depTableOffset);

        for (int i = 0; i < depTableEntries; i++) {
            final String handle = lookupString(orig.getInt());
            final String desc = lookupString(orig.getInt());
            final SerializationContext sc = tc.gc.scs.get(handle);

            if (sc == null) {
                throw new RuntimeException(String.format(
                    "Missing or wrong version of dependency '%s'",
                    (desc == null) ? handle : desc));
            }

            dependentSCs[i] = sc;
        }
    }

    /**
     * Repossess an object or STable.
     * @param chosenType choose object or STable.
     */
    private void repossess(int chosenType) {
        for (int i = 0; i < reposTableEntries; i++) {
            // go to table row
            orig.position(reposTableOffset + i * REPOS_TABLE_ENTRY_SIZE);

            // do appropriate type of repossession
            final int repoType = orig.getInt();
            if (repoType != chosenType) {
                continue;
            }

            final int objIdx = orig.getInt();
            final int origSCIdx = orig.getInt();
            final int origObjIdx = orig.getInt();

            if (repoType == 0) {
                // get object to repossess
                final SerializationContext origSC = locateSC(origSCIdx);
                final SixModelObject origObj = origSC.getObject(origObjIdx);

                // ensure we aren't already trying to repossess the object
                // TODO NYI

                // put it into objects root set at the appropriate slot
                sc.addObject(origObj, objIdx);
                origObj.sc = sc;

                // the object's STable may have changed as
                // a result of the repossession
                // (perhaps due to mixing in to it),
                // so put the STable it should now have in place.
                orig.position(objTableOffset + objIdx * OBJECTS_TABLE_ENTRY_SIZE);
                origObj.st = lookupSTable(orig.getInt(), orig.getInt());
            } else if (repoType == 1) {
                // get STable to repossess
                final SerializationContext origSC = locateSC(origSCIdx);
                final STable origST = origSC.getSTable(origObjIdx);

                // ensure we aren't already trying to repossess the STable
                // TODO NYI

                // put it into STables root set at the appropriate slot
                sc.setSTable(objIdx, origST);
                origST.sc = sc;
            } else {
                throw new RuntimeException("Unknown repossession type");
            }
        }
    }

    private void stubSTables() {
        for (int i = 0; i < stTableEntries; i++) {

            // may already have it, due to repossession.
            if (sc.getSTable(i) != null) {
                continue;
            }

            // look up representation
            orig.position(stTableOffset + i * STABLES_TABLE_ENTRY_SIZE);
            final REPR repr = REPRRegistry.getByName(lookupString(orig.getInt()));

            // create STable stub and add it to the root STable set
            final STable st = new STable(repr, null);
            st.sc = sc;
            sc.setSTable(i, st);
        }
    }

    private void stubObjects() {
        for (int i = 0; i < objTableEntries; i++) {

            // may already have it, due to repossession.
            if (sc.getObject(i) != null) {
                continue;
            }

            // look up STable.
            orig.position(objTableOffset + i * OBJECTS_TABLE_ENTRY_SIZE);
            final STable st = lookupSTable(orig.getInt(), orig.getInt());

            // now go by object flags.
            orig.position(orig.position() + 4);

            final SixModelObject stubObj;
            final int flags = orig.getInt();
            if (flags == 0) {
                // type object
                stubObj = new TypeObject();
                stubObj.st = st;
            } else {
                // concrete object
                // delegate to the REPR
                stubObj = st.REPR.deserialize_stub(tc, st);
            }

            // place object in SC root set.
            stubObj.sc = sc;
            sc.addObject(stubObj, i);
        }
    }

    private void deserializeClosures() {
        for (int i = 0; i < closureTableEntries; i++) {
            // seek to the closure's table row
            orig.position(closureTableOffset + i * CLOSURES_TABLE_ENTRY_SIZE);

            // resolve the reference to the static code object
            final CodeRef staticCode = readCodeRef();

            // clone it and add it to this SC's code refs list
            final CodeRef closure = (CodeRef)staticCode.clone(tc);
            closure.sc = sc;
            sc.addCodeRef(closure);

            // see if there's a code object we need to attach
            orig.position(orig.position() + 4);
            if (orig.getInt() != 0) {
                closure.codeObject = readObjRef();
            }
        }
    }

    private void deserializeSTables() {
        for (int i = 0; i < stTableEntries; i++) {
            // seek to the right position in the data chunk
            orig.position(stTableOffset + i * STABLES_TABLE_ENTRY_SIZE + 4);
            orig.position(stDataOffset + orig.getInt());

            // get the STable we need to deserialize into
            final STable st = sc.getSTable(i);

            // read the HOW, WHAT and WHO
            st.HOW = readObjRef();
            st.WHAT = readObjRef();
            st.WHO = readRef();

            // method cache and v-table
            final SixModelObject methodCache = readRef();
            if (methodCache != null) {
                st.MethodCache = ((VMHashInstance) methodCache).storage;
            }

            st.VTable = new SixModelObject[(int)orig.getLong()];
            for (int k = 0; k < st.VTable.length; k++) {
                st.VTable[k] = readRef();
            }

            // type check cache
            final int tcCacheSize = (int)orig.getLong();
            if (tcCacheSize > 0) {
                st.TypeCheckCache = new SixModelObject[tcCacheSize];
                for (int k = 0; k < st.TypeCheckCache.length; k++) {
                    st.TypeCheckCache[k] = readRef();
                }
            }

            // mode flags
            st.ModeFlags = (int)orig.getLong();

            // boolification spec
            if (orig.getLong() != 0) {
                st.BoolificationSpec = new BoolificationSpec();
                st.BoolificationSpec.Mode = (int)orig.getLong();
                st.BoolificationSpec.Method = readRef();
            }

            // container spec
            if (orig.getLong() != 0) {
                if (version >= 5) {
                    final String ccName = readStr();
                    final ContainerConfigurer cc = tc.gc.contConfigs.get(ccName);

                    if (cc == null) {
                        throw new RuntimeException("Unknown container config " + ccName);
                    }

                    cc.setContainerSpec(tc, st);
                    st.ContainerSpec.deserialize(tc, st, this);
                } else {
                    throw new RuntimeException("Unable to deserialize old container spec format");
                }
            }

            // invocation spec
            if (version >= 5) {
                if (orig.getLong() != 0) {
                    st.InvocationSpec = new InvocationSpec();
                    st.InvocationSpec.ClassHandle = readRef();
                    st.InvocationSpec.AttrName = lookupString(orig.getInt());
                    st.InvocationSpec.Hint = (int)orig.getLong();
                    st.InvocationSpec.InvocationHandler = readRef();
                }
            }

            // HLL stuff
            if (version >= 6) {
                st.hllOwner = tc.gc.getHLLConfigFor(readStr());
                st.hllRole = orig.getLong();
            }

            // type parametricity
            if (version >= 9) {
                final long paraFlag = orig.getLong();

                // if it is a parametric type...
                if (paraFlag == 1) {
                    final ParametricType pt = new ParametricType();
                    pt.parameterizer = readRef();
                    pt.lookup = new ArrayList<>();
                    st.parametricity = pt;
                } else if (paraFlag == 2) {
                    final ParameterizedType pt = new ParameterizedType();
                    pt.parametricType = readObjRef();

                    final SixModelObject BOOTArray = tc.gc.BOOTArray;
                    pt.parameters = BOOTArray.st.REPR.allocate(tc, BOOTArray.st);

                    final int elems = orig.getInt();
                    for (int k = 0; k < elems; k++) {
                        pt.parameters.bind_pos_boxed(tc, k, readRef());
                    }
                    st.parametricity = pt;
                } else if (paraFlag != 0) {
                    throw new RuntimeException("Unknown STable parametricity flag");
                }
            }

            // if the REPR has a function to deserialize representation data, call it.
            st.REPR.deserialize_repr_data(tc, st, this);
        }
    }

    private void deserializeObjects() {
        for (int i = 0; i < objTableEntries; i++) {
            // Can skip if it's a type object.
            final SixModelObject obj = sc.getObject(i);

            if (obj instanceof TypeObject) {
                continue;
            }

            // Seek reader to object data offset.
            orig.position(objTableOffset + i * OBJECTS_TABLE_ENTRY_SIZE + 8);
            orig.position(objDataOffset + orig.getInt());

            // Complete the object's deserialization.
            this.curObject = obj;
            obj.st.REPR.deserialize_finish(tc, obj.st, this, obj);
            this.curObject = null;
        }
    }

    private void deserializeContexts() {
        contexts = new CallFrame[contextTableEntries];

        for (int i = 0; i < contextTableEntries; i++) {
            // seek to the context's table row
            orig.position(contextTableOffset + i * CONTEXTS_TABLE_ENTRY_SIZE);

            // resolve the reference to the static code object this context is for
            final CodeRef staticCode = readCodeRef();

            // create a context and set it up
            final CallFrame ctx = new CallFrame();
            ctx.tc = tc;
            ctx.codeRef = staticCode;

            final StaticCodeInfo sci = staticCode.staticInfo;

            if (sci.oLexicalNames != null) {
                ctx.oLex = sci.oLexStatic.clone();
            }

            if (sci.iLexicalNames != null) {
                ctx.iLex = new long[sci.iLexicalNames.length];
            }

            if (sci.nLexicalNames != null) {
                ctx.nLex = new double[sci.nLexicalNames.length];
            }

            if (sci.sLexicalNames != null) {
                ctx.sLex = new String[sci.sLexicalNames.length];
            }

            // set context data read position, and set current read buffer to the correct thing
            orig.position(contextDataOffset + orig.getInt());

            // deserialize lexical
            final long numOfSymbol = orig.getLong();
            for (long k = 0; k < numOfSymbol; k++) {
                final String sym = readStr();

                Integer idx;
                if ((idx = sci.oTryGetLexicalIdx(sym)) != null) {
                    ctx.oLex[idx] = readRef();
                } else if ((idx = sci.iTryGetLexicalIdx(sym)) != null) {
                    ctx.iLex[idx] = orig.getLong();
                } else if ((idx = sci.nTryGetLexicalIdx(sym)) != null) {
                    ctx.nLex[idx] = orig.getDouble();
                } else if ((idx = sci.sTryGetLexicalIdx(sym)) != null) {
                    ctx.sLex[idx] = readStr();
                } else {
                    throw new RuntimeException("Failed to deserialize lexical " + sym);
                }
            }

            // put context in place
            contexts[i] = ctx;
        }
    }

    private void attachClosureOuters(int closureBaseIdx) {
        for (int i = 0; i < closureTableEntries; i++) {
            orig.position(closureTableOffset + i * CLOSURES_TABLE_ENTRY_SIZE + 8);

            final int idx = orig.getInt();

            if (idx > 0) {
                sc.getCodeRef(closureBaseIdx + i).outer = contexts[idx - 1];
            }
        }
    }

    private void attachContextOuters() {
        for (int i = 0; i < contextTableEntries; i++) {
            orig.position(contextTableOffset + i * CONTEXTS_TABLE_ENTRY_SIZE + 12);

            final int idx = orig.getInt();

            if (idx > 0) {
                contexts[i].outer = contexts[idx - 1];
            }
        }
    }

    private void fixUpContextOuters() {
        for (int i = 0; i < contextTableEntries; i++) {
            if (contexts[i].outer == null
                && contexts[i].codeRef.staticInfo.priorInvocation != null
                && contexts[i].codeRef.staticInfo.priorInvocation.outer != null) {
                contexts[i].outer = contexts[i].codeRef.staticInfo.priorInvocation.outer;
            }
        }
    }

    public SixModelObject readRef() {
        final short discriminator = orig.getShort();

        switch (discriminator) {
            case REFVAR_NULL:
            case REFVAR_VM_NULL:
                return null;
            case REFVAR_OBJECT:
                return readObjRef();
            case REFVAR_VM_INT:
                final SixModelObject BOOTInt = tc.gc.BOOTInt;
                final SixModelObject iResult = BOOTInt.st.REPR.allocate(tc, BOOTInt.st);
                iResult.set_int(tc, orig.getLong());
                return iResult;
            case REFVAR_VM_NUM:
                final SixModelObject BOOTNum = tc.gc.BOOTNum;
                final SixModelObject nResult = BOOTNum.st.REPR.allocate(tc, BOOTNum.st);
                nResult.set_num(tc, orig.getDouble());
                return nResult;
            case REFVAR_VM_STR:
                final SixModelObject BOOTStr = tc.gc.BOOTStr;
                final SixModelObject sResult = BOOTStr.st.REPR.allocate(tc, BOOTStr.st);
                sResult.set_str(tc, lookupString(orig.getInt()));
                return sResult;
            case REFVAR_VM_ARR_VAR: {
                final SixModelObject BOOTArray = tc.gc.BOOTArray;
                final SixModelObject resArray = BOOTArray.st.REPR.allocate(tc, BOOTArray.st);
                final int elems = orig.getInt();

                for (int i = 0; i < elems; i++) {
                    resArray.bind_pos_boxed(tc, i, readRef());
                }

                if (this.curObject != null) {
                    resArray.sc = sc;
                    sc.owned_objects.put(resArray, this.curObject);
                }
                return resArray;
            }
            case REFVAR_VM_ARR_STR: {
                final SixModelObject BOOTStrArray = tc.gc.BOOTStrArray;
                final SixModelObject resArray = BOOTStrArray.st.REPR.allocate(tc, BOOTStrArray.st);
                final int elems = orig.getInt();

                for (int i = 0; i < elems; i++) {
                    tc.native_s = readStr();
                    resArray.bind_pos_native(tc, i);
                }

                return resArray;
            }
            case REFVAR_VM_ARR_INT: {
                final SixModelObject BOOTIntArray = tc.gc.BOOTIntArray;
                final SixModelObject resArray = BOOTIntArray.st.REPR.allocate(tc, BOOTIntArray.st);
                final int elems = orig.getInt();

                for (int i = 0; i < elems; i++) {
                    tc.native_i = readLong();
                    resArray.bind_pos_native(tc, i);
                }

                return resArray;
            }
            case REFVAR_VM_HASH_STR_VAR:
                final SixModelObject BOOTHash = tc.gc.BOOTHash;
                final SixModelObject resHash = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);
                final int elems = orig.getInt();

                for (int i = 0; i < elems; i++) {
                    final String key = lookupString(orig.getInt());
                    resHash.bind_key_boxed(tc, key, readRef());
                }

                if (this.curObject != null) {
                    resHash.sc = sc;
                    sc.owned_objects.put(resHash, this.curObject);
                }

                return resHash;
            case REFVAR_STATIC_CODEREF:
            case REFVAR_CLONED_CODEREF:
                return readCodeRef();
            default:
                throw new RuntimeException("Unimplemented case of read_ref");
        }
    }

    private SixModelObject readObjRef() {
        final SerializationContext sc = locateSC(orig.getInt());
        final int idx = orig.getInt();

        if (idx < 0 || idx >= sc.objectCount()) {
            throw new RuntimeException("Invalid SC object index " + idx);
        }

        return sc.getObject(idx);
    }

    public STable readSTableRef() {
        return lookupSTable(orig.getInt(), orig.getInt());
    }

    private CodeRef readCodeRef() {
        final SerializationContext sc = locateSC(orig.getInt());
        final int idx = orig.getInt();

        if (idx < 0 || idx >= sc.codeRefCount()) {
            throw new RuntimeException("Invalid SC code index " + idx);
        }

        return sc.getCodeRef(idx);
    }

    public long readLong() {
        return orig.getLong();
    }

    public int readInt32() {
        return orig.getInt();
    }

    public double readDouble() {
        return orig.getDouble();
    }

    public String readStr() {
        return lookupString(orig.getInt());
    }

    private STable lookupSTable(int scIdx, int idx) {
        final SerializationContext sc = locateSC(scIdx);

        if (idx < 0 || idx >= sc.stableCount()) {
            throw new RuntimeException("Invalid STable index (scIdx=" + scIdx + ",idx=" + idx + ")");
        }

        return sc.getSTable(idx);
    }

    private SerializationContext locateSC(int scIdx) {
        if (scIdx == 0) {
            return sc;
        }

        if (scIdx < 1 || scIdx > dependentSCs.length) {
            throw new RuntimeException("Invalid dependencies table index encountered (index " + scIdx + ")");
        }

        return dependentSCs[scIdx - 1];
    }

    private String lookupString(int idx) {
        if (idx >= sh.length) {
            throw new RuntimeException("Attempt to read past end of string heap (index " + idx + ")");
        }

        return sh[idx];
    }
}
