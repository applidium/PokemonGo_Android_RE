package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.IOException;
import java.lang.annotation.Annotation;

public class CreatorProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected final AnnotatedParameter _annotated;
    protected final int _creatorIndex;
    protected SettableBeanProperty _fallbackSetter;
    protected final Object _injectableValueId;

    public CreatorProperty(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, TypeDeserializer typeDeserializer, Annotations annotations, AnnotatedParameter annotatedParameter, int i, Object obj, PropertyMetadata propertyMetadata) {
        super(propertyName, javaType, propertyName2, typeDeserializer, annotations, propertyMetadata);
        this._annotated = annotatedParameter;
        this._creatorIndex = i;
        this._injectableValueId = obj;
        this._fallbackSetter = null;
    }

    protected CreatorProperty(CreatorProperty creatorProperty, JsonDeserializer<?> jsonDeserializer) {
        super((SettableBeanProperty) creatorProperty, (JsonDeserializer) jsonDeserializer);
        this._annotated = creatorProperty._annotated;
        this._creatorIndex = creatorProperty._creatorIndex;
        this._injectableValueId = creatorProperty._injectableValueId;
        this._fallbackSetter = creatorProperty._fallbackSetter;
    }

    protected CreatorProperty(CreatorProperty creatorProperty, PropertyName propertyName) {
        super((SettableBeanProperty) creatorProperty, propertyName);
        this._annotated = creatorProperty._annotated;
        this._creatorIndex = creatorProperty._creatorIndex;
        this._injectableValueId = creatorProperty._injectableValueId;
        this._fallbackSetter = creatorProperty._fallbackSetter;
    }

    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException, JsonProcessingException {
        set(obj, deserialize(jsonParser, deserializationContext));
    }

    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException, JsonProcessingException {
        return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    public Object findInjectableValue(DeserializationContext deserializationContext, Object obj) {
        if (this._injectableValueId != null) {
            return deserializationContext.findInjectableValue(this._injectableValueId, this, obj);
        }
        throw new IllegalStateException("Property '" + getName() + "' (type " + getClass().getName() + ") has no injectable value id configured");
    }

    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return this._annotated == null ? null : this._annotated.getAnnotation(cls);
    }

    public int getCreatorIndex() {
        return this._creatorIndex;
    }

    public Object getInjectableValueId() {
        return this._injectableValueId;
    }

    public AnnotatedMember getMember() {
        return this._annotated;
    }

    public void inject(DeserializationContext deserializationContext, Object obj) throws IOException {
        set(obj, findInjectableValue(deserializationContext, obj));
    }

    public void set(Object obj, Object obj2) throws IOException {
        if (this._fallbackSetter == null) {
            throw new IllegalStateException("No fallback setter/field defined: can not use creator property for " + getClass().getName());
        }
        this._fallbackSetter.set(obj, obj2);
    }

    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        if (this._fallbackSetter != null) {
            return this._fallbackSetter.setAndReturn(obj, obj2);
        }
        throw new IllegalStateException("No fallback setter/field defined: can not use creator property for " + getClass().getName());
    }

    public void setFallbackSetter(SettableBeanProperty settableBeanProperty) {
        this._fallbackSetter = settableBeanProperty;
    }

    public String toString() {
        return "[creator property, name '" + getName() + "'; inject id '" + this._injectableValueId + "']";
    }

    public CreatorProperty withName(PropertyName propertyName) {
        return new CreatorProperty(this, propertyName);
    }

    public CreatorProperty withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new CreatorProperty(this, (JsonDeserializer) jsonDeserializer);
    }
}
