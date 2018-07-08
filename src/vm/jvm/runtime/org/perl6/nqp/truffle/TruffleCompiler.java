package org.perl6.nqp.truffle;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlot;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBlockBodyNode;
import org.perl6.nqp.truffle.nodes.control.NQPBlockNode;

import org.perl6.nqp.truffle.nodes.control.NQPIfNode;

import org.perl6.nqp.truffle.nodes.variables.NQPReadLocalVariableNode;
import org.perl6.nqp.truffle.nodes.variables.NQPBindLocalVariableNode;
import org.perl6.nqp.truffle.nodes.variables.NQPGetPositionalNode;
import org.perl6.nqp.truffle.NQPRootNode;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.dsl.AstBuilder;

@AstBuilder(
    nodeClass = NQPNode.class,
    nodesClass = NQPNode[].class,
    intClass = long.class,
    numClass = double.class,
    strClass = String.class,
    scopeClass = NQPScope.class
)

abstract class TruffleCompiler {
    public void run(SixModelObject node, ThreadContext tc) {
        FrameDescriptor frameDescriptor = new FrameDescriptor();
        RootNode rootNode = new NQPRootNode(null, frameDescriptor, build(node, new NQPScopeWithFrame(frameDescriptor, null), tc));


        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call();
    }

    protected NQPNode[] expressions(SixModelObject node, int from, NQPScope scope, ThreadContext tc) {
        int elems = (int) node.elems(tc);
        NQPNode children[] = new NQPNode[elems - from];
        for (int i = from; i < elems; i++) {
           children[i-from] =  build(node.at_pos_boxed(tc, i), scope, tc);
        }
        return children;
    }

    abstract protected NQPNode buildSimple(SixModelObject node, NQPScope scope, ThreadContext tc);

    public NQPNode build(SixModelObject node, NQPScope scope, ThreadContext tc) {
        NQPNode trySimple = buildSimple(node, scope, tc);
        if (trySimple != null) return trySimple;

        switch (node.at_pos_boxed(tc, 0).get_str(tc)) {
            case "unless":
            case "if":
                return new NQPIfNode(
                    node.at_pos_boxed(tc, 0).get_str(tc) == "unless",
                    build(node.at_pos_boxed(tc, 1), scope, tc),
                    build(node.at_pos_boxed(tc, 2), scope, tc),
                    node.elems(tc) == 4 ? build(node.at_pos_boxed(tc, 3), scope, tc) : null);
            case "declare-lexical":
                scope.addLexical(node.at_pos_boxed(tc, 1).get_str(tc));
                return build(node.at_pos_boxed(tc, 2), scope, tc);
            case "block": {
                FrameDescriptor frameDescriptor = new FrameDescriptor();
                NQPNode children[] = expressions(node, 1, new NQPScopeWithFrame(frameDescriptor, scope), tc);
                return new NQPBlockNode(
                    new NQPRootNode(null, frameDescriptor, new NQPBlockBodyNode(children))
                );
            }
            default:
                throw new IllegalArgumentException("Wrong node type: " + node.at_pos_boxed(tc, 0).get_str(tc));
        }
    }
}

