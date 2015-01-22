package org.perl6.nqp.runtime;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface CodeRefAnnotation
{
    String name() default "";
    String cuid() default "";
    int outerQbid() default -1;
    String[] oLexicalNames() default {};
    String[] iLexicalNames() default {};
    String[] nLexicalNames() default {};
    String[] sLexicalNames() default {};
    long[] handlers() default {0};
    boolean hasExitHandler() default false;
    short argsExpectation() default 0;
    boolean isThunk() default false;
    String[] blockLexValues() default {};
}
