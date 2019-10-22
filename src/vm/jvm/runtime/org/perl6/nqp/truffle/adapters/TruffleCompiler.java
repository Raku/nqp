package org.perl6.nqp.truffle.adapters;

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


import org.perl6.nqp.truffle.ByteCodeWriter;
import org.perl6.nqp.truffle.GlobalContext;
import org.perl6.nqp.truffle.NQPScope;
import org.perl6.nqp.truffle.NQPScopeWithFrame;
import org.perl6.nqp.truffle.NQPScopeWithGlobalContext;

import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.runtime.DynamicContext;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.truffle.nodes.NQPNode;

import org.perl6.nqp.truffle.NQPRootNode;
import org.perl6.nqp.dsl.AstBuilder;

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
    contextSlotClass = FrameSlot.class,
    globalContextClass = GlobalContext.class,
    threadContextClass = org.perl6.nqp.truffle.ThreadContext.class,
    tastToByteCode = true,
    tastToNode = true,
    byteCodeToNode = false
)
abstract class TruffleCompiler {
    public void run(SixModelObject node, ThreadContext tc) {
        FrameDescriptor frameDescriptor = new FrameDescriptor();
        RootNode rootNode = new NQPRootNode(null, frameDescriptor, tastToNode(node, new NQPScopeWithFrame(frameDescriptor,  new NQPScopeWithGlobalContext(new GlobalContext(), new org.perl6.nqp.truffle.ThreadContext())), tc));


        CallTarget callTarget = Truffle.getRuntime().createCallTarget(rootNode);
        callTarget.call(new DynamicContext());
    }

    protected NQPNode[] tastToNodeArray(SixModelObject node, int from, NQPScope scope, ThreadContext tc) {
        int elems = (int) node.elems(tc);
        NQPNode children[] = new NQPNode[elems - from];
        for (int i = from; i < elems; i++) {
           children[i-from] =  tastToNode(node.at_pos_boxed(tc, i), scope, tc);
        }
        return children;
    }

    protected String[] tastToStrArray(SixModelObject node, int where, ThreadContext tc) {
        SixModelObject strs = node.at_pos_boxed(tc, where);

        int elems = (int) strs.elems(tc);
        String[] ret = new String[elems];
        for (int i = 0; i < elems; i++) {
           ret[i] = strs.at_pos_boxed(tc, i).get_str(tc);
        }

        return ret;
    }

    protected long[] tastToIntArray(SixModelObject node, int where, ThreadContext tc) {
        SixModelObject ints = node.at_pos_boxed(tc, where);

        int elems = (int) ints.elems(tc);
        long[] ret = new long[elems];
        for (int i = 0; i < elems; i++) {
           ret[i] = ints.at_pos_boxed(tc, i).get_int(tc);
        }

        return ret;
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

