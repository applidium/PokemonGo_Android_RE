package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Map;

public final class ManagedReferenceProperty extends SettableBeanProperty {
    private static final long serialVersionUID = 1;
    protected final SettableBeanProperty _backProperty;
    protected final boolean _isContainer;
    protected final SettableBeanProperty _managedProperty;
    protected final String _referenceName;

    public ManagedReferenceProperty(SettableBeanProperty settableBeanProperty, String str, SettableBeanProperty settableBeanProperty2, Annotations annotations, boolean z) {
        super(settableBeanProperty.getFullName(), settableBeanProperty.getType(), settableBeanProperty.getWrapperName(), settableBeanProperty.getValueTypeDeserializer(), annotations, settableBeanProperty.getMetadata());
        this._referenceName = str;
        this._managedProperty = settableBeanProperty;
        this._backProperty = settableBeanProperty2;
        this._isContainer = z;
    }

    protected ManagedReferenceProperty(ManagedReferenceProperty managedReferenceProperty, JsonDeserializer<?> jsonDeserializer) {
        super((SettableBeanProperty) managedReferenceProperty, (JsonDeserializer) jsonDeserializer);
        this._referenceName = managedReferenceProperty._referenceName;
        this._isContainer = managedReferenceProperty._isContainer;
        this._managedProperty = managedReferenceProperty._managedProperty;
        this._backProperty = managedReferenceProperty._backProperty;
    }

    protected ManagedReferenceProperty(ManagedReferenceProperty managedReferenceProperty, PropertyName propertyName) {
        super((SettableBeanProperty) managedReferenceProperty, propertyName);
        this._referenceName = managedReferenceProperty._referenceName;
        this._isContainer = managedReferenceProperty._isContainer;
        this._managedProperty = managedReferenceProperty._managedProperty;
        this._backProperty = managedReferenceProperty._backProperty;
    }

    public void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        set(obj, this._managedProperty.deserialize(jsonParser, deserializationContext));
    }

    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return setAndReturn(obj, deserialize(jsonParser, deserializationContext));
    }

    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return this._managedProperty.getAnnotation(cls);
    }

    public AnnotatedMember getMember() {
        return this._managedProperty.getMember();
    }

    public final void set(Object obj, Object obj2) throws IOException {
        setAndReturn(obj, obj2);
    }

    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        if (obj2 != null) {
            if (!this._isContainer) {
                this._backProperty.set(obj2, obj);
            } else if (obj2 instanceof Object[]) {
                for (Object obj3 : (Object[]) obj2) {
                    if (obj3 != null) {
                        this._backProperty.set(obj3, obj);
                    }
                }
            } else if (obj2 instanceof Collection) {
                for (Object next : (Collection) obj2) {
                    if (next != null) {
                        this._backProperty.set(next, obj);
                    }
                }
            } else if (obj2 instanceof Map) {
                for (Object next2 : ((Map) obj2).values()) {
                    if (next2 != null) {
                        this._backProperty.set(next2, obj);
                    }
                }
            } else {
                throw new IllegalStateException("Unsupported container type (" + obj2.getClass().getName() + ") when resolving reference '" + this._referenceName + "'");
            }
        }
        return this._managedProperty.setAndReturn(obj, obj2);
    }

    public ManagedReferenceProperty withName(PropertyName propertyName) {
        return new ManagedReferenceProperty(this, propertyName);
    }

    public ManagedReferenceProperty withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new ManagedReferenceProperty(this, (JsonDeserializer) jsonDeserializer);
    }
}
