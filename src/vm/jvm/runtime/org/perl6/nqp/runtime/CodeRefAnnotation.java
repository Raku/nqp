package org.perl6.nqp.runtime;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface CodeRefAnnotation
{
    String name();
    String cuid();
    String outerCuid();
    String[] oLexicalNames();
    String[] iLexicalNames();
    String[] nLexicalNames();
    String[] sLexicalNames();
    long[] handlers();
}
