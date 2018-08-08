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


import org.perl6.nqp.truffle.ByteCodeReader;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPBlockBodyNode;
import org.perl6.nqp.truffle.nodes.control.NQPBlockNode;

import org.perl6.nqp.truffle.NQPRootNode;
import org.perl6.nqp.truffle.runtime.NQPCodeRef;
import org.perl6.nqp.dsl.AstBuilder;

import org.perl6.nqp.truffle.runtime.HLL;

@AstBuilder(
    nodeClass = NQPNode.class,
    nodesClass = NQPNode[].class,
    intClass = long.class,
    intsClass = long[].class,
    numClass = double.class,
    strClass = String.class,
    strsClass = String[].class,
    scopeClass = NQPScope.class,
    hllClass = HLL.class,
    tastToByteCode = false,
    tastToNode = false,
    byteCodeToNode = true
)
abstract class ByteCodeRunner {
    abstract protected NQPNode byteCodeToNode(ByteCodeReader reader, NQPScope scope);

    protected NQPNode[] byteCodeToNodeArray(ByteCodeReader reader, NQPScope scope) {
        int count = reader.readCount();
        NQPNode[] nodes = new NQPNode[count];
        for (int i = 0; i < count; i++) {
            nodes[i] = byteCodeToNode(reader, scope);
        }
        return nodes;
    }

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
