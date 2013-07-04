package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.JavaObjectWrapper;

/** Factory for Java object interop wrappers.  This class is designed to be subclassed by HLLs.  Not shareable between {@link GlobalContext}s. */
public class BootJavaInterop {

    /** Set this to a non-null value to use the same STable for every class. */
    protected STable commonSTable;

    /** The global context that this interop factory is used for. */
    protected GlobalContext gc;

    public BootJavaInterop(GlobalContext gc) {
        this.gc = gc;
        commonSTable = gc.BOOTJava.st;
    }

    private static class InteropInfo {
        public Class<?> forClass;
        public SixModelObject interop;
        public STable stable; // not used if commonSTable != null
    }

    private ClassValue<InteropInfo> cache = new ClassValue<InteropInfo>() {
        @Override public InteropInfo computeValue(Class<?> cl) {
            InteropInfo r = new InteropInfo();
            r.forClass = cl;
            r.interop = computeInterop(cl);
            r.stable = computeSTable(cl, r.interop);
            return r;
        }
    };

    /** Override this to define per-class STables.  <b>Will not be used unless you set {@link commonSTable} to null in the constructor.</b> */
    protected STable computeSTable(Class<?> klass, SixModelObject interop) {
        return null;
    }

    protected SixModelObject computeInterop(Class<?> klass) {
        return null;
    }

    /** Get STable for class, computing if necessary. */
    public STable getSTableForClass(Class<?> c) {
        return commonSTable != null ? commonSTable : cache.get(c).stable;
    }

    /** Get interop table for a class. */
    public SixModelObject getInterop(Class<?> c) {
        return cache.get(c).interop;
    }

    /** Entry point for callouts. */
    public SixModelObject getInterop(SixModelObject to, ThreadContext tc) {
        if (to instanceof JavaObjectWrapper) {
            Object o = ((JavaObjectWrapper)to).theObject;
            if (o instanceof Class<?>) return getInterop((Class<?>)o);
        }
        try {
            return getInterop(Class.forName(Ops.unbox_s(to, tc), false, BootJavaInterop.class.getClassLoader()));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    /** Entry point for callback setup. */
    public SixModelObject implementClass(SixModelObject description, ThreadContext tc) {
        return null;
    }
}
