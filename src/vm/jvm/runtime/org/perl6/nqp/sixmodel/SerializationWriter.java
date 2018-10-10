package org.perl6.nqp.sixmodel;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
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

    /**
     * Accumulator for diagnostic.
     */
    private static class Accumulator {
        private static Map<String, Accumulator> all = new HashMap<>();

        private long totalTime = 0;
        private long count = 0;
        private long startTime = 0;

        public static Accumulator start(String name) {
            final Accumulator accumulator = all.putIfAbsent(name, new Accumulator());

            accumulator.count += 1;
            accumulator.startTime = System.currentTimeMillis();

            return accumulator;
        }

        public void stop() {
            totalTime += (System.currentTimeMillis() - startTime);
        }
    }

    static {
        Runtime.getRuntime()
            .addShutdownHook(new Thread(() ->{
                for (Map.Entry<String, Accumulator> e : Accumulator.all.entrySet()) {
                    final String name = e.getKey();
                    final Accumulator accumulator = e.getValue();
                    System.err.println(name + ": " + accumulator.totalTime + " ms "
                        + "(" + accumulator.count + " calls)");
                }}));
    }

    // ------------------------------------------------------------
    // Current version of the serialization format
    // ------------------------------------------------------------

    private static final int CURRENT_VERSION = 11;

    // ------------------------------
    // Various sizes (in bytes)
    // ------------------------------

    private static final int HEADER_SIZE               = 4 * 18;
    private static final int STABLES_TABLE_ENTRY_SIZE  = 12;
    private static final int OBJECTS_TABLE_ENTRY_SIZE  = 16;
    private static final int CLOSURES_TABLE_ENTRY_SIZE = 24;
    private static final int CONTEXTS_TABLE_ENTRY_SIZE = 16;
    private static final int REPOS_TABLE_ENTRY_SIZE    = 16;

    // ------------------------------------------------------------
    // Possible reference types we can serialize
    // ------------------------------------------------------------

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

    private final ThreadContext tc;
    private final SerializationContext sc;
    private final ArrayList<String> sh;
    private final HashMap<String, Integer> stringMap;

    private final ArrayList<SerializationContext> dependentSCs;
    private final ArrayList<CallFrame> contexts;

    private static final int DEPS         = 0;
    private static final int STABLES      = 1;
    private static final int STABLE_DATA  = 2;
    private static final int OBJECTS      = 3;
    private static final int OBJECT_DATA  = 4;
    private static final int CLOSURES     = 5;
    private static final int CONTEXTS     = 6;
    private static final int CONTEXT_DATA = 7;
    private static final int REPOS        = 8;
    private static final int STRINGS      = 9;

    private final ByteBuffer[] outputs;
    private int currentBuffer;

    private int numClosures;
    private int sTablesListPos;
    private int objectsListPos;
    private int contextsListPos;

    public SerializationWriter(ThreadContext tc, SerializationContext sc, ArrayList<String> sh) {
        this.tc = tc;
        this.sc = sc;
        this.sh = sh;

        this.stringMap = new HashMap<>();
        this.dependentSCs = new ArrayList<>();
        this.contexts = new ArrayList<>();

        this.outputs = new ByteBuffer[10];
        this.outputs[DEPS] = ByteBuffer.allocate(128);
        this.outputs[STABLES] = ByteBuffer.allocate(512);
        this.outputs[STABLE_DATA] = ByteBuffer.allocate(1024);
        this.outputs[OBJECTS] = ByteBuffer.allocate(2048);
        this.outputs[OBJECT_DATA] = ByteBuffer.allocate(8912);
        this.outputs[CLOSURES] = ByteBuffer.allocate(128);
        this.outputs[CONTEXTS] = ByteBuffer.allocate(128);
        this.outputs[CONTEXT_DATA] = ByteBuffer.allocate(1024);
        this.outputs[REPOS] = ByteBuffer.allocate(64);
        this.outputs[STRINGS] = ByteBuffer.allocate(2048);
        this.outputs[DEPS].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[STABLES].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[STABLE_DATA].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[OBJECTS].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[OBJECT_DATA].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[CLOSURES].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[CONTEXTS].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[CONTEXT_DATA].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[REPOS].order(ByteOrder.LITTLE_ENDIAN);
        this.outputs[STRINGS].order(ByteOrder.LITTLE_ENDIAN);

        this.currentBuffer = 0;
        this.numClosures = 0;
        this.sTablesListPos = 0;
        this.objectsListPos = 0;
        this.contextsListPos = 0;
    }

    public String serialize() {
        // initialize string heap so first entry is the NULL string
        sh.add(null);

        // start serializing
        serializationLoop();

        // build a single result string out of the serialized data
        return concatenateOutputs();
    }

    private int addStringToHeap(String s) {
        // We ensured that the first entry in the heap represents the null string,
        // so can just hand back 0 here.
        if (s == null)
            return 0;

        // check if we already see it
        if (stringMap.containsKey(s)) {
            return stringMap.get(s);
        }

        // otherwise, need to add it to the heap
        int newIdx = stringMap.size() + 1;
        stringMap.put(s, newIdx);

        final byte[] bytes = s.getBytes(StandardCharsets.UTF_8);
        growToHold(STRINGS, 4 + bytes.length);
        outputs[STRINGS].putInt(bytes.length);
        outputs[STRINGS].put(bytes);

        return newIdx;
    }

    /**
     * Gets the ID of a serialization context. Note that if it is
     * not yet in the dependency table, it will be added.
     * @param sc the serialization context to get the ID.
     * @return 0 if it is the current one, or its dependency table offset (base-1) otherwise.
     */
    private int getSCId(SerializationContext sc) {
        // quickly return if it is the current SC
        if (sc == this.sc) {
            return 0;
        }

        // if not the current SC, try to final it in our dependencies list
        final int found = dependentSCs.indexOf(sc);
        if (found >= 0) {
            return found + 1;
        }

        // otherwise, need to add it to our dependencies list
        dependentSCs.add(sc);
        growToHold(DEPS, 8);
        outputs[DEPS].putInt(addStringToHeap(sc.handle));
        outputs[DEPS].putInt(addStringToHeap(sc.description));
        return dependentSCs.size(); // deliberately (index + 1)
    }

    /**
     * Takes an {@link STable} and returns information on how to reference it.
     * If the {@link STable} is not in an SC, adds it to the current SC,
     * effectively placing it onto the work list.
     * @param st the {@link STable} to get info.
     * @return information on how to reference the {@link STable}.
     */
    private int[] getSTableRefInfo(STable st) {
        // if st not in an SC, add it to the current SC.
        if (st.sc == null) {
            st.sc = this.sc;
            this.sc.addSTable(st);
        }

        // work out SC reference
        return new int[] {
            getSCId(st.sc),
            st.sc.getSTableIndex(st)
        };
    }

    /**
     * Write a native integer.
     * @param value the native integer to write.
     */
    public void writeInt(long value) {
        this.growToHold(currentBuffer, 8);
        outputs[currentBuffer].putLong(value);
    }

    /**
     * Write a 32-bit native integer.
     * @param value the 32-bit native integer to write.
     */
    public void writeInt32(int value) {
        this.growToHold(currentBuffer, 4);
        outputs[currentBuffer].putInt(value);
    }

    /**
     * Write a native number.
     * @param value the native number to write.
     */
    public void writeNum(double value) {
        this.growToHold(currentBuffer, 8);
        outputs[currentBuffer].putDouble(value);
    }

    /**
     * Write a native string.
     * @param value the native string to write.
     */
    public void writeStr(String value) {
        int heapLoc = addStringToHeap(value);
        this.growToHold(currentBuffer, 4);
        outputs[currentBuffer].putInt(heapLoc);
    }

    /**
     * Write an object reference.
     * @param ref the object reference to write.
     */
    private void writeObjRef(SixModelObject ref) {
        if (ref.sc == null) {
            // this object does not belong to an SC yet,
            // so it must be serialized as part of this compilation unit

            // add it to the work list
            ref.sc = this.sc;
            this.sc.addObject(ref);
        }

        // write SC index and then object index
        this.growToHold(currentBuffer, 8);
        outputs[currentBuffer].putInt(getSCId(ref.sc));
        outputs[currentBuffer].putInt(ref.sc.getObjectIndex(ref));
    }

    public void writeList(List<SixModelObject> list) {
        growToHold(currentBuffer, 6);
        outputs[currentBuffer].putShort(REFVAR_VM_ARR_VAR);
        outputs[currentBuffer].putInt(list.size());

        for (SixModelObject item : list) {
            writeRef(item);
        }
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
            outputs[currentBuffer].putLong(hash.get(key));
        }
    }

    private void writeCodeRef(SixModelObject ref) {
        final SerializationContext codeSC = ref.sc;

        final int scId = getSCId(codeSC);
        final int idx = codeSC.getCodeIndex(ref);

        growToHold(currentBuffer, 8);
        outputs[currentBuffer].putInt(scId);
        outputs[currentBuffer].putInt(idx);
    }

    /**
     * Write a reference.
     * @param ref the reference to write.
     */
    public void writeRef(SixModelObject ref) {
        // work out what kind of thing we have and determine the discriminator
        final short discriminator;

        if (ref == null) {
            discriminator = REFVAR_VM_NULL;
        } else if (ref.st.REPR instanceof IOHandle) {
            // we cannot serialize handles
            discriminator = REFVAR_VM_NULL;
        } else if (ref.st.REPR instanceof CallCapture) {
            // this is a hack for Rakudo's sake

            // it keeps a CallCapture around in the lexpad,
            // for no really good reason
            discriminator = REFVAR_VM_NULL;
        } else if (ref.st.REPR instanceof MultiCache) {
            // these are re-computed each time
            discriminator = REFVAR_VM_NULL;
        } else if (ref.st.WHAT == tc.gc.BOOTInt) {
            discriminator = REFVAR_VM_INT;
        } else if (ref.st.WHAT == tc.gc.BOOTNum) {
            discriminator = REFVAR_VM_NUM;
        } else if (ref.st.WHAT == tc.gc.BOOTStr) {
            discriminator = REFVAR_VM_STR;
        } else if (ref.st.WHAT == tc.gc.BOOTArray) {
            discriminator = REFVAR_VM_ARR_VAR;
        } else if (ref.st.WHAT == tc.gc.BOOTIntArray) {
            discriminator = REFVAR_VM_ARR_INT;
        } else if (ref.st.WHAT == tc.gc.BOOTStrArray) {
            discriminator = REFVAR_VM_ARR_STR;
        } else if (ref.st.WHAT == tc.gc.BOOTHash) {
            discriminator = REFVAR_VM_HASH_STR_VAR;
        } else if (ref instanceof CodeRef) {
            if (ref.sc != null && ((CodeRef)ref).isStaticCodeRef) {
                // static code reference
                discriminator = REFVAR_STATIC_CODEREF;
            } else if (ref.sc != null) {
                // closure, but already seen and serialization already handled
                discriminator = REFVAR_CLONED_CODEREF;
            } else {
                // closure, but didn't see it yet

                // take care of it serialization, which gets it marked with this SC
                // then it's just a normal code ref that needs serializing
                serializeClosure((CodeRef)ref);
                discriminator = REFVAR_CLONED_CODEREF;
            }
        } else {
            // no more than a normal object, with no special serialization needs.
            discriminator = REFVAR_OBJECT;
        }

        // write the discriminator
        growToHold(currentBuffer, 2);
        outputs[currentBuffer].putShort(discriminator);

        // now take appropriate action
        switch (discriminator) {
            // case REFVAR_NULL: // placeholder

            case REFVAR_VM_NULL:
                // need not to do anything
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
                // these all delegate to the REPR
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

    /**
     * Write a reference to {@link STable}.
     * @param st the {@link STable} to write.
     */
    public void writeSTableRef(STable st) {
        final int[] refInfo = getSTableRefInfo(st);

        growToHold(currentBuffer, 8);
        outputs[currentBuffer].putInt(refInfo[0]);
        outputs[currentBuffer].putInt(refInfo[1]);
    }

    /**
     * Concatenates the various output segments into a single binary string.
     * @return the single binary string represents the various output segments.
     */
    private String concatenateOutputs() {
        int output_size = 0;
        int offset = 0;

        // calculate total size
        output_size += HEADER_SIZE;
        output_size += outputs[STRINGS].position();
        output_size += outputs[DEPS].position();
        output_size += outputs[STABLES].position();
        output_size += outputs[STABLE_DATA].position();
        output_size += outputs[OBJECTS].position();
        output_size += outputs[OBJECT_DATA].position();
        output_size += outputs[CLOSURES].position();
        output_size += outputs[CONTEXTS].position();
        output_size += outputs[CONTEXT_DATA].position();
        output_size += outputs[REPOS].position();

        // allocate a buffer that size
        final ByteBuffer output = ByteBuffer.allocate(output_size);
        output.order(ByteOrder.LITTLE_ENDIAN);

        // write version into header
        output.putInt(CURRENT_VERSION);
        offset += HEADER_SIZE;

        // put dependencies table in place and set location/rows in header
        output.position(4);
        output.putInt(offset);
        output.putInt(this.dependentSCs.size());
        output.position(offset);
        outputs[DEPS].flip();
        output.put(outputs[DEPS]);
        offset += outputs[DEPS].position();

        // put STables table in place, and set location/rows in header
        output.position(12);
        output.putInt(offset);
        output.putInt(this.sc.stableCount());
        output.position(offset);
        outputs[STABLES].flip();
        output.put(outputs[STABLES]);
        offset += outputs[STABLES].position();

        // put STables data in place
        output.position(20);
        output.putInt(offset);
        output.position(offset);
        outputs[STABLE_DATA].flip();
        output.put(outputs[STABLE_DATA]);
        offset += outputs[STABLE_DATA].position();

        // put objects table in place, and set location/rows in header
        output.position(24);
        output.putInt(offset);
        output.putInt(this.sc.objectCount());
        output.position(offset);
        outputs[OBJECTS].flip();
        output.put(outputs[OBJECTS]);
        offset += outputs[OBJECTS].position();

        // put objects data in place
        output.position(32);
        output.putInt(offset);
        output.position(offset);
        outputs[OBJECT_DATA].flip();
        output.put(outputs[OBJECT_DATA]);
        offset += outputs[OBJECT_DATA].position();

        // put closures table in place, and set location/rows in header
        output.position(36);
        output.putInt(offset);
        output.putInt(this.numClosures);
        output.position(offset);
        outputs[CLOSURES].flip();
        output.put(outputs[CLOSURES]);
        offset += outputs[CLOSURES].position();

        // put contexts table in place, and set location/rows in header
        output.position(44);
        output.putInt(offset);
        output.putInt(this.contexts.size());
        output.position(offset);
        outputs[CONTEXTS].flip();
        output.put(outputs[CONTEXTS]);
        offset += outputs[CONTEXTS].position();

        // put contexts data in place
        output.position(52);
        output.putInt(offset);
        output.position(offset);
        outputs[CONTEXT_DATA].flip();
        output.put(outputs[CONTEXT_DATA]);
        offset += outputs[CONTEXT_DATA].position();

        // put repossessions table in place, and set location/rows in header
        output.position(56);
        output.putInt(offset);
        output.putInt(this.sc.rep_scs.size());
        output.position(offset);
        outputs[REPOS].flip();
        output.put(outputs[REPOS]);
        offset += outputs[REPOS].position();

        // put strings data in place
        output.position(64);
        output.putInt(offset);
        output.putInt(this.stringMap.size());
        output.position(offset);
        outputs[STRINGS].flip();
        output.put(outputs[STRINGS]);
        offset += outputs[STRINGS].position();

        // sanity check
        if (offset != output_size) {
            throw new RuntimeException("Serialization sanity check failed: offset != output_size");
        }

        // Base 64 encode and return
        return Base64.encode(output);
    }

    /**
     * Handles the serialization of an object, which largely involves a
     * delegation to its representation.
     * @param obj the object to process.
     */
    private void serializeObject(SixModelObject obj) {
        // get index of SC that holds the STable and its index
        final int[] refInfo = getSTableRefInfo(obj.st);
        final int sc = refInfo[0];
        final int scIdx = refInfo[1];

        // ensure there is space in the objects table
        growToHold(OBJECTS, OBJECTS_TABLE_ENTRY_SIZE);

        // make objects table entry
        outputs[OBJECTS].putInt(sc);
        outputs[OBJECTS].putInt(scIdx);
        outputs[OBJECTS].putInt(outputs[OBJECT_DATA].position());
        outputs[OBJECTS].putInt(obj instanceof TypeObject ? 0 : 1);

        // make sure we're going to write to the correct place
        currentBuffer = OBJECT_DATA;

        // delegate to its serialization REPR function
        if (!(obj instanceof TypeObject)) {
            obj.st.REPR.serialize(tc, this, obj);
        }
    }

    private void serializeStable(STable st) {
        // ensure there's space in the STables table
        growToHold(STABLES, STABLES_TABLE_ENTRY_SIZE);

        // make STables table entry
        outputs[STABLES].putInt(addStringToHeap(st.REPR.name));
        outputs[STABLES].putInt(outputs[STABLE_DATA].position());

        // ensure we're going to write to the correct place.
        currentBuffer = STABLE_DATA;

        // write HOW, WHAT and WHO
        writeObjRef(st.HOW);
        writeObjRef(st.WHAT);
        writeRef(st.WHO);

        // method cache and v-table
        growToHold(currentBuffer, 2);
        if (st.MethodCache != null) {
            writeHash(st.MethodCache);
        } else {
            outputs[currentBuffer].putShort(REFVAR_VM_NULL);
        }

        writeInt(st.VTable == null ? 0 : st.VTable.length);
        for (SixModelObject vTable : st.VTable) {
            writeRef(vTable);
        }

        // write type check cache
        writeInt(st.TypeCheckCache == null ? 0 : st.TypeCheckCache.length);
        for (SixModelObject typeCheckCache : st.TypeCheckCache) {
            writeRef(typeCheckCache);
        }

        // write mode flags
        writeInt(st.ModeFlags);

        // write boolification spec
        writeInt(st.BoolificationSpec == null ? 0 : 1);
        if (st.BoolificationSpec != null) {
            writeInt(st.BoolificationSpec.Mode);
            writeRef(st.BoolificationSpec.Method);
        }

        // write container spec
        writeInt(st.ContainerSpec == null ? 0 : 1);
        if (st.ContainerSpec != null) {
            writeStr(st.ContainerSpec.name());
            st.ContainerSpec.serialize(tc, st, this);
        }

        // write invocation spec
        writeInt(st.InvocationSpec == null ? 0 : 1);
        if (st.InvocationSpec != null) {
            writeRef(st.InvocationSpec.ClassHandle);
            writeStr(st.InvocationSpec.AttrName);
            writeInt(st.InvocationSpec.Hint);
            writeRef(st.InvocationSpec.InvocationHandler);
        }

        // write HLL info
        writeStr(st.hllOwner == null ? "" : st.hllOwner.name);
        writeInt(st.hllRole);

        if (st.parametricity instanceof ParametricType) {
            // if it is a parametric type, save parameterizer
            writeInt(1);
            writeRef(((ParametricType)st.parametricity).parameterizer);
        } else if (st.parametricity instanceof ParameterizedType) {
            // if it is a parameterized type, save parametric type and parameters
            writeInt(2);
            ParameterizedType pt = (ParameterizedType)st.parametricity;
            writeObjRef(pt.parametricType);
            pt.parameters.st.REPR.serialize(tc, this, pt.parameters);
        } else {
            // otherwise it is neither
            writeInt(0);
        }

        // location of REPR data
        outputs[STABLES].putInt(outputs[STABLE_DATA].position());

        // if the REPR has a function to serialize representation data, call it
        st.REPR.serialize_repr_data(tc, st, this);
    }

    private SixModelObject closureToStaticCodeRef(CodeRef closure, boolean fatal) {
        final SixModelObject staticCode = closure.staticInfo.staticCode;

        if (staticCode == null) {
            if (fatal) {
                throw ExceptionHandling.dieInternal(tc,
                    "Serialization Error: missing static code ref for closure");
            } else {
                return null;
            }
        }

        if (staticCode.sc == null) {
            if (fatal) {
                throw ExceptionHandling.dieInternal(tc,
                    "Serialization Error: could not locate static code ref for closure " +
                        ((CodeRef) staticCode).name);
            } else {
                return null;
            }
        }

        return staticCode;
    }

    private void serializeClosure(CodeRef closure) {
        // locate the static code object
        final SixModelObject staticCodeRef = closureToStaticCodeRef(closure, true);
        final SerializationContext staticCodeSC = staticCodeRef.sc;

        // ensure there's space in the closures table; grow if not
        growToHold(CLOSURES, CLOSURES_TABLE_ENTRY_SIZE);

        // get the index of the context (which will add it to the todo list if needed)
        final int contextIdx = getSerializedOuterContextIdx(closure);

        // add an entry to the closures table
        final int staticSCId = getSCId(staticCodeSC);
        final int staticIdx = staticCodeSC.getCodeIndex(staticCodeRef);
        outputs[CLOSURES].putInt(staticSCId);
        outputs[CLOSURES].putInt(staticIdx);
        outputs[CLOSURES].putInt(contextIdx);

        // check if it has a static code object
        if (closure.codeObject != null) {
            outputs[CLOSURES].putInt(1);
            if (closure.codeObject.sc == null) {
                closure.codeObject.sc = this.sc;
                this.sc.addObject(closure.codeObject);
            }
            outputs[CLOSURES].putInt(getSCId(closure.codeObject.sc));
            outputs[CLOSURES].putInt(closure.codeObject.sc.getObjectIndex(closure.codeObject));
        } else {
            outputs[CLOSURES].putInt(0);
            outputs[CLOSURES].putInt(0); // pad
            outputs[CLOSURES].putInt(0); // pad
        }

        // increment count of closures in the table
        numClosures += 1;

        // add the closure to this SC, and mark it as as being in it
        this.sc.addCodeRef(closure);
        closure.sc = this.sc;
    }

    private int getSerializedOuterContextIdx(CodeRef closure) {
        if (closure.isCompilerStub && (closure.outer == null)) {
            return 0;
        }

        return getSerializedContextIdx(closure.outer);
    }

    private int getSerializedContextIdx(CallFrame cf) {
        if (cf.sc == null) {
            // make sure we should chase a level down
            if (closureToStaticCodeRef(cf.codeRef, false) == null) {
                return 0;
            } else {
                contexts.add(cf);
                cf.sc = this.sc;
                return contexts.size();
            }
        } else {
            if (cf.sc != this.sc) {
                ExceptionHandling.dieInternal(tc,
                    "Serialization Error: reference to context outside of SC");
            }

            final int idx = contexts.indexOf(cf);
            if (idx < 0) {
                ExceptionHandling.dieInternal(tc,
                    "Serialization Error: could not locate outer context in current SC");
            }

            return idx + 1;
        }
    }

    private void serializeContext(CallFrame cf) {
        // locate the static code ref this context points to
        final SixModelObject staticCodeRef = closureToStaticCodeRef(cf.codeRef, true);
        final SerializationContext staticCodeSC = staticCodeRef.sc;

        if (staticCodeSC == null) {
            ExceptionHandling.dieInternal(tc,
                "Serialization Error: closure outer is a code object not in an SC");
        }

        final int staticSCId = getSCId(staticCodeSC);
        final int staticIdx = staticCodeSC.getCodeIndex(staticCodeRef);

        // ensure there's space in the contexts table; grow if not
        growToHold(CONTEXTS, CONTEXTS_TABLE_ENTRY_SIZE);

        // make contexts table entry
        outputs[CONTEXTS].putInt(staticSCId);
        outputs[CONTEXTS].putInt(staticIdx);
        outputs[CONTEXTS].putInt(outputs[CONTEXT_DATA].position());

        // see if there's any relevant outer context,
        // and if so set it up to be serialized
        if (cf.outer != null) {
            outputs[CONTEXTS].putInt(getSerializedContextIdx(cf.outer));
        } else {
            outputs[CONTEXTS].putInt(0);
        }

        // set up writer
        currentBuffer = CONTEXT_DATA;

        // serialize lexical
        int numOfLexical = 0;
        numOfLexical += cf.oLex == null ? 0 : cf.oLex.length;
        numOfLexical += cf.iLex == null ? 0 : cf.iLex.length;
        numOfLexical += cf.nLex == null ? 0 : cf.nLex.length;
        numOfLexical += cf.sLex == null ? 0 : cf.sLex.length;
        writeInt(numOfLexical);

        if (cf.oLex != null) {
            final String[] names = cf.codeRef.staticInfo.oLexicalNames;
            for (int i = 0; i < cf.oLex.length; i++) {
                writeStr(names[i]);
                writeRef(cf.oLex[i]);
            }
        }

        if (cf.iLex != null) {
            final String[] names = cf.codeRef.staticInfo.iLexicalNames;
            for (int i = 0; i < cf.iLex.length; i++) {
                writeStr(names[i]);
                writeInt(cf.iLex[i]);
            }
        }

        if (cf.nLex != null) {
            final String[] names = cf.codeRef.staticInfo.nLexicalNames;
            for (int i = 0; i < cf.nLex.length; i++) {
                writeStr(names[i]);
                writeNum(cf.nLex[i]);
            }
        }

        if (cf.sLex != null) {
            final String[] names = cf.codeRef.staticInfo.sLexicalNames;
            for (int i = 0; i < cf.sLex.length; i++) {
                writeStr(names[i]);
                writeStr(cf.sLex[i]);
            }
        }
    }

    /**
     * Grows a buffer as needed to hold more data.
     * @param idx the index of start point.
     * @param required the required buffer size.
     */
    private void growToHold(int idx, int required) {
        final ByteBuffer check = this.outputs[idx];
        final int position = check.position();

        if (position + required >= check.capacity()) {
            final ByteBuffer replacement = ByteBuffer.allocate(
                Math.max(check.capacity() * 2, position + required));
            replacement.order(ByteOrder.LITTLE_ENDIAN);
            check.position(0);
            replacement.put(check);
            replacement.position(position);
            this.outputs[idx] = replacement;
        }
    }

    /**
     * Goes through the list of repossessions and serializes them all.
     */
    private void serializeRepossessions() {
        // allocate table space, provided we've actually something to do
        final int numRepos = sc.rep_indexes.size();

        if (numRepos == 0) {
            return;
        }

        growToHold(REPOS, numRepos * REPOS_TABLE_ENTRY_SIZE);

        // make entries
        for (int i = 0; i < numRepos; i++) {
            final int objIdx = sc.rep_indexes.get(i) >> 1;
            final int isST = sc.rep_indexes.get(i) & 1;
            final SerializationContext origSC = sc.rep_scs.get(i);

            // work out original object's SC location
            final int origSCIdx = getSCId(origSC);
            final int origIdx = (isST != 0)
                ? origSC.getSTableIndex(sc.getSTable(objIdx))
                : origSC.getObjectIndex(sc.getObject(objIdx));

            if (origIdx < 0) {
                throw new RuntimeException(
                    "Could not find object when writing repossessions; " +
                        ((isST != 0)
                            ? "STable"
                            : "REPR = " + sc.getObject(objIdx).st.REPR.name));
            }

            // write table row
            outputs[REPOS].putInt(isST);
            outputs[REPOS].putInt(objIdx);
            outputs[REPOS].putInt(origSCIdx);
            outputs[REPOS].putInt(origIdx);
        }
    }

    /**
     * This is the overall serialization loop. It keeps an index into the list of
     * STables and objects in the SC. As we discover new ones, they get added.
     * We finished when we've serialized everything.
     */
    private void serializationLoop() {
        boolean workTodo = true;

        while (workTodo) {
            // current work list sizes
            final int sTablesTodo = sc.stableCount();
            final int objectsTodo = sc.objectCount();
            final int contextsTodo = contexts.size();

            // reset todo flag
            // if we do some work we will go round again
            // as it may have generated more
            workTodo = false;

            // serialize any STables on the todo list
            while (sTablesListPos < sTablesTodo) {
                serializeStable(sc.getSTable(sTablesListPos));
                sTablesListPos++;
                workTodo = true;
            }

            // serialize any objects on the todo list.
            while (objectsListPos < objectsTodo) {
                serializeObject(sc.getObject(objectsListPos));
                objectsListPos++;
                workTodo = true;
            }

            // serialize any contexts on the todo list
             while (contextsListPos < contextsTodo) {
                serializeContext(contexts.get(contextsListPos));
                contextsListPos++;
                workTodo = true;
            }
        }

        // finally, serialize repossessions table
        // (this cannot make any more work, so is
        // done as a separate step here at the end)
        serializeRepossessions();
    }
}
