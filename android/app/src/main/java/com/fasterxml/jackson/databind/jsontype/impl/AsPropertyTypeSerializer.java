package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import java.io.IOException;

public class AsPropertyTypeSerializer extends AsArrayTypeSerializer {
    protected final String _typePropertyName;

    public AsPropertyTypeSerializer(TypeIdResolver typeIdResolver, BeanProperty beanProperty, String str) {
        super(typeIdResolver, beanProperty);
        this._typePropertyName = str;
    }

    public AsPropertyTypeSerializer forProperty(BeanProperty beanProperty) {
        return this._property == beanProperty ? this : new AsPropertyTypeSerializer(this._idResolver, beanProperty, this._typePropertyName);
    }

    public String getPropertyName() {
        return this._typePropertyName;
    }

    public As getTypeInclusion() {
        return As.PROPERTY;
    }

    public void writeCustomTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (str == null) {
            jsonGenerator.writeStartObject();
        } else if (jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeTypeId(str);
            jsonGenerator.writeStartObject();
        } else {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(this._typePropertyName, str);
        }
    }

    public void writeCustomTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        jsonGenerator.writeEndObject();
    }

    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        String idFromValue = idFromValue(obj);
        if (idFromValue == null) {
            jsonGenerator.writeStartObject();
        } else if (jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeTypeId(idFromValue);
            jsonGenerator.writeStartObject();
        } else {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(this._typePropertyName, idFromValue);
        }
    }

    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        String idFromValueAndType = idFromValueAndType(obj, cls);
        if (idFromValueAndType == null) {
            jsonGenerator.writeStartObject();
        } else if (jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeTypeId(idFromValueAndType);
            jsonGenerator.writeStartObject();
        } else {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(this._typePropertyName, idFromValueAndType);
        }
    }

    public void writeTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeEndObject();
    }
}
