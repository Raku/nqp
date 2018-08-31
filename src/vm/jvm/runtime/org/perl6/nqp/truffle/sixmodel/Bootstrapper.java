package org.perl6.nqp.truffle.sixmodel;

import org.perl6.nqp.truffle.GlobalContext;

public class Bootstrapper {
    public static void bootstrap(GlobalContext globalContext) {
        bootstrapKnowHOW(globalContext);
        bootstrapKnowHOWAttribute(globalContext);
    }

    private static void bootstrapKnowHOW(GlobalContext globalContext) {
        /* Create our KnowHOW type object. Note we don't have a HOW just yet, so
         * pass in NULL. */
        STable stable = new STable(null);

        stable.repr = REPRRegistry.createFromName("KnowHOWREPR", stable);

        TypeObject knowhow = REPRRegistry.typeObjectFor("KnowHOWREPR", stable);

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
    }

    private static void bootstrapKnowHOWAttribute(GlobalContext globalContext) {
        //...
    }

}
