package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class UnwrappedPropertyHandler {
    protected final List<SettableBeanProperty> _properties;

    public UnwrappedPropertyHandler() {
        this._properties = new ArrayList();
    }

    protected UnwrappedPropertyHandler(List<SettableBeanProperty> list) {
        this._properties = list;
    }

    public void addProperty(SettableBeanProperty settableBeanProperty) {
        this._properties.add(settableBeanProperty);
    }

    public Object processUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException, JsonProcessingException {
        int size = this._properties.size();
        for (int i = 0; i < size; i++) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._properties.get(i);
            JsonParser asParser = tokenBuffer.asParser();
            asParser.nextToken();
            settableBeanProperty.deserializeAndSet(asParser, deserializationContext, obj);
        }
        return obj;
    }

    public UnwrappedPropertyHandler renameAll(NameTransformer nameTransformer) {
        List arrayList = new ArrayList(this._properties.size());
        for (SettableBeanProperty settableBeanProperty : this._properties) {
            Object withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
            JsonDeserializer valueDeserializer = withSimpleName.getValueDeserializer();
            if (valueDeserializer != null) {
                JsonDeserializer unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer);
                if (unwrappingDeserializer != valueDeserializer) {
                    withSimpleName = withSimpleName.withValueDeserializer(unwrappingDeserializer);
                }
            }
            arrayList.add(withSimpleName);
        }
        return new UnwrappedPropertyHandler(arrayList);
    }
}
