package org.perl6.nqp.sixmodel;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.perl6.nqp.runtime.Base64;
import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.CodeRef;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.reprs.CallCapture;
import org.perl6.nqp.sixmodel.reprs.IOHandle;
import org.perl6.nqp.sixmodel.reprs.MultiCache;

public class SerializationWriter {
    /* The current version of the serialization format. */
    private final int CURRENT_VERSION = 8;

    /* Various sizes (in bytes). */
    private final int HEADER_SIZE               = 4 * 16;
    private final int STABLES_TABLE_ENTRY_SIZE  = 12;
    private final int OBJECTS_TABLE_ENTRY_SIZE  = 16;
    private final int CLOSURES_TABLE_ENTRY_SIZE = 24;
    private final int CONTEXTS_TABLE_ENTRY_SIZE = 16;
    private final int REPOS_TABLE_ENTRY_SIZE    = 16;

    /* Possible reference types we can serialize. */
    private final short REFVAR_NULL               = 1;
    private final short REFVAR_OBJECT             = 2;
    private final short REFVAR_VM_NULL            = 3;
    private final short REFVAR_VM_INT             = 4;
    private final short REFVAR_VM_NUM             = 5;
    private final short REFVAR_VM_STR             = 6;
    private final short REFVAR_VM_ARR_VAR         = 7;
    private final short REFVAR_VM_ARR_STR         = 8;
    private final short REFVAR_VM_ARR_INT         = 9;
    private final short REFVAR_VM_HASH_STR_VAR    = 10;
    private final short REFVAR_STATIC_CODEREF     = 11;
    private final short REFVAR_CLONED_CODEREF     = 12;

    private ThreadContext tc;
    private SerializationContext sc;
    private ArrayList<String> sh;
    private HashMap<String, Integer> stringMap;

    private ArrayList<SerializationContext> dependentSCs;
    private ArrayList<CallFrame> contexts;

    private static final int DEPS = 0;
    private static final int STABLES = 1;
    private static final int STABLE_DATA = 2;
    private static final int OBJECTS = 3;
    private static final int OBJECT_DATA = 4;
    private static final int CLOSURES = 5;
    private static final int CONTEXTS = 6;
    private static final int CONTEXT_DATA = 7;
    private static final int REPOS = 8;
    private ByteBuffer[] outputs;
    private int currentBuffer;

    private int numClosures;
    private int sTablesListPos;
    private int objectsListPos;
    private int contextsListPos;

    public SerializationWriter(ThreadContext tc, SerializationContext sc, ArrayList<String> sh) {
        this.tc = tc;
        this.sc = sc;
        this.sh = sh;
        this.stringMap = new HashMap<String, Integer>();
        this.dependentSCs = new ArrayList<SerializationContext>();
        this.contexts = new ArrayList<CallFrame>();
        this.outputs = new ByteBuffer[9];
        this.outputs[DEPS] = ByteBuffer.allocate(128);
        this.outputs[STABLES] = ByteBuffer.allocate(512);
        this.outputs[STABLE_DATA] = ByteBuffer.allocate(1024);
        this.outputs[OBJECTS] = ByteBuffer.allocate(2048);
        this.outputs[OBJECT_DATA] = ByteBuffer.allocate(8912);
        this.outputs[CLOSURES] = ByteBuffer.allocate(128);
        this.outputs[CONTEXTS] = ByteBuffer.allocate(128);
        this.outputs[CONTEXT_DATA] = ByteBuffer.allocate(1024);
        this.outputs[REPOS] = ByteBuffer.allocate(64);
        this.outputs[DEPS].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[STABLES].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[STABLE_DATA].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[OBJECTS].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[OBJECT_DATA].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[CLOSURES].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[CONTEXTS].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[CONTEXT_DATA].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[REPOS].order(ByteOrder.LITTLE_ENDIAN);
        this.currentBuffer = 0;
        this.numClosures = 0;
        this.sTablesListPos = 0;
        this.objectsListPos = 0;
        this.contextsListPos = 0;
    }

    public String serialize() {
        /* Initialize string heap so first entry is the NULL string. */
        sh.add(null);

        /* Start serializing. */
        serializationLoop();

        /* Build a single result string out of the serialized data. */
        return concatenateOutputs();
    }

    private int addStringToHeap(String s) {
        /* We ensured that the first entry in the heap represents the null string,
         * so can just hand back 0 here. */
        if (s == null)
            return 0;

        /* Did we already see it? */
        Integer idx = stringMap.get(s);
        if (idx != null)
            return idx;

        /* Otherwise, need to add it to the heap. */
        int newIdx = sh.size();
        sh.add(s);
        stringMap.put(s, newIdx);
        return newIdx;
    }

    /* Gets the ID of a serialization context. Returns 0 if it's the current
     * one, or its dependency table offset (base-1) otherwise. Note that if
     * it is not yet in the dependency table, it will be added. */
    private int getSCId(SerializationContext sc) {
        /* Easy if it's in the current SC. */
        if (sc == this.sc)
            return 0;

        /* If not, try to find it in our dependencies list. */
        int found = dependentSCs.indexOf(sc);
        if (found >= 0)
            return found + 1;

        /* Otherwise, need to add it to our dependencies list. */
        dependentSCs.add(sc);
        growToHold(DEPS, 8);
        outputs[DEPS].putInt(addStringToHeap(sc.handle));
        outputs[DEPS].putInt(addStringToHeap(sc.description));
        return dependentSCs.size(); /* Deliberately index + 1. */
    }

    /* Takes an STable. If it's already in an SC, returns information on how
     * to reference it. Otherwise, adds it to the current SC, effectively
     * placing it onto the work list. */
    private int[] getSTableRefInfo(STable st) {
        /* Add to this SC if needed. */
        if (st.sc == null) {
            st.sc = this.sc;
            this.sc.addSTable(st);
        }

        /* Work out SC reference. */
        int[] result = new int[2];
        result[0] = getSCId(st.sc);
        result[1] = st.sc.getSTableIndex(st);
        return result;
    }

    /* Writing function for native integers. */
    public void writeInt(long value) {
        this.growToHold(currentBuffer, 8);
        outputs[currentBuffer].putLong(value);
    }

    /* Writing function for 32-bit native integers. */
    public void writeInt32(int value) {
        this.growToHold(currentBuffer, 4);
        outputs[currentBuffer].putInt(value);
    }

    /* Writing function for native numbers. */
    public void writeNum(double value) {
        this.growToHold(currentBuffer, 8);
        outputs[currentBuffer].putDouble(value);
    }

    /* Writing function for native strings. */
    public void writeStr(String value) {
        int heapLoc = addStringToHeap(value);
        this.growToHold(currentBuffer, 4);
        outputs[currentBuffer].putInt(heapLoc);
    }

    /* Writes an object reference. */
    public void writeObjRef(SixModelObject ref) {
        if (ref.sc == null) {
            /* This object doesn't belong to an SC yet, so it must be serialized as part of
             * this compilation unit. Add it to the work list. */
            ref.sc = this.sc;
            this.sc.addObject(ref);
        }

        /* Write SC index, then object index. */
        this.growToHold(currentBuffer, 8);
        outputs[currentBuffer].putInt(getSCId(ref.sc));
        outputs[currentBuffer].putInt(ref.sc.getObjectIndex(ref));
    }

    public void writeList(List<SixModelObject> list) {
        growToHold(currentBuffer, 6);
        outputs[currentBuffer].putShort(REFVAR_VM_ARR_VAR);
        outputs[currentBuffer].putInt(list.size());
        for (SixModelObject item : list)
            writeRef(item);
    }

    public void writeHash(Map<String, SixModelObject> hash) {
        growToHold(currentBuffer, 6);
        outputs[currentBuffer].putShort(REFVAR_VM_HASH_STR_VAR);
        outputs[currentBuffer].putInt(hash.size());
        for (String key : hash.keySet()) {
            writeStr(key);
            writeRef(hash.get(key));
        }
    }

    public void writeIntHash(HashMap<String, Integer> hash) {
        growToHold(currentBuffer, 6);
        outputs[currentBuffer].putShort(REFVAR_VM_HASH_STR_VAR);
        outputs[currentBuffer].putInt(hash.size());
        for (String key : hash.keySet()) {
            writeStr(key);
            growToHold(currentBuffer, 10);
            outputs[currentBuffer].putShort(REFVAR_VM_INT);
            outputs[currentBuffer].putLong((int)hash.get(key));
        }
    }

    private void writeCodeRef(SixModelObject ref) {
        SerializationContext codeSC = ref.sc;
        int scId = getSCId(codeSC);
        int idx = codeSC.getCodeIndex(ref);
        growToHold(currentBuffer, 8);
        outputs[currentBuffer].putInt(scId);
        outputs[currentBuffer].putInt(idx);
    }

    static class Accumulator {
        static Map<String, Accumulator> all = new HashMap<String, Accumulator>();
        long totalTime = 0;
        long count = 0;
        long startTime = 0;

        public static Accumulator start(String name) {
                Accumulator a = all.get(name);
                if (a == null) {
                        a = new Accumulator();
                        all.put(name, a);
                }
                a.count++;
                a.startTime = System.currentTimeMillis();
                return a;
        }
        public void stop() {
                totalTime += (System.currentTimeMillis() - startTime);
        }
    }

    {
        Runtime.getRuntime().addShutdownHook(new Thread() {
                public void run() {
                        for (Map.Entry<String, Accumulator> e : Accumulator.all.entrySet()) {
                                String name = e.getKey();
                                Accumulator a = e.getValue();
                                System.err.println(name + ": " + a.totalTime + " ms (" + a.count + " calls)");
                        }
                }
        });
    }

    /* Writing function for references to things. */
    public void writeRef(SixModelObject ref) {
        /* Work out what kind of thing we have and determine the discriminator. */
        short discrim = 0;
        if (ref == null) {
            discrim = REFVAR_VM_NULL;
        }
        else if (ref.st.REPR instanceof IOHandle) {
            /* Can't serialize handles. */
            discrim = REFVAR_VM_NULL;
        }
        else if (ref.st.REPR instanceof CallCapture) {
            /* This is a hack for Rakudo's sake; it keeps a CallCapture around in
             * the lexpad, for no really good reason. */
            discrim = REFVAR_VM_NULL;
        }
        else if (ref.st.REPR instanceof MultiCache) {
            /* These are re-computed each time. */
            discrim = REFVAR_VM_NULL;
        }
        else if (ref.st.WHAT == tc.gc.BOOTInt) {
            discrim = REFVAR_VM_INT;
        }
        else if (ref.st.WHAT == tc.gc.BOOTNum) {
            discrim = REFVAR_VM_NUM;
        }
        else if (ref.st.WHAT == tc.gc.BOOTStr) {
            discrim = REFVAR_VM_STR;
        }
        else if (ref.st.WHAT == tc.gc.BOOTArray) {
            discrim = REFVAR_VM_ARR_VAR;
        }
        else if (ref.st.WHAT == tc.gc.BOOTIntArray) {
            discrim = REFVAR_VM_ARR_INT;
        }
        else if (ref.st.WHAT == tc.gc.BOOTStrArray) {
            discrim = REFVAR_VM_ARR_STR;
        }
        else if (ref.st.WHAT == tc.gc.BOOTHash) {
            discrim = REFVAR_VM_HASH_STR_VAR;
        }
        else if (ref instanceof CodeRef) {
            if (ref.sc != null && ((CodeRef)ref).isStaticCodeRef) {
                /* Static code reference. */
                discrim = REFVAR_STATIC_CODEREF;
            }
            else if (ref.sc != null) {
                /* Closure, but already seen and serialization already handled. */
                discrim = REFVAR_CLONED_CODEREF;
            }
            else {
                /* Closure but didn't see it yet. Take care of it serialization, which
                 * gets it marked with this SC. Then it's just a normal code ref that
                 * needs serializing. */
                serializeClosure((CodeRef)ref);
                discrim = REFVAR_CLONED_CODEREF;
            }
        }
        else {
            /* Just a normal object, with no special serialization needs. */
            discrim = REFVAR_OBJECT;
        }

        /* Write the discriminator. */
        growToHold(currentBuffer, 2);
        outputs[currentBuffer].putShort(discrim);

        /* Now take appropriate action. */
        switch (discrim) {
            case REFVAR_NULL:
            case REFVAR_VM_NULL:
                /* Nothing to do for these. */
                break;
            case REFVAR_OBJECT:
                writeObjRef(ref);
                break;
            case REFVAR_VM_INT:
                writeInt(ref.get_int(tc));
                break;
            case REFVAR_VM_NUM:
                writeNum(ref.get_num(tc));
                break;
            case REFVAR_VM_STR:
                writeStr(ref.get_str(tc));
                break;
            case REFVAR_VM_ARR_VAR:
            case REFVAR_VM_ARR_INT:
            case REFVAR_VM_ARR_STR:
            case REFVAR_VM_HASH_STR_VAR:
                /* These all delegate to the REPR. */
                ref.st.REPR.serialize(tc, this, ref);
                break;
            case REFVAR_STATIC_CODEREF:
            case REFVAR_CLONED_CODEREF:
                writeCodeRef(ref);
                break;
            default:
                throw new RuntimeException("Serialization Error: Unimplemented object type writeRef");
        }
    }

    /* Writing function for references to STables. */
    public void writeSTableRef(STable st) {
        int[] idxs = getSTableRefInfo(st);
        growToHold(currentBuffer, 8);
        outputs[currentBuffer].putInt(idxs[0]);
        outputs[currentBuffer].putInt(idxs[1]);
    }

    /* Concatenates the various output segments into a single binary string. */
    private String concatenateOutputs() {
        int output_size = 0;
        int offset      = 0;

        /* Calculate total size. */
        output_size += HEADER_SIZE;
        output_size += outputs[DEPS].position();
        output_size += outputs[STABLES].position();
        output_size += outputs[STABLE_DATA].position();
        output_size += outputs[OBJECTS].position();
        output_size += outputs[OBJECT_DATA].position();
        output_size += outputs[CLOSURES].position();
        output_size += outputs[CONTEXTS].position();
        output_size += outputs[CONTEXT_DATA].position();
        output_size += outputs[REPOS].position();

        /* Allocate a buffer that size. */
        ByteBuffer output = ByteBuffer.allocate(output_size);
        output.order(ByteOrder.LITTLE_ENDIAN);

        /* Write version into header. */
        output.putInt(CURRENT_VERSION);
        offset += HEADER_SIZE;

        /* Put dependencies table in place and set location/rows in header. */
        output.putInt(offset);
        output.putInt(this.dependentSCs.size());
        output.position(offset);
        output.put(usedBytes(outputs[DEPS]));
        offset += outputs[DEPS].position();

        /* Put STables table in place, and set location/rows in header. */
        output.position(12);
        output.putInt(offset);
        output.putInt(this.sc.stableCount());
        output.position(offset);
        output.put(usedBytes(outputs[STABLES]));
        offset += outputs[STABLES].position();

        /* Put STables data in place. */
        output.position(20);
        output.putInt(offset);
        output.position(offset);
        output.put(usedBytes(outputs[STABLE_DATA]));
        offset += outputs[STABLE_DATA].position();

        /* Put objects table in place, and set location/rows in header. */
        output.position(24);
        output.putInt(offset);
        output.putInt(this.sc.objectCount());
        output.position(offset);
        output.put(usedBytes(outputs[OBJECTS]));
        offset += outputs[OBJECTS].position();

        /* Put objects data in place. */
        output.position(32);
        output.putInt(offset);
        output.position(offset);
        output.put(usedBytes(outputs[OBJECT_DATA]));
        offset += outputs[OBJECT_DATA].position();

        /* Put closures table in place, and set location/rows in header. */
        output.position(36);
        output.putInt(offset);
        output.putInt(this.numClosures);
        output.position(offset);
        output.put(usedBytes(outputs[CLOSURES]));
        offset += outputs[CLOSURES].position();

        /* Put contexts table in place, and set location/rows in header. */
        output.position(44);
        output.putInt(offset);
        output.putInt(this.contexts.size());
        output.position(offset);
        output.put(usedBytes(outputs[CONTEXTS]));
        offset += outputs[CONTEXTS].position();

        /* Put contexts data in place. */
        output.position(52);
        output.putInt(offset);
        output.position(offset);
        output.put(usedBytes(outputs[CONTEXT_DATA]));
        offset += outputs[CONTEXT_DATA].position();

        /* Put repossessions table in place, and set location/rows in header. */
        output.position(56);
        output.putInt(offset);
        output.putInt(this.sc.rep_scs.size());
        output.position(offset);
        output.put(usedBytes(outputs[REPOS]));
        offset += outputs[REPOS].position();

        /* Sanity check. */
        if (offset != output_size)
            throw new RuntimeException("Serialization sanity check failed: offset != output_size");

        /* Base 64 encode and return. */
        return Base64.encode(output);
    }

    /* Grabs an array of the bytes actually populated in the specified buffer. */
    private byte[] usedBytes(ByteBuffer bb) {
        byte[] result = new byte[bb.position()];
        bb.position(0);
        bb.get(result);
        bb.position(result.length);
        return result;
    }

    /* This handles the serialization of an object, which largely involves a
     * delegation to its representation. */
    private void serializeObject(SixModelObject obj) {
        /* Get index of SC that holds the STable and its index. */
        int[] ref = getSTableRefInfo(obj.st);
        int sc = ref[0];
        int sc_idx = ref[1];

        /* Ensure there's space in the objects table; grow if not. */
        growToHold(OBJECTS, OBJECTS_TABLE_ENTRY_SIZE);

        /* Make objects table entry. */
        outputs[OBJECTS].putInt(sc);
        outputs[OBJECTS].putInt(sc_idx);
        outputs[OBJECTS].putInt(outputs[OBJECT_DATA].position());
        outputs[OBJECTS].putInt(obj instanceof TypeObject ? 0 : 1);

        /* Make sure we're going to write to the correct place. */
        currentBuffer = OBJECT_DATA;

        /* Delegate to its serialization REPR function. */
        if (!(obj instanceof TypeObject))
            obj.st.REPR.serialize(tc, this, obj);
    }

    private void serializeStable(STable st) {
        /* Ensure there's space in the STables table. */
        growToHold(STABLES, STABLES_TABLE_ENTRY_SIZE);

        /* Make STables table entry. */
        outputs[STABLES].putInt(addStringToHeap(st.REPR.name));
        outputs[STABLES].putInt(outputs[STABLE_DATA].position());

        /* Make sure we're going to write to the correct place. */
        currentBuffer = STABLE_DATA;

        /* Write HOW, WHAT and WHO. */
        writeObjRef(st.HOW);
        writeObjRef(st.WHAT);
        writeRef(st.WHO);

        /* Method cache and v-table. */
        growToHold(currentBuffer, 2);
        if (st.MethodCache != null) {
            writeHash(st.MethodCache);
        }
        else {
            outputs[currentBuffer].putShort(REFVAR_VM_NULL);
        }
        int vtl = st.VTable == null ? 0 : st.VTable.length;
        writeInt(vtl);
        for (int i = 0; i < vtl; i++)
            writeRef(st.VTable[i]);

        /* Type check cache. */
        int tcl = st.TypeCheckCache == null ? 0 : st.TypeCheckCache.length;
        writeInt(tcl);
        for (int i = 0; i < tcl; i++)
            writeRef(st.TypeCheckCache[i]);

        /* Mode flags. */
        writeInt(st.ModeFlags);

        /* Boolification spec. */
        writeInt(st.BoolificationSpec == null ? 0 : 1);
        if (st.BoolificationSpec != null) {
            writeInt(st.BoolificationSpec.Mode);
            writeRef(st.BoolificationSpec.Method);
        }

        /* Container spec. */
        writeInt(st.ContainerSpec == null ? 0 : 1);
        if (st.ContainerSpec != null) {
            writeStr(st.ContainerSpec.name());
            st.ContainerSpec.serialize(tc, st, this);
        }

        /* Invocation spec. */
        writeInt(st.InvocationSpec == null ? 0 : 1);
        if (st.InvocationSpec != null) {
            writeRef(st.InvocationSpec.ClassHandle);
            writeStr(st.InvocationSpec.AttrName);
            writeInt(st.InvocationSpec.Hint);
            writeRef(st.InvocationSpec.InvocationHandler);
        }

        /* HLL info. */
        writeStr(st.hllOwner == null ? "" : st.hllOwner.name);
        writeInt(st.hllRole);

        /* Location of REPR data. */
        outputs[STABLES].putInt(outputs[STABLE_DATA].position());

        /* If the REPR has a function to serialize representation data, call it. */
        st.REPR.serialize_repr_data(tc, st, this);
    }

    private SixModelObject closureToStaticCodeRef(CodeRef closure, boolean fatal) {
        SixModelObject staticCode = ((CodeRef)closure).staticInfo.staticCode;
        if (staticCode == null)
        {
            if (fatal)
                throw ExceptionHandling.dieInternal(tc,
                    "Serialization Error: missing static code ref for closure");
            else
                return null;
        }
        if (staticCode.sc == null) {
            if (fatal)
                throw ExceptionHandling.dieInternal(tc,
                    "Serialization Error: could not locate static code ref for closure " +
                    ((CodeRef)staticCode).name);
            else
                return null;
        }
        return staticCode;
    }

    private void serializeClosure(CodeRef closure) {
        /* Locate the static code object. */
        SixModelObject staticCodeRef = closureToStaticCodeRef(closure, true);
        SerializationContext staticCodeSC = staticCodeRef.sc;

        /* Ensure there's space in the closures table; grow if not. */
        growToHold(CLOSURES, CLOSURES_TABLE_ENTRY_SIZE);

        /* Get the index of the context (which will add it to the todo list if
         * needed). */
        int contextIdx = getSerializedOuterContextIdx(closure);

        /* Add an entry to the closures table. */
        int staticSCId = getSCId(staticCodeSC);
        int staticIdx = staticCodeSC.getCodeIndex(staticCodeRef);
        outputs[CLOSURES].putInt(staticSCId);
        outputs[CLOSURES].putInt(staticIdx);
        outputs[CLOSURES].putInt(contextIdx);

        /* Check if it has a static code object. */
        if (closure.codeObject != null) {
            outputs[CLOSURES].putInt(1);
            if (closure.codeObject.sc == null) {
                closure.codeObject.sc = this.sc;
                this.sc.addObject(closure.codeObject);
            }
            outputs[CLOSURES].putInt(getSCId(closure.codeObject.sc));
            outputs[CLOSURES].putInt(closure.codeObject.sc.getObjectIndex(closure.codeObject));
        }
        else {
            outputs[CLOSURES].putInt(0);
            outputs[CLOSURES].putInt(0); // pad
            outputs[CLOSURES].putInt(0); // pad
        }

        /* Increment count of closures in the table. */
        numClosures++;

        /* Add the closure to this SC, and mark it as as being in it. */
        this.sc.addCodeRef((CodeRef)closure);
        closure.sc = this.sc;
    }

    private int getSerializedOuterContextIdx(CodeRef closure) {
        if (closure.isCompilerStub)
            return 0;
        if (closure.outer == null)
            return 0;
        return getSerializedContextIdx(closure.outer);
    }

    private int getSerializedContextIdx(CallFrame cf) {
        if (cf.sc == null) {
            /* Make sure we should chase a level down. */
            if (closureToStaticCodeRef(cf.codeRef, false) == null) {
                return 0;
            }
            else {
                contexts.add(cf);
                cf.sc = this.sc;
                return contexts.size();
            }
        }
        else {
            if (cf.sc != this.sc)
                ExceptionHandling.dieInternal(tc,
                    "Serialization Error: reference to context outside of SC");
            int idx = contexts.indexOf(cf);
            if (idx < 0)
                ExceptionHandling.dieInternal(tc,
                    "Serialization Error: could not locate outer context in current SC");
            return idx + 1;
        }
    }

    private void serializeContext(CallFrame cf) {
        /* Locate the static code ref this context points to. */
        SixModelObject staticCodeRef = closureToStaticCodeRef(cf.codeRef, true);
        SerializationContext staticCodeSC = staticCodeRef.sc;
        if (staticCodeSC == null)
            ExceptionHandling.dieInternal(tc,
                "Serialization Error: closure outer is a code object not in an SC");
        int staticSCId = getSCId(staticCodeSC);
        int staticIdx = staticCodeSC.getCodeIndex(staticCodeRef);

        /* Ensure there's space in the contexts table; grow if not. */
        growToHold(CONTEXTS, CONTEXTS_TABLE_ENTRY_SIZE);

        /* Make contexts table entry. */
        outputs[CONTEXTS].putInt(staticSCId);
        outputs[CONTEXTS].putInt(staticIdx);
        outputs[CONTEXTS].putInt(outputs[CONTEXT_DATA].position());

        /* See if there's any relevant outer context, and if so set it up to
         * be serialized. */
        if (cf.outer != null)
            outputs[CONTEXTS].putInt(getSerializedContextIdx(cf.outer));
        else
            outputs[CONTEXTS].putInt(0);

        /* Set up writer. */
        currentBuffer = CONTEXT_DATA;

        /* Serialize lexicals. */
        int numLexicals = 0;
        numLexicals += cf.oLex == null ? 0 : cf.oLex.length;
        numLexicals += cf.iLex == null ? 0 : cf.iLex.length;
        numLexicals += cf.nLex == null ? 0 : cf.nLex.length;
        numLexicals += cf.sLex == null ? 0 : cf.sLex.length;
        writeInt(numLexicals);
        if (cf.oLex != null) {
            String[] names = cf.codeRef.staticInfo.oLexicalNames;
            for (int i = 0; i < cf.oLex.length; i++) {
                writeStr(names[i]);
                writeRef(cf.oLex[i]);
            }
        }
        if (cf.iLex != null) {
            String[] names = cf.codeRef.staticInfo.iLexicalNames;
            for (int i = 0; i < cf.iLex.length; i++) {
                writeStr(names[i]);
                writeInt(cf.iLex[i]);
            }
        }
        if (cf.nLex != null) {
            String[] names = cf.codeRef.staticInfo.nLexicalNames;
            for (int i = 0; i < cf.nLex.length; i++) {
                writeStr(names[i]);
                writeNum(cf.nLex[i]);
            }
        }
        if (cf.sLex != null) {
            String[] names = cf.codeRef.staticInfo.sLexicalNames;
            for (int i = 0; i < cf.sLex.length; i++) {
                writeStr(names[i]);
                writeStr(cf.sLex[i]);
            }
        }
    }

    /* Grows a buffer as needed to hold more data. */
    private void growToHold(int idx, int required) {
        ByteBuffer check = this.outputs[idx];
        int position = check.position();
        if (position + required >= check.capacity()) {
            ByteBuffer replacement = ByteBuffer.allocate(
                Math.max(check.capacity() * 2, position + required));
            replacement.order(ByteOrder.LITTLE_ENDIAN);
            check.position(0);
            replacement.put(check);
            replacement.position(position);
            this.outputs[idx] = replacement;
        }
    }

    /* Goes through the list of repossessions and serializes them all. */
    private void serializeRepossessions() {
        /* Allocate table space, provided we've actually something to do. */
        int numRepos = sc.rep_indexes.size();
        if (numRepos == 0)
            return;
        growToHold(REPOS, numRepos * REPOS_TABLE_ENTRY_SIZE);

        /* Make entries. */
        for (int i = 0; i < numRepos; i++) {
            int objIdx = sc.rep_indexes.get(i) >> 1;
            int isST = sc.rep_indexes.get(i) & 1;
            SerializationContext origSC = sc.rep_scs.get(i);

            /* Work out original object's SC location. */
            int origSCIdx = getSCId(origSC);
            int origIdx = isST != 0
                ? origSC.getSTableIndex(sc.getSTable(objIdx))
                : origSC.getObjectIndex(sc.getObject(objIdx));
            if (origIdx < 0)
                throw new RuntimeException(
                    "Could not find object when writing repossessions; " +
                    (isST != 0
                        ? "STable"
                        : "REPR = " + sc.getObject(objIdx).st.REPR.name));

            /* Write table row. */
            outputs[REPOS].putInt(isST);
            outputs[REPOS].putInt(objIdx);
            outputs[REPOS].putInt(origSCIdx);
            outputs[REPOS].putInt(origIdx);
        }
    }

    /* This is the overall serialization loop. It keeps an index into the list of
     * STables and objects in the SC. As we discover new ones, they get added. We
     * finished when we've serialized everything. */
    private void serializationLoop() {
        boolean workTodo = true;
        while (workTodo) {
            /* Current work list sizes. */
            int sTablesTodo = sc.stableCount();
            int objectsTodo = sc.objectCount();
            int contextsTodo = contexts.size();

            /* Reset todo flag - if we do some work we'll go round again as it
             * may have generated more. */
            workTodo = false;

            /* Serialize any STables on the todo list. */
            while (sTablesListPos < sTablesTodo) {
                serializeStable(sc.getSTable(sTablesListPos));
                sTablesListPos++;
                workTodo = true;
            }

            /* Serialize any objects on the todo list. */
            while (objectsListPos < objectsTodo) {
                serializeObject(sc.getObject(objectsListPos));
                objectsListPos++;
                workTodo = true;
            }

            /* Serialize any contexts on the todo list. */
             while (contextsListPos < contextsTodo) {
                serializeContext(contexts.get(contextsListPos));
                contextsListPos++;
                workTodo = true;
            }
        }

        /* Finally, serialize repossessions table (this can't make any more
         * work, so is done as a separate step here at the end). */
        serializeRepossessions();
    }
}
