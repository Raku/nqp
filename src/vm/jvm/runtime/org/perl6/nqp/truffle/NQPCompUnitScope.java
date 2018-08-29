package org.perl6.nqp.truffle;

import java.util.HashMap;

import com.oracle.truffle.api.frame.FrameSlot;

import java.util.HashMap;

import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

public class NQPCompUnitScope extends NQPScope {
    NQPScope outer;
    HLL currentHLL;

    HashMap<String, HLL> hlls;
    HashMap<String, SerializationContext> scs;

    public NQPCompUnitScope(NQPScope outer, HashMap<String, HLL> hlls, String hll, HashMap<String, SerializationContext> scs) {
        this.outer = outer;
        this.hlls = hlls;
        this.scs = scs;

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
    public HashMap<String, SerializationContext> getScs() {
        return scs;
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
