package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;

public class AbstractDeserializer extends JsonDeserializer<Object> implements Serializable {
    private static final long serialVersionUID = 1;
    protected final boolean _acceptBoolean;
    protected final boolean _acceptDouble;
    protected final boolean _acceptInt;
    protected final boolean _acceptString;
    protected final Map<String, SettableBeanProperty> _backRefProperties;
    protected final JavaType _baseType;
    protected final ObjectIdReader _objectIdReader;

    protected AbstractDeserializer(BeanDescription beanDescription) {
        boolean z = false;
        this._baseType = beanDescription.getType();
        this._objectIdReader = null;
        this._backRefProperties = null;
        Class rawClass = this._baseType.getRawClass();
        this._acceptString = rawClass.isAssignableFrom(String.class);
        boolean z2 = rawClass == Boolean.TYPE || rawClass.isAssignableFrom(Boolean.class);
        this._acceptBoolean = z2;
        z2 = rawClass == Integer.TYPE || rawClass.isAssignableFrom(Integer.class);
        this._acceptInt = z2;
        if (rawClass == Double.TYPE || rawClass.isAssignableFrom(Double.class)) {
            z = true;
        }
        this._acceptDouble = z;
    }

    public AbstractDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, Map<String, SettableBeanProperty> map) {
        boolean z = false;
        this._baseType = beanDescription.getType();
        this._objectIdReader = beanDeserializerBuilder.getObjectIdReader();
        this._backRefProperties = map;
        Class rawClass = this._baseType.getRawClass();
        this._acceptString = rawClass.isAssignableFrom(String.class);
        boolean z2 = rawClass == Boolean.TYPE || rawClass.isAssignableFrom(Boolean.class);
        this._acceptBoolean = z2;
        z2 = rawClass == Integer.TYPE || rawClass.isAssignableFrom(Integer.class);
        this._acceptInt = z2;
        if (rawClass == Double.TYPE || rawClass.isAssignableFrom(Double.class)) {
            z = true;
        }
        this._acceptDouble = z;
    }

    public static AbstractDeserializer constructForNonPOJO(BeanDescription beanDescription) {
        return new AbstractDeserializer(beanDescription);
    }

    protected Object _deserializeFromObjectId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object readObjectReference = this._objectIdReader.readObjectReference(jsonParser, deserializationContext);
        ReadableObjectId findObjectId = deserializationContext.findObjectId(readObjectReference, this._objectIdReader.generator, this._objectIdReader.resolver);
        Object resolve = findObjectId.resolve();
        if (resolve != null) {
            return resolve;
        }
        throw new UnresolvedForwardReference("Could not resolve Object Id [" + readObjectReference + "] -- unresolved forward-reference?", jsonParser.getCurrentLocation(), findObjectId);
    }

    protected Object _deserializeIfNatural(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case Place.TYPE_ATM /*6*/:
                if (this._acceptString) {
                    return jsonParser.getText();
                }
                break;
            case Place.TYPE_BAKERY /*7*/:
                if (this._acceptInt) {
                    return Integer.valueOf(jsonParser.getIntValue());
                }
                break;
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                if (this._acceptDouble) {
                    return Double.valueOf(jsonParser.getDoubleValue());
                }
                break;
            case Place.TYPE_BAR /*9*/:
                if (this._acceptBoolean) {
                    return Boolean.TRUE;
                }
                break;
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                if (this._acceptBoolean) {
                    return Boolean.FALSE;
                }
                break;
        }
        return null;
    }

    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        throw deserializationContext.instantiationException(this._baseType.getRawClass(), "abstract types either need to be mapped to concrete types, have custom deserializer, or be instantiated with additional type information");
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        if (this._objectIdReader != null) {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != null && currentToken.isScalarValue()) {
                return _deserializeFromObjectId(jsonParser, deserializationContext);
            }
        }
        Object _deserializeIfNatural = _deserializeIfNatural(jsonParser, deserializationContext);
        return _deserializeIfNatural == null ? typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext) : _deserializeIfNatural;
    }

    public SettableBeanProperty findBackReference(String str) {
        return this._backRefProperties == null ? null : (SettableBeanProperty) this._backRefProperties.get(str);
    }

    public ObjectIdReader getObjectIdReader() {
        return this._objectIdReader;
    }

    public Class<?> handledType() {
        return this._baseType.getRawClass();
    }

    public boolean isCachable() {
        return true;
    }
}
