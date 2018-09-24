package org.perl6.nqp.truffle;

import com.oracle.truffle.api.frame.FrameSlot;
import java.util.HashMap;
import org.perl6.nqp.truffle.GlobalContext;
import com.oracle.truffle.api.frame.FrameSlot;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.truffle.runtime.HLL;

public class NQPScopeWithGlobalContext extends NQPScope {
    GlobalContext globalContext;

    public NQPScopeWithGlobalContext(GlobalContext globalContext) {
        this.globalContext = globalContext;
    }

    @Override
    public GlobalContext getGlobalContext() {
        return globalContext;
    }


    @Override
    public HLL getCurrentHLL() {
        throw new RuntimeException("Can't get HLL");
    }

    @Override
    public NQPCodeRef getCuid(String cuid) {
        throw new RuntimeException("Can't get cuid: " + cuid);
    }

    @Override
    public void addCuid(String cuid, NQPCodeRef codeRef) {
        throw new RuntimeException("Can't add cuid: " + cuid);
    }

    @Override
    public FrameSlot addLexical(String name) {
        throw new RuntimeException("Can't add lexical");
    }

    @Override
    public FoundLexical findLexical(String name, int depth) {
        return null;
    }

    @Override
    public FrameSlot addLocal(String name) {
        throw new RuntimeException("Can't add local");
    }

    @Override
    public FrameSlot findLocal(String name) {
        throw new RuntimeException("Can't add find local");
    }

    @Override
    public FrameSlot getContextSlot() {
        throw new RuntimeException("Can't get a context slot");
    }
}
