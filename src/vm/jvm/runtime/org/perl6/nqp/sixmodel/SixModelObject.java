package org.perl6.nqp.sixmodel;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPRRegistry;

/**
 * All 6model objects derive from this base class. A bunch of the REPR
 * API methods are also implemented through here. This is not the way
 * that 6model implementions in, say, C are factored. The spread of the
 * REPR API over REPR function tables and here is because this way is
 * a better fit and stands a better chance of performing well with the
 * way the JVM does things.
 */
public abstract class SixModelObject implements Cloneable {
    /**
     * The STable of the object.
     */
    public STable st;
    
    /**
     * The serialization context this object belongs to, if any.
     */
    public SerializationContext sc;
    
    /**
     * Attribute access functions. The native variants load the value into
     * or store a value from the Thread Context.
     */
    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle,
            String name, long hint) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not support attributes");
    }
    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not support natively typed attributes");
    }
    public void bind_attribute_boxed(ThreadContext tc,SixModelObject class_handle,
            String name, long hint, SixModelObject value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not support attributes");
    }
    public void bind_attribute_native(ThreadContext tc,SixModelObject class_handle, String name, long hint) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not support natively typed attributes");
    }
    public long is_attribute_initialized(ThreadContext tc, SixModelObject class_handle,
            String name, long hint) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not support attributes");
    }

    /**
     * Boxing related functions.
     */
    public void set_int(ThreadContext tc, long value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not box a native int");
    }
    public long get_int(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not unbox to a native int");
    }
    public void set_num(ThreadContext tc, double value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not box a native num");
    }
    public double get_num(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not unbox to a native num");
    }
    public void set_str(ThreadContext tc, String value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not box a native str");
    }
    public String get_str(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not unbox to a native str");
    }
    public void set_boxing_of(ThreadContext tc, long reprId, Object value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not box "
            + REPRRegistry.getById((int)reprId).name);
    }
    public Object get_boxing_of(ThreadContext tc, long reprId) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation can not unbox "
            + REPRRegistry.getById((int)reprId).name);
    }
    
    /**
     * Positional access functions.
     */
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement at_pos_boxed");
    }
    public void at_pos_native(ThreadContext tc, long index) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement at_pos_native");
    }
    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement bind_pos_boxed");
    }
    public void bind_pos_native(ThreadContext tc, long index) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement bind_pos_native");
    }
    public void set_elems(ThreadContext tc, long count) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement set_elems");
    }
    public long exists_pos(ThreadContext tc, long key) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement exists_pos");
    }
    public void push_boxed(ThreadContext tc, SixModelObject value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement push_boxed");
    }
    public void push_native(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement push_native");
    }
    public SixModelObject pop_boxed(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement pop_boxed");
    }
    public void pop_native(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement pop_native");
    }
    public void unshift_boxed(ThreadContext tc, SixModelObject value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement unshift_boxed");
    }
    public void unshift_native(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement unshift_native");
    }
    public SixModelObject shift_boxed(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement shift_boxed");
    }
    public void shift_native(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement shift_native");
    }
    public void splice(ThreadContext tc, SixModelObject from, long offset, long count) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement splice");
    }
    
    /**
     * Associative access functions.
     */
    public SixModelObject at_key_boxed(ThreadContext tc, String key) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement at_key_boxed");
    }
    public void at_key_native(ThreadContext tc, String key) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement at_key_native");
    }
    public void bind_key_boxed(ThreadContext tc, String key, SixModelObject value) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement bind_key_boxed");
    }
    public void bind_key_native(ThreadContext tc, String key) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement bind_key_native");
    }
    public long exists_key(ThreadContext tc, String key) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement exists_key");
    }
    public void delete_key(ThreadContext tc, String key) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement delete_key");
    }

    /**
     * General aggregate-y operations.
     */
    public long elems(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement elems");
    }
    
    /**
     * Clones the object.
     */
    public SixModelObject clone(ThreadContext tc) {
        throw ExceptionHandling.dieInternal(tc, this.st.REPR.name + " representation does not implement cloning");
    }
}
