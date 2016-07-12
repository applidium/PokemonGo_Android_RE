package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.JsonPointer;

public class JsonPointerBasedFilter extends TokenFilter {
    protected final JsonPointer _pathToMatch;

    public JsonPointerBasedFilter(JsonPointer jsonPointer) {
        this._pathToMatch = jsonPointer;
    }

    public JsonPointerBasedFilter(String str) {
        this(JsonPointer.compile(str));
    }

    protected boolean _includeScalar() {
        return this._pathToMatch.matches();
    }

    public TokenFilter filterStartArray() {
        return this;
    }

    public TokenFilter filterStartObject() {
        return this;
    }

    public TokenFilter includeElement(int i) {
        JsonPointer matchElement = this._pathToMatch.matchElement(i);
        return matchElement == null ? null : matchElement.matches() ? TokenFilter.INCLUDE_ALL : new JsonPointerBasedFilter(matchElement);
    }

    public TokenFilter includeProperty(String str) {
        JsonPointer matchProperty = this._pathToMatch.matchProperty(str);
        return matchProperty == null ? null : matchProperty.matches() ? TokenFilter.INCLUDE_ALL : new JsonPointerBasedFilter(matchProperty);
    }

    public String toString() {
        return "[JsonPointerFilter at: " + this._pathToMatch + "]";
    }
}
