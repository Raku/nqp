package org.perl6.nqp.sixmodel;

import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodHandles.Lookup;
import java.lang.invoke.MethodType;
import java.util.HashMap;
import java.util.List;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.CallSiteDescriptor;
import org.perl6.nqp.runtime.CodeRef;
import org.perl6.nqp.runtime.CompilationUnit;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.reprs.KnowHOWAttributeInstance;
import org.perl6.nqp.sixmodel.reprs.KnowHOWREPR;
import org.perl6.nqp.sixmodel.reprs.KnowHOWREPRInstance;

/**
 * This class contains methods that belong on the KnowHOW meta-object. It
 * pretends to be a compilation unit, so as to fit with the expected API
 * for code reference like things.
 */
public class KnowHOWMethods extends CompilationUnit {
    public void new_type(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        /* Get arguments. */
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            String repr_arg = Ops.namedparam_opt_s(cf, csd, args, "repr");
            String name_arg = Ops.namedparam_opt_s(cf, csd, args, "name");
            if (self == null || !(self.st.REPR instanceof KnowHOWREPR))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW methods must be called on object with REPR KnowHOWREPR");
            
            /* We first create a new HOW instance. */
            SixModelObject HOW = self.st.REPR.allocate(tc, self.st);
            
            /* See if we have a representation name; if not default to P6opaque. */
            String repr_name = repr_arg != null ? repr_arg : "P6opaque";
                
            /* Create a new type object of the desired REPR. (Note that we can't
             * default to KnowHOWREPR here, since it doesn't know how to actually
             * store attributes, it's just for bootstrapping knowhow's. */
            REPR repr_to_use = REPRRegistry.getByName(repr_name);
            SixModelObject type_object = repr_to_use.type_object_for(tc, HOW);
            
            /* See if we were given a name; put it into the meta-object if so. */
            if (name_arg != null)
                ((KnowHOWREPRInstance)HOW).name = name_arg;
            
            /* Set .WHO to an empty hash. */
            SixModelObject Hash = tc.gc.BOOTHash;
            type_object.st.WHO = Hash.st.REPR.allocate(tc, Hash.st);
    
            /* Return the type object. */
            Ops.return_o(type_object, cf);
        }
        finally {
            cf.leave();
        }
    }
    
    public void add_method(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 4, 4);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            String name = Ops.posparam_s(cf, csd, args, 2);
            SixModelObject method = Ops.posparam_o(cf, csd, args, 3);
            
            if (self == null || !(self instanceof KnowHOWREPRInstance))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            
            ((KnowHOWREPRInstance)self).methods.put(name, method);
            
            Ops.return_o(method, cf);
        }
        finally {
            cf.leave();
        }
    }
    
    public void add_attribute(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 3, 3);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            SixModelObject attribute = Ops.posparam_o(cf, csd, args, 2);
            
            if (self == null || !(self instanceof KnowHOWREPRInstance))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            if (attribute == null || !(attribute instanceof KnowHOWAttributeInstance))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW attributes must use KnowHOWAttributeREPR");
            
            ((KnowHOWREPRInstance)self).attributes.add(attribute);
            
            Ops.return_o(attribute, cf);
        }
        finally {
            cf.leave();
        }
    }
    
    public void compose(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            SixModelObject type_obj = Ops.posparam_o(cf, csd, args, 1);
            
            if (self == null || !(self instanceof KnowHOWREPRInstance))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            
            /* Set method cache. */
            type_obj.st.MethodCache = ((KnowHOWREPRInstance)self).methods;
            type_obj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;
            
            /* Set type check cache. */
            type_obj.st.TypeCheckCache = new SixModelObject[] { type_obj };
            
            /* Use any attribute information to produce attribute protocol
             * data. The protocol consists of an array... */
            SixModelObject repr_info = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);
            
            /* ...which contains an array per MRO entry... */
            SixModelObject type_info = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);
            repr_info.push_boxed(tc, type_info);
                
            /* ...which in turn contains this type... */
            type_info.push_boxed(tc, type_obj);
            
            /* ...then an array of hashes per attribute... */
            SixModelObject attr_info_list = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);
            type_info.push_boxed(tc, attr_info_list);
            List<SixModelObject> attributes = ((KnowHOWREPRInstance)self).attributes;
            for (int i = 0; i < attributes.size(); i++) {
                KnowHOWAttributeInstance attribute = (KnowHOWAttributeInstance)attributes.get(i);
                SixModelObject attr_info = tc.gc.BOOTHash.st.REPR.allocate(tc, tc.gc.BOOTHash.st);
                SixModelObject name_obj = tc.gc.BOOTStr.st.REPR.allocate(tc, tc.gc.BOOTStr.st);
                name_obj.set_str(tc, attribute.name);
                attr_info.bind_key_boxed(tc, "name", name_obj);
                attr_info.bind_key_boxed(tc, "type", attribute.type);
                if (attribute.box_target != 0) {
                    /* Merely having the key serves as a "yes". */
                    attr_info.bind_key_boxed(tc, "box_target", attr_info);
                }
                attr_info_list.push_boxed(tc, attr_info);
            }
            
            /* ...followed by a list of parents (none). */
            SixModelObject parent_info = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);
            type_info.push_boxed(tc, parent_info);
            
            /* All of this goes in a hash. */
            SixModelObject repr_info_hash = tc.gc.BOOTHash.st.REPR.allocate(tc, tc.gc.BOOTHash.st);
            repr_info_hash.bind_key_boxed(tc, "attribute", repr_info);
            
            /* Compose the representation using it. */
            type_obj.st.REPR.compose(tc, type_obj.st, repr_info_hash);
            
            Ops.return_o(type_obj, cf);
        }
        finally {
            cf.leave();
        }
    }

    public void attributes(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            
            if (self == null || !(self instanceof KnowHOWREPRInstance))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            
            SixModelObject BOOTArray = tc.gc.BOOTArray;
            SixModelObject result = BOOTArray.st.REPR.allocate(tc, BOOTArray.st);
            
            List<SixModelObject> attributes = ((KnowHOWREPRInstance)self).attributes;
            for (SixModelObject attr : attributes)
                result.push_boxed(tc, attr);
            
            Ops.return_o(result, cf);
        }
        finally {
            cf.leave();
        }
    }

    public void methods(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            
            if (self == null || !(self instanceof KnowHOWREPRInstance))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            
            SixModelObject BOOTHash = tc.gc.BOOTHash;
            SixModelObject result = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);
            
            HashMap<String, SixModelObject> methods = ((KnowHOWREPRInstance)self).methods;
            for (String name : methods.keySet())
                result.bind_key_boxed(tc, name, methods.get(name));
            
            Ops.return_o(result, cf);
        }
        finally {
            cf.leave();
        }
    }
    
    public void name(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            
            if (self == null || !(self instanceof KnowHOWREPRInstance))
                throw ExceptionHandling.dieInternal(tc, "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
    
            Ops.return_s(((KnowHOWREPRInstance)self).name, cf);
        }
        finally {
            cf.leave();
        }
    }
    
    public void attr_new(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            /* Process arguments. */
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            String name_arg = Ops.namedparam_s(cf, csd, args, "name");
            SixModelObject type_arg = Ops.namedparam_opt_o(cf, csd, args, "type");
            long bt_arg = Ops.namedparam_opt_i(cf, csd, args, "box_target");
    
            /* Allocate attribute object. */
            REPR repr = REPRRegistry.getByName("KnowHOWAttribute");
            KnowHOWAttributeInstance obj = (KnowHOWAttributeInstance)repr.allocate(tc, self.st);
            
            /* Populate it. */
            obj.name = name_arg;
            obj.type = type_arg != null ? type_arg : tc.gc.KnowHOW;
            obj.box_target = bt_arg == 0 ? 0 : 1;
            
            /* Return produced object. */
            Ops.return_o(obj, cf);
        }
        finally {
            cf.leave();
        }
    }

    public void attr_compose(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_o(self, cf);
        }
        finally {
            cf.leave();
        }
    }

    public void attr_name(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_s(((KnowHOWAttributeInstance)self).name, cf);
        }
        finally {
            cf.leave();
        }
    }

    public void attr_type(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_o(((KnowHOWAttributeInstance)self).type, cf);
        }
        finally {
            cf.leave();
        }
    }

    public void attr_box_target(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        CallFrame cf = new CallFrame(tc, cr);
        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_i(((KnowHOWAttributeInstance)self).box_target, cf);
        }
        finally {
            cf.leave();
        }
    }
    
    public CodeRef[] getCodeRefs() {
        CodeRef[] refs = new CodeRef[12];
        String[] snull = null;
        long[][] hnull = new long[0][];
        MethodType mt = MethodType.methodType(void.class, ThreadContext.class,
                CodeRef.class, CallSiteDescriptor.class, Object[].class);
        Lookup l = MethodHandles.lookup();
        try {
            refs[0] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "new_type", mt).bindTo(this),
                    "new_type", "new_type", snull, snull, snull, snull, hnull, (short)0);
            refs[1] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "add_method", mt).bindTo(this),
                    "add_method", "add_method", snull, snull, snull, snull, hnull, (short)0);
            refs[2] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "add_attribute", mt).bindTo(this),
                    "add_attribute", "add_attribute", snull, snull, snull, snull, hnull, (short)0);
            refs[3] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "compose", mt).bindTo(this),
                    "compose", "compose", snull, snull, snull, snull, hnull, (short)0);
            refs[4] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "attributes", mt).bindTo(this),
                    "attributes", "attributes", snull, snull, snull, snull, hnull, (short)0);
            refs[5] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "methods", mt).bindTo(this),
                    "methods", "methods", snull, snull, snull, snull, hnull, (short)0);
            refs[6] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "name", mt).bindTo(this),
                    "name", "name", snull, snull, snull, snull, hnull, (short)0);
            refs[7] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "attr_new", mt).bindTo(this),
                    "new", "attr_new", snull, snull, snull, snull, hnull, (short)0);
            refs[8] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "attr_compose", mt).bindTo(this),
                    "compose", "attr_compose", snull, snull, snull, snull, hnull, (short)0);
            refs[9] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "attr_name", mt).bindTo(this),
                    "name", "attr_name", snull, snull, snull, snull, hnull, (short)0);
            refs[10] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "attr_type", mt).bindTo(this),
                    "type", "attr_type", snull, snull, snull, snull, hnull, (short)0);
            refs[11] = new CodeRef(this, l.findVirtual(KnowHOWMethods.class, "attr_box_target", mt).bindTo(this),
                    "box_target", "attr_box_target", snull, snull, snull, snull, hnull, (short)0);
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
        return refs;
    }

    public int[] getOuterMap() {
        return new int[0];
    }

    public CallSiteDescriptor[] getCallSites() {
        return new CallSiteDescriptor[0];
    }

    public String hllName() {
        return "";
    }
}
