package com.fasterxml.jackson.databind;

public class RuntimeJsonMappingException extends RuntimeException {
    public RuntimeJsonMappingException(JsonMappingException jsonMappingException) {
        super(jsonMappingException);
    }

    public RuntimeJsonMappingException(String str) {
        super(str);
    }

    public RuntimeJsonMappingException(String str, JsonMappingException jsonMappingException) {
        super(str, jsonMappingException);
    }
}
