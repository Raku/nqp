package org.perl6.nqp.sixmodel.reprs;

import java.util.HashMap;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class VMHashInstance extends SixModelObject {
    public static final HashMap<String, SixModelObject> EMPTY_MAP = 
            new HashMap<String, SixModelObject>();

    public HashMap<String, SixModelObject> storage;

    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        return storage.get(key);
    }
    
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        if (storage == VMHashInstance.EMPTY_MAP) {
            storage = new HashMap<String, SixModelObject>();
        }
        storage.put(key, value);
    }
    
    public long exists_key(ThreadContext tc, String key) {
        return storage.containsKey(key) ? 1 : 0;
    }
    
    public void delete_key(ThreadContext tc, String key) {
        storage.remove(key);
    }

    public long elems(ThreadContext tc) {
        return storage.size();
    }
    
    @SuppressWarnings("unchecked")
    public SixModelObject clone(ThreadContext tc) {
        try {
            VMHashInstance copy = (VMHashInstance)this.clone();
            copy.sc = null;
            copy.storage = (HashMap<String, SixModelObject>)storage.clone();
            return copy;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
