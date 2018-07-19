package org.perl6.nqp.truffle.runtime;

import org.perl6.nqp.truffle.runtime.NQPNull;
import java.util.HashMap;

public final class NQPHash {
    HashMap<String, Object> contents;

    public NQPHash() {
        this.contents = new HashMap<String, Object>();
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
        return contents.put(key, value);
    }

    public int existskey(String key) {
        return contents.containsKey(key) ? 1 : 0;
    }

    public int elems() {
        return contents.size();
    }
}
