package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.io.CharTypes;
import spacemadness.com.lunarconsole.C1401R;

public final class JsonReadContext extends JsonStreamContext {
    protected JsonReadContext _child;
    protected int _columnNr;
    protected String _currentName;
    protected Object _currentValue;
    protected DupDetector _dups;
    protected int _lineNr;
    protected final JsonReadContext _parent;

    public JsonReadContext(JsonReadContext jsonReadContext, DupDetector dupDetector, int i, int i2, int i3) {
        this._child = null;
        this._parent = jsonReadContext;
        this._dups = dupDetector;
        this._type = i;
        this._lineNr = i2;
        this._columnNr = i3;
        this._index = -1;
    }

    private void _checkDup(DupDetector dupDetector, String str) throws JsonProcessingException {
        if (dupDetector.isDup(str)) {
            throw new JsonParseException("Duplicate field '" + str + "'", dupDetector.findLocation());
        }
    }

    @Deprecated
    public static JsonReadContext createRootContext() {
        return createRootContext(null);
    }

    @Deprecated
    public static JsonReadContext createRootContext(int i, int i2) {
        return createRootContext(i, i2, null);
    }

    public static JsonReadContext createRootContext(int i, int i2, DupDetector dupDetector) {
        return new JsonReadContext(null, dupDetector, 0, i, i2);
    }

    public static JsonReadContext createRootContext(DupDetector dupDetector) {
        return new JsonReadContext(null, dupDetector, 0, 1, 0);
    }

    public JsonReadContext createChildArrayContext(int i, int i2) {
        JsonReadContext jsonReadContext = this._child;
        if (jsonReadContext == null) {
            jsonReadContext = new JsonReadContext(this, this._dups == null ? null : this._dups.child(), 1, i, i2);
            this._child = jsonReadContext;
            return jsonReadContext;
        }
        jsonReadContext.reset(1, i, i2);
        return jsonReadContext;
    }

    public JsonReadContext createChildObjectContext(int i, int i2) {
        JsonReadContext jsonReadContext = this._child;
        if (jsonReadContext == null) {
            jsonReadContext = new JsonReadContext(this, this._dups == null ? null : this._dups.child(), 2, i, i2);
            this._child = jsonReadContext;
            return jsonReadContext;
        }
        jsonReadContext.reset(2, i, i2);
        return jsonReadContext;
    }

    public boolean expectComma() {
        int i = this._index + 1;
        this._index = i;
        return this._type != 0 && i > 0;
    }

    public String getCurrentName() {
        return this._currentName;
    }

    public Object getCurrentValue() {
        return this._currentValue;
    }

    public DupDetector getDupDetector() {
        return this._dups;
    }

    public JsonReadContext getParent() {
        return this._parent;
    }

    public JsonLocation getStartLocation(Object obj) {
        return new JsonLocation(obj, -1, this._lineNr, this._columnNr);
    }

    protected void reset(int i, int i2, int i3) {
        this._type = i;
        this._index = -1;
        this._lineNr = i2;
        this._columnNr = i3;
        this._currentName = null;
        this._currentValue = null;
        if (this._dups != null) {
            this._dups.reset();
        }
    }

    public void setCurrentName(String str) throws JsonProcessingException {
        this._currentName = str;
        if (this._dups != null) {
            _checkDup(this._dups, str);
        }
    }

    public void setCurrentValue(Object obj) {
        this._currentValue = obj;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        switch (this._type) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                stringBuilder.append("/");
                break;
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                stringBuilder.append('[');
                stringBuilder.append(getCurrentIndex());
                stringBuilder.append(']');
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                stringBuilder.append('{');
                if (this._currentName != null) {
                    stringBuilder.append('\"');
                    CharTypes.appendQuoted(stringBuilder, this._currentName);
                    stringBuilder.append('\"');
                } else {
                    stringBuilder.append('?');
                }
                stringBuilder.append('}');
                break;
        }
        return stringBuilder.toString();
    }

    public JsonReadContext withDupDetector(DupDetector dupDetector) {
        this._dups = dupDetector;
        return this;
    }
}
