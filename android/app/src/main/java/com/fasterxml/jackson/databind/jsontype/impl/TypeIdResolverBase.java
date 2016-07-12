package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.type.TypeFactory;

public abstract class TypeIdResolverBase implements TypeIdResolver {
    protected final JavaType _baseType;
    protected final TypeFactory _typeFactory;

    protected TypeIdResolverBase() {
        this(null, null);
    }

    protected TypeIdResolverBase(JavaType javaType, TypeFactory typeFactory) {
        this._baseType = javaType;
        this._typeFactory = typeFactory;
    }

    public String getDescForKnownTypeIds() {
        return null;
    }

    public String idFromBaseType() {
        return idFromValueAndType(null, this._baseType.getRawClass());
    }

    public void init(JavaType javaType) {
    }

    public JavaType typeFromId(DatabindContext databindContext, String str) {
        return typeFromId(str);
    }

    @Deprecated
    public JavaType typeFromId(String str) {
        return typeFromId(null, str);
    }
}
