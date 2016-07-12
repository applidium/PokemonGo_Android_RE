package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;

public interface JsonFormatVisitorWrapper extends JsonFormatVisitorWithSerializerProvider {

    public static class Base implements JsonFormatVisitorWrapper {
        protected SerializerProvider _provider;

        public Base(SerializerProvider serializerProvider) {
            this._provider = serializerProvider;
        }

        public JsonAnyFormatVisitor expectAnyFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonArrayFormatVisitor expectArrayFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonBooleanFormatVisitor expectBooleanFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonIntegerFormatVisitor expectIntegerFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonMapFormatVisitor expectMapFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonNullFormatVisitor expectNullFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonNumberFormatVisitor expectNumberFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonObjectFormatVisitor expectObjectFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public JsonStringFormatVisitor expectStringFormat(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public SerializerProvider getProvider() {
            return this._provider;
        }

        public void setProvider(SerializerProvider serializerProvider) {
            this._provider = serializerProvider;
        }
    }

    JsonAnyFormatVisitor expectAnyFormat(JavaType javaType) throws JsonMappingException;

    JsonArrayFormatVisitor expectArrayFormat(JavaType javaType) throws JsonMappingException;

    JsonBooleanFormatVisitor expectBooleanFormat(JavaType javaType) throws JsonMappingException;

    JsonIntegerFormatVisitor expectIntegerFormat(JavaType javaType) throws JsonMappingException;

    JsonMapFormatVisitor expectMapFormat(JavaType javaType) throws JsonMappingException;

    JsonNullFormatVisitor expectNullFormat(JavaType javaType) throws JsonMappingException;

    JsonNumberFormatVisitor expectNumberFormat(JavaType javaType) throws JsonMappingException;

    JsonObjectFormatVisitor expectObjectFormat(JavaType javaType) throws JsonMappingException;

    JsonStringFormatVisitor expectStringFormat(JavaType javaType) throws JsonMappingException;
}
