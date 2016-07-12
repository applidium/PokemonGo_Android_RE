package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.io.IOException;

public abstract class ValueInstantiator {
    protected Object _createFromStringFallbacks(DeserializationContext deserializationContext, String str) throws IOException, JsonProcessingException {
        if (canCreateFromBoolean()) {
            String trim = str.trim();
            if ("true".equals(trim)) {
                return createFromBoolean(deserializationContext, true);
            }
            if ("false".equals(trim)) {
                return createFromBoolean(deserializationContext, false);
            }
        }
        if (str.length() == 0 && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) {
            return null;
        }
        throw deserializationContext.mappingException("Can not instantiate value of type %s from String value ('%s'); no single-String constructor/factory method", getValueTypeDesc(), str);
    }

    public boolean canCreateFromBoolean() {
        return false;
    }

    public boolean canCreateFromDouble() {
        return false;
    }

    public boolean canCreateFromInt() {
        return false;
    }

    public boolean canCreateFromLong() {
        return false;
    }

    public boolean canCreateFromObjectWith() {
        return false;
    }

    public boolean canCreateFromString() {
        return false;
    }

    public boolean canCreateUsingDefault() {
        return getDefaultCreator() != null;
    }

    public boolean canCreateUsingDelegate() {
        return false;
    }

    public boolean canInstantiate() {
        return canCreateUsingDefault() || canCreateUsingDelegate() || canCreateFromObjectWith() || canCreateFromString() || canCreateFromInt() || canCreateFromLong() || canCreateFromDouble() || canCreateFromBoolean();
    }

    public Object createFromBoolean(DeserializationContext deserializationContext, boolean z) throws IOException {
        throw deserializationContext.mappingException("Can not instantiate value of type %s from Boolean value (%s)", getValueTypeDesc(), Boolean.valueOf(z));
    }

    public Object createFromDouble(DeserializationContext deserializationContext, double d) throws IOException {
        throw deserializationContext.mappingException("Can not instantiate value of type %s from Floating-point number (%s, double)", getValueTypeDesc(), Double.valueOf(d));
    }

    public Object createFromInt(DeserializationContext deserializationContext, int i) throws IOException {
        throw deserializationContext.mappingException("Can not instantiate value of type %s from Integer number (%s, int)", getValueTypeDesc(), Integer.valueOf(i));
    }

    public Object createFromLong(DeserializationContext deserializationContext, long j) throws IOException {
        throw deserializationContext.mappingException("Can not instantiate value of type %s from Integer number (%s, long)", getValueTypeDesc(), Long.valueOf(j));
    }

    public Object createFromObjectWith(DeserializationContext deserializationContext, Object[] objArr) throws IOException {
        throw deserializationContext.mappingException("Can not instantiate value of type %s with arguments", getValueTypeDesc());
    }

    public Object createFromString(DeserializationContext deserializationContext, String str) throws IOException {
        return _createFromStringFallbacks(deserializationContext, str);
    }

    public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
        throw deserializationContext.mappingException("Can not instantiate value of type %s; no default creator found", getValueTypeDesc());
    }

    public Object createUsingDelegate(DeserializationContext deserializationContext, Object obj) throws IOException {
        throw deserializationContext.mappingException("Can not instantiate value of type %s using delegate", getValueTypeDesc());
    }

    public AnnotatedWithParams getDefaultCreator() {
        return null;
    }

    public AnnotatedWithParams getDelegateCreator() {
        return null;
    }

    public JavaType getDelegateType(DeserializationConfig deserializationConfig) {
        return null;
    }

    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationConfig) {
        return null;
    }

    public AnnotatedParameter getIncompleteParameter() {
        return null;
    }

    public abstract String getValueTypeDesc();

    public AnnotatedWithParams getWithArgsCreator() {
        return null;
    }
}
