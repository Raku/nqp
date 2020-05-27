package org.raku.nqp.sixmodel.reprs;

import java.util.HashMap;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class VMHashInstance extends SixModelObject {
    public static final HashMap<String, SixModelObject> EMPTY_MAP =
            new HashMap<String, SixModelObject>();

    public HashMap<String, SixModelObject> storage;

    @Override
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        return storage.get(key);
    }

    @Override
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        if (storage == VMHashInstance.EMPTY_MAP) {
            storage = new HashMap<String, SixModelObject>();
        }
        storage.put(key, value);
    }

    @Override
    public long exists_key(ThreadContext tc, String key) {
        return storage.containsKey(key) ? 1 : 0;
    }

    @Override
    public void delete_key(ThreadContext tc, String key) {
        storage.remove(key);
    }

    @Override
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
