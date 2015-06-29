package org.perl6.rakudo;

import org.perl6.rakudo.RakudoEvalServer;

public class StandaloneJARWrapper {
    public static void main(String... args) throws Exception {
        System.setProperty("perl6.prefix", ".");
        RakudoEvalServer res = new RakudoEvalServer(true);

        String[] resargs = new String[2];
        resargs[0] = "--with-cu";
        resargs[1] = "Foo.jar";
        String result = null;
        try {
            result = res.run(resargs);
        } catch(Exception e) {
            e.printStackTrace();
        }
        System.out.println(result);
    }
}
