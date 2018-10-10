package org.perl6.nqp.sixmodel;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.runtime.CodeRef;

/**
 * A serialization context holds a list of objects and code references that live
 * within a serialization boundary.
 */
@SuppressWarnings("WeakerAccess")
public class SerializationContext {
    /** The handle of this SC. */
    public final String handle;

    /** Description (probably the file name) if any. */
    public String description;

    /** The root set of objects that live in this SC. */
    private ArrayList<SixModelObject> root_objects;

    /** The root set of STables that live in this SC. */
    private ArrayList<STable> root_stables;

    /** The root set of code refs that live in this SC. */
    private ArrayList<CodeRef> root_codes;

    // Repossession info. The following lists have matching indexes, each
    // representing the integer of an object in our root set along with the SC
    // that the object was originally from.
    ArrayList<Integer> rep_indexes;
    ArrayList<SerializationContext> rep_scs;

    // Some things we deserialize are not directly in an SC, root set, but
    // rather are owned by others. This is mostly thanks to Parrot legacy,
    // where not everything was a 6model object. This maps such owned
    // objects to their owner. It is used to determine what object should
    // be repossessed in the case a write barrier is hit.
    public HashMap<SixModelObject, SixModelObject> owned_objects;

    public SerializationContext(String handle) {
        this.handle = handle;
        this.root_objects = new ArrayList<>();
        this.root_stables = new ArrayList<>();
        this.root_codes = new ArrayList<>();
        this.rep_indexes = new ArrayList<>();
        this.rep_scs = new ArrayList<>();
        this.owned_objects = new HashMap<>();
    }

    /**
     * Takes an object and adds it to this SC's root set,
     * and installs a repossessions entry.
     * @param origSC the {@link SerializationContext} to add the object.
     * @param obj the object to repossess.
     */
    public void repossessObject(SerializationContext origSC, SixModelObject obj) {
        // check the object really lives in the SC root set
        if (obj.sc.root_objects.indexOf(obj) < 0) {
            throw new RuntimeException("Attempt to repossess object not in this context");
        }

        // add to root set
        addObject(obj);

        // add repossession entry
        final int newSlot = root_objects.size();
        rep_indexes.add(newSlot << 1);
        rep_scs.add(origSC);
    }

    /**
     * Takes an STable and adds it to this SC's root set,
     * and installs a repossession entry.
     * @param origSC the {@link SerializationContext} to add the {@link STable}.
     * @param st the {@link STable} to repossess.
     */
    public void repossessSTable(SerializationContext origSC, STable st) {
        // add to root set
        addSTable(st);

        // add repossession entry
        final int newSlot = root_stables.size();
        rep_indexes.add((newSlot << 1) | 1);
        rep_scs.add(origSC);
    }

    private final HashMap<SixModelObject, Integer> objectIndexCache = new HashMap<>();

    public void addObject(SixModelObject obj) {
        final int newIndex = root_objects.size();
        root_objects.add(obj);
        objectIndexCache.put(obj, newIndex);
    }

    public void addObject(SixModelObject obj, int index) {
        if (index == root_objects.size()) {
            root_objects.add(obj);
        } else {
            root_objects.set(index,  obj);
        }

        objectIndexCache.put(obj, index);
    }

    public int getObjectIndex(SixModelObject obj) {
        final Integer cachedIndex = objectIndexCache.get(obj);

        return (cachedIndex != null) ? cachedIndex : -1;
    }

    public SixModelObject getObject(int index) {
        return root_objects.get(index);
    }

    public int objectCount() {
        return root_objects.size();
    }

    public void initObjectList(int entries) {
        root_objects.ensureCapacity(entries);

        for (int i = 0; i < entries; i++) {
            root_objects.add(null);
        }
    }

    private final HashMap<STable, Integer> stableIndexCache = new HashMap<>();

    public void addSTable(STable stable) {
        final int newIndex = root_stables.size();
        root_stables.add(stable);
        stableIndexCache.put(stable, newIndex);
    }


    public void setSTable(int index, STable stable) {
        root_stables.set(index, stable);
        stableIndexCache.put(stable,  index);
    }

    public int getSTableIndex(STable stable) {
        final Integer cachedIndex = stableIndexCache.get(stable);

        return (cachedIndex != null) ? cachedIndex : -1;
    }

    public STable getSTable(int index) {
        return root_stables.get(index);
    }

    public int stableCount() {
        return root_stables.size();
    }

    public void initSTableList(int entries) {
        root_stables.ensureCapacity(entries);

        for (int i = 0; i < entries; i++) {
            root_stables.add(null);
        }
    }

    private HashMap<SixModelObject, Integer> codeIndexCache = new HashMap<>();

    public void addCodeRef(CodeRef coderef) {
        final int newIndex = root_codes.size();
        root_codes.add(coderef);
        codeIndexCache.put(coderef, newIndex);
    }

    public void addCodeRef(CodeRef obj, int index) {
        if (index == root_codes.size()) {
            root_codes.add(obj);
        } else {
            root_codes.set(index,  obj);
        }
        codeIndexCache.put(obj, index);
    }

    public int getCodeIndex(SixModelObject codeRef) {
        final Integer cachedIndex = codeIndexCache.get(codeRef);

        return (cachedIndex != null) ? cachedIndex : -1;
    }

    public CodeRef getCodeRef(int index) {
        return root_codes.get(index);
    }

    public int codeRefCount() {
        return root_codes.size();
    }

    public void disclaimObjects() {
        for (SixModelObject obj : root_objects) {
            obj.sc = null;
        }

        root_objects = new ArrayList<>();
    }

    public void disclaimSTables() {
        for (STable stable : root_stables) {
            stable.sc = null;
        }

        root_stables = new ArrayList<>();
    }

    public void disclaimCodes() {
        for (CodeRef obj : root_codes) {
            obj.sc = null;
        }

        root_codes = new ArrayList<>();
    }
}
