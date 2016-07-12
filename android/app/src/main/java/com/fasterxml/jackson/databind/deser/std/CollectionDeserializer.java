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
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@JacksonStdImpl
public class CollectionDeserializer extends ContainerDeserializerBase<Collection<Object>> implements ContextualDeserializer {
    private static final long serialVersionUID = -1;
    protected final JavaType _collectionType;
    protected final JsonDeserializer<Object> _delegateDeserializer;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;

    private static final class CollectionReferring extends Referring {
        private final CollectionReferringAccumulator _parent;
        public final List<Object> next;

        CollectionReferring(CollectionReferringAccumulator collectionReferringAccumulator, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls) {
            super(unresolvedForwardReference, cls);
            this.next = new ArrayList();
            this._parent = collectionReferringAccumulator;
        }

        public void handleResolvedForwardReference(Object obj, Object obj2) throws IOException {
            this._parent.resolveForwardReference(obj, obj2);
        }
    }

    public static final class CollectionReferringAccumulator {
        private List<CollectionReferring> _accumulator;
        private final Class<?> _elementType;
        private final Collection<Object> _result;

        public CollectionReferringAccumulator(Class<?> cls, Collection<Object> collection) {
            this._accumulator = new ArrayList();
            this._elementType = cls;
            this._result = collection;
        }

        public void add(Object obj) {
            if (this._accumulator.isEmpty()) {
                this._result.add(obj);
            } else {
                ((CollectionReferring) this._accumulator.get(this._accumulator.size() - 1)).next.add(obj);
            }
        }

        public Referring handleUnresolvedReference(UnresolvedForwardReference unresolvedForwardReference) {
            Referring collectionReferring = new CollectionReferring(this, unresolvedForwardReference, this._elementType);
            this._accumulator.add(collectionReferring);
            return collectionReferring;
        }

        public void resolveForwardReference(Object obj, Object obj2) throws IOException {
            Iterator it = this._accumulator.iterator();
            Collection collection = this._result;
            while (it.hasNext()) {
                CollectionReferring collectionReferring = (CollectionReferring) it.next();
                if (collectionReferring.hasId(obj)) {
                    it.remove();
                    collection.add(obj2);
                    collection.addAll(collectionReferring.next);
                    return;
                }
                Object obj3 = collectionReferring.next;
            }
            throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj + "] that wasn't previously seen as unresolved.");
        }
    }

    public CollectionDeserializer(JavaType javaType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, ValueInstantiator valueInstantiator) {
        this(javaType, jsonDeserializer, typeDeserializer, valueInstantiator, null);
    }

    protected CollectionDeserializer(JavaType javaType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, ValueInstantiator valueInstantiator, JsonDeserializer<Object> jsonDeserializer2) {
        super(javaType);
        this._collectionType = javaType;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
        this._valueInstantiator = valueInstantiator;
        this._delegateDeserializer = jsonDeserializer2;
    }

    protected CollectionDeserializer(CollectionDeserializer collectionDeserializer) {
        super(collectionDeserializer._collectionType);
        this._collectionType = collectionDeserializer._collectionType;
        this._valueDeserializer = collectionDeserializer._valueDeserializer;
        this._valueTypeDeserializer = collectionDeserializer._valueTypeDeserializer;
        this._valueInstantiator = collectionDeserializer._valueInstantiator;
        this._delegateDeserializer = collectionDeserializer._delegateDeserializer;
    }

    public CollectionDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer jsonDeserializer = null;
        if (this._valueInstantiator != null && this._valueInstantiator.canCreateUsingDelegate()) {
            JavaType delegateType = this._valueInstantiator.getDelegateType(deserializationContext.getConfig());
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._collectionType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
            jsonDeserializer = findDeserializer(deserializationContext, delegateType, beanProperty);
        }
        JsonDeserializer findConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, this._valueDeserializer);
        JavaType contentType = this._collectionType.getContentType();
        findConvertingContentDeserializer = findConvertingContentDeserializer == null ? deserializationContext.findContextualValueDeserializer(contentType, beanProperty) : deserializationContext.handleSecondaryContextualization(findConvertingContentDeserializer, beanProperty, contentType);
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer = typeDeserializer.forProperty(beanProperty);
        }
        return withResolved(jsonDeserializer, findConvertingContentDeserializer, typeDeserializer);
    }

    public Collection<Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._delegateDeserializer != null) {
            return (Collection) this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
            String text = jsonParser.getText();
            if (text.length() == 0) {
                return (Collection) this._valueInstantiator.createFromString(deserializationContext, text);
            }
        }
        return deserialize(jsonParser, deserializationContext, (Collection) this._valueInstantiator.createUsingDefault(deserializationContext));
    }

    public Collection<Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext, collection);
        }
        jsonParser.setCurrentValue(collection);
        JsonDeserializer jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        CollectionReferringAccumulator collectionReferringAccumulator = jsonDeserializer.getObjectIdReader() == null ? null : new CollectionReferringAccumulator(this._collectionType.getContentType().getRawClass(), collection);
        while (true) {
            JsonToken nextToken = jsonParser.nextToken();
            if (nextToken == JsonToken.END_ARRAY) {
                return collection;
            }
            Object nullValue;
            try {
                nullValue = nextToken == JsonToken.VALUE_NULL ? jsonDeserializer.getNullValue(deserializationContext) : typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                if (collectionReferringAccumulator != null) {
                    collectionReferringAccumulator.add(nullValue);
                } else {
                    collection.add(nullValue);
                }
            } catch (Throwable e) {
                if (collectionReferringAccumulator == null) {
                    break;
                    throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info", e);
                }
                e.getRoid().appendReferring(collectionReferringAccumulator.handleUnresolvedReference(e));
            } catch (Throwable e2) {
                nullValue = (deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) ? 1 : null;
                if (nullValue == null && (e2 instanceof RuntimeException)) {
                    throw ((RuntimeException) e2);
                }
                throw JsonMappingException.wrapWithPath(e2, (Object) collection, collection.size());
            }
        }
        throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info", e);
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

    protected final Collection<Object> handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            JsonDeserializer jsonDeserializer = this._valueDeserializer;
            TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
            try {
                Object nullValue = jsonParser.getCurrentToken() == JsonToken.VALUE_NULL ? jsonDeserializer.getNullValue(deserializationContext) : typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                collection.add(nullValue);
                return collection;
            } catch (Throwable e) {
                throw JsonMappingException.wrapWithPath(e, (Object) Object.class, collection.size());
            }
        }
        throw deserializationContext.mappingException(this._collectionType.getRawClass());
    }

    public boolean isCachable() {
        return this._valueDeserializer == null && this._valueTypeDeserializer == null && this._delegateDeserializer == null;
    }

    protected CollectionDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, TypeDeserializer typeDeserializer) {
        if (jsonDeserializer == this._delegateDeserializer && jsonDeserializer2 == this._valueDeserializer && typeDeserializer == this._valueTypeDeserializer) {
            return this;
        }
        return new CollectionDeserializer(this._collectionType, jsonDeserializer2, typeDeserializer, this._valueInstantiator, jsonDeserializer);
    }
}
