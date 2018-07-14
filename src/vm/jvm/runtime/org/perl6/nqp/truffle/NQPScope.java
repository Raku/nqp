package org.perl6.nqp.truffle;

import com.oracle.truffle.api.frame.FrameSlot;

public abstract class NQPScope {
    public abstract void addLexical(String name);
    public abstract FoundLexical findLexical(String name, int depth);
    public FoundLexical findLexical(String name) {
        return findLexical(name, 0);
    }

    public abstract void addLocal(String name);
    public abstract FrameSlot findLocal(String name);

}
