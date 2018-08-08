package org.perl6.nqp.truffle;

import org.perl6.nqp.truffle.runtime.HLL;
import java.util.HashMap;

import com.oracle.truffle.api.frame.FrameSlot;

import java.util.HashMap;

public class NQPCompUnitScope extends NQPScope {
    NQPScope outer;
    HLL currentHLL;
    HashMap<String, HLL> hlls;

    public NQPCompUnitScope(NQPScope outer, HashMap<String, HLL> hlls, String hll) {
        this.outer = outer;
        this.hlls = hlls;

        if (!this.hlls.containsKey(hll)) {
            hlls.put(hll, new HLL());
        }

        this.currentHLL = hlls.get(hll);
    }

    @Override
    public HashMap<String, HLL> getHLLs() {
        return hlls;
    }

    @Override
    public HLL getCurrentHLL() {
        return currentHLL;
    }

    @Override
    public FrameSlot addLexical(String name) {
        return outer.addLexical(name);
    }

    @Override
    public FoundLexical findLexical(String name, int depth) {
        return outer.findLexical(name, depth);
    }

    @Override
    public FrameSlot addLocal(String name) {
        return outer.addLocal(name);
    }

    @Override
    public FrameSlot findLocal(String name) {
        return outer.findLocal(name);
    }
}
