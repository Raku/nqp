package org.perl6.nqp.truffle.sixmodel;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.truffle.runtime.NQPCodeRef;

public final class SerializationContext {
    /* The handle of this SC. */
    public String handle;

    /* Description (probably the file name) if any. */
    public String description;

    /* The root set of objects that live in this SC. */
    private ArrayList<Object> rootObjects = new ArrayList<Object>();

    /* The root set of STables that live in this SC. */
    private ArrayList<STable> rootSTables = new ArrayList<STable>();

    /* The root set of code refs that live in this SC. */
    private ArrayList<NQPCodeRef> rootCodes = new ArrayList<NQPCodeRef>();

    /* Some things we deserialize are not directly in an SC, root set, but
     * rather are owned by others. This is mostly thanks to Parrot legacy,
     * where not everything was a 6model object. This maps such owned
     * objects to their owner. It is used to determine what object should
     * be repossessed in the case a write barrier is hit. */
    public HashMap<Object, Object> ownedObjects = new HashMap<Object, Object>();

    public SerializationContext(String handle) {
        this.handle = handle;
    }

    public void initSTableList(int entries) {
        rootSTables.ensureCapacity(entries);
        for (int i = 0; i < entries; i++)
            rootSTables.add(null);
    }

    private HashMap<STable, Integer> stableIndexCache = new HashMap<STable, Integer>();
    public void addSTable(STable stable) {
        int newIndex = rootSTables.size();
        rootSTables.add(stable);
        stableIndexCache.put(stable, new Integer(newIndex));
    }

    public void setSTable(int index, STable stable) {
        rootSTables.set(index, stable);
        stableIndexCache.put(stable,  new Integer(index));
    }

    public int getSTableIndex(STable stable) {
        Integer cachedIndex = stableIndexCache.get(stable);
        if (cachedIndex != null) {
            return cachedIndex.intValue();
        } else {
            return -1;
        }
    }

    public STable getSTable(int index) {
        return rootSTables.get(index);
    }

    public int stableCount() {
        return rootSTables.size();
    }

    private HashMap<Object, Integer> codeIndexCache = new HashMap<Object, Integer>();
    public void addCodeRef(NQPCodeRef coderef) {
        int newIndex = rootCodes.size();
        rootCodes.add(coderef);
        codeIndexCache.put(coderef, new Integer(newIndex));
    }
    public void addCodeRef(NQPCodeRef obj, int index) {
        if (index == rootCodes.size()) {
            rootCodes.add(obj);
        } else {
            rootCodes.set(index, obj);
        }
        codeIndexCache.put(obj, new Integer(index));
    }
    public int getCodeIndex(Object coderef) {
        Integer cachedIndex = codeIndexCache.get(coderef);
        if (cachedIndex != null) {
            return cachedIndex.intValue();
        } else {
            return -1;
        }
    }
    public NQPCodeRef getCodeRef(int index) {
        return rootCodes.get(index);
    }
    public int codeRefCount() {
        return rootCodes.size();
    }

    private HashMap<Object, Integer> objectIndexCache = new HashMap<Object, Integer>();

    public void initObjectList(int entries) {
        rootObjects.ensureCapacity(entries);
        for (int i = 0; i < entries; i++)
            rootObjects.add(null);
    }

    public void addObject(Object obj) {
        int newIndex = rootObjects.size();
        rootObjects.add(obj);
        objectIndexCache.put(obj, new Integer(newIndex));
    }

    public void addObject(Object obj, int index) {
        if (index == rootObjects.size()) {
            rootObjects.add(obj);
        } else {
            rootObjects.set(index,  obj);
        }
        objectIndexCache.put(obj, new Integer(index));
    }

    public int getObjectIndex(Object obj) {
        Integer cachedIndex = objectIndexCache.get(obj);
        if (cachedIndex != null) {
            return cachedIndex.intValue();
        } else {
            return -1;
        }
    }

    public Object getObject(int index) {
        return rootObjects.get(index);
    }

    public int objectCount() {
        return rootObjects.size();
    }

}
