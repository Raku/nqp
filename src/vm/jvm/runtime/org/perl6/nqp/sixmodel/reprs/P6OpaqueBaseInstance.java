package org.perl6.nqp.sixmodel.reprs;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

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
    
    public SixModelObject clone(ThreadContext tc) {
        try {
            SixModelObject cloned;
            if (this.delegate != null)
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

    public void badNative() {
        throw new RuntimeException("Cannot access a reference attribute as a native attribute");
    }
    
    public void badReference() {
        throw new RuntimeException("Cannot access a native attribute as a reference attribute");
    }
    
    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
            String name, long hint) {
        if (this.delegate != null)
            return this.delegate.get_attribute_boxed(tc, class_handle, name, hint);
        else
            return super.get_attribute_boxed(tc, class_handle, name, hint);
    }
    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        if (this.delegate != null)
            this.delegate.get_attribute_native(tc, class_handle, name, hint);
        else
            super.get_attribute_native(tc, class_handle, name, hint);
    }
    public void bind_attribute_boxed(ThreadContext tc,SixModelObject class_handle,
            String name, long hint, SixModelObject value) {
        if (this.delegate != null)
            this.delegate.bind_attribute_boxed(tc, class_handle, name, hint, value);
        else
            super.bind_attribute_boxed(tc, class_handle, name, hint, value);
    }
    public void bind_attribute_native(ThreadContext tc,SixModelObject class_handle, String name, long hint) {
        if (this.delegate != null)
            this.delegate.bind_attribute_native(tc, class_handle, name, hint);
        else
            super.bind_attribute_native(tc, class_handle, name, hint);
    }
    public long is_attribute_initialized(ThreadContext tc, SixModelObject class_handle,
            String name, long hint) {
        if (this.delegate != null)
            return this.delegate.is_attribute_initialized(tc, class_handle, name, hint);
        else
            return super.is_attribute_initialized(tc, class_handle, name, hint);
    }
    
    public SixModelObject posDelegate() {
        if (this.delegate != null)
            return ((P6OpaqueBaseInstance)this.delegate).posDelegate();
        throw new RuntimeException("This type does not support positional operations");
    }
    
    public SixModelObject assDelegate() {
        if (this.delegate != null)
            return ((P6OpaqueBaseInstance)this.delegate).assDelegate();
        throw new RuntimeException("This type does not support associative operations");
    }
    
    public long elems(ThreadContext tc) {
        return posDelegate().elems(tc);
    }
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        return posDelegate().at_pos_boxed(tc, index);
    }
    public void at_pos_native(ThreadContext tc, long index) {
        posDelegate().at_pos_native(tc, index);
    }
    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        posDelegate().bind_pos_boxed(tc, index, value);
    }
    public void bind_pos_native(ThreadContext tc, long index) {
        posDelegate().bind_pos_native(tc, index);
    }
    public void set_elems(ThreadContext tc, long count) {
        posDelegate().set_elems(tc, count);
    }
    public void push_boxed(ThreadContext tc, SixModelObject value) {
        posDelegate().push_boxed(tc, value);
    }
    public void push_native(ThreadContext tc) {
        posDelegate().push_native(tc);
    }
    public SixModelObject pop_boxed(ThreadContext tc) {
        return posDelegate().pop_boxed(tc);
    }
    public void pop_native(ThreadContext tc) {
        posDelegate().pop_native(tc);
    }
    public void unshift_boxed(ThreadContext tc, SixModelObject value) {
        posDelegate().unshift_boxed(tc, value);
    }
    public void unshift_native(ThreadContext tc) {
        posDelegate().unshift_native(tc);
    }
    public SixModelObject shift_boxed(ThreadContext tc) {
        return posDelegate().shift_boxed(tc);
    }
    public void shift_native(ThreadContext tc) {
        posDelegate().shift_native(tc);
    }
    public void splice(ThreadContext tc, SixModelObject from, long offset, long count) {
        posDelegate().splice(tc, from, offset, count);
    }
    
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        return assDelegate().at_key_boxed(tc, key);
    }
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        assDelegate().bind_key_boxed(tc, key, value);
    }
    public long exists_key(ThreadContext tc, String key) {
        return assDelegate().exists_key(tc, key);
    }
    public void delete_key(ThreadContext tc, String key) {
        assDelegate().delete_key(tc, key);
    }
}
