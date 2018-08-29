package org.perl6.nqp.truffle;

import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

import java.util.HashMap;

public class GlobalContext {
    static GlobalContext SINGLETON = new GlobalContext();

    public HashMap<String, HLL> hlls;
    public HashMap<String, SerializationContext> scs;

    public GlobalContext() {
        hlls = new HashMap<String, HLL>();
        scs = new HashMap<String, SerializationContext>();
    }
}

