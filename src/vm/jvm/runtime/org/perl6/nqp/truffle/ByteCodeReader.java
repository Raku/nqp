package org.perl6.nqp.truffle;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

public class ByteCodeReader {
    private ByteBuffer buffer;

    ByteCodeReader(ByteBuffer buffer) {
        this.buffer = buffer;
    }

    public int readOpCode() {
        return buffer.getInt();
    }

    public int readCount() {
        return buffer.getInt();
    }

    public long readVersion() {
        return buffer.getLong();
    }

    public long readInt() {
        return buffer.getLong();
    }

    public double readNum() {
        return buffer.getDouble();
    }

    public boolean hasMagicString() {
        if (buffer.remaining() < ByteCodeWriter.MAGIC.length) return false;
        byte maybeMagic[] = new byte[ByteCodeWriter.MAGIC.length];
        buffer.get(maybeMagic);
        return Arrays.equals(maybeMagic, ByteCodeWriter.MAGIC);
    }

    public String readStr() {
        int length = buffer.getInt();
        byte[] encoded = new byte[length];
        buffer.get(encoded);
  
        try {
            return new String(encoded, "UTF8");
        } catch (UnsupportedEncodingException e) {
            // This should never happen
            throw new RuntimeException("serious trouble: UTF8 encoding not recognized");
        }
    }

    public ByteCodeReader duplicate() {
        ByteBuffer duplicateBuffer = buffer.duplicate();
        duplicateBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return new ByteCodeReader(duplicateBuffer);
    }
}
