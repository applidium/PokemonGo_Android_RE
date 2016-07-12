package com.fasterxml.jackson.core;

public class JsonGenerationException extends JsonProcessingException {
    private static final long serialVersionUID = 123;

    public JsonGenerationException(String str) {
        super(str, (JsonLocation) null);
    }

    public JsonGenerationException(String str, Throwable th) {
        super(str, null, th);
    }

    public JsonGenerationException(Throwable th) {
        super(th);
    }
}
