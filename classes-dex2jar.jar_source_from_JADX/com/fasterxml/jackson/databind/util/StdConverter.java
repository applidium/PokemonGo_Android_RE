package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

public abstract class StdConverter<IN, OUT> implements Converter<IN, OUT> {
    public abstract OUT convert(IN in);

    public JavaType getInputType(TypeFactory typeFactory) {
        JavaType[] findTypeParameters = typeFactory.findTypeParameters(getClass(), Converter.class);
        if (findTypeParameters != null && findTypeParameters.length >= 2) {
            return findTypeParameters[0];
        }
        throw new IllegalStateException("Can not find OUT type parameter for Converter of type " + getClass().getName());
    }

    public JavaType getOutputType(TypeFactory typeFactory) {
        JavaType[] findTypeParameters = typeFactory.findTypeParameters(getClass(), Converter.class);
        if (findTypeParameters != null && findTypeParameters.length >= 2) {
            return findTypeParameters[1];
        }
        throw new IllegalStateException("Can not find OUT type parameter for Converter of type " + getClass().getName());
    }
}
