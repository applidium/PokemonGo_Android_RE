package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;

public abstract class PropertyValue {
    public final PropertyValue next;
    public final Object value;

    static final class Any extends PropertyValue {
        final SettableAnyProperty _property;
        final String _propertyName;

        public Any(PropertyValue propertyValue, Object obj, SettableAnyProperty settableAnyProperty, String str) {
            super(propertyValue, obj);
            this._property = settableAnyProperty;
            this._propertyName = str;
        }

        public void assign(Object obj) throws IOException, JsonProcessingException {
            this._property.set(obj, this._propertyName, this.value);
        }
    }

    static final class Map extends PropertyValue {
        final Object _key;

        public Map(PropertyValue propertyValue, Object obj, Object obj2) {
            super(propertyValue, obj);
            this._key = obj2;
        }

        public void assign(Object obj) throws IOException, JsonProcessingException {
            ((java.util.Map) obj).put(this._key, this.value);
        }
    }

    static final class Regular extends PropertyValue {
        final SettableBeanProperty _property;

        public Regular(PropertyValue propertyValue, Object obj, SettableBeanProperty settableBeanProperty) {
            super(propertyValue, obj);
            this._property = settableBeanProperty;
        }

        public void assign(Object obj) throws IOException, JsonProcessingException {
            this._property.set(obj, this.value);
        }
    }

    protected PropertyValue(PropertyValue propertyValue, Object obj) {
        this.next = propertyValue;
        this.value = obj;
    }

    public abstract void assign(Object obj) throws IOException, JsonProcessingException;
}
