package com.fasterxml.jackson.databind.annotation;

import com.fasterxml.jackson.annotation.JacksonAnnotation;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonAppend {

    public @interface Attr {
        Include include() default Include.NON_NULL;

        String propName() default "";

        String propNamespace() default "";

        boolean required() default false;

        String value();
    }

    public @interface Prop {
        Include include() default Include.NON_NULL;

        String name() default "";

        String namespace() default "";

        boolean required() default false;

        Class<?> type() default Object.class;

        Class<? extends VirtualBeanPropertyWriter> value();
    }

    Attr[] attrs() default {};

    boolean prepend() default false;

    Prop[] props() default {};
}
