package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import java.util.HashMap;
import java.util.Map;

public enum JsonFormatTypes {
    STRING,
    NUMBER,
    INTEGER,
    BOOLEAN,
    OBJECT,
    ARRAY,
    NULL,
    ANY;
    
    private static final Map<String, JsonFormatTypes> _byLCName;

    static {
        _byLCName = new HashMap();
        JsonFormatTypes[] values = values();
        int length = values.length;
        int i;
        while (i < length) {
            JsonFormatTypes jsonFormatTypes = values[i];
            _byLCName.put(jsonFormatTypes.name().toLowerCase(), jsonFormatTypes);
            i++;
        }
    }

    @JsonCreator
    public static JsonFormatTypes forValue(String str) {
        return (JsonFormatTypes) _byLCName.get(str);
    }

    @JsonValue
    public String value() {
        return name().toLowerCase();
    }
}
