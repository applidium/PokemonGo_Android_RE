package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonStreamContext;

public class JsonWriteContext extends JsonStreamContext {
    public static final int STATUS_EXPECT_NAME = 5;
    public static final int STATUS_EXPECT_VALUE = 4;
    public static final int STATUS_OK_AFTER_COLON = 2;
    public static final int STATUS_OK_AFTER_COMMA = 1;
    public static final int STATUS_OK_AFTER_SPACE = 3;
    public static final int STATUS_OK_AS_IS = 0;
    protected JsonWriteContext _child;
    protected String _currentName;
    protected Object _currentValue;
    protected DupDetector _dups;
    protected boolean _gotName;
    protected final JsonWriteContext _parent;

    protected JsonWriteContext(int i, JsonWriteContext jsonWriteContext, DupDetector dupDetector) {
        this._child = null;
        this._type = i;
        this._parent = jsonWriteContext;
        this._dups = dupDetector;
        this._index = -1;
    }

    private final void _checkDup(DupDetector dupDetector, String str) throws JsonProcessingException {
        if (dupDetector.isDup(str)) {
            throw new JsonGenerationException("Duplicate field '" + str + "'");
        }
    }

    @Deprecated
    public static JsonWriteContext createRootContext() {
        return createRootContext(null);
    }

    public static JsonWriteContext createRootContext(DupDetector dupDetector) {
        return new JsonWriteContext(0, null, dupDetector);
    }

    protected void appendDesc(StringBuilder stringBuilder) {
        if (this._type == STATUS_OK_AFTER_COLON) {
            stringBuilder.append('{');
            if (this._currentName != null) {
                stringBuilder.append('\"');
                stringBuilder.append(this._currentName);
                stringBuilder.append('\"');
            } else {
                stringBuilder.append('?');
            }
            stringBuilder.append('}');
        } else if (this._type == STATUS_OK_AFTER_COMMA) {
            stringBuilder.append('[');
            stringBuilder.append(getCurrentIndex());
            stringBuilder.append(']');
        } else {
            stringBuilder.append("/");
        }
    }

    public JsonWriteContext createChildArrayContext() {
        JsonWriteContext jsonWriteContext = this._child;
        if (jsonWriteContext != null) {
            return jsonWriteContext.reset(STATUS_OK_AFTER_COMMA);
        }
        jsonWriteContext = new JsonWriteContext(STATUS_OK_AFTER_COMMA, this, this._dups == null ? null : this._dups.child());
        this._child = jsonWriteContext;
        return jsonWriteContext;
    }

    public JsonWriteContext createChildObjectContext() {
        JsonWriteContext jsonWriteContext = this._child;
        if (jsonWriteContext != null) {
            return jsonWriteContext.reset(STATUS_OK_AFTER_COLON);
        }
        jsonWriteContext = new JsonWriteContext(STATUS_OK_AFTER_COLON, this, this._dups == null ? null : this._dups.child());
        this._child = jsonWriteContext;
        return jsonWriteContext;
    }

    public final String getCurrentName() {
        return this._currentName;
    }

    public Object getCurrentValue() {
        return this._currentValue;
    }

    public DupDetector getDupDetector() {
        return this._dups;
    }

    public final JsonWriteContext getParent() {
        return this._parent;
    }

    protected JsonWriteContext reset(int i) {
        this._type = i;
        this._index = -1;
        this._currentName = null;
        this._gotName = false;
        this._currentValue = null;
        if (this._dups != null) {
            this._dups.reset();
        }
        return this;
    }

    public void setCurrentValue(Object obj) {
        this._currentValue = obj;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        appendDesc(stringBuilder);
        return stringBuilder.toString();
    }

    public JsonWriteContext withDupDetector(DupDetector dupDetector) {
        this._dups = dupDetector;
        return this;
    }

    public int writeFieldName(String str) throws JsonProcessingException {
        if (this._gotName) {
            return STATUS_EXPECT_VALUE;
        }
        this._gotName = true;
        this._currentName = str;
        if (this._dups != null) {
            _checkDup(this._dups, str);
        }
        return this._index < 0 ? 0 : STATUS_OK_AFTER_COMMA;
    }

    public int writeValue() {
        if (this._type != STATUS_OK_AFTER_COLON) {
            if (this._type == STATUS_OK_AFTER_COMMA) {
                int i = this._index;
                this._index += STATUS_OK_AFTER_COMMA;
                if (i >= 0) {
                    return STATUS_OK_AFTER_COMMA;
                }
            }
            this._index += STATUS_OK_AFTER_COMMA;
            if (this._index != 0) {
                return STATUS_OK_AFTER_SPACE;
            }
            return 0;
        } else if (!this._gotName) {
            return STATUS_EXPECT_NAME;
        } else {
            this._gotName = false;
            this._index += STATUS_OK_AFTER_COMMA;
            return STATUS_OK_AFTER_COLON;
        }
    }
}
