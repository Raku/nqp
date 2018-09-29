package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.frame.VirtualFrame;
import org.perl6.nqp.truffle.MalformedAstException;

public abstract class NQPIntNode extends NQPNode {
    public void executeVoid(VirtualFrame frame) {
        executeInt(frame);
    }

    /* Final methods to prevent specialization generating them */

    @Override
    public final Object execute(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an obj");
    }

    @Override
    public final double executeNum(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an num");
    }

    @Override
    public final String executeStr(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces a str");
    }
}
