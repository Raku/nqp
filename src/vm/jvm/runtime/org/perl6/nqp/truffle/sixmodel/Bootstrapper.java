package org.perl6.nqp.truffle.sixmodel;

import org.perl6.nqp.truffle.GlobalContext;
import org.perl6.nqp.truffle.runtime.HLL;
import org.perl6.nqp.truffle.sixmodel.reprs.KnowHOWREPRInstance;

public class Bootstrapper {
    public static void bootstrap(GlobalContext globalContext) {
        bootstrapKnowHOW(globalContext);
        bootstrapKnowHOWAttribute(globalContext);
        bootstrapTypes(globalContext);
    }

    public static void bootstrapTypes(GlobalContext globalContext) {
        globalContext.BOOTArray = bootType(globalContext, "BOOTArray", "VMArray");
        globalContext.BOOTIter = bootType(globalContext, "BOOTIter", "VMIter");

        globalContext.BOOTArray.stable.hllRole = HLL.ROLE_ARRAY;
        //Ops.setboolspec(tc.gc.BOOTArray, BoolificationSpec.MODE_HAS_ELEMS, null, tc);
        //Ops.setboolspec(tc.gc.BOOTIter, BoolificationSpec.MODE_ITER, null, tc);
    }

    private static TypeObject bootType(GlobalContext globalContext, String typeName, String reprName) {
        Object knowhowHow = globalContext.knowhow.stable.how;
        KnowHOWREPRInstance metaObj = (KnowHOWREPRInstance) ((KnowHOWREPRInstance)knowhowHow).stable.repr.allocate();
        metaObj.name = typeName;

        TypeObject typeObj = REPRRegistry.typeObjectFor(reprName, metaObj);

        //typeObj.st.MethodCache = meta_obj.methods;
        //typeObj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;

        SerializationContext sc = globalContext.scs.get("__6MODEL_CORE__");
        sc.addObject(typeObj);
        typeObj.sc = sc;
        sc.addObject(typeObj.stable.how);
        ((KnowHOWREPRInstance) typeObj.stable.how).sc = sc;
        sc.addSTable(typeObj.stable);
        typeObj.stable.sc = sc;

        return typeObj;
    }

    private static void bootstrapKnowHOW(GlobalContext globalContext) {
        /* Create our KnowHOW type object. Note we don't have a HOW just yet, so
         * pass in NULL. */
        TypeObject knowhow = REPRRegistry.typeObjectFor("KnowHOWREPR", null);

        STable stable = knowhow.stable;

        /* We create a KnowHOW instance that can describe itself. This means
         * (once we tie the knot) that .HOW.HOW.HOW.HOW etc will always return
         * that, which closes the model up. */
        stable.what = knowhow;
        Object knowhowHow = stable.repr.allocate();
        stable.how = knowhowHow;
        stable.repr.setSTable(knowhowHow, stable);


        /* Associate the created objects with the initial core serialization
         * context. */
        SerializationContext sc = new SerializationContext("__6MODEL_CORE__");
        globalContext.scs.put("__6MODEL_CORE__", sc);
        sc.addObject(knowhow);
        knowhow.sc = sc;
        sc.addObject(knowhowHow);
        stable.repr.setSc(knowhowHow, sc);
        sc.addSTable(knowhow.stable);
        knowhow.stable.sc = sc;
        sc.addSTable(stable);
        stable.sc = sc;

        globalContext.knowhow = knowhow;
    }

    private static void bootstrapKnowHOWAttribute(GlobalContext globalContext) {
        /* Create meta-object. */

        TypeObject knowhowHow = globalContext.knowhow;
        Object metaObj = knowhowHow.stable.repr.allocate();

        /* Add methods. */

        /*
        meta_obj.methods.put("new", knowhowUnit.lookupCodeRef("attr_new"));
        meta_obj.methods.put("compose", knowhowUnit.lookupCodeRef("attr_compose"));
        meta_obj.methods.put("name", knowhowUnit.lookupCodeRef("attr_name"));
        meta_obj.methods.put("type", knowhowUnit.lookupCodeRef("attr_type"));
        meta_obj.methods.put("box_target", knowhowUnit.lookupCodeRef("attr_box_target"));
        */

        /* Set name. */
        //metaObj.name = "KnowHOWAttribute";


        TypeObject typeObject = REPRRegistry.typeObjectFor("KnowHOWAttribute", metaObj);


        /* Set up method dispatch cache. */
        //type_obj.st.MethodCache = meta_obj.methods;
        //type_obj.st.ModeFlags = STable.METHOD_CACHE_AUTHORITATIVE;

        /* Associate the created object with the intial core serialization
         * context. */
        SerializationContext sc =  globalContext.scs.get("__6MODEL_CORE__");
        sc.addObject(typeObject);
        typeObject.sc = sc;
        sc.addSTable(typeObject.stable);
        typeObject.stable.sc = sc;

        /* Stash the created type object. */
        globalContext.knowhowAttribute = typeObject;
    }

}
