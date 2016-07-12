package com.fasterxml.jackson.annotation;

public enum OptBoolean {
    TRUE,
    FALSE,
    DEFAULT;

    public static OptBoolean fromBoolean(Boolean bool) {
        return bool == null ? DEFAULT : bool.booleanValue() ? TRUE : FALSE;
    }

    public Boolean asBoolean() {
        return this == DEFAULT ? null : this == TRUE ? Boolean.TRUE : Boolean.FALSE;
    }

    public boolean asPrimitive() {
        return this == TRUE;
    }
}
