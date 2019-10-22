package org.perl6.nqp.dsl;

import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Target(ElementType.TYPE)
@Retention(RetentionPolicy.CLASS)
public @interface AstBuilder {
    Class nodeClass();
    Class nodesClass();
    Class intClass();
    Class intsClass();
    Class numClass();
    Class strClass();
    Class strsClass();
    Class scopeClass();
    Class hllClass();
    Class contextSlotClass();
    Class globalContextClass();
    Class threadContextClass();

    boolean tastToByteCode();
    boolean tastToNode();
    boolean byteCodeToNode();
}
