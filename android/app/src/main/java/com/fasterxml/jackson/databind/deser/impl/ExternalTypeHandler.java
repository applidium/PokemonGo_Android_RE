package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

public class ExternalTypeHandler {
    private final HashMap<String, Integer> _nameToPropertyIndex;
    private final ExtTypedProperty[] _properties;
    private final TokenBuffer[] _tokens;
    private final String[] _typeIds;

    public static class Builder {
        private final HashMap<String, Integer> _nameToPropertyIndex;
        private final ArrayList<ExtTypedProperty> _properties;

        public Builder() {
            this._properties = new ArrayList();
            this._nameToPropertyIndex = new HashMap();
        }

        public void addExternal(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            Integer valueOf = Integer.valueOf(this._properties.size());
            this._properties.add(new ExtTypedProperty(settableBeanProperty, typeDeserializer));
            this._nameToPropertyIndex.put(settableBeanProperty.getName(), valueOf);
            this._nameToPropertyIndex.put(typeDeserializer.getPropertyName(), valueOf);
        }

        public ExternalTypeHandler build() {
            return new ExternalTypeHandler((ExtTypedProperty[]) this._properties.toArray(new ExtTypedProperty[this._properties.size()]), this._nameToPropertyIndex, null, null);
        }
    }

    private static final class ExtTypedProperty {
        private final SettableBeanProperty _property;
        private final TypeDeserializer _typeDeserializer;
        private final String _typePropertyName;

        public ExtTypedProperty(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            this._property = settableBeanProperty;
            this._typeDeserializer = typeDeserializer;
            this._typePropertyName = typeDeserializer.getPropertyName();
        }

        public String getDefaultTypeId() {
            Class defaultImpl = this._typeDeserializer.getDefaultImpl();
            return defaultImpl == null ? null : this._typeDeserializer.getTypeIdResolver().idFromValueAndType(null, defaultImpl);
        }

        public SettableBeanProperty getProperty() {
            return this._property;
        }

        public String getTypePropertyName() {
            return this._typePropertyName;
        }

        public boolean hasDefaultType() {
            return this._typeDeserializer.getDefaultImpl() != null;
        }

        public boolean hasTypePropertyName(String str) {
            return str.equals(this._typePropertyName);
        }
    }

    protected ExternalTypeHandler(ExternalTypeHandler externalTypeHandler) {
        this._properties = externalTypeHandler._properties;
        this._nameToPropertyIndex = externalTypeHandler._nameToPropertyIndex;
        int length = this._properties.length;
        this._typeIds = new String[length];
        this._tokens = new TokenBuffer[length];
    }

    protected ExternalTypeHandler(ExtTypedProperty[] extTypedPropertyArr, HashMap<String, Integer> hashMap, String[] strArr, TokenBuffer[] tokenBufferArr) {
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = hashMap;
        this._typeIds = strArr;
        this._tokens = tokenBufferArr;
    }

    protected final Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, int i, String str) throws IOException {
        JsonParser asParser = this._tokens[i].asParser(jsonParser);
        if (asParser.nextToken() == JsonToken.VALUE_NULL) {
            return null;
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        tokenBuffer.copyCurrentStructure(asParser);
        tokenBuffer.writeEndArray();
        asParser = tokenBuffer.asParser(jsonParser);
        asParser.nextToken();
        return this._properties[i].getProperty().deserialize(asParser, deserializationContext);
    }

    protected final void _deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, int i, String str) throws IOException {
        JsonParser asParser = this._tokens[i].asParser(jsonParser);
        if (asParser.nextToken() == JsonToken.VALUE_NULL) {
            this._properties[i].getProperty().set(obj, null);
            return;
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        tokenBuffer.copyCurrentStructure(asParser);
        tokenBuffer.writeEndArray();
        asParser = tokenBuffer.asParser(jsonParser);
        asParser.nextToken();
        this._properties[i].getProperty().deserializeAndSet(asParser, deserializationContext, obj);
    }

    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer, PropertyBasedCreator propertyBasedCreator) throws IOException {
        int i;
        int length = this._properties.length;
        Object[] objArr = new Object[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str = this._typeIds[i2];
            if (str != null) {
                if (this._tokens[i2] == null) {
                    throw deserializationContext.mappingException("Missing property '%s' for external type id '%s'", this._properties[i2].getProperty().getName(), this._properties[i2].getTypePropertyName());
                }
                objArr[i2] = _deserialize(jsonParser, deserializationContext, i2, str);
            } else if (this._tokens[i2] == null) {
                continue;
            } else if (this._properties[i2].hasDefaultType()) {
                str = this._properties[i2].getDefaultTypeId();
                objArr[i2] = _deserialize(jsonParser, deserializationContext, i2, str);
            } else {
                throw deserializationContext.mappingException("Missing external type id property '%s'", this._properties[i2].getTypePropertyName());
            }
        }
        for (i = 0; i < length; i++) {
            SettableBeanProperty property = this._properties[i].getProperty();
            if (propertyBasedCreator.findCreatorProperty(property.getName()) != null) {
                propertyValueBuffer.assignParameter(property, objArr[i]);
            }
        }
        Object build = propertyBasedCreator.build(deserializationContext, propertyValueBuffer);
        for (i = 0; i < length; i++) {
            SettableBeanProperty property2 = this._properties[i].getProperty();
            if (propertyBasedCreator.findCreatorProperty(property2.getName()) == null) {
                property2.set(build, objArr[i]);
            }
        }
        return build;
    }

    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        int length = this._properties.length;
        for (int i = 0; i < length; i++) {
            String str = this._typeIds[i];
            if (str == null) {
                TokenBuffer tokenBuffer = this._tokens[i];
                if (tokenBuffer == null) {
                    continue;
                } else {
                    JsonToken firstToken = tokenBuffer.firstToken();
                    if (firstToken != null && firstToken.isScalarValue()) {
                        JsonParser asParser = tokenBuffer.asParser(jsonParser);
                        asParser.nextToken();
                        SettableBeanProperty property = this._properties[i].getProperty();
                        Object deserializeIfNatural = TypeDeserializer.deserializeIfNatural(asParser, deserializationContext, property.getType());
                        if (deserializeIfNatural != null) {
                            property.set(obj, deserializeIfNatural);
                        } else if (this._properties[i].hasDefaultType()) {
                            str = this._properties[i].getDefaultTypeId();
                        } else {
                            throw deserializationContext.mappingException("Missing external type id property '%s'", this._properties[i].getTypePropertyName());
                        }
                    }
                    _deserializeAndSet(jsonParser, deserializationContext, obj, i, str);
                }
            } else {
                if (this._tokens[i] == null) {
                    throw deserializationContext.mappingException("Missing property '%s' for external type id '%s'", this._properties[i].getProperty().getName(), this._properties[i].getTypePropertyName());
                }
                _deserializeAndSet(jsonParser, deserializationContext, obj, i, str);
            }
        }
        return obj;
    }

    public boolean handlePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        boolean z = false;
        Integer num = (Integer) this._nameToPropertyIndex.get(str);
        if (num == null) {
            return false;
        }
        int intValue = num.intValue();
        if (this._properties[intValue].hasTypePropertyName(str)) {
            this._typeIds[intValue] = jsonParser.getText();
            jsonParser.skipChildren();
            if (!(obj == null || this._tokens[intValue] == null)) {
                z = true;
            }
        } else {
            TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
            tokenBuffer.copyCurrentStructure(jsonParser);
            this._tokens[intValue] = tokenBuffer;
            boolean z2 = (obj == null || this._typeIds[intValue] == null) ? false : true;
            z = z2;
        }
        if (z) {
            String str2 = this._typeIds[intValue];
            this._typeIds[intValue] = null;
            _deserializeAndSet(jsonParser, deserializationContext, obj, intValue, str2);
            this._tokens[intValue] = null;
        }
        return true;
    }

    public boolean handleTypePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Object obj2 = null;
        Integer num = (Integer) this._nameToPropertyIndex.get(str);
        if (num != null) {
            int intValue = num.intValue();
            if (this._properties[intValue].hasTypePropertyName(str)) {
                String text = jsonParser.getText();
                if (!(obj == null || this._tokens[intValue] == null)) {
                    obj2 = 1;
                }
                if (obj2 != null) {
                    _deserializeAndSet(jsonParser, deserializationContext, obj, intValue, text);
                    this._tokens[intValue] = null;
                } else {
                    this._typeIds[intValue] = text;
                }
                return true;
            }
        }
        return false;
    }

    public ExternalTypeHandler start() {
        return new ExternalTypeHandler(this);
    }
}
