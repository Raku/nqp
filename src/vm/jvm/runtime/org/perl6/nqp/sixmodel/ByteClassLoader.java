package org.perl6.nqp.sixmodel;

public class ByteClassLoader extends ClassLoader {
    private byte[] bytes;

    public ByteClassLoader(byte[] bytes) {
        this.bytes = bytes;
    }

    public Class<?> findClass(String name) {
        return defineClass(name, this.bytes, 0, this.bytes.length);
    }
}
