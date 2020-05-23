package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public class P6OpaqueDelegateInstance extends P6OpaqueBaseInstance {
    @Override
    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
                                              String name, long hint) {
        return delegate.get_attribute_boxed(tc, class_handle, name, hint);
    }
    @Override
    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        delegate.get_attribute_native(tc, class_handle, name, hint);
    }
    @Override
    public void bind_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
                                     String name, long hint, SixModelObject value) {
        delegate.bind_attribute_boxed(tc, class_handle, name, hint, value);
    }
    @Override
    public void bind_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        delegate.bind_attribute_native(tc, class_handle, name, hint);
    }
    @Override
    public long is_attribute_initialized(ThreadContext tc, SixModelObject class_handle,
                                         String name, long hint) {
        return delegate.is_attribute_initialized(tc, class_handle, name, hint);
    }
    @Override
    public void set_int(ThreadContext tc, long value) {
        delegate.set_int(tc, value);
    }
    @Override
    public long get_int(ThreadContext tc) {
        return delegate.get_int(tc);
    }
    @Override
    public void set_num(ThreadContext tc, double value) {
        delegate.set_num(tc, value);
    }
    @Override
    public double get_num(ThreadContext tc) {
        return delegate.get_num(tc);
    }
    @Override
    public void set_str(ThreadContext tc, String value) {
        delegate.set_str(tc, value);
    }
    @Override
    public String get_str(ThreadContext tc) {
        return delegate.get_str(tc);
    }
    @Override
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        return delegate.at_pos_boxed(tc, index);
    }
    @Override
    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        delegate.bind_pos_boxed(tc, index, value);
    }
    @Override
    public void set_elems(ThreadContext tc, long count) {
        delegate.set_elems(tc, count);
    }
    @Override
    public void push_boxed(ThreadContext tc, SixModelObject value) {
        delegate.push_boxed(tc, value);
    }
    @Override
    public SixModelObject pop_boxed(ThreadContext tc) {
        return delegate.pop_boxed(tc);
    }
    @Override
    public void unshift_boxed(ThreadContext tc, SixModelObject value) {
        delegate.unshift_boxed(tc, value);
    }
    @Override
    public SixModelObject shift_boxed(ThreadContext tc) {
        return delegate.shift_boxed(tc);
    }
    @Override
    public SixModelObject slice(ThreadContext tc, SixModelObject dest, long beginning, long end) {
        return delegate.slice(tc, dest, beginning, end);
    }
    @Override
    public void splice(ThreadContext tc, SixModelObject from, long offset, long count) {
        delegate.splice(tc, from, offset, count);
    }
    @Override
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        return delegate.at_key_boxed(tc, key);
    }
    @Override
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        delegate.bind_key_boxed(tc, key, value);
    }
    @Override
    public long exists_key(ThreadContext tc, String key) {
        return delegate.exists_key(tc, key);
    }
    @Override
    public void delete_key(ThreadContext tc, String key) {
        delegate.delete_key(tc, key);
    }
    @Override
    public long elems(ThreadContext tc) {
        return delegate.elems(tc);
    }
    public SixModelObject clone(ThreadContext tc) {
        return delegate.clone(tc);
    }
}
