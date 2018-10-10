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

        // get arguments
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;

            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            final String reprArg = Ops.namedparam_opt_s(cf, csd, args, "repr");
            final String nameArg = Ops.namedparam_opt_s(cf, csd, args, "name");

            if (self == null || !(self.st.REPR instanceof KnowHOWREPR)) {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW methods must be called on object with REPR KnowHOWREPR");
            }

            // we first create a new HOW instance
            final SixModelObject HOW = self.st.REPR.allocate(tc, self.st);

            // see if we have a representation name; if not default to P6opaque
            final String reprName = reprArg != null ? reprArg : "P6opaque";

            // create a new type object of the desired REPR.
            // note that we cannot default to KnowHOWREPR here,
            // since it doesn't know how to actually store attributes,
            // it's just for bootstrapping knowhow's.
            final REPR reprToUse = REPRRegistry.getByName(reprName);
            final SixModelObject typeObject = reprToUse.type_object_for(tc, HOW);

            // see if we were given a name; put it into the meta-object if so
            if (nameArg != null) {
                ((KnowHOWREPRInstance) HOW).name = nameArg;
            }

            // set .WHO to an empty hash
            final SixModelObject Hash = tc.gc.BOOTHash;
            typeObject.st.WHO = Hash.st.REPR.allocate(tc, Hash.st);

            // return the type object
            Ops.return_o(typeObject, cf);
        } finally {
            cf.leave();
        }
    }

    public void add_method(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 4, 4);
            args = tc.flatArgs;

            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            final String name = Ops.posparam_s(cf, csd, args, 2);
            final SixModelObject method = Ops.posparam_o(cf, csd, args, 3);

            if (self instanceof KnowHOWREPRInstance) {
                ((KnowHOWREPRInstance)self).methods.put(name, method);
                Ops.return_o(method, cf);
            } else {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            }
        } finally {
            cf.leave();
        }
    }

    public void add_attribute(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 3, 3);
            args = tc.flatArgs;

            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            final SixModelObject attribute = Ops.posparam_o(cf, csd, args, 2);

            if (!(self instanceof KnowHOWREPRInstance)) {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            }

            if (!(attribute instanceof KnowHOWAttributeInstance)) {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW attributes must use KnowHOWAttributeREPR");
            }

            ((KnowHOWREPRInstance)self).attributes.add(attribute);
            Ops.return_o(attribute, cf);
        } finally {
            cf.leave();
        }
    }

    public void compose(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;

            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            final SixModelObject typeObj = Ops.posparam_o(cf, csd, args, 1);

            if (!(self instanceof KnowHOWREPRInstance)) {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            }

            // set method cache
            typeObj.st.MethodCache = ((KnowHOWREPRInstance)self).methods;
            typeObj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;

            // set type check cache
            typeObj.st.TypeCheckCache = new SixModelObject[] { typeObj };

            // use any attribute information to produce attribute protocol data.
            // The protocol consists of an array...
            final SixModelObject REPRInfo = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);

            // ...which contains an array per MRO entry...
            final SixModelObject typeInfo = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);
            REPRInfo.push_boxed(tc, typeInfo);

            // ...which in turn contains this type...
            typeInfo.push_boxed(tc, typeObj);

            // ...then an array of hashes per attribute...
            final SixModelObject attrInfoList = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);
            typeInfo.push_boxed(tc, attrInfoList);

            final List<SixModelObject> attributes = ((KnowHOWREPRInstance)self).attributes;
            for (SixModelObject sixModelObject : attributes) {
                final KnowHOWAttributeInstance attribute = (KnowHOWAttributeInstance)sixModelObject;
                final SixModelObject attrInfo = tc.gc.BOOTHash.st.REPR.allocate(tc, tc.gc.BOOTHash.st);
                final SixModelObject nameObj = tc.gc.BOOTStr.st.REPR.allocate(tc, tc.gc.BOOTStr.st);

                nameObj.set_str(tc, attribute.name);
                attrInfo.bind_key_boxed(tc, "name", nameObj);
                attrInfo.bind_key_boxed(tc, "type", attribute.type);

                if (attribute.box_target != 0) {
                    // merely having the key serves as a "yes".
                    attrInfo.bind_key_boxed(tc, "box_target", attrInfo);
                }

                attrInfoList.push_boxed(tc, attrInfo);
            }

            // ...followed by a list of parents (none)
            final SixModelObject parentInfo = tc.gc.BOOTArray.st.REPR.allocate(tc, tc.gc.BOOTArray.st);
            typeInfo.push_boxed(tc, parentInfo);

            // all of this goes in a hash
            final SixModelObject reprInfoHash = tc.gc.BOOTHash.st.REPR.allocate(tc, tc.gc.BOOTHash.st);
            reprInfoHash.bind_key_boxed(tc, "attribute", REPRInfo);

            // compose the representation using it
            typeObj.st.REPR.compose(tc, typeObj.st, reprInfoHash);

            Ops.return_o(typeObj, cf);
        } finally {
            cf.leave();
        }
    }

    public void attributes(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;

            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            if (!(self instanceof KnowHOWREPRInstance)) {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            }

            final SixModelObject BOOTArray = tc.gc.BOOTArray;
            final SixModelObject result = BOOTArray.st.REPR.allocate(tc, BOOTArray.st);

            final List<SixModelObject> attributes = ((KnowHOWREPRInstance)self).attributes;
            for (SixModelObject attr : attributes) {
                result.push_boxed(tc, attr);
            }

            Ops.return_o(result, cf);
        } finally {
            cf.leave();
        }
    }

    public void methods(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;
            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);

            if (!(self instanceof KnowHOWREPRInstance)) {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            }

            final SixModelObject BOOTHash = tc.gc.BOOTHash;
            final SixModelObject result = BOOTHash.st.REPR.allocate(tc, BOOTHash.st);

            final HashMap<String, SixModelObject> methods = ((KnowHOWREPRInstance)self).methods;
            for (String name : methods.keySet()) {
                result.bind_key_boxed(tc, name, methods.get(name));
            }

            Ops.return_o(result, cf);
        } finally {
            cf.leave();
        }
    }

    public void name(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 2, 2);
            args = tc.flatArgs;

            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);

            if (!(self instanceof KnowHOWREPRInstance)) {
                throw ExceptionHandling.dieInternal(tc,
                    "KnowHOW methods must be called on object instance with REPR KnowHOWREPR");
            }

            Ops.return_s(((KnowHOWREPRInstance)self).name, cf);
        } finally {
            cf.leave();
        }
    }

    public void attr_new(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            // process arguments
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;

            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            final String nameArg = Ops.namedparam_s(cf, csd, args, "name");
            final SixModelObject typeArg = Ops.namedparam_opt_o(cf, csd, args, "type");
            final long btArg = Ops.namedparam_opt_i(cf, csd, args, "box_target");

            // allocate attribute object
            final REPR repr = REPRRegistry.getByName("KnowHOWAttribute");
            final KnowHOWAttributeInstance obj = (KnowHOWAttributeInstance)repr.allocate(tc, self.st);

            // populate it
            obj.name = nameArg;
            obj.type = typeArg != null ? typeArg : tc.gc.KnowHOW;
            obj.box_target = btArg == 0 ? 0 : 1;

            // return produced object
            Ops.return_o(obj, cf);
        } finally {
            cf.leave();
        }
    }

    public void attr_compose(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_o(self, cf);
        } finally {
            cf.leave();
        }
    }

    public void attr_name(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_s(((KnowHOWAttributeInstance)self).name, cf);
        } finally {
            cf.leave();
        }
    }

    public void attr_type(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_o(((KnowHOWAttributeInstance)self).type, cf);
        } finally {
            cf.leave();
        }
    }

    public void attr_box_target(ThreadContext tc, CodeRef cr, CallSiteDescriptor csd, Object[] args) {
        final CallFrame cf = new CallFrame(tc, cr);

        try {
            csd = Ops.checkarity(cf, csd, args, 1, 1);
            args = tc.flatArgs;
            final SixModelObject self = Ops.posparam_o(cf, csd, args, 0);
            Ops.return_i(((KnowHOWAttributeInstance)self).box_target, cf);
        } finally {
            cf.leave();
        }
    }

    public CodeRef[] getCodeRefs() {
        final CodeRef[] refs = new CodeRef[12];
        final String[] sNull = null;
        final long[][] hNull = new long[0][];
        final MethodType mt = MethodType.methodType(void.class, ThreadContext.class, CodeRef.class, CallSiteDescriptor.class, Object[].class);
        final Lookup lookup = MethodHandles.lookup();

        try {
            refs[0] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "new_type", mt).bindTo(this),
                    "new_type", "new_type", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[1] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "add_method", mt).bindTo(this),
                    "add_method", "add_method", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[2] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "add_attribute", mt).bindTo(this),
                    "add_attribute", "add_attribute", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[3] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "compose", mt).bindTo(this),
                    "compose", "compose", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[4] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "attributes", mt).bindTo(this),
                    "attributes", "attributes", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[5] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "methods", mt).bindTo(this),
                    "methods", "methods", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[6] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "name", mt).bindTo(this),
                    "name", "name", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[7] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "attr_new", mt).bindTo(this),
                    "new", "attr_new", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[8] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "attr_compose", mt).bindTo(this),
                    "compose", "attr_compose", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[9] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "attr_name", mt).bindTo(this),
                    "name", "attr_name", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[10] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "attr_type", mt).bindTo(this),
                    "type", "attr_type", sNull, sNull, sNull, sNull, hNull, (short)0);
            refs[11] = new CodeRef(this, lookup.findVirtual(KnowHOWMethods.class, "attr_box_target", mt).bindTo(this),
                    "box_target", "attr_box_target", sNull, sNull, sNull, sNull, hNull, (short)0);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return refs;
    }

    public CallSiteDescriptor[] getCallSites() {
        return new CallSiteDescriptor[0];
    }

    public String hllName() {
        return "";
    }
}
