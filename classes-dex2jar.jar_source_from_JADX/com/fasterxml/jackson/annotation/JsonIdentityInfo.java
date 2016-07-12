package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonIdentityInfo {
    Class<? extends ObjectIdGenerator<?>> generator();

    String property() default "@id";

    Class<? extends ObjectIdResolver> resolver() default SimpleObjectIdResolver.class;

    Class<?> scope() default Object.class;
}
