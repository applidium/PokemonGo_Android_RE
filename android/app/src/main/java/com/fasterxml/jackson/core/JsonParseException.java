package com.fasterxml.jackson.core;

public class JsonParseException extends JsonProcessingException {
    private static final long serialVersionUID = 1;

    public JsonParseException(String str, JsonLocation jsonLocation) {
        super(str, jsonLocation);
    }

    public JsonParseException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }
}
