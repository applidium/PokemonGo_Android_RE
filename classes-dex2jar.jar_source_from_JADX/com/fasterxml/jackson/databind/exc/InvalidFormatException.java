package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonMappingException;

public class InvalidFormatException extends JsonMappingException {
    private static final long serialVersionUID = 1;
    protected final Class<?> _targetType;
    protected final Object _value;

    public InvalidFormatException(String str, JsonLocation jsonLocation, Object obj, Class<?> cls) {
        super(str, jsonLocation);
        this._value = obj;
        this._targetType = cls;
    }

    public InvalidFormatException(String str, Object obj, Class<?> cls) {
        super(str);
        this._value = obj;
        this._targetType = cls;
    }

    public static InvalidFormatException from(JsonParser jsonParser, String str, Object obj, Class<?> cls) {
        return new InvalidFormatException(str, jsonParser.getTokenLocation(), obj, cls);
    }

    public Class<?> getTargetType() {
        return this._targetType;
    }

    public Object getValue() {
        return this._value;
    }
}
