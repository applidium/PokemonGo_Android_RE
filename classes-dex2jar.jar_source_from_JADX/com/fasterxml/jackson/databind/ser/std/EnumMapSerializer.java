package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.EnumValues;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;
import java.util.Map.Entry;

@JacksonStdImpl
@Deprecated
public class EnumMapSerializer extends ContainerSerializer<EnumMap<? extends Enum<?>, ?>> implements ContextualSerializer {
    protected final EnumValues _keyEnums;
    protected final BeanProperty _property;
    protected final boolean _staticTyping;
    protected final JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final TypeSerializer _valueTypeSerializer;

    public EnumMapSerializer(JavaType javaType, boolean z, EnumValues enumValues, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        boolean z2 = false;
        super(EnumMap.class, false);
        this._property = null;
        if (z || (javaType != null && javaType.isFinal())) {
            z2 = true;
        }
        this._staticTyping = z2;
        this._valueType = javaType;
        this._keyEnums = enumValues;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
    }

    public EnumMapSerializer(EnumMapSerializer enumMapSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer) {
        super((ContainerSerializer) enumMapSerializer);
        this._property = beanProperty;
        this._staticTyping = enumMapSerializer._staticTyping;
        this._valueType = enumMapSerializer._valueType;
        this._keyEnums = enumMapSerializer._keyEnums;
        this._valueTypeSerializer = enumMapSerializer._valueTypeSerializer;
        this._valueSerializer = jsonSerializer;
    }

    public EnumMapSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new EnumMapSerializer(this._valueType, this._staticTyping, this._keyEnums, typeSerializer, this._valueSerializer);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        if (jsonFormatVisitorWrapper != null) {
            JsonObjectFormatVisitor expectObjectFormat = jsonFormatVisitorWrapper.expectObjectFormat(javaType);
            if (expectObjectFormat != null) {
                JavaType containedType = javaType.containedType(1);
                JsonSerializer jsonSerializer = this._valueSerializer;
                if (jsonSerializer == null && containedType != null) {
                    jsonSerializer = jsonFormatVisitorWrapper.getProvider().findValueSerializer(containedType, this._property);
                }
                JavaType constructType = containedType == null ? jsonFormatVisitorWrapper.getProvider().constructType(Object.class) : containedType;
                EnumValues enumValues = this._keyEnums;
                if (enumValues == null) {
                    containedType = javaType.containedType(0);
                    if (containedType == null) {
                        throw new IllegalStateException("Can not resolve Enum type of EnumMap: " + javaType);
                    }
                    JsonSerializer findValueSerializer = jsonFormatVisitorWrapper.getProvider().findValueSerializer(containedType, this._property);
                    if (findValueSerializer instanceof EnumSerializer) {
                        enumValues = ((EnumSerializer) findValueSerializer).getEnumValues();
                    } else {
                        throw new IllegalStateException("Can not resolve Enum type of EnumMap: " + javaType);
                    }
                }
                for (Entry entry : r0.internalMap().entrySet()) {
                    JsonFormatVisitable findValueSerializer2;
                    String value = ((SerializableString) entry.getValue()).getValue();
                    if (jsonSerializer == null) {
                        findValueSerializer2 = jsonFormatVisitorWrapper.getProvider().findValueSerializer(entry.getKey().getClass(), this._property);
                    } else {
                        Object obj = jsonSerializer;
                    }
                    expectObjectFormat.property(value, findValueSerializer2, constructType);
                    JsonFormatVisitable jsonFormatVisitable = findValueSerializer2;
                }
            }
        }
    }

    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer jsonSerializer = null;
        if (beanProperty != null) {
            Annotated member = beanProperty.getMember();
            if (member != null) {
                Object findContentSerializer = serializerProvider.getAnnotationIntrospector().findContentSerializer(member);
                if (findContentSerializer != null) {
                    jsonSerializer = serializerProvider.serializerInstance(member, findContentSerializer);
                }
            }
        }
        if (jsonSerializer == null) {
            jsonSerializer = this._valueSerializer;
        }
        jsonSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer);
        if (jsonSerializer != null) {
            jsonSerializer = serializerProvider.handleSecondaryContextualization(jsonSerializer, beanProperty);
        } else if (this._staticTyping) {
            return withValueSerializer(beanProperty, serializerProvider.findValueSerializer(this._valueType, beanProperty));
        }
        return jsonSerializer != this._valueSerializer ? withValueSerializer(beanProperty, jsonSerializer) : this;
    }

    public JsonSerializer<?> getContentSerializer() {
        return this._valueSerializer;
    }

    public JavaType getContentType() {
        return this._valueType;
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        JsonNode createSchemaNode = createSchemaNode("object", true);
        if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length == 2) {
                JavaType constructType = serializerProvider.constructType(actualTypeArguments[0]);
                JavaType constructType2 = serializerProvider.constructType(actualTypeArguments[1]);
                JsonNode objectNode = JsonNodeFactory.instance.objectNode();
                for (Enum enumR : (Enum[]) constructType.getRawClass().getEnumConstants()) {
                    JsonSerializer findValueSerializer = serializerProvider.findValueSerializer(constructType2.getRawClass(), this._property);
                    objectNode.set(serializerProvider.getConfig().getAnnotationIntrospector().findEnumValue(enumR), findValueSerializer instanceof SchemaAware ? ((SchemaAware) findValueSerializer).getSchema(serializerProvider, null) : JsonSchema.getDefaultSchemaNode());
                }
                createSchemaNode.set("properties", objectNode);
            }
        }
        return createSchemaNode;
    }

    public boolean hasSingleElement(EnumMap<? extends Enum<?>, ?> enumMap) {
        return enumMap.size() == 1;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, EnumMap<? extends Enum<?>, ?> enumMap) {
        return enumMap == null || enumMap.isEmpty();
    }

    public void serialize(EnumMap<? extends Enum<?>, ?> enumMap, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        jsonGenerator.writeStartObject();
        if (!enumMap.isEmpty()) {
            serializeContents(enumMap, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndObject();
    }

    protected void serializeContents(EnumMap<? extends Enum<?>, ?> enumMap, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        if (this._valueSerializer != null) {
            serializeContentsUsing(enumMap, jsonGenerator, serializerProvider, this._valueSerializer);
            return;
        }
        EnumValues enumValues = this._keyEnums;
        Object obj = !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? 1 : null;
        boolean isEnabled = serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        Class cls = null;
        JsonSerializer jsonSerializer = null;
        for (Entry entry : enumMap.entrySet()) {
            Object value = entry.getValue();
            if (obj == null || value != null) {
                Enum enumR = (Enum) entry.getKey();
                if (isEnabled) {
                    jsonGenerator.writeFieldName(enumR.toString());
                } else {
                    if (enumValues == null) {
                        enumValues = ((EnumSerializer) ((StdSerializer) serializerProvider.findValueSerializer(enumR.getDeclaringClass(), this._property))).getEnumValues();
                    }
                    jsonGenerator.writeFieldName(enumValues.serializedValueFor(enumR));
                }
                if (value == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else {
                    JsonSerializer jsonSerializer2;
                    Class cls2 = value.getClass();
                    if (cls2 == cls) {
                        cls2 = cls;
                        jsonSerializer2 = jsonSerializer;
                    } else {
                        jsonSerializer = serializerProvider.findValueSerializer(cls2, this._property);
                        jsonSerializer2 = jsonSerializer;
                    }
                    if (typeSerializer == null) {
                        try {
                            jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                            jsonSerializer = jsonSerializer2;
                            cls = cls2;
                        } catch (Throwable e) {
                            wrapAndThrow(serializerProvider, e, (Object) enumMap, ((Enum) entry.getKey()).name());
                            jsonSerializer = jsonSerializer2;
                            cls = cls2;
                        }
                    } else {
                        jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                        jsonSerializer = jsonSerializer2;
                        cls = cls2;
                    }
                }
            }
        }
    }

    protected void serializeContentsUsing(EnumMap<? extends Enum<?>, ?> enumMap, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
        EnumValues enumValues = this._keyEnums;
        Object obj = !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? 1 : null;
        boolean isEnabled = serializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        EnumValues enumValues2 = enumValues;
        for (Entry entry : enumMap.entrySet()) {
            Object value = entry.getValue();
            if (obj == null || value != null) {
                Enum enumR = (Enum) entry.getKey();
                if (isEnabled) {
                    jsonGenerator.writeFieldName(enumR.toString());
                    enumValues = enumValues2;
                } else {
                    if (enumValues2 == null) {
                        enumValues2 = ((EnumSerializer) ((StdSerializer) serializerProvider.findValueSerializer(enumR.getDeclaringClass(), this._property))).getEnumValues();
                    }
                    jsonGenerator.writeFieldName(enumValues2.serializedValueFor(enumR));
                    enumValues = enumValues2;
                }
                if (value == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                    enumValues2 = enumValues;
                } else if (typeSerializer == null) {
                    try {
                        jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                        enumValues2 = enumValues;
                    } catch (Throwable e) {
                        wrapAndThrow(serializerProvider, e, (Object) enumMap, ((Enum) entry.getKey()).name());
                        enumValues2 = enumValues;
                    }
                } else {
                    jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                    enumValues2 = enumValues;
                }
            }
        }
    }

    public void serializeWithType(EnumMap<? extends Enum<?>, ?> enumMap, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForObject(enumMap, jsonGenerator);
        if (!enumMap.isEmpty()) {
            serializeContents(enumMap, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForObject(enumMap, jsonGenerator);
    }

    public EnumMapSerializer withValueSerializer(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer) {
        return (this._property == beanProperty && jsonSerializer == this._valueSerializer) ? this : new EnumMapSerializer(this, beanProperty, jsonSerializer);
    }
}
