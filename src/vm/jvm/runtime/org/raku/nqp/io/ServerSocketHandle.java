package org.raku.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.ThreadContext;

public class ServerSocketHandle implements IIOBindable, IIOClosable {

    ServerSocketChannel listenChan;
    public int listenPort;

    public ServerSocketHandle(ThreadContext tc) {
        try {
            listenChan = ServerSocketChannel.open();
        } catch (IOException e) {
            ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void bind(ThreadContext tc, String host, int port, int backlog) {
        try {
            InetSocketAddress addr = new InetSocketAddress(host, port);
            listenChan.bind(addr, backlog);
            listenPort = listenChan.socket().getLocalPort();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public SocketHandle accept(ThreadContext tc) {
        try {
            SocketChannel chan = listenChan.accept();
            return chan == null ? null : new SocketHandle(tc, chan);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    @Override
    public void close(ThreadContext tc) {
        try {
            listenChan.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
}
