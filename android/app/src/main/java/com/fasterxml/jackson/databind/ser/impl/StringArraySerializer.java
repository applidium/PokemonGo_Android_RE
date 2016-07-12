package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.JsonFormat.Feature;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.ArraySerializerBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.reflect.Type;

@JacksonStdImpl
public class StringArraySerializer extends ArraySerializerBase<String[]> implements ContextualSerializer {
    private static final JavaType VALUE_TYPE;
    public static final StringArraySerializer instance;
    protected final JsonSerializer<Object> _elementSerializer;

    static {
        VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(String.class);
        instance = new StringArraySerializer();
    }

    protected StringArraySerializer() {
        super(String[].class);
        this._elementSerializer = null;
    }

    public StringArraySerializer(StringArraySerializer stringArraySerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(stringArraySerializer, beanProperty, bool);
        this._elementSerializer = jsonSerializer;
    }

    private void serializeContentsSlow(String[] strArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (strArr[i] == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            } else {
                jsonSerializer.serialize(strArr[i], jsonGenerator, serializerProvider);
            }
        }
    }

    public JsonSerializer<?> _withResolved(BeanProperty beanProperty, Boolean bool) {
        return new StringArraySerializer(this, beanProperty, this._elementSerializer, bool);
    }

    public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return this;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        if (jsonFormatVisitorWrapper != null) {
            JsonArrayFormatVisitor expectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType);
            if (expectArrayFormat != null) {
                expectArrayFormat.itemsFormat(JsonFormatTypes.STRING);
            }
        }
    }

    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer serializerInstance;
        Boolean feature;
        JsonSerializer jsonSerializer = null;
        if (beanProperty != null) {
            Value findFormatOverrides;
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            Annotated member = beanProperty.getMember();
            if (member != null) {
                Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
                if (findContentSerializer != null) {
                    serializerInstance = serializerProvider.serializerInstance(member, findContentSerializer);
                    findFormatOverrides = beanProperty.findFormatOverrides(annotationIntrospector);
                    feature = findFormatOverrides == null ? findFormatOverrides.getFeature(Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) : null;
                }
            }
            serializerInstance = null;
            findFormatOverrides = beanProperty.findFormatOverrides(annotationIntrospector);
            if (findFormatOverrides == null) {
            }
        } else {
            feature = null;
            serializerInstance = null;
        }
        if (serializerInstance == null) {
            serializerInstance = this._elementSerializer;
        }
        serializerInstance = findConvertingContentSerializer(serializerProvider, beanProperty, serializerInstance);
        serializerInstance = serializerInstance == null ? serializerProvider.findValueSerializer(String.class, beanProperty) : serializerProvider.handleSecondaryContextualization(serializerInstance, beanProperty);
        if (!isDefaultSerializer(serializerInstance)) {
            jsonSerializer = serializerInstance;
        }
        return (jsonSerializer == this._elementSerializer && feature == this._unwrapSingle) ? this : new StringArraySerializer(this, beanProperty, jsonSerializer, feature);
    }

    public JsonSerializer<?> getContentSerializer() {
        return this._elementSerializer;
    }

    public JavaType getContentType() {
        return VALUE_TYPE;
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("array", true).set("items", createSchemaNode("string"));
    }

    public boolean hasSingleElement(String[] strArr) {
        return strArr.length == 1;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, String[] strArr) {
        return strArr == null || strArr.length == 0;
    }

    public final void serialize(String[] strArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = strArr.length;
        if (length == 1 && ((this._unwrapSingle == null && serializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)) || this._unwrapSingle == Boolean.TRUE)) {
            serializeContents(strArr, jsonGenerator, serializerProvider);
            return;
        }
        jsonGenerator.writeStartArray(length);
        serializeContents(strArr, jsonGenerator, serializerProvider);
        jsonGenerator.writeEndArray();
    }

    public void serializeContents(String[] strArr, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        int length = strArr.length;
        if (length != 0) {
            if (this._elementSerializer != null) {
                serializeContentsSlow(strArr, jsonGenerator, serializerProvider, this._elementSerializer);
                return;
            }
            for (int i = 0; i < length; i++) {
                if (strArr[i] == null) {
                    jsonGenerator.writeNull();
                } else {
                    jsonGenerator.writeString(strArr[i]);
                }
            }
        }
    }
}
