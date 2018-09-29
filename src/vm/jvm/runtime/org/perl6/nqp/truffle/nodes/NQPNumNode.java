package org.perl6.nqp.truffle.nodes;

import com.oracle.truffle.api.frame.VirtualFrame;
import org.perl6.nqp.truffle.MalformedAstException;

public abstract class NQPNumNode extends NQPNode {
    public void executeVoid(VirtualFrame frame) {
        executeNum(frame);
    }

    @Override
    public final Object execute(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an obj");
    }

    @Override
    public final long executeInt(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces an int");
    }

    @Override
    public final String executeStr(VirtualFrame frame) {
        throw new MalformedAstException("Expected an AST node that produces a str");
    }
}
