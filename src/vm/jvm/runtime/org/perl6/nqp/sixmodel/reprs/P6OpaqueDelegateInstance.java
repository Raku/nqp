package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class P6OpaqueDelegateInstance extends P6OpaqueBaseInstance {
    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
            String name, long hint) {
        return delegate.get_attribute_boxed(tc, class_handle, name, hint);
    }
    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        delegate.get_attribute_native(tc, class_handle, name, hint);
    }
    public void bind_attribute_boxed(ThreadContext tc,SixModelObject class_handle,
            String name, long hint, SixModelObject value) {
        delegate.bind_attribute_boxed(tc, class_handle, name, hint, value);
    }
    public void bind_attribute_native(ThreadContext tc,SixModelObject class_handle, String name, long hint) {
        delegate.bind_attribute_native(tc, class_handle, name, hint);
    }
    public long is_attribute_initialized(ThreadContext tc, SixModelObject class_handle,
            String name, long hint) {
        return delegate.is_attribute_initialized(tc, class_handle, name, hint);
    }
    public void set_int(ThreadContext tc, long value) {
        delegate.set_int(tc, value);
    }
    public long get_int(ThreadContext tc) {
        return delegate.get_int(tc);
    }
    public void set_num(ThreadContext tc, double value) {
        delegate.set_num(tc, value);
    }
    public double get_num(ThreadContext tc) {
        return delegate.get_num(tc);
    }
    public void set_str(ThreadContext tc, String value) {
        delegate.set_str(tc, value);
    }
    public String get_str(ThreadContext tc) {
        return delegate.get_str(tc);
    }
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        return delegate.at_pos_boxed(tc, index);
    }
    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        delegate.bind_pos_boxed(tc, index, value);
    }
    public void set_elems(ThreadContext tc, long count) {
        delegate.set_elems(tc, count);
    }
    public void push_boxed(ThreadContext tc, SixModelObject value) {
        delegate.push_boxed(tc, value);
    }
    public SixModelObject pop_boxed(ThreadContext tc) {
        return delegate.pop_boxed(tc);
    }
    public void unshift_boxed(ThreadContext tc, SixModelObject value) {
        delegate.unshift_boxed(tc, value);
    }
    public SixModelObject shift_boxed(ThreadContext tc) {
        return delegate.shift_boxed(tc);
    }
    public void splice(ThreadContext tc, SixModelObject from, long offset, long count) {
        delegate.splice(tc, from, offset, count);
    }
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        return delegate.at_key_boxed(tc, key);
    }
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        delegate.bind_key_boxed(tc, key, value);
    }
    public long exists_key(ThreadContext tc, String key) {
        return delegate.exists_key(tc, key);
    }
    public void delete_key(ThreadContext tc, String key) {
        delegate.delete_key(tc, key);
    }
    public long elems(ThreadContext tc) {
        return delegate.elems(tc);
    }
    public SixModelObject clone(ThreadContext tc) {
        return delegate.clone(tc);
    }
}
