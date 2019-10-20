package org.perl6.nqp.truffle.runtime;

import java.util.HashMap;
import org.perl6.nqp.truffle.GlobalContext;
import org.perl6.nqp.truffle.sixmodel.TypeObject;

public final class HLL {
    private HashMap<String, Object> symbols;

    public TypeObject listType;
    public TypeObject slurpyArrayType;
    public TypeObject arrayIteratorType;
    public TypeObject hashIteratorType;

    public HLL(GlobalContext globalContext) {
        symbols = new HashMap<>();

        listType = globalContext.BOOTArray;
        slurpyArrayType = globalContext.BOOTArray;
        arrayIteratorType = globalContext.BOOTIter;
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
