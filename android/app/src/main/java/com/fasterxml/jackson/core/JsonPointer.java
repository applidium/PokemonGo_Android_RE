package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.NumberInput;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;

public class JsonPointer {
    protected static final JsonPointer EMPTY;
    protected final String _asString;
    protected volatile JsonPointer _head;
    protected final int _matchingElementIndex;
    protected final String _matchingPropertyName;
    protected final JsonPointer _nextSegment;

    static {
        EMPTY = new JsonPointer();
    }

    protected JsonPointer() {
        this._nextSegment = null;
        this._matchingPropertyName = BuildConfig.FLAVOR;
        this._matchingElementIndex = -1;
        this._asString = BuildConfig.FLAVOR;
    }

    protected JsonPointer(String str, String str2, int i, JsonPointer jsonPointer) {
        this._asString = str;
        this._nextSegment = jsonPointer;
        this._matchingPropertyName = str2;
        this._matchingElementIndex = i;
    }

    protected JsonPointer(String str, String str2, JsonPointer jsonPointer) {
        this._asString = str;
        this._nextSegment = jsonPointer;
        this._matchingPropertyName = str2;
        this._matchingElementIndex = _parseIndex(str2);
    }

    private static void _appendEscape(StringBuilder stringBuilder, char c) {
        if (c == '0') {
            c = '~';
        } else if (c == '1') {
            c = IOUtils.DIR_SEPARATOR_UNIX;
        } else {
            stringBuilder.append('~');
        }
        stringBuilder.append(c);
    }

    private static final int _parseIndex(String str) {
        int length = str.length();
        if (length == 0 || length > 10) {
            return -1;
        }
        char charAt = str.charAt(0);
        if (charAt <= '0') {
            return (length == 1 && charAt == '0') ? 0 : -1;
        } else {
            if (charAt > '9') {
                return -1;
            }
            for (int i = 1; i < length; i++) {
                char charAt2 = str.charAt(i);
                if (charAt2 > '9' || charAt2 < '0') {
                    return -1;
                }
            }
            return (length != 10 || NumberInput.parseLong(str) <= 2147483647L) ? NumberInput.parseInt(str) : -1;
        }
    }

    protected static JsonPointer _parseQuotedTail(String str, int i) {
        int length = str.length();
        StringBuilder stringBuilder = new StringBuilder(Math.max(16, length));
        if (i > 2) {
            stringBuilder.append(str, 1, i - 1);
        }
        _appendEscape(stringBuilder, str.charAt(i));
        int i2 = i + 1;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == IOUtils.DIR_SEPARATOR_UNIX) {
                return new JsonPointer(str, stringBuilder.toString(), _parseTail(str.substring(i2)));
            }
            int i3 = i2 + 1;
            if (charAt != '~' || i3 >= length) {
                stringBuilder.append(charAt);
                i2 = i3;
            } else {
                _appendEscape(stringBuilder, str.charAt(i3));
                i2 = i3 + 1;
            }
        }
        return new JsonPointer(str, stringBuilder.toString(), EMPTY);
    }

    protected static JsonPointer _parseTail(String str) {
        int length = str.length();
        int i = 1;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == IOUtils.DIR_SEPARATOR_UNIX) {
                return new JsonPointer(str, str.substring(1, i), _parseTail(str.substring(i)));
            }
            int i2 = i + 1;
            if (charAt == '~' && i2 < length) {
                return _parseQuotedTail(str, i2);
            }
            i = i2;
        }
        return new JsonPointer(str, str.substring(1), EMPTY);
    }

    public static JsonPointer compile(String str) throws IllegalArgumentException {
        if (str == null || str.length() == 0) {
            return EMPTY;
        }
        if (str.charAt(0) == IOUtils.DIR_SEPARATOR_UNIX) {
            return _parseTail(str);
        }
        throw new IllegalArgumentException("Invalid input: JSON Pointer expression must start with '/': \"" + str + "\"");
    }

    public static JsonPointer valueOf(String str) {
        return compile(str);
    }

    protected JsonPointer _constructHead() {
        JsonPointer last = last();
        if (last == this) {
            return EMPTY;
        }
        int length = last._asString.length();
        return new JsonPointer(this._asString.substring(0, this._asString.length() - length), this._matchingPropertyName, this._matchingElementIndex, this._nextSegment._constructHead(length, last));
    }

    protected JsonPointer _constructHead(int i, JsonPointer jsonPointer) {
        if (this == jsonPointer) {
            return EMPTY;
        }
        JsonPointer jsonPointer2 = this._nextSegment;
        String str = this._asString;
        return new JsonPointer(str.substring(0, str.length() - i), this._matchingPropertyName, this._matchingElementIndex, jsonPointer2._constructHead(i, jsonPointer));
    }

    public JsonPointer append(JsonPointer jsonPointer) {
        if (this == EMPTY) {
            return jsonPointer;
        }
        if (jsonPointer == EMPTY) {
            return this;
        }
        String str = this._asString;
        if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        return compile(str + jsonPointer._asString);
    }

    public boolean equals(Object obj) {
        return obj == this ? true : (obj == null || !(obj instanceof JsonPointer)) ? false : this._asString.equals(((JsonPointer) obj)._asString);
    }

    public int getMatchingIndex() {
        return this._matchingElementIndex;
    }

    public String getMatchingProperty() {
        return this._matchingPropertyName;
    }

    public int hashCode() {
        return this._asString.hashCode();
    }

    public JsonPointer head() {
        JsonPointer jsonPointer = this._head;
        if (jsonPointer == null) {
            if (this != EMPTY) {
                jsonPointer = _constructHead();
            }
            this._head = jsonPointer;
        }
        return jsonPointer;
    }

    public JsonPointer last() {
        if (this == EMPTY) {
            return null;
        }
        while (true) {
            JsonPointer jsonPointer = this._nextSegment;
            if (jsonPointer == EMPTY) {
                return this;
            }
            this = jsonPointer;
        }
    }

    public JsonPointer matchElement(int i) {
        return (i != this._matchingElementIndex || i < 0) ? null : this._nextSegment;
    }

    public JsonPointer matchProperty(String str) {
        return (this._nextSegment == null || !this._matchingPropertyName.equals(str)) ? null : this._nextSegment;
    }

    public boolean matches() {
        return this._nextSegment == null;
    }

    public boolean matchesElement(int i) {
        return i == this._matchingElementIndex && i >= 0;
    }

    public boolean matchesProperty(String str) {
        return this._nextSegment != null && this._matchingPropertyName.equals(str);
    }

    public boolean mayMatchElement() {
        return this._matchingElementIndex >= 0;
    }

    public boolean mayMatchProperty() {
        return this._matchingPropertyName != null;
    }

    public JsonPointer tail() {
        return this._nextSegment;
    }

    public String toString() {
        return this._asString;
    }
}
