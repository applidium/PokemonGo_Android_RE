package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.util.HashSet;

public class DupDetector {
    protected String _firstName;
    protected String _secondName;
    protected HashSet<String> _seen;
    protected final Object _source;

    private DupDetector(Object obj) {
        this._source = obj;
    }

    public static DupDetector rootDetector(JsonGenerator jsonGenerator) {
        return new DupDetector(jsonGenerator);
    }

    public static DupDetector rootDetector(JsonParser jsonParser) {
        return new DupDetector(jsonParser);
    }

    public DupDetector child() {
        return new DupDetector(this._source);
    }

    public JsonLocation findLocation() {
        return this._source instanceof JsonParser ? ((JsonParser) this._source).getCurrentLocation() : null;
    }

    public boolean isDup(String str) throws JsonParseException {
        if (this._firstName == null) {
            this._firstName = str;
            return false;
        }
        if (!str.equals(this._firstName)) {
            if (this._secondName == null) {
                this._secondName = str;
                return false;
            } else if (!str.equals(this._secondName)) {
                if (this._seen == null) {
                    this._seen = new HashSet(16);
                    this._seen.add(this._firstName);
                    this._seen.add(this._secondName);
                }
                if (this._seen.add(str)) {
                    return false;
                }
            }
        }
        return true;
    }

    public void reset() {
        this._firstName = null;
        this._secondName = null;
        this._seen = null;
    }
}
