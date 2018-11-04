package org.raku.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.AsynchronousServerSocketChannel;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.channels.CompletionHandler;
import java.nio.channels.NotYetBoundException;
import java.nio.channels.UnresolvedAddressException;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.HLLConfig;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.raku.nqp.sixmodel.reprs.ConcBlockingQueueInstance;
import org.raku.nqp.sixmodel.reprs.IOHandleInstance;

public class AsyncServerSocketHandle implements IIOBindable, IIOCancelable {

    AsynchronousServerSocketChannel listenChan;

    public AsyncServerSocketHandle(ThreadContext tc) {
        try {
            listenChan = AsynchronousServerSocketChannel.open();
        } catch (IOException e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void bind(ThreadContext tc, String host, int port, int backlog) {
        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
            listenChan.bind(addr, backlog);
        } catch (UnresolvedAddressException uae) {
            ExceptionHandling.dieInternal(tc, "Failed to resolve host name");
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void accept(final ThreadContext tc, final AsyncTaskInstance task) {

        final CompletionHandler<AsynchronousSocketChannel, AsyncTaskInstance> handler
            = new CompletionHandler<AsynchronousSocketChannel, AsyncTaskInstance>() {

            HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
            final SixModelObject IOType = hllConfig.ioType;
            final SixModelObject Array = hllConfig.listType;
            final SixModelObject Null = hllConfig.nullValue;
            final SixModelObject Int = hllConfig.intBoxType;
            final SixModelObject Str = hllConfig.strBoxType;

            @Override
            public void completed(AsynchronousSocketChannel channel, AsyncTaskInstance task) {
                listenChan.accept(task, this);

                InetSocketAddress localAddress;
                InetSocketAddress remoteAddress;

                try {
                    localAddress = (InetSocketAddress) channel.getLocalAddress();
                } catch (IOException e) {
                    throw ExceptionHandling.dieInternal(tc, e);
                }
                String socketHost = localAddress.getAddress().getHostAddress();
                if (socketHost.equals("0:0:0:0:0:0:0:1"))
                    socketHost = "::1";
                int socketPort = localAddress.getPort();

                try {
                    remoteAddress = (InetSocketAddress) channel.getRemoteAddress();
                } catch (IOException e) {
                    throw ExceptionHandling.dieInternal(tc, e);
                }
                String peerHost = remoteAddress.getAddress().getHostAddress();
                if (peerHost.equals("0:0:0:0:0:0:0:1"))
                    peerHost = "::1";
                int peerPort = remoteAddress.getPort();

                ThreadContext curTC = tc.gc.getCurrentThreadContext();

                AsyncSocketHandle clientHandle = new AsyncSocketHandle(curTC, channel);
                IOHandleInstance clientIoHandle = (IOHandleInstance) IOType.st.REPR.allocate(curTC,
                        IOType.st);
                clientIoHandle.handle = clientHandle;

                IOHandleInstance serverIoHandle = (IOHandleInstance) IOType.st.REPR.allocate(curTC,
                        IOType.st);
                serverIoHandle.handle = this;

                SixModelObject result = Array.st.REPR.allocate(curTC, Array.st);
                result.push_boxed(curTC, task.schedulee);
                result.push_boxed(curTC, clientIoHandle);
                result.push_boxed(curTC, Null);
                result.push_boxed(curTC, Ops.box_s(peerHost, Str, curTC));
                result.push_boxed(curTC, Ops.box_i(peerPort, Int, curTC));
                result.push_boxed(curTC, serverIoHandle);
                result.push_boxed(curTC, Ops.box_s(socketHost, Str, curTC));
                result.push_boxed(curTC, Ops.box_i(socketPort, Int, curTC));

                ((ConcBlockingQueueInstance) task.queue).push_boxed(curTC, result);
            }

            @Override
            public void failed(Throwable exc, AsyncTaskInstance task) {
                ThreadContext curTC = tc.gc.getCurrentThreadContext();
                SixModelObject result = Array.st.REPR.allocate(curTC, Array.st);
                result.push_boxed(curTC, task.schedulee);
                result.push_boxed(curTC, IOType);
                result.push_boxed(curTC, Ops.box_s(exc.toString(), Str, curTC));
                result.push_boxed(curTC, Str);
                result.push_boxed(curTC, Int);
                result.push_boxed(curTC, IOType);
                result.push_boxed(curTC, Str);
                result.push_boxed(curTC, Int);
            }
        };

        try {
            InetSocketAddress localAddress;

            HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
            final SixModelObject IOType = hllConfig.ioType;
            final SixModelObject Array = hllConfig.listType;
            final SixModelObject Null = hllConfig.nullValue;
            final SixModelObject Int = hllConfig.intBoxType;
            final SixModelObject Str = hllConfig.strBoxType;

            try {
                localAddress = (InetSocketAddress) listenChan.getLocalAddress();
            } catch (IOException e) {
                throw ExceptionHandling.dieInternal(tc, e);
            }

            String socketHost = localAddress.getAddress().getHostAddress();
            if (socketHost.equals("0:0:0:0:0:0:0:1"))
                socketHost = "::1";
            int socketPort = localAddress.getPort();

            ThreadContext curTC = tc.gc.getCurrentThreadContext();

            IOHandleInstance ioHandle = (IOHandleInstance) IOType.st.REPR.allocate(curTC,
                    IOType.st);
            ioHandle.handle = this;

            SixModelObject result = Array.st.REPR.allocate(curTC, Array.st);

            result.push_boxed(curTC, task.schedulee);
            result.push_boxed(curTC, IOType);
            result.push_boxed(curTC, Null);
            result.push_boxed(curTC, Str);
            result.push_boxed(curTC, Int);
            result.push_boxed(curTC, ioHandle);
            result.push_boxed(curTC, Ops.box_s(socketHost, Str, curTC));
            result.push_boxed(curTC, Ops.box_i(socketPort, Int, curTC));

            ((ConcBlockingQueueInstance) task.queue).push_boxed(curTC, result);
        }
        catch (Exception e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }

        try {
            listenChan.accept(task, handler);
        } catch (NotYetBoundException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void cancel(ThreadContext tc) {
        try {
            listenChan.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
}
