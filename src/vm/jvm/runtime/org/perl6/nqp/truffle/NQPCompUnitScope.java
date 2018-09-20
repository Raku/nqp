package org.perl6.nqp.truffle;

import com.oracle.truffle.api.frame.FrameSlot;
import java.util.HashMap;
import org.perl6.nqp.truffle.GlobalContext;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

public class NQPCompUnitScope extends NQPScope {
    NQPScope outer;
    HLL currentHLL;

    GlobalContext globalContext;

    HashMap<String, NQPCodeRef> cuids;

    public NQPCompUnitScope(NQPScope outer, String hll, GlobalContext globalContext) {
        this.outer = outer;

        this.globalContext = globalContext;

        HashMap<String, HLL> hlls = globalContext.hlls;

        if (!hlls.containsKey(hll)) {
            hlls.put(hll, new HLL());
        }

        this.currentHLL = hlls.get(hll);

        cuids = new HashMap<String, NQPCodeRef>();
    }

    @Override
    public GlobalContext getGlobalContext() {
        return globalContext;
    }


    @Override
    public HLL getCurrentHLL() {
        return currentHLL;
    }

    @Override
    public NQPCodeRef getCuid(String cuid) {
        NQPCodeRef got = cuids.get(cuid);
        if (got != null) {
            return got;
        } else {
            throw new RuntimeException("Can't get cuid: " + cuid);
        }
    }

    @Override
    public void addCuid(String cuid, NQPCodeRef codeRef) {
        cuids.put(cuid, codeRef);
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
