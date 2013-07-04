package org.perl6.nqp.sixmodel;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.runtime.CodeRef;

/**
 * A serialization context holds a list of objects and code references that live
 * within a serialization boundary.
 */
public class SerializationContext {
    /* The handle of this SC. */
    public String handle;
    
    /* Description (probably the file name) if any. */
    public String description;
    
    /* The root set of objects that live in this SC. */
    public ArrayList<SixModelObject> root_objects;
    
    /* The root set of STables that live in this SC. */
    public ArrayList<STable> root_stables;
    
    /* The root set of code refs that live in this SC. */
    public ArrayList<CodeRef> root_codes;
    
    /* Repossession info. The following lists have matching indexes, each
     * representing the integer of an object in our root set along with the SC
     * that the object was originally from. */
    public ArrayList<Integer> rep_indexes;
    public ArrayList<SerializationContext> rep_scs;
    
    /* Some things we deserialize are not directly in an SC, root set, but
     * rather are owned by others. This is mostly thanks to Parrot legacy,
     * where not everything was a 6model object. This maps such owned
     * objects to their owner. It is used to determine what object should
     * be repossessed in the case a write barrier is hit. */
    public HashMap<SixModelObject, SixModelObject> owned_objects;
    
    public SerializationContext(String handle) {
        this.handle = handle;
        this.root_objects = new ArrayList<SixModelObject>();
        this.root_stables = new ArrayList<STable>();
        this.root_codes = new ArrayList<CodeRef>();
        this.rep_indexes = new ArrayList<Integer>();
        this.rep_scs = new ArrayList<SerializationContext>();
        this.owned_objects = new HashMap<SixModelObject, SixModelObject>();
    }
    
    /* Takes an object and adds it to this SC's root set, and installs a
     * reposession entry. */
    public void repossessObject(SerializationContext origSC, SixModelObject obj) {
        /* Check the object really lives in the SC root set. */
        if (obj.sc.root_objects.indexOf(obj) < 0)
            throw new RuntimeException("Attempt to repossess object not in this context");
        
        /* Add to root set. */
        int newSlot = root_objects.size();
        root_objects.add(obj);
        
        /* Add repossession entry. */
        rep_indexes.add(newSlot << 1);
        rep_scs.add(origSC);
    }
    
    /* Takes an STable and adds it to this SC's root set, and installs a
     * reposession entry. */
    public void repossessSTable(SerializationContext origSC, STable st) {
        /* Add to root set. */
        int newSlot = root_stables.size();
        root_stables.add(st);
        
        /* Add repossession entry. */
        rep_indexes.add((newSlot << 1) | 1);
        rep_scs.add(origSC);
    }
}
