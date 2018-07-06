package org.perl6.nqp.truffle.runtime;

import java.util.HashMap;

public final class NQPHash {
    HashMap<String, Object> contents;

    public NQPHash() {
        this.contents = new HashMap<String, Object>();
    }

    public Object atkey(String key) {
        return contents.get(key);
    }

    public Object bindkey(String key, Object value) {
        return contents.put(key, value);
    }

    public int elems() {
        return contents.size();
    }
}
