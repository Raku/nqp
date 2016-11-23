package org.perl6.nqp.io;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.MalformedInputException;
import java.util.ArrayList;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public abstract class SyncHandle implements IIOClosable, IIOEncodable,
        IIOSyncReadable, IIOSyncWritable, IIOLineSeparable, IIOExitable {

    public ByteChannel chan;
    protected CharsetEncoder enc;
    protected CharsetDecoder dec;
    protected boolean eof = false;
    protected ByteBuffer readBuffer;
    protected byte[] linesep = null;

    public void close(ThreadContext tc) {
        try {
            chan.close();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public int exitValue(ThreadContext tc) {
        try {
            if (chan instanceof ProcessChannel) {
                return ((ProcessChannel)chan).exitValue();
            }
            else
                throw ExceptionHandling.dieInternal(tc,
                    "This channel does not support exitValue");
        } catch (InterruptedException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public void setEncoding(ThreadContext tc, Charset cs) {
        enc = cs.newEncoder();
        dec = cs.newDecoder();
    }

    public synchronized String slurp(ThreadContext tc) {
        try {
            // Read in file.
            ArrayList<ByteBuffer> buffers = new ArrayList<ByteBuffer>();
            ByteBuffer curBuffer = ByteBuffer.allocate(32768);
            int total = 0;
            int read;
            if (readBuffer != null) {
                total = readBuffer.limit() - readBuffer.position();
                byte[] newBytes = new byte[total];
                readBuffer.get(newBytes);
                buffers.add(ByteBuffer.wrap(newBytes));
                readBuffer = null;
            }
            while ((read = chan.read(curBuffer)) != -1) {
                curBuffer.flip();
                buffers.add(curBuffer);
                curBuffer = ByteBuffer.allocate(32768);
                total += read;
            }
            eof = true;

            return decodeBuffers(buffers, total);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public synchronized String readline(ThreadContext tc) {
        try {
            boolean foundLine = false;
            ArrayList<ByteBuffer> lineChunks = new ArrayList<ByteBuffer>();
            int total = 0;

            while (!foundLine) {
                /* Ensure we have a buffer available. */
                if (readBuffer == null) {
                    readBuffer = ByteBuffer.allocate(32768);
                    if (chan.read(readBuffer) == -1) {
                        /* End of file, so what we have is fine. */
                        eof = true;
                        foundLine = true;
                        readBuffer.flip();
                        break;
                    }
                    readBuffer.flip();
                }

                /* Look for a line end. */
                int start = readBuffer.position();
                int end = start;
                while (!foundLine && end < readBuffer.limit()) {
                    if (linesep != null) {
                        int index = 0;
                        while (index < linesep.length
                                && end + index < readBuffer.limit()
                                && readBuffer.get(end + index) == linesep[index])
                            index++;

                        if (index == linesep.length)
                        {
                            end += index;
                            foundLine = true;
                        } else {
                            end++;
                        }
                    }
                    else {
                        byte cur = readBuffer.get(end);
                        if (cur == '\n') {
                            foundLine = true;
                        }
                        else if (cur == '\r') {
                            foundLine = true;
                            /* XXX: This could fail if the \r\n sequence is
                             * split over two chunks, with the \r at the very
                             * end of a chunk at the \n at the beginning of
                             * the next one I think. */
                            if (end+1 < readBuffer.limit() && readBuffer.get(end+1) == '\n') {
                                end++;
                            }
                        }
                        end++;
                    }
                }

                /* Copy what we found into the results. */
                byte[] lineBytes = new byte[end - start];
                readBuffer.get(lineBytes);
                lineChunks.add(ByteBuffer.wrap(lineBytes));
                total += lineBytes.length;

                /* If we didn't find a line, will cross chunk boundary. */
                if (!foundLine)
                    readBuffer = null;
            }

            if (lineChunks.size() == 1)
                return dec.decode(lineChunks.get(0)).toString();
            else
                return decodeBuffers(lineChunks, total);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    private String decodeBuffers(ArrayList<ByteBuffer> buffers, int total) throws IOException {
        // Copy to a single buffer and decode (could be smarter, but need
        // to be wary as UTF-8 chars may span a buffer boundary).
        ByteBuffer allBytes = ByteBuffer.allocate(total);
        for (ByteBuffer bb : buffers) {
            int amount = total < bb.limit() ? total : bb.limit();
            allBytes.put(bb.array(), 0, amount);
            total -= amount;
        }
        allBytes.rewind();
        return dec.decode(allBytes).toString();
    }

    public synchronized String readchars(ThreadContext tc, int chars) {
        try {
            dec.reset();

            CharBuffer decoded = CharBuffer.allocate(chars);

            boolean needMoreChars = true;

            if (readBuffer != null) {
                CoderResult result = dec.decode(readBuffer, decoded, true);

                if (result.isError()) {
                    result.throwException();
                }

                needMoreChars = result.isUnderflow();
            }

            while (needMoreChars && !eof) {
                ByteBuffer oldReadBuffer = readBuffer;

                readBuffer = ByteBuffer.allocate(32768);

                if (oldReadBuffer != null) {
                    readBuffer.put(oldReadBuffer);
                }

                eof = chan.read(readBuffer) == -1;

                readBuffer.flip();

                CoderResult result = dec.decode(readBuffer, decoded, eof);

                if (eof) {
                    dec.flush(decoded);
                }

                if (result.isError()) {
                    result.throwException();
                }

                needMoreChars = result.isUnderflow();

            }

            decoded.flip();

            String ret = decoded.toString();

            return ret;

        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public synchronized String getc(ThreadContext tc) {
        try {
            dec.reset();
            int maxBytes = (int)enc.maxBytesPerChar();
            ByteBuffer toDecode = ByteBuffer.allocate(maxBytes);
            CharBuffer decoded = CharBuffer.allocate(1);
            for (int i = 0; i < maxBytes; i++) {
                /* Ensure we have a (non empty) read buffer available. */
                if ( readBuffer == null || readBuffer.remaining() == 0 ) {
                    readBuffer = ByteBuffer.allocate(32768);
                    if (chan.read(readBuffer) == -1) {
                        /* End of file. */
                        eof = true;
                        if (i == 0) {
                            /* Fine, just no char. */
                            return "";
                        }
                        else {
                            /* Malformed; following will likely throw. */
                            toDecode.position(0);
                            dec.decode(toDecode, decoded, true).throwException();
                            return decoded.toString();
                        }
                    }
                    readBuffer.flip();
                }

                /* Get a character from the read buffer. */
                toDecode.position(i);
                toDecode.put(readBuffer.get());
                if (readBuffer.remaining() == 0)
                    readBuffer = null;

                /* Try to decode; if we fail, try another byte. */
                toDecode.position(0);
                CoderResult cr = dec.decode(toDecode, decoded, false);
                if (!cr.isError()) {
                    decoded.rewind();
                    return decoded.toString();
                }
            }
            throw new MalformedInputException(maxBytes);
        }
        catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public boolean eof(ThreadContext tc) {
        return eof;
    }

    public byte[] read(ThreadContext tc, int bytes) {
        try {
            // look in readBuffer for data from previous read, e.g. via readline
            if ( readBuffer != null ) {
                byte[] res = new byte[readBuffer.limit() - readBuffer.position()];
                readBuffer.get(res);
                readBuffer = null;
                return res;
            }
            else {
                ByteBuffer buffer = ByteBuffer.allocate(bytes);
                chan.read(buffer);
                buffer.flip();
                byte[] res = new byte[buffer.limit()];
                buffer.get(res);
                return res;
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public long write(ThreadContext tc, byte[] array) {
        ByteBuffer buffer = ByteBuffer.wrap(array);
        return write(tc, buffer);
    }

    protected long write(ThreadContext tc, ByteBuffer buffer) {
        try {
            int toWrite = buffer.limit();
            int written = 0;
            while (written < toWrite) {
                written += chan.write(buffer);
            }
            return written;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public long print(ThreadContext tc, String s) {
        try {
            ByteBuffer buffer = enc.encode(CharBuffer.wrap(s));
            return write(tc, buffer);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }

    public long say(ThreadContext tc, String s) {
        long bytes = print(tc, s);
        bytes += print(tc, System.lineSeparator());
        return bytes;
    }

    public void setInputLineSeparator(ThreadContext tc, String sep) {
        try {
            linesep = enc.charset().newEncoder().encode(
                CharBuffer.wrap(sep)).array();
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
}
