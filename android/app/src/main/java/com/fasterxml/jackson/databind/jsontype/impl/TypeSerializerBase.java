package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

public abstract class TypeSerializerBase extends TypeSerializer {
    protected final TypeIdResolver _idResolver;
    protected final BeanProperty _property;

    protected TypeSerializerBase(TypeIdResolver typeIdResolver, BeanProperty beanProperty) {
        this._idResolver = typeIdResolver;
        this._property = beanProperty;
    }

    public String getPropertyName() {
        return null;
    }

    public TypeIdResolver getTypeIdResolver() {
        return this._idResolver;
    }

    public abstract As getTypeInclusion();

    protected void handleMissingId(Object obj) {
    }

    protected String idFromValue(Object obj) {
        String idFromValue = this._idResolver.idFromValue(obj);
        if (idFromValue == null) {
            handleMissingId(obj);
        }
        return idFromValue;
    }

    protected String idFromValueAndType(Object obj, Class<?> cls) {
        String idFromValueAndType = this._idResolver.idFromValueAndType(obj, cls);
        if (idFromValueAndType == null) {
            handleMissingId(obj);
        }
        return idFromValueAndType;
    }
}
