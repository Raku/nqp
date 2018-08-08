package org.perl6.nqp.truffle.runtime;

import org.perl6.nqp.truffle.runtime.NQPNull;
import java.util.HashMap;

public final class HLL {
    HashMap<String, Object> symbols;

    public HLL() {
        symbols = new HashMap<String, Object>();
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
