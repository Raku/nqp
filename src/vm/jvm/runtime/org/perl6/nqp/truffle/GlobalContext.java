package org.perl6.nqp.truffle;

import org.perl6.nqp.truffle.runtime.HLL;
import java.util.HashMap;

public class GlobalContext {
    static GlobalContext SINGLETON = new GlobalContext();

    public HashMap<String, HLL> hlls;

    public GlobalContext() {
        hlls = new HashMap<String, HLL>();
    }
}

