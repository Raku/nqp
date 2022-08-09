package org.raku.nqp.runtime;

import java.lang.ref.SoftReference;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.Map;
import java.util.Hashtable;
import java.util.Set;
import java.util.WeakHashMap;

public class ByteClassLoader extends ClassLoader {
    private final Set<String> refs = new CopyOnWriteArraySet< >();

    private final Map<ClassLoader, String> read = new WeakHashMap< >();

    private final Map<String, SoftReference<Class<?>>> made = new Hashtable< >();

    public ByteClassLoader() {
        super();
    }

    public ByteClassLoader(ClassLoader parent) {
        super(parent);
    }

    public boolean addRef(String name) {
        return refs.add(name);
    }

    public Class<?> getMade(String name) {
        if (name != null && made.containsKey(name))
            return made.get(name).get();
        return null;
    }

    public Class<?> setMade(String name, Class<?> klass) {
        if (name != null)
            made.put(name, new SoftReference(klass));
        return klass;
    }

    public Class<?> getRead(ClassLoader child, String name) {
        if (name != null && made.containsKey(name))
            return made.get(name).get();
        if (child != null && read.containsKey(child))
            if (made.containsKey(name = read.get(name)))
                return made.get(name).get();
        return null;
    }

    public Class<?> setRead(ClassLoader child, String name, Class<?> klass) {
        if (name == null)
            name = klass.getCanonicalName();
        if (child != null)
            read.put(child, name);
        made.put(name, new SoftReference(klass));
        return klass;
    }

    public Class<?> defineClass(String name, byte[] bytes) throws ClassFormatError {
        Class<?> made = getMade(name);
        return made == null ? setMade(name, defineClass(name, bytes, 0, bytes.length)) : null;
    }
}
