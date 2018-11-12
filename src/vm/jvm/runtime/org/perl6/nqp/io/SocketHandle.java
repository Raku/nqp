package org.perl6.nqp.io;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketOptions;
import java.net.StandardSocketOptions;
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class SocketHandle extends SyncHandle implements IIOOptions {

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

    public long getOption(ThreadContext tc, int option) throws IOException {
        switch (option) {
            case SocketOptions.SO_SNDBUF:
                return ((SocketChannel) chan).getOption(StandardSocketOptions.SO_SNDBUF);
            case SocketOptions.SO_RCVBUF:
                return ((SocketChannel) chan).getOption(StandardSocketOptions.SO_RCVBUF);
            case SocketOptions.SO_LINGER:
                return ((SocketChannel) chan).getOption(StandardSocketOptions.SO_LINGER);
            case SocketOptions.SO_KEEPALIVE:
                return ((SocketChannel) chan).getOption(StandardSocketOptions.SO_KEEPALIVE) ? 1 : 0;
            case SocketOptions.SO_REUSEADDR:
                return ((SocketChannel) chan).getOption(StandardSocketOptions.SO_REUSEADDR) ? 1 : 0;
            case SocketOptions.TCP_NODELAY:
                return ((SocketChannel) chan).getOption(StandardSocketOptions.TCP_NODELAY) ? 1 : 0;
            default:
                throw ExceptionHandling.dieInternal(tc, "This option is not supported by this type of socket");
        }
    }

    public long setOption(ThreadContext tc, int option, int value) throws IOException {
        switch (option) {
            case SocketOptions.SO_SNDBUF:
                ((SocketChannel) chan).setOption(StandardSocketOptions.SO_SNDBUF, value);
                break;
            case SocketOptions.SO_RCVBUF:
                ((SocketChannel) chan).setOption(StandardSocketOptions.SO_RCVBUF, value);
                break;
            case SocketOptions.SO_LINGER:
                ((SocketChannel) chan).setOption(StandardSocketOptions.SO_LINGER, value);
                break;
            case SocketOptions.SO_KEEPALIVE:
                ((SocketChannel) chan).setOption(StandardSocketOptions.SO_KEEPALIVE, (value == 0) ? false : true);
                break;
            case SocketOptions.SO_REUSEADDR:
                ((SocketChannel) chan).setOption(StandardSocketOptions.SO_REUSEADDR, (value == 0) ? false : true);
                break;
            case SocketOptions.TCP_NODELAY:
                ((SocketChannel) chan).setOption(StandardSocketOptions.TCP_NODELAY, (value == 0) ? false : true);
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "This option is not supported by this type of socket");
        }

        return 0;
    }
}
