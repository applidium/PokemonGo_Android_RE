package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;

public final class PropertyBasedCreator {
    protected final SettableBeanProperty[] _allProperties;
    protected final int _propertyCount;
    protected final HashMap<String, SettableBeanProperty> _propertyLookup;
    protected final ValueInstantiator _valueInstantiator;

    protected PropertyBasedCreator(ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) {
        this._valueInstantiator = valueInstantiator;
        this._propertyLookup = new HashMap();
        int length = settableBeanPropertyArr.length;
        this._propertyCount = length;
        this._allProperties = new SettableBeanProperty[length];
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i];
            this._allProperties[i] = settableBeanProperty;
            this._propertyLookup.put(settableBeanProperty.getName(), settableBeanProperty);
        }
    }

    public static PropertyBasedCreator construct(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[length];
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i];
            if (!settableBeanProperty.hasValueDeserializer()) {
                settableBeanProperty = settableBeanProperty.withValueDeserializer(deserializationContext.findContextualValueDeserializer(settableBeanProperty.getType(), settableBeanProperty));
            }
            settableBeanPropertyArr2[i] = settableBeanProperty;
        }
        return new PropertyBasedCreator(valueInstantiator, settableBeanPropertyArr2);
    }

    public Object build(DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer) throws IOException {
        Object createFromObjectWith = this._valueInstantiator.createFromObjectWith(deserializationContext, propertyValueBuffer.getParameters(this._allProperties));
        if (createFromObjectWith != null) {
            createFromObjectWith = propertyValueBuffer.handleIdValue(deserializationContext, createFromObjectWith);
            for (PropertyValue buffered = propertyValueBuffer.buffered(); buffered != null; buffered = buffered.next) {
                buffered.assign(createFromObjectWith);
            }
        }
        return createFromObjectWith;
    }

    public SettableBeanProperty findCreatorProperty(int i) {
        for (SettableBeanProperty settableBeanProperty : this._propertyLookup.values()) {
            if (settableBeanProperty.getPropertyIndex() == i) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public SettableBeanProperty findCreatorProperty(String str) {
        return (SettableBeanProperty) this._propertyLookup.get(str);
    }

    public Collection<SettableBeanProperty> properties() {
        return this._propertyLookup.values();
    }

    public PropertyValueBuffer startBuilding(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectIdReader objectIdReader) {
        return new PropertyValueBuffer(jsonParser, deserializationContext, this._propertyCount, objectIdReader);
    }
}
