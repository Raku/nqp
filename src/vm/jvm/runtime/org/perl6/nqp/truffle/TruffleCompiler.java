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
import org.perl6.nqp.truffle.nodes.NQPNotClosureNode;

import org.perl6.nqp.truffle.nodes.expression.NQPConcatNode;
import org.perl6.nqp.truffle.nodes.expression.NQPIValNode;
import org.perl6.nqp.truffle.nodes.expression.NQPSValNode;
import org.perl6.nqp.truffle.nodes.expression.NQPNValNode;
import org.perl6.nqp.truffle.nodes.expression.NQPSmartStringifyNode;
import org.perl6.nqp.truffle.nodes.expression.NQPBoxNQPInt;
import org.perl6.nqp.truffle.nodes.expression.NQPBoxNQPStr;
import org.perl6.nqp.truffle.nodes.expression.NQPNullNode;
import org.perl6.nqp.truffle.nodes.expression.NQPLcNode;
import org.perl6.nqp.truffle.nodes.expression.NQPUcNode;
import org.perl6.nqp.truffle.nodes.expression.NQPCharsNode;

import org.perl6.nqp.truffle.nodes.io.NQPSayNode;
import org.perl6.nqp.truffle.nodes.io.NQPPrintNode;

import org.perl6.nqp.truffle.nodes.call.NQPInvokeNode;
import org.perl6.nqp.truffle.nodes.call.NQPIntArgNode;
import org.perl6.nqp.truffle.nodes.call.NQPStrArgNode;
import org.perl6.nqp.truffle.nodes.call.NQPNumArgNode;

import org.perl6.nqp.truffle.nodes.control.NQPIfNode;

import org.perl6.nqp.truffle.nodes.variables.NQPReadLocalVariableNode;
import org.perl6.nqp.truffle.nodes.variables.NQPBindLocalVariableNode;
import org.perl6.nqp.truffle.nodes.variables.NQPGetPositionalNode;
import org.perl6.nqp.truffle.NQPRootNode;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.dsl.AstBuilder;

@AstBuilder(nodeClass = NQPNode.class)

abstract class TruffleCompiler {
    public void run(SixModelObject node, ThreadContext tc) {
        FrameDescriptor frameDescriptor = new FrameDescriptor();
        RootNode rootNode = new NQPRootNode(null, frameDescriptor, build(node, new NQPScopeWithFrame(frameDescriptor), tc));


        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call();
    }

    private NQPNode[] expressions(SixModelObject node, NQPScope scope, ThreadContext tc) {
        return expressions(node, 1, scope, tc);
    }

    private NQPNode[] expressions(SixModelObject node, int from, NQPScope scope, ThreadContext tc) {
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
            case "stmts": {
                NQPNode children[] = expressions(node, scope, tc);
                return new NQPStmts(children);
            }
            case "ival":
                return new NQPIValNode(node.at_pos_boxed(tc, 1).get_int(tc));
            case "nval":
                return new NQPNValNode(node.at_pos_boxed(tc, 1).get_num(tc));
            case "sval":
                return new NQPSValNode(node.at_pos_boxed(tc, 1).get_str(tc));
            case "unless":
            case "if":
                return new NQPIfNode(
                    node.at_pos_boxed(tc, 0).get_str(tc) == "unless",
                    build(node.at_pos_boxed(tc, 1), scope, tc),
                    build(node.at_pos_boxed(tc, 2), scope, tc),
                    node.elems(tc) == 4 ? build(node.at_pos_boxed(tc, 3), scope, tc) : null);

            case "call":
                NQPNode codeRef = build(node.at_pos_boxed(tc, 1), scope, tc);
                NQPNode args[] = expressions(node, 2, scope, tc);
                return new NQPInvokeNode(codeRef, args);
            case "declare-lexical":
                scope.addLexical(node.at_pos_boxed(tc, 1).get_str(tc));
                return build(node.at_pos_boxed(tc, 2), scope, tc);
            case "get-lexical": {
                FrameSlot frameSlot = scope.findLexical(node.at_pos_boxed(tc, 1).get_str(tc));
                return new NQPReadLocalVariableNode(frameSlot);
            }
            case "bind-lexical": {
                FrameSlot frameSlot = scope.findLexical(node.at_pos_boxed(tc, 1).get_str(tc));
                NQPNode valueNode = build(node.at_pos_boxed(tc, 2), scope, tc);
                return new NQPBindLocalVariableNode(frameSlot, valueNode);
            }
            case "get-lexical-positional": {
                scope.addLexical(node.at_pos_boxed(tc, 1).get_str(tc));
                int index = (int) node.at_pos_boxed(tc, 2).get_int(tc);
                FrameSlot frameSlot = scope.findLexical(node.at_pos_boxed(tc, 1).get_str(tc));
                return new NQPGetPositionalNode(frameSlot, index);
            }
            case "block": {
                FrameDescriptor frameDescriptor = new FrameDescriptor();
                NQPNode children[] = expressions(node, new NQPScopeWithFrame(frameDescriptor), tc);
                return new NQPNotClosureNode(new NQPCodeRef(
                    new NQPRootNode(null, frameDescriptor, new NQPBlockBodyNode(children))
                ));
            }
            default:
                throw new IllegalArgumentException("Wrong node type: " + node.at_pos_boxed(tc, 0).get_str(tc));
        }
    }
}

