package org.perl6.nqp.truffle;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.truffle.nodes.NQPExpressionNode;
import org.perl6.nqp.truffle.nodes.NQPBlockBodyNode;
import org.perl6.nqp.truffle.nodes.NQPNotClosureNode;
import org.perl6.nqp.truffle.NQPRootNode;
import org.perl6.nqp.truffle.nodes.call.NQPInvokeNode;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;

public class TruffleCompiler {
    public static void run(SixModelObject node, ThreadContext tc) {
        TruffleCompiler compiler = new TruffleCompiler();
        RootNode rootNode = new NQPRootNode(null, new FrameDescriptor(), compiler.build(node, tc));

        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call();
    }

    private NQPExpressionNode[] expressions(SixModelObject node, ThreadContext tc) {
        return expressions(node, 1, tc);
    }
    private NQPExpressionNode[] expressions(SixModelObject node, int from, ThreadContext tc) {
        int elems = (int) node.elems(tc);
        NQPExpressionNode children[] = new NQPExpressionNode[elems - from];
        for (int i = from; i < elems; i++) {
           children[i-from] =  build(node.at_pos_boxed(tc, i), tc);
        }
        return children;
    }

    public NQPExpressionNode build(SixModelObject node, ThreadContext tc) {
        switch (node.at_pos_boxed(tc, 0).get_str(tc)) {
            case "say":
                return new NQPSayNode(build(node.at_pos_boxed(tc, 1), tc));
            case "print":
                return new NQPPrintNode(build(node.at_pos_boxed(tc, 1), tc));
            case "stmts": {
                NQPExpressionNode children[] = expressions(node, tc);
                return new NQPStmts(children);
            }
            case "sval":
                return new NQPSVal(node.at_pos_boxed(tc, 1).get_str(tc));
            case "call":
                NQPExpressionNode codeRef = build(node.at_pos_boxed(tc, 1), tc);
                NQPExpressionNode args[] = expressions(node, 2, tc);
                return new NQPInvokeNode(codeRef, args);
            case "block": {
                NQPExpressionNode children[] = expressions(node, tc);
                return new NQPNotClosureNode(new NQPCodeRef(
                    new NQPRootNode(null, new NQPBlockBodyNode(children))
                ));
            }
            default:
                throw new IllegalArgumentException("Wrong node type: " + node.at_pos_boxed(tc, 0).get_str(tc));
        }
    }
}

