package org.perl6.nqp.sixmodel;

import java.util.ArrayList;

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
    
	public SerializationContext(String handle) {
		this.handle = handle;
		this.root_objects = new ArrayList<SixModelObject>();
		this.root_stables = new ArrayList<STable>();
		this.root_codes = new ArrayList<CodeRef>();
		this.rep_indexes = new ArrayList<Integer>();
		this.rep_scs = new ArrayList<SerializationContext>();
	}
}
