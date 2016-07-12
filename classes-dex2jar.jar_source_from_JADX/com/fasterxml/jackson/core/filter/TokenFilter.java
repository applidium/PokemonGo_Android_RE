package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

public class TokenFilter {
    public static final TokenFilter INCLUDE_ALL;

    static {
        INCLUDE_ALL = new TokenFilter();
    }

    protected TokenFilter() {
    }

    protected boolean _includeScalar() {
        return true;
    }

    public void filterFinishArray() {
    }

    public void filterFinishObject() {
    }

    public TokenFilter filterStartArray() {
        return this;
    }

    public TokenFilter filterStartObject() {
        return this;
    }

    public boolean includeBinary() {
        return _includeScalar();
    }

    public boolean includeBoolean(boolean z) {
        return _includeScalar();
    }

    public TokenFilter includeElement(int i) {
        return this;
    }

    public boolean includeEmbeddedValue(Object obj) {
        return _includeScalar();
    }

    public boolean includeNull() {
        return _includeScalar();
    }

    public boolean includeNumber(double d) {
        return _includeScalar();
    }

    public boolean includeNumber(float f) {
        return _includeScalar();
    }

    public boolean includeNumber(int i) {
        return _includeScalar();
    }

    public boolean includeNumber(long j) {
        return _includeScalar();
    }

    public boolean includeNumber(BigDecimal bigDecimal) {
        return _includeScalar();
    }

    public boolean includeNumber(BigInteger bigInteger) {
        return _includeScalar();
    }

    public TokenFilter includeProperty(String str) {
        return this;
    }

    public boolean includeRawValue() {
        return _includeScalar();
    }

    public TokenFilter includeRootValue(int i) {
        return this;
    }

    public boolean includeString(String str) {
        return _includeScalar();
    }

    public boolean includeValue(JsonParser jsonParser) throws IOException {
        return _includeScalar();
    }

    public String toString() {
        return this == INCLUDE_ALL ? "TokenFilter.INCLUDE_ALL" : super.toString();
    }
}
