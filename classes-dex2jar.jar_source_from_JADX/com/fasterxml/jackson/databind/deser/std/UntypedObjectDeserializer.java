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
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import spacemadness.com.lunarconsole.C1401R;

@JacksonStdImpl
public class UntypedObjectDeserializer extends StdDeserializer<Object> implements ResolvableDeserializer, ContextualDeserializer {
    protected static final Object[] NO_OBJECTS;
    @Deprecated
    public static final UntypedObjectDeserializer instance;
    private static final long serialVersionUID = 1;
    protected JsonDeserializer<Object> _listDeserializer;
    protected JavaType _listType;
    protected JsonDeserializer<Object> _mapDeserializer;
    protected JavaType _mapType;
    protected JsonDeserializer<Object> _numberDeserializer;
    protected JsonDeserializer<Object> _stringDeserializer;

    @JacksonStdImpl
    public static class Vanilla extends StdDeserializer<Object> {
        private static final long serialVersionUID = 1;
        public static final Vanilla std;

        static {
            std = new Vanilla();
        }

        public Vanilla() {
            super(Object.class);
        }

        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    if (jsonParser.nextToken() == JsonToken.END_OBJECT) {
                        return new LinkedHashMap(2);
                    }
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    return jsonParser.nextToken() == JsonToken.END_ARRAY ? deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY) ? UntypedObjectDeserializer.NO_OBJECTS : new ArrayList(2) : deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY) ? mapArrayToArray(jsonParser, deserializationContext) : mapArray(jsonParser, deserializationContext);
                case Place.TYPE_ART_GALLERY /*5*/:
                    break;
                case Place.TYPE_ATM /*6*/:
                    return jsonParser.getText();
                case Place.TYPE_BAKERY /*7*/:
                    return deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
                case Place.TYPE_BAR /*9*/:
                    return Boolean.TRUE;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    return Boolean.FALSE;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    return null;
                case Place.TYPE_BOOK_STORE /*12*/:
                    return jsonParser.getEmbeddedObject();
                default:
                    throw deserializationContext.mappingException(Object.class);
            }
            return mapObject(jsonParser, deserializationContext);
        }

        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                case Place.TYPE_ART_GALLERY /*5*/:
                    return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
                case Place.TYPE_ATM /*6*/:
                    return jsonParser.getText();
                case Place.TYPE_BAKERY /*7*/:
                    return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS) ? jsonParser.getBigIntegerValue() : jsonParser.getNumberValue();
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
                case Place.TYPE_BAR /*9*/:
                    return Boolean.TRUE;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    return Boolean.FALSE;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    return null;
                case Place.TYPE_BOOK_STORE /*12*/:
                    return jsonParser.getEmbeddedObject();
                default:
                    throw deserializationContext.mappingException(Object.class);
            }
        }

        protected Object mapArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            int i = 2;
            Object deserialize = deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(deserialize);
                return arrayList;
            }
            Object deserialize2 = deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                arrayList = new ArrayList(2);
                arrayList.add(deserialize);
                arrayList.add(deserialize2);
                return arrayList;
            }
            ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
            resetAndStart[0] = deserialize;
            resetAndStart[1] = deserialize2;
            int i2 = 2;
            while (true) {
                Object[] appendCompletedChunk;
                int i3;
                Object deserialize3 = deserialize(jsonParser, deserializationContext);
                int i4 = i + 1;
                if (i2 >= resetAndStart.length) {
                    appendCompletedChunk = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i3 = 0;
                } else {
                    appendCompletedChunk = resetAndStart;
                    i3 = i2;
                }
                i2 = i3 + 1;
                appendCompletedChunk[i3] = deserialize3;
                if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                    List arrayList2 = new ArrayList(i4);
                    leaseObjectBuffer.completeAndClearBuffer(appendCompletedChunk, i2, arrayList2);
                    return arrayList2;
                }
                resetAndStart = appendCompletedChunk;
                i = i4;
            }
        }

        protected Object[] mapArrayToArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
            int i = 0;
            do {
                int i2;
                Object deserialize = deserialize(jsonParser, deserializationContext);
                if (i >= resetAndStart.length) {
                    resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i2 = 0;
                } else {
                    i2 = i;
                }
                i = i2 + 1;
                resetAndStart[i2] = deserialize;
            } while (jsonParser.nextToken() != JsonToken.END_ARRAY);
            return leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i);
        }

        protected Object mapObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String text = jsonParser.getText();
            jsonParser.nextToken();
            Object deserialize = deserialize(jsonParser, deserializationContext);
            String nextFieldName = jsonParser.nextFieldName();
            if (nextFieldName == null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(2);
                linkedHashMap.put(text, deserialize);
                return linkedHashMap;
            }
            jsonParser.nextToken();
            Object deserialize2 = deserialize(jsonParser, deserializationContext);
            Object nextFieldName2 = jsonParser.nextFieldName();
            if (nextFieldName2 == null) {
                linkedHashMap = new LinkedHashMap(4);
                linkedHashMap.put(text, deserialize);
                linkedHashMap.put(nextFieldName, deserialize2);
                return linkedHashMap;
            }
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(text, deserialize);
            linkedHashMap.put(nextFieldName, deserialize2);
            do {
                jsonParser.nextToken();
                linkedHashMap.put(nextFieldName2, deserialize(jsonParser, deserializationContext));
                nextFieldName2 = jsonParser.nextFieldName();
            } while (nextFieldName2 != null);
            return linkedHashMap;
        }
    }

    static {
        NO_OBJECTS = new Object[0];
        instance = new UntypedObjectDeserializer(null, null);
    }

    @Deprecated
    public UntypedObjectDeserializer() {
        this(null, null);
    }

    public UntypedObjectDeserializer(JavaType javaType, JavaType javaType2) {
        super(Object.class);
        this._listType = javaType;
        this._mapType = javaType2;
    }

    public UntypedObjectDeserializer(UntypedObjectDeserializer untypedObjectDeserializer, JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, JsonDeserializer<?> jsonDeserializer3, JsonDeserializer<?> jsonDeserializer4) {
        super(Object.class);
        this._mapDeserializer = jsonDeserializer;
        this._listDeserializer = jsonDeserializer2;
        this._stringDeserializer = jsonDeserializer3;
        this._numberDeserializer = jsonDeserializer4;
        this._listType = untypedObjectDeserializer._listType;
        this._mapType = untypedObjectDeserializer._mapType;
    }

    protected JsonDeserializer<Object> _clearIfStdImpl(JsonDeserializer<Object> jsonDeserializer) {
        return ClassUtil.isJacksonStdImpl((Object) jsonDeserializer) ? null : jsonDeserializer;
    }

    protected JsonDeserializer<Object> _findCustomDeser(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        return deserializationContext.findNonContextualValueDeserializer(javaType);
    }

    protected JsonDeserializer<?> _withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, JsonDeserializer<?> jsonDeserializer3, JsonDeserializer<?> jsonDeserializer4) {
        return new UntypedObjectDeserializer(this, jsonDeserializer, jsonDeserializer2, jsonDeserializer3, jsonDeserializer4);
    }

    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        return (this._stringDeserializer == null && this._numberDeserializer == null && this._mapDeserializer == null && this._listDeserializer == null && getClass() == UntypedObjectDeserializer.class) ? Vanilla.std : this;
    }

    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
            case Place.TYPE_ART_GALLERY /*5*/:
                return this._mapDeserializer != null ? this._mapDeserializer.deserialize(jsonParser, deserializationContext) : mapObject(jsonParser, deserializationContext);
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY) ? mapArrayToArray(jsonParser, deserializationContext) : this._listDeserializer != null ? this._listDeserializer.deserialize(jsonParser, deserializationContext) : mapArray(jsonParser, deserializationContext);
            case Place.TYPE_ATM /*6*/:
                return this._stringDeserializer != null ? this._stringDeserializer.deserialize(jsonParser, deserializationContext) : jsonParser.getText();
            case Place.TYPE_BAKERY /*7*/:
                return this._numberDeserializer != null ? this._numberDeserializer.deserialize(jsonParser, deserializationContext) : deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                return this._numberDeserializer != null ? this._numberDeserializer.deserialize(jsonParser, deserializationContext) : deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
            case Place.TYPE_BAR /*9*/:
                return Boolean.TRUE;
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                return Boolean.FALSE;
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return null;
            case Place.TYPE_BOOK_STORE /*12*/:
                return jsonParser.getEmbeddedObject();
            default:
                throw deserializationContext.mappingException(Object.class);
        }
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
            case Place.TYPE_ART_GALLERY /*5*/:
                return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
            case Place.TYPE_ATM /*6*/:
                return this._stringDeserializer != null ? this._stringDeserializer.deserialize(jsonParser, deserializationContext) : jsonParser.getText();
            case Place.TYPE_BAKERY /*7*/:
                return this._numberDeserializer != null ? this._numberDeserializer.deserialize(jsonParser, deserializationContext) : deserializationContext.hasSomeOfFeatures(F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                return this._numberDeserializer != null ? this._numberDeserializer.deserialize(jsonParser, deserializationContext) : deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
            case Place.TYPE_BAR /*9*/:
                return Boolean.TRUE;
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                return Boolean.FALSE;
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return null;
            case Place.TYPE_BOOK_STORE /*12*/:
                return jsonParser.getEmbeddedObject();
            default:
                throw deserializationContext.mappingException(Object.class);
        }
    }

    public boolean isCachable() {
        return true;
    }

    protected Object mapArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i = 2;
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return new ArrayList(2);
        }
        Object deserialize = deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(deserialize);
            return arrayList;
        }
        Object deserialize2 = deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            arrayList = new ArrayList(2);
            arrayList.add(deserialize);
            arrayList.add(deserialize2);
            return arrayList;
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        resetAndStart[0] = deserialize;
        resetAndStart[1] = deserialize2;
        int i2 = 2;
        while (true) {
            Object[] appendCompletedChunk;
            int i3;
            Object deserialize3 = deserialize(jsonParser, deserializationContext);
            int i4 = i + 1;
            if (i2 >= resetAndStart.length) {
                appendCompletedChunk = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                i3 = 0;
            } else {
                appendCompletedChunk = resetAndStart;
                i3 = i2;
            }
            i2 = i3 + 1;
            appendCompletedChunk[i3] = deserialize3;
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                List arrayList2 = new ArrayList(i4);
                leaseObjectBuffer.completeAndClearBuffer(appendCompletedChunk, i2, arrayList2);
                return arrayList2;
            }
            resetAndStart = appendCompletedChunk;
            i = i4;
        }
    }

    protected Object[] mapArrayToArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return NO_OBJECTS;
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        int i = 0;
        do {
            int i2;
            Object deserialize = deserialize(jsonParser, deserializationContext);
            if (i >= resetAndStart.length) {
                resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                i2 = 0;
            } else {
                i2 = i;
            }
            i = i2 + 1;
            resetAndStart[i2] = deserialize;
        } while (jsonParser.nextToken() != JsonToken.END_ARRAY);
        return leaseObjectBuffer.completeAndClearBuffer(resetAndStart, i);
    }

    protected Object mapObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object nextFieldName;
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            nextFieldName = jsonParser.nextFieldName();
        } else if (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
        } else if (currentToken != JsonToken.END_OBJECT) {
            throw deserializationContext.mappingException(handledType(), jsonParser.getCurrentToken());
        } else {
            nextFieldName = null;
        }
        if (nextFieldName == null) {
            return new LinkedHashMap(2);
        }
        jsonParser.nextToken();
        Object deserialize = deserialize(jsonParser, deserializationContext);
        String nextFieldName2 = jsonParser.nextFieldName();
        if (nextFieldName2 == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(2);
            linkedHashMap.put(nextFieldName, deserialize);
            return linkedHashMap;
        }
        jsonParser.nextToken();
        Object deserialize2 = deserialize(jsonParser, deserializationContext);
        Object nextFieldName3 = jsonParser.nextFieldName();
        if (nextFieldName3 == null) {
            linkedHashMap = new LinkedHashMap(4);
            linkedHashMap.put(nextFieldName, deserialize);
            linkedHashMap.put(nextFieldName2, deserialize2);
            return linkedHashMap;
        }
        linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(nextFieldName, deserialize);
        linkedHashMap.put(nextFieldName2, deserialize2);
        do {
            jsonParser.nextToken();
            linkedHashMap.put(nextFieldName3, deserialize(jsonParser, deserializationContext));
            nextFieldName3 = jsonParser.nextFieldName();
        } while (nextFieldName3 != null);
        return linkedHashMap;
    }

    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        JavaType constructType = deserializationContext.constructType(Object.class);
        JavaType constructType2 = deserializationContext.constructType(String.class);
        TypeFactory typeFactory = deserializationContext.getTypeFactory();
        if (this._listType == null) {
            this._listDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructCollectionType(List.class, constructType)));
        } else {
            this._listDeserializer = _findCustomDeser(deserializationContext, this._listType);
        }
        if (this._mapType == null) {
            this._mapDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructMapType(Map.class, constructType2, constructType)));
        } else {
            this._mapDeserializer = _findCustomDeser(deserializationContext, this._mapType);
        }
        this._stringDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, constructType2));
        this._numberDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructType((Type) Number.class)));
        constructType = TypeFactory.unknownType();
        this._mapDeserializer = deserializationContext.handleSecondaryContextualization(this._mapDeserializer, null, constructType);
        this._listDeserializer = deserializationContext.handleSecondaryContextualization(this._listDeserializer, null, constructType);
        this._stringDeserializer = deserializationContext.handleSecondaryContextualization(this._stringDeserializer, null, constructType);
        this._numberDeserializer = deserializationContext.handleSecondaryContextualization(this._numberDeserializer, null, constructType);
    }
}
