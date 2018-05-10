package org.perl6.nqp.truffle;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class TruffleCompiler {
    public static void run(SixModelObject node, ThreadContext tc) {
        TruffleCompiler compiler = new TruffleCompiler();
        RootNode rootNode = new NQPRootNode(null, new FrameDescriptor(), compiler.build(node, tc));

        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call();
    }

    public NQPExpressionNode build(SixModelObject node, ThreadContext tc) {
        switch (node.at_pos_boxed(tc, 0).get_str(tc)) {
            case "say":
                return new NQPSayNode(build(node.at_pos_boxed(tc, 1), tc));
            case "sval":
                return new NQPSVal(node.at_pos_boxed(tc, 1).get_str(tc));
            default:
                throw new IllegalArgumentException("Wrong node type: " + node.at_pos_boxed(tc, 0).get_str(tc));
        }
    }
}

