package com.fasterxml.jackson.databind.annotation;

import com.fasterxml.jackson.annotation.JacksonAnnotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonPOJOBuilder {

    public static class Value {
        public final String buildMethodName;
        public final String withPrefix;

        public Value(JsonPOJOBuilder jsonPOJOBuilder) {
            this.buildMethodName = jsonPOJOBuilder.buildMethodName();
            this.withPrefix = jsonPOJOBuilder.withPrefix();
        }
    }

    String buildMethodName() default "build";

    String withPrefix() default "with";
}
