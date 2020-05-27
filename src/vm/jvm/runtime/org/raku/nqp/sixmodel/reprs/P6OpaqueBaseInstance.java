package org.raku.nqp.sixmodel.reprs;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.TypeObject;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

public class P6OpaqueBaseInstance extends SixModelObject {
    // If this is not null, all operations are delegate to it. Used when we
    // load the object from an SC or when we mix in and it causes a resize.
    public SixModelObject delegate;

    public final int resolveAttribute(SixModelObject classHandle, String name) {
        P6OpaqueREPRData rd = (P6OpaqueREPRData)this.st.REPRData;
        for (int i = 0; i < rd.classHandles.length; i++) {
            if (rd.classHandles[i] == classHandle) {
                Integer idx = rd.nameToHintMap[i].get(name);
                if (idx != null)
                    return idx;
                else
                    break;
            }
        }
        throw new RuntimeException("No such attribute '" + name + "' for this object");
    }

    public final SixModelObject autoViv(int slot, ThreadContext tc) {
        P6OpaqueREPRData rd = (P6OpaqueREPRData)this.st.REPRData;
        SixModelObject av = rd.autoVivContainers[slot];
        if (av instanceof TypeObject)
            return av;
        else
            return av.clone(tc);
    }

    @Override
    public SixModelObject clone(ThreadContext tc) {
        try {
            SixModelObject cloned;
            if (Ops.isnull(this.delegate) == 0)
                cloned = this.delegate.clone(tc);
            else
                cloned = (SixModelObject)this.clone();
            cloned.sc = null;
            return cloned;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public SixModelObject instClone() {
        try {
            return (SixModelObject)this.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public void deserializeFields(ThreadContext tc, STable st, SerializationReader reader) {
    }

    public class BadNativeRuntimeException extends RuntimeException {
        public BadNativeRuntimeException(String msg) { super(msg); }
    }
    public void badNative() {
        throw new BadNativeRuntimeException("Cannot access a reference attribute as a native attribute");
    }

    public class BadReferenceRuntimeException extends RuntimeException {
        public BadReferenceRuntimeException(String msg) { super(msg); }
    }
    public void badReference() {
        throw new BadReferenceRuntimeException("Cannot access a native attribute as a reference attribute");
    }

    @Override
    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
                                              String name, long hint) {
        if (Ops.isnull(this.delegate) == 0)
            return this.delegate.get_attribute_boxed(tc, class_handle, name, hint);
        else
            return super.get_attribute_boxed(tc, class_handle, name, hint);
    }
    @Override
    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        if (Ops.isnull(this.delegate) == 0)
            this.delegate.get_attribute_native(tc, class_handle, name, hint);
        else
            super.get_attribute_native(tc, class_handle, name, hint);
    }
    @Override
    public void bind_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
                                     String name, long hint, SixModelObject value) {
        if (Ops.isnull(this.delegate) == 0)
            this.delegate.bind_attribute_boxed(tc, class_handle, name, hint, value);
        else
            super.bind_attribute_boxed(tc, class_handle, name, hint, value);
    }
    @Override
    public void bind_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        if (Ops.isnull(this.delegate) == 0)
            this.delegate.bind_attribute_native(tc, class_handle, name, hint);
        else
            super.bind_attribute_native(tc, class_handle, name, hint);
    }
    @Override
    public long is_attribute_initialized(ThreadContext tc, SixModelObject class_handle,
                                         String name, long hint) {
        if (Ops.isnull(this.delegate) == 0)
            return this.delegate.is_attribute_initialized(tc, class_handle, name, hint);
        else
            return super.is_attribute_initialized(tc, class_handle, name, hint);
    }

    private Unsafe unsafe;
    private long scalarValueOffset;

    @SuppressWarnings("restriction")
    private void ensureAtomicsReady() {
        if (unsafe == null) {
            try {
                Field unsafeField = Unsafe.class.getDeclaredField("theUnsafe");
                unsafeField.setAccessible(true);
                unsafe = (Unsafe)unsafeField.get(null);
            }
            catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    public SixModelObject cas_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
                                              String name, SixModelObject expected, SixModelObject value) {
        ensureAtomicsReady();
        try {
            long offset = unsafe.objectFieldOffset(this.getClass().getDeclaredField(
                "field_" + resolveAttribute(class_handle, name)));
            return unsafe.compareAndSwapObject(this, offset, expected, value)
                ? expected
                : (SixModelObject)unsafe.getObjectVolatile(this, offset);
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void atomic_bind_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
                                            String name, SixModelObject value) {
        ensureAtomicsReady();
        try {
            long offset = unsafe.objectFieldOffset(this.getClass().getDeclaredField(
                "field_" + resolveAttribute(class_handle, name)));
            unsafe.putObjectVolatile(this, offset, value);
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public SixModelObject posDelegate() {
        if (Ops.isnull(this.delegate) == 0)
            return ((P6OpaqueBaseInstance)this.delegate).posDelegate();
        throw new RuntimeException("This type does not support positional operations");
    }

    public SixModelObject assDelegate() {
        if (Ops.isnull(this.delegate) == 0)
            return ((P6OpaqueBaseInstance)this.delegate).assDelegate();
        throw new RuntimeException("This type does not support associative operations");
    }

    @Override
    public long elems(ThreadContext tc) {
        return posDelegate().elems(tc);
    }
    @Override
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        return posDelegate().at_pos_boxed(tc, index);
    }
    @Override
    public void at_pos_native(ThreadContext tc, long index) {
        posDelegate().at_pos_native(tc, index);
    }
    @Override
    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        posDelegate().bind_pos_boxed(tc, index, value);
    }
    @Override
    public void bind_pos_native(ThreadContext tc, long index) {
        posDelegate().bind_pos_native(tc, index);
    }
    @Override
    public void set_elems(ThreadContext tc, long count) {
        posDelegate().set_elems(tc, count);
    }
    @Override
    public void push_boxed(ThreadContext tc, SixModelObject value) {
        posDelegate().push_boxed(tc, value);
    }
    @Override
    public void push_native(ThreadContext tc) {
        posDelegate().push_native(tc);
    }
    @Override
    public SixModelObject pop_boxed(ThreadContext tc) {
        return posDelegate().pop_boxed(tc);
    }
    @Override
    public void pop_native(ThreadContext tc) {
        posDelegate().pop_native(tc);
    }
    @Override
    public void unshift_boxed(ThreadContext tc, SixModelObject value) {
        posDelegate().unshift_boxed(tc, value);
    }
    @Override
    public void unshift_native(ThreadContext tc) {
        posDelegate().unshift_native(tc);
    }
    @Override
    public SixModelObject shift_boxed(ThreadContext tc) {
        return posDelegate().shift_boxed(tc);
    }
    @Override
    public void shift_native(ThreadContext tc) {
        posDelegate().shift_native(tc);
    }
    @Override
    public SixModelObject slice(ThreadContext tc, SixModelObject dest, long beginning, long end) {
        return posDelegate().slice(tc, dest, beginning, end);
    }
    @Override
    public void splice(ThreadContext tc, SixModelObject from, long offset, long count) {
        posDelegate().splice(tc, from, offset, count);
    }

    @Override
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        return assDelegate().at_key_boxed(tc, key);
    }
    @Override
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        assDelegate().bind_key_boxed(tc, key, value);
    }
    @Override
    public long exists_key(ThreadContext tc, String key) {
        return assDelegate().exists_key(tc, key);
    }
    @Override
    public void delete_key(ThreadContext tc, String key) {
        assDelegate().delete_key(tc, key);
    }
}
