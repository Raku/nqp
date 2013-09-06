package org.perl6.nqp.io;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public abstract class SyncHandle implements IIOClosable, IIOEncodable, 
        IIOSyncReadable, IIOSyncWritable, IIOLineSeparable {
    
    protected ByteChannel chan;
    protected CharsetEncoder enc;
    protected CharsetDecoder dec;
    protected boolean eof = false;
    protected ByteBuffer readBuffer;
    protected byte[] linesep = { '\n' };
    
    public void close(ThreadContext tc) {
        try {
            chan.close();
        } catch (IOException e) {
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
                buffers.add(ByteBuffer.wrap(readBuffer.array(), readBuffer.position(), total));
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
    
    public boolean eof(ThreadContext tc) {
        return eof;
    }
    
    public byte[] read(ThreadContext tc, int bytes) {
        try {
            ByteBuffer buffer = ByteBuffer.allocate(bytes);
            chan.read(buffer);
            buffer.flip();
            byte[] res = new byte[buffer.limit()];
            buffer.get(res);
            return res;
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void write(ThreadContext tc, byte[] array) {
        ByteBuffer buffer = ByteBuffer.wrap(array);
        write(tc, buffer);
    }
     
    protected void write(ThreadContext tc, ByteBuffer buffer) {
        try {
            int toWrite = buffer.limit();
            int written = 0;
            while (written < toWrite) {
                written += chan.write(buffer);
            }
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }       
    }
    
    public void print(ThreadContext tc, String s) {
        try {
            ByteBuffer buffer = enc.encode(CharBuffer.wrap(s));
            write(tc, buffer);
        } catch (IOException e) {
            throw ExceptionHandling.dieInternal(tc, e);
        }
    }
    
    public void say(ThreadContext tc, String s) {
        print(tc, s);
        print(tc, System.lineSeparator());
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
