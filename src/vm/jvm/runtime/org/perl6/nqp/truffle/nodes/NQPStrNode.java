package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.frame.VirtualFrame;
import org.perl6.nqp.truffle.MalformedAstException;

public abstract class NQPStrNode extends NQPNode {
    public void executeVoid(VirtualFrame frame) {
        executeStr(frame);
    }

    @Override
    public final Object execute(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an obj");
    }

    @Override
    public final long executeInt(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces a int");
    }

    @Override
    public final double executeNum(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an num");
    }
}
