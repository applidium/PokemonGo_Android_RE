package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.Collection;

@JacksonStdImpl
public final class StringCollectionDeserializer extends ContainerDeserializerBase<Collection<String>> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final JavaType _collectionType;
    protected final JsonDeserializer<Object> _delegateDeserializer;
    protected final JsonDeserializer<String> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;

    public StringCollectionDeserializer(JavaType javaType, JsonDeserializer<?> jsonDeserializer, ValueInstantiator valueInstantiator) {
        this(javaType, valueInstantiator, null, jsonDeserializer);
    }

    protected StringCollectionDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2) {
        super(javaType);
        this._collectionType = javaType;
        this._valueDeserializer = jsonDeserializer2;
        this._valueInstantiator = valueInstantiator;
        this._delegateDeserializer = jsonDeserializer;
    }

    private Collection<String> deserializeUsingCustom(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection, JsonDeserializer<String> jsonDeserializer) throws IOException {
        while (true) {
            Object obj;
            String str;
            if (jsonParser.nextTextValue() == null) {
                JsonToken currentToken = jsonParser.getCurrentToken();
                if (currentToken == JsonToken.END_ARRAY) {
                    return collection;
                }
                if (currentToken == JsonToken.VALUE_NULL) {
                    obj = (String) jsonDeserializer.getNullValue(deserializationContext);
                } else {
                    str = (String) jsonDeserializer.deserialize(jsonParser, deserializationContext);
                }
            } else {
                str = (String) jsonDeserializer.deserialize(jsonParser, deserializationContext);
            }
            collection.add(obj);
        }
    }

    private final Collection<String> handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            Object obj;
            JsonDeserializer jsonDeserializer = this._valueDeserializer;
            String str;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                if (jsonDeserializer == null) {
                    obj = null;
                } else {
                    str = (String) jsonDeserializer.getNullValue(deserializationContext);
                }
            } else if (jsonDeserializer == null) {
                obj = _parseString(jsonParser, deserializationContext);
            } else {
                str = (String) jsonDeserializer.deserialize(jsonParser, deserializationContext);
            }
            collection.add(obj);
            return collection;
        }
        throw deserializationContext.mappingException(this._collectionType.getRawClass());
    }

    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer jsonDeserializer = null;
        JsonDeserializer findDeserializer = (this._valueInstantiator == null || this._valueInstantiator.getDelegateCreator() == null) ? null : findDeserializer(deserializationContext, this._valueInstantiator.getDelegateType(deserializationContext.getConfig()), beanProperty);
        JsonDeserializer jsonDeserializer2 = this._valueDeserializer;
        JavaType contentType = this._collectionType.getContentType();
        if (jsonDeserializer2 == null) {
            jsonDeserializer2 = findConvertingContentDeserializer(deserializationContext, beanProperty, jsonDeserializer2);
            if (jsonDeserializer2 == null) {
                jsonDeserializer2 = deserializationContext.findContextualValueDeserializer(contentType, beanProperty);
            }
        } else {
            jsonDeserializer2 = deserializationContext.handleSecondaryContextualization(jsonDeserializer2, beanProperty, contentType);
        }
        if (!isDefaultDeserializer(jsonDeserializer2)) {
            jsonDeserializer = jsonDeserializer2;
        }
        return withResolved(findDeserializer, jsonDeserializer);
    }

    public Collection<String> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return this._delegateDeserializer != null ? (Collection) this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext)) : deserialize(jsonParser, deserializationContext, (Collection) this._valueInstantiator.createUsingDefault(deserializationContext));
    }

    public Collection<String> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext, collection);
        }
        if (this._valueDeserializer != null) {
            return deserializeUsingCustom(jsonParser, deserializationContext, collection, this._valueDeserializer);
        }
        while (true) {
            try {
                Object nextTextValue = jsonParser.nextTextValue();
                if (nextTextValue != null) {
                    collection.add(nextTextValue);
                } else {
                    JsonToken currentToken = jsonParser.getCurrentToken();
                    if (currentToken == JsonToken.END_ARRAY) {
                        return collection;
                    }
                    if (currentToken != JsonToken.VALUE_NULL) {
                        nextTextValue = _parseString(jsonParser, deserializationContext);
                    }
                    collection.add(nextTextValue);
                }
            } catch (Throwable e) {
                throw JsonMappingException.wrapWithPath(e, (Object) collection, collection.size());
            }
        }
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }

    public JavaType getContentType() {
        return this._collectionType.getContentType();
    }

    public boolean isCachable() {
        return this._valueDeserializer == null && this._delegateDeserializer == null;
    }

    protected StringCollectionDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2) {
        return (this._valueDeserializer == jsonDeserializer2 && this._delegateDeserializer == jsonDeserializer) ? this : new StringCollectionDeserializer(this._collectionType, this._valueInstantiator, jsonDeserializer, jsonDeserializer2);
    }
}
