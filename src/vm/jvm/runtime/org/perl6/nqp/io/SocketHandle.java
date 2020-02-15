package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class SocketHandle extends SyncHandle implements IIOBindable {

    public SocketHandle(ThreadContext tc) {
        try {
            chan = SocketChannel.open();
            setEncoding(tc, Charset.forName("UTF-8"));
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public SocketHandle(ThreadContext tc, SocketChannel existing) {
        chan = existing;
        setEncoding(tc, Charset.forName("UTF-8"));
    }

    @Override
    public void bind(ThreadContext tc, String host, int port) {
        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
            ((SocketChannel)chan).bind(addr);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void connect(ThreadContext tc, String host, int port) {
        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
            ((SocketChannel)chan).connect(addr);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void flush(ThreadContext tc) {
        // Not provided.
    }
}
