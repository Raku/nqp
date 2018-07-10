package org.perl6.nqp.truffle;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlot;

import java.io.IOException;
import java.io.File;
import java.io.FileOutputStream;

import java.nio.channels.FileChannel;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import java.nio.file.Path;


import org.perl6.nqp.truffle.ByteCodeReader;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.truffle.nodes.NQPNode;

import org.perl6.nqp.truffle.NQPRootNode;
import org.perl6.nqp.dsl.AstBuilder;

@AstBuilder(
    nodeClass = NQPNode.class,
    nodesClass = NQPNode[].class,
    intClass = long.class,
    numClass = double.class,
    strClass = String.class,
    scopeClass = NQPScope.class,
    tastToByteCode = true,
    tastToNode = true,
    byteCodeToNode = false
)
abstract class TruffleCompiler {
    public void run(SixModelObject node, ThreadContext tc) {
        FrameDescriptor frameDescriptor = new FrameDescriptor();
        RootNode rootNode = new NQPRootNode(null, frameDescriptor, tastToNode(node, new NQPScopeWithFrame(frameDescriptor, null), tc));


        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call();
    }

    protected NQPNode[] tastToNodeArray(SixModelObject node, int from, NQPScope scope, ThreadContext tc) {
        int elems = (int) node.elems(tc);
        NQPNode children[] = new NQPNode[elems - from];
        for (int i = from; i < elems; i++) {
           children[i-from] =  tastToNode(node.at_pos_boxed(tc, i), scope, tc);
        }
        return children;
    }

    abstract protected NQPNode tastToNode(SixModelObject node, NQPScope scope, ThreadContext tc);


    protected void childrenToByteCode(SixModelObject node, int from, ByteCodeWriter writer, ThreadContext tc) {
        int elems = (int) node.elems(tc);
        writer.writeCount(elems - from);
        for (int i = from; i < elems; i++) {
            tastToByteCode(node.at_pos_boxed(tc, i), writer, tc);
        }
    }

    abstract protected void tastToByteCode(SixModelObject node, ByteCodeWriter writer, ThreadContext tc);

    public void writeByteCode(SixModelObject tast, String output, ThreadContext tc) {
        ByteCodeWriter writer = new ByteCodeWriter();

        writer.writeMagicString();
        writer.writeVersion(0);

        tastToByteCode(tast, writer, tc);

        try {
            FileChannel channel = new FileOutputStream(new File(output), false).getChannel();
            ByteBuffer buffer = writer.getBuffer();
            buffer.flip();
            channel.write(buffer);
            channel.close();
        } catch (IOException e) {
            System.err.println("Can't write bytecode: " + e.getMessage());
        }
    }
}

