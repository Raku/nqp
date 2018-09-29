package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.frame.VirtualFrame;
import org.perl6.nqp.truffle.MalformedAstException;

public abstract class NQPObjNode extends NQPNode {
    public void executeVoid(VirtualFrame frame) {
        execute(frame);
    }

    @Override
    public final long executeInt(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces a int");
    }

    @Override
    public final double executeNum(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an num");
    }

    @Override
    public final String executeStr(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an str");
    }
}
