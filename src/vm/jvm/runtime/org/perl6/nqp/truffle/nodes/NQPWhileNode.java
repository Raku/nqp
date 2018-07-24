package org.perl6.nqp.truffle.nodes.control;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ControlFlowException;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.LoopNode;
import com.oracle.truffle.api.nodes.RepeatingNode;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPNodeWithBoolification;

import org.perl6.nqp.dsl.Deserializer;

@NodeInfo(shortName = "while")
public final class NQPWhileNode extends NQPNode {
    @Child private LoopNode whileNode;

    @Deserializer("while")
    public NQPWhileNode(NQPNode condNode, NQPNode bodyNode) {
        whileNode = Truffle.getRuntime().createLoopNode(new WhileRepeatingNode(condNode, bodyNode));
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

    private static class WhileRepeatingNode extends NQPNodeWithBoolification implements RepeatingNode {
        @Child private NQPNode condNode;
        @Child private NQPNode bodyNode;

        public WhileRepeatingNode(NQPNode condNode, NQPNode bodyNode) {
            this.condNode = condNode;
            this.bodyNode = bodyNode;
        }

        @Override
        public boolean executeRepeating(VirtualFrame frame) {
            if (toBoolean(condNode.execute(frame))) {
                try {
                    bodyNode.executeVoid(frame);
                } catch (ContinueException ex) {
                    // the body might throw a continue control-flow exception
                    // continue loop invocation
                } catch (BreakException ex) {
                    // the body might throw a break control-flow exception
                    // break loop invocation by returning false
                    return false;
                }
                return true;
            } else {
                return false;
            }
        }

        @Override
        public void executeVoid(VirtualFrame frame) {}
    }

    // thrown by guest language continue statements
    public final class ContinueException extends ControlFlowException {}
    // thrown by guest language break statements
    public final class BreakException extends ControlFlowException {}
}
