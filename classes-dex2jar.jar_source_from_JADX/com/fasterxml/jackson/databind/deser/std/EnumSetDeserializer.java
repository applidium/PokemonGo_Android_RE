package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.EnumSet;

public class EnumSetDeserializer extends StdDeserializer<EnumSet<?>> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final Class<Enum> _enumClass;
    protected JsonDeserializer<Enum<?>> _enumDeserializer;
    protected final JavaType _enumType;

    public EnumSetDeserializer(JavaType javaType, JsonDeserializer<?> jsonDeserializer) {
        super(EnumSet.class);
        this._enumType = javaType;
        this._enumClass = javaType.getRawClass();
        if (this._enumClass.isEnum()) {
            this._enumDeserializer = jsonDeserializer;
            return;
        }
        throw new IllegalArgumentException("Type " + javaType + " not Java Enum type");
    }

    private EnumSet constructSet() {
        return EnumSet.noneOf(this._enumClass);
    }

    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer jsonDeserializer = this._enumDeserializer;
        return withDeserializer(jsonDeserializer == null ? deserializationContext.findContextualValueDeserializer(this._enumType, beanProperty) : deserializationContext.handleSecondaryContextualization(jsonDeserializer, beanProperty, this._enumType));
    }

    public EnumSet<?> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.isExpectedStartArrayToken()) {
            Object constructSet = constructSet();
            while (true) {
                try {
                    JsonToken nextToken = jsonParser.nextToken();
                    if (nextToken == JsonToken.END_ARRAY) {
                        return constructSet;
                    }
                    if (nextToken == JsonToken.VALUE_NULL) {
                        break;
                    }
                    Enum enumR = (Enum) this._enumDeserializer.deserialize(jsonParser, deserializationContext);
                    if (enumR != null) {
                        constructSet.add(enumR);
                    }
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, constructSet, constructSet.size());
                }
            }
            throw deserializationContext.mappingException(this._enumClass);
        }
        throw deserializationContext.mappingException(EnumSet.class);
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    public boolean isCachable() {
        return this._enumType.getValueHandler() == null;
    }

    public EnumSetDeserializer withDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return this._enumDeserializer == jsonDeserializer ? this : new EnumSetDeserializer(this._enumType, jsonDeserializer);
    }
}
