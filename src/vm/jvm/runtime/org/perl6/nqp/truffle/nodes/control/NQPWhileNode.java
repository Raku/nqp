package org.perl6.nqp.truffle.nodes.control;

import org.perl6.nqp.dsl.Deserializer;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBaseNode;
import org.perl6.nqp.truffle.nodes.NQPToBooleanNode;
import org.perl6.nqp.truffle.nodes.NQPToBooleanNodeGen;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ControlFlowException;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.LoopNode;
import com.oracle.truffle.api.nodes.RepeatingNode;

@NodeInfo(shortName = "while")
public final class NQPWhileNode extends NQPNode {
    @Child private LoopNode whileNode;

    public NQPWhileNode(boolean isUntil, NQPNode condNode, NQPNode bodyNode) {
        whileNode = Truffle.getRuntime().createLoopNode(new WhileRepeatingNode(isUntil, condNode, bodyNode));
    }

    @Deserializer("while")
    public static NQPWhileNode createWhile(NQPNode condNode, NQPNode bodyNode) {
        return new NQPWhileNode(false, condNode, bodyNode);
    }

    @Deserializer("until")
    public static NQPWhileNode createUntil(NQPNode condNode, NQPNode bodyNode) {
        return new NQPWhileNode(true, condNode, bodyNode);
    }

    @Override
    public Object execute(VirtualFrame frame) {
        whileNode.executeLoop(frame);
        return null;
    }

    @Override
    public void executeVoid(VirtualFrame frame) {
        whileNode.executeLoop(frame);
    }

    private static class WhileRepeatingNode extends NQPBaseNode implements RepeatingNode {
        private boolean isUntil;
        @Child private NQPNode condNode;
        @Child private NQPNode bodyNode;
        @Child private NQPToBooleanNode toBooleanCast;

        public WhileRepeatingNode(boolean isUntil, NQPNode condNode, NQPNode bodyNode) {
            this.isUntil = isUntil;
            this.condNode = condNode;
            this.bodyNode = bodyNode;
            this.toBooleanCast = NQPToBooleanNodeGen.create();
        }

        @Override
        public boolean executeRepeating(VirtualFrame frame) {
            boolean condResult = toBooleanCast.executeBoolean(condNode.execute(frame));
            condResult = isUntil ? !condResult : condResult;
            if (condResult) {
                bodyNode.executeVoid(frame);
                return true;
            } else {
                return false;
            }
        }
    }
}
