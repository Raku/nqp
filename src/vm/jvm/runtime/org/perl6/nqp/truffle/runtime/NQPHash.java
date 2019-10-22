package org.perl6.nqp.truffle.runtime;

import org.perl6.nqp.truffle.sixmodel.SerializationContext;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class NQPHash {
    private HashMap<String, Object> contents;

    public SerializationContext sc;

    public NQPHash() {
        this.contents = new HashMap<>();
    }

    public NQPHash(HashMap<String, Object> contents) {
        this.contents = contents;
    }

    public Object atkey(String key) {
        Object value = contents.get(key);
        if (value == null) {
            return NQPNull.SINGLETON;
        } else {
            return value;
        }
    }

    public Object bindkey(String key, Object value) {
        contents.put(key, value);
        return value;
    }

    public int existskey(String key) {
        return contents.containsKey(key) ? 1 : 0;
    }

    public void deletekey(String key) {
        contents.remove(key);
    }

    public int elems() {
        return contents.size();
    }

    public Set<Map.Entry<String, Object>> entrySet() {
        return contents.entrySet();
    }

    public HashMap<String, Object> getContents() {
        return contents;
    }
}
