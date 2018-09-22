package org.perl6.nqp.truffle.runtime;

import java.util.HashMap;

public final class HLL {
    private HashMap<String, Object> symbols;

    public HLL() {
        symbols = new HashMap<>();
    }

    public Object getSymbol(String key) {
        Object value = symbols.get(key);
        if (value == null) {
            return NQPNull.SINGLETON;
        } else {
            return value;
        }
    }

    public Object bindSymbol(String key, Object value) {
        symbols.put(key, value);
        return value;
    }
}
