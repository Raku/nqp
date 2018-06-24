package org.perl6.nqp.truffle;

import com.oracle.truffle.api.frame.FrameSlot;

public abstract class NQPScope {
    public abstract void addLexical(String name);
    public abstract FrameSlot findLexical(String name);
}
