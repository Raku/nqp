package org.perl6.nqp.sixmodel.reprs;

import java.util.HashMap;

import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SixModelObject;

public class P6OpaqueREPRData {
    /**
     * The JVM class that will be used to represent state storage for this
     * type. 
     */
    public Class<?> jvmClass;
    
    /**
     * Instance of jvmClass, cloned per allocation.
     */
    public P6OpaqueBaseInstance instance;
    
    /**
     * List of class handles that have attributes in this type.
     */
    public SixModelObject[] classHandles;
    
    /**
     * Array of attribute name to hint mappings.
     */
    public HashMap<String, Integer>[] nameToHintMap;
    
    /**
     * Auto-viv container types.
     */
    public SixModelObject[] autoVivContainers;
    
    /**
     * Flattened STables for attributes (null if reference attribute).
     */
    public STable[] flattenedSTables;
    
    /**
     * Is the type multiply inheriting?
     */
    public boolean mi;
    
    /**
     * Unbox and delegation slots; -1 if no such unbox slot.
     */
    public int unboxIntSlot = -1;
    public int unboxNumSlot = -1;
    public int unboxStrSlot = -1;
    public int posDelSlot = -1;
    public int assDelSlot = -1;
}
