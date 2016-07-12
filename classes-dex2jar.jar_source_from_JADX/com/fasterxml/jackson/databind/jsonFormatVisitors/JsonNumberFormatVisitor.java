package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.core.JsonParser.NumberType;

public interface JsonNumberFormatVisitor extends JsonValueFormatVisitor {

    public static class Base extends com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormatVisitor.Base implements JsonNumberFormatVisitor {
        public void numberType(NumberType numberType) {
        }
    }

    void numberType(NumberType numberType);
}
