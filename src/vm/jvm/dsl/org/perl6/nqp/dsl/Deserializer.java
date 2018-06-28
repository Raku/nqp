package org.perl6.nqp.dsl;

import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Target(ElementType.CONSTRUCTOR)
@Retention(RetentionPolicy.CLASS)
public @interface Deserializer {
}
