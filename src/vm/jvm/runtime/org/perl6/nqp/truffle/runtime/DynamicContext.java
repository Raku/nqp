package org.perl6.nqp.truffle.runtime;
import java.util.HashMap;
import org.perl6.nqp.truffle.runtime.NQPNull;

public class DynamicContext {
    private final DynamicContext outer;
    HashMap<String, Object> contents = new HashMap<>();

    public DynamicContext() {
        outer = null;
    }

    public DynamicContext(DynamicContext outer) {
        this.outer = outer;
    }

    public Object lookup(String name) {
        if (contents.containsKey(name)) {
            return contents.get(name);
        } else {
            if (outer != null) {
                return this.lookup(name);
            } else {
                return NQPNull.SINGLETON;
            }
        }
    }

    public void bind(String name, Object value) {
        if (contents.containsKey(name)) {
            contents.put(name, value);
        } else {
            if (outer != null) {
                this.outer.bind(name, value);
            } else {
                throw new RuntimeException("Can't bind " + name);
            }
        }
    }

    public void bindDirect(String name, Object value) {
        contents.put(name, value);
    }

    public Object lookupDirect(String name) {
        return contents.get(name);
    }
}
