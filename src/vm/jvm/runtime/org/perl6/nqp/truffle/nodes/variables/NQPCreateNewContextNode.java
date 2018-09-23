package org.perl6.nqp.truffle.nodes.variables;

import com.oracle.truffle.api.frame.FrameSlot;
import com.oracle.truffle.api.frame.FrameUtil;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.frame.Frame;
import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPObjNode;
import org.perl6.nqp.truffle.runtime.DynamicContext;
import org.perl6.nqp.truffle.runtime.NQPArguments;
import org.perl6.nqp.truffle.runtime.NQPNull;
import org.perl6.nqp.dsl.Deserializer;

import org.perl6.nqp.truffle.NQPScope;

public class NQPCreateNewContextNode extends NQPObjNode {
    private final FrameSlot contextSlot;

    public NQPCreateNewContextNode(FrameSlot contextSlot) {
        this.contextSlot = contextSlot;
    }

    @Deserializer("create-new-context")
    public static NQPCreateNewContextNode getLexical(NQPScope scope) {
        FrameSlot contextSlot = scope.getContextSlot();
        return new NQPCreateNewContextNode(contextSlot);
    }

    @Override
    public Object execute(VirtualFrame frame) {
        Object[] arguments = frame.getArguments();
        System.out.println("found parent context:" + NQPArguments.getDynamicContext(arguments));
        frame.setObject(contextSlot, new DynamicContext(NQPArguments.getDynamicContext(arguments)));
        return NQPNull.SINGLETON;
    }
}
