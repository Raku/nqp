package org.perl6.nqp.sixmodel;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

/**
 * Base of all 6model representations. Has default implementations of functions that
 * are not mandatory.
 */
public abstract class REPR {
    /**
     * The ID of the representation. Purely internal, may vary from run to run in
     * some cases, don't persist.
     */
    public int ID;
    
    /**
     * The name of the representation.
     */
    public String name;
    
    /**
     * Creates a new type object of this representation, and associates it
     * with the given HOW.
     */
    public abstract SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW);

    /**
     * Allocates a new, but uninitialized object, based on the
     * specified s-table. */
    public abstract SixModelObject allocate(ThreadContext tc, STable st);
    
    /**
     * Composes the representation; typically performed at type composition time.
     */
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        // By default, nothing to do.
    }
    
    /**
     * Gets attribute access hint for the representation.
     */
    public long hint_for(ThreadContext tc, STable st, SixModelObject class_handle, String name) {
        return STable.NO_HINT;
    }
    
    /**
     * Gets information on how objects of this representation like to be
     * stored (inlined into the body of another object, or referencey).
     */
    public StorageSpec get_storage_spec(ThreadContext tc, STable st) {
        return new StorageSpec();
    }

    /**
     * For aggregate types, gets the storage type of values in the aggregate.
     */
    public StorageSpec get_value_storage_spec(ThreadContext tc, STable st) {
        throw ExceptionHandling.dieInternal(tc, "This representation does not implement get_value_storage_spec");
    }
    
    /**
     * Handles an object changing its type. The representation is responsible
     * for doing any changes to the underlying data structure, and may reject
     * changes that it's not willing to do (for example, a representation may
     * choose to only handle switching to a subclass). It is also left to update
     * the S-Table reference as needed; while in theory this could be factored
     * out, the representation probably knows more about timing issues and
     * thread safety requirements.
     */
    public void change_type(ThreadContext tc, SixModelObject Object, SixModelObject NewType) {
        throw ExceptionHandling.dieInternal(tc, "This representation does not support type changes.");
    }
    
    /**
     * Object serialization. Writes the objects body out using the passed
     * serialization writer. */
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "Missing serialize function for REPR " + name);
    }
    
    /**
     * Object deserialization. Happens in two steps. The first stub step
     * creates an object to be filled out later. Note that the STable may
     * not be fully available yet if it's in the current compilation unit.
     * The second step has the STable fully formed (though objects it
     * references may not be) and should do the rest of the work. */
    public abstract SixModelObject deserialize_stub(ThreadContext tc, STable st);
    public abstract void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj);
    
    /**
     * REPR data serialization. Serializes the per-type representation data that
     * is attached to the supplied STable.
     */
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        // It's fine for this to be unimplemented.
    }
    
    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader)
    {
        // It's fine for this to be unimplemented.
    }
    
    /**
     * Flattening related functions.
     */
    public void inlineStorage(ThreadContext tc, STable st, ClassWriter cw, String prefix) {
        throw ExceptionHandling.dieInternal(tc, "This representation cannot inline itself into another");
    }
    public void inlineBind(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        throw ExceptionHandling.dieInternal(tc, "This representation cannot inline itself into another");
    }
    public void inlineGet(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        throw ExceptionHandling.dieInternal(tc, "This representation cannot inline itself into another");
    }
    public void inlineDeserialize(ThreadContext tc, STable st, MethodVisitor mv, String className, String prefix) {
        throw ExceptionHandling.dieInternal(tc, "This representation cannot inline itself into another");
    }
    public void generateBoxingMethods(ThreadContext tc, STable st, ClassWriter cw, String className, String prefix) {
        throw ExceptionHandling.dieInternal(tc, "This representation does not support being a box target");        
    }
    public void serialize_inlined(ThreadContext tc, STable st, SerializationWriter writer, 
            String prefix, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "This representation cannot serialize an inlined representation of itself");
    }
    // These two functions are called when determining if a new class is needed; they should append a complete description
    // of the code they would use for inline* or generateBoxingMethods, in a format which is arbitrary except that it may
    // not contain imbalanced parens, and return true.  Returning false means no description is possible and the class must
    // always be created fresh.
    public boolean inline_description(ThreadContext tc, STable st, StringBuilder out) {
        return false;
    }
    public boolean box_description(ThreadContext tc, STable st, StringBuilder out) {
        return false;
    }
}

