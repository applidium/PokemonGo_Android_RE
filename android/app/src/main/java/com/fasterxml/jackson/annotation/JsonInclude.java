package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@JacksonAnnotation
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonInclude {

    public enum Include {
        ALWAYS,
        NON_NULL,
        NON_ABSENT,
        NON_EMPTY,
        NON_DEFAULT,
        USE_DEFAULTS
    }

    public static class Value implements JacksonAnnotationValue<JsonInclude> {
        protected static final Value EMPTY;
        protected final Include contentInclusion;
        protected final Include valueInclusion;

        static {
            EMPTY = new Value(Include.USE_DEFAULTS, Include.USE_DEFAULTS);
        }

        protected Value(Include include, Include include2) {
            if (include == null) {
                include = Include.USE_DEFAULTS;
            }
            this.valueInclusion = include;
            if (include2 == null) {
                include2 = Include.USE_DEFAULTS;
            }
            this.contentInclusion = include2;
        }

        public Value(JsonInclude jsonInclude) {
            this(jsonInclude.value(), jsonInclude.content());
        }

        public static Value construct(Include include, Include include2) {
            return (include == Include.USE_DEFAULTS && include2 == Include.USE_DEFAULTS) ? EMPTY : new Value(include, include2);
        }

        public static Value empty() {
            return EMPTY;
        }

        public static Value from(JsonInclude jsonInclude) {
            return jsonInclude == null ? null : new Value(jsonInclude);
        }

        public Include getContentInclusion() {
            return this.contentInclusion;
        }

        public Include getValueInclusion() {
            return this.valueInclusion;
        }

        public Class<JsonInclude> valueFor() {
            return JsonInclude.class;
        }

        public Value withContentInclusion(Include include) {
            return include == this.contentInclusion ? this : new Value(this.valueInclusion, include);
        }

        public Value withOverrides(Value value) {
            return value == null ? this : withValueInclusion(value.valueInclusion).withContentInclusion(value.contentInclusion);
        }

        public Value withValueInclusion(Include include) {
            return include == this.valueInclusion ? this : new Value(include, this.contentInclusion);
        }
    }

    Include content() default Include.ALWAYS;

    Include value() default Include.ALWAYS;
}
