package org.perl6.nqp.truffle;

import com.oracle.truffle.api.Truffle;
import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlot;
import java.util.ArrayList;

import java.io.IOException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileInputStream;

import java.nio.channels.FileChannel;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import java.nio.file.Path;


import org.perl6.nqp.truffle.ByteCodeWriter;
import org.perl6.nqp.truffle.ByteCodeReader;

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

import org.perl6.nqp.dsl.Predeserializer;
import org.perl6.nqp.dsl.Deserializer;

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

    @Predeserializer("block")
    public static NQPScope createNewScope(NQPScope scope) {
        FrameDescriptor frameDescriptor = new FrameDescriptor();
        return new NQPScopeWithFrame(frameDescriptor, scope);
    }

    @Deserializer("block")
    public static NQPNode createBlock(NQPScope scope, NQPNode[] children) {
        FrameDescriptor frameDescriptor = ((NQPScopeWithFrame) scope).getFrameDescriptor();
        return new NQPBlockNode(
            new NQPRootNode(null, frameDescriptor, new NQPBlockBodyNode(children))
        );
    }

    @Predeserializer("declare-lexical")
    public static NQPScope declareLexical(NQPScope scope, String name) {
        scope.addLexical(name);
        return scope;
    }

    @Deserializer("declare-lexical")
    public static NQPNode createDeclareLexical(NQPScope scope, String name, NQPNode inner) {
        return inner;
    }

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

    protected NQPNode[] byteCodeToNodeArray(ByteCodeReader reader, NQPScope scope) {
        int count = reader.readCount();
        NQPNode[] nodes = new NQPNode[count];
        for (int i = 0; i < count; i++) {
            nodes[i] = byteCodeToNode(reader, scope);
        }
        return nodes;
    }

    abstract protected NQPNode byteCodeToNode(ByteCodeReader reader, NQPScope scope);

    public void runByteCode(String input) {
        try {
            FileInputStream stream = new FileInputStream(input);
            FileChannel channel = stream.getChannel();

            ByteBuffer buffer = ByteBuffer.allocate((int)channel.size());
            channel.read(buffer);
            buffer.rewind();
            buffer.order(ByteOrder.LITTLE_ENDIAN);

            ByteCodeReader reader = new ByteCodeReader(buffer);

            if (!reader.hasMagicString()) {
                throw new RuntimeException("Bytecode stream corrupt (missing magic string)");
            }
            long version = reader.readVersion();

            FrameDescriptor frameDescriptor = new FrameDescriptor();
            RootNode rootNode = new NQPRootNode(null, frameDescriptor, byteCodeToNode(reader, new NQPScopeWithFrame(frameDescriptor, null)));

            CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
            callTarget.call();

            channel.close();
            stream.close();
        } catch (IOException e) {
            System.err.println("Can't read bytecode: " + e.getMessage());
        }
    }
}

