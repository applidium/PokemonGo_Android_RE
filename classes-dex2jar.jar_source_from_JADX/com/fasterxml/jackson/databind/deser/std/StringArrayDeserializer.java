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
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;

@JacksonStdImpl
public final class StringArrayDeserializer extends StdDeserializer<String[]> implements ContextualDeserializer {
    public static final StringArrayDeserializer instance;
    private static final long serialVersionUID = 1;
    protected JsonDeserializer<String> _elementDeserializer;

    static {
        instance = new StringArrayDeserializer();
    }

    public StringArrayDeserializer() {
        super(String[].class);
        this._elementDeserializer = null;
    }

    protected StringArrayDeserializer(JsonDeserializer<?> jsonDeserializer) {
        super(String[].class);
        this._elementDeserializer = jsonDeserializer;
    }

    private final String[] handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            String _parseString = jsonParser.getCurrentToken() == JsonToken.VALUE_NULL ? null : _parseString(jsonParser, deserializationContext);
            return new String[]{_parseString};
        } else if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().length() == 0) {
            return null;
        } else {
            throw deserializationContext.mappingException(this._valueClass);
        }
    }

    protected final String[] _deserializeCustom(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        JsonDeserializer jsonDeserializer = this._elementDeserializer;
        Object[] objArr = resetAndStart;
        int i = 0;
        while (true) {
            String str;
            if (jsonParser.nextTextValue() == null) {
                JsonToken currentToken = jsonParser.getCurrentToken();
                if (currentToken == JsonToken.END_ARRAY) {
                    String[] strArr = (String[]) leaseObjectBuffer.completeAndClearBuffer(objArr, i, String.class);
                    deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                    return strArr;
                }
                try {
                    str = currentToken == JsonToken.VALUE_NULL ? (String) jsonDeserializer.getNullValue(deserializationContext) : (String) jsonDeserializer.deserialize(jsonParser, deserializationContext);
                } catch (Throwable e) {
                    throw JsonMappingException.wrapWithPath(e, (Object) String.class, i);
                }
            }
            str = (String) jsonDeserializer.deserialize(jsonParser, deserializationContext);
            if (i >= objArr.length) {
                resetAndStart = leaseObjectBuffer.appendCompletedChunk(objArr);
                i = 0;
            } else {
                resetAndStart = objArr;
            }
            int i2 = i + 1;
            resetAndStart[i] = str;
            i = i2;
            objArr = resetAndStart;
        }
    }

    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer findConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, this._elementDeserializer);
        JavaType constructType = deserializationContext.constructType(String.class);
        findConvertingContentDeserializer = findConvertingContentDeserializer == null ? deserializationContext.findContextualValueDeserializer(constructType, beanProperty) : deserializationContext.handleSecondaryContextualization(findConvertingContentDeserializer, beanProperty, constructType);
        if (findConvertingContentDeserializer != null && isDefaultDeserializer(findConvertingContentDeserializer)) {
            findConvertingContentDeserializer = null;
        }
        return this._elementDeserializer != findConvertingContentDeserializer ? new StringArrayDeserializer(findConvertingContentDeserializer) : this;
    }

    public String[] deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext);
        }
        if (this._elementDeserializer != null) {
            return _deserializeCustom(jsonParser, deserializationContext);
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object resetAndStart = leaseObjectBuffer.resetAndStart();
        int i = 0;
        while (true) {
            int i2;
            String nextTextValue = jsonParser.nextTextValue();
            if (nextTextValue == null) {
                JsonToken currentToken = jsonParser.getCurrentToken();
                if (currentToken == JsonToken.END_ARRAY) {
                    String[] strArr = (String[]) leaseObjectBuffer.completeAndClearBuffer((Object[]) resetAndStart, i, String.class);
                    deserializationContext.returnObjectBuffer(leaseObjectBuffer);
                    return strArr;
                }
                try {
                    if (currentToken != JsonToken.VALUE_NULL) {
                        nextTextValue = _parseString(jsonParser, deserializationContext);
                    }
                } catch (Throwable e) {
                    Throwable th = e;
                    int i3 = i;
                    throw JsonMappingException.wrapWithPath(th, resetAndStart, i3 + leaseObjectBuffer.bufferedSize());
                }
            }
            if (i >= resetAndStart.length) {
                resetAndStart = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                i2 = 0;
            } else {
                i2 = i;
            }
            i = i2 + 1;
            resetAndStart[i2] = nextTextValue;
        }
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }
}
