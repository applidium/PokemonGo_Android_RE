package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public class TokenFilterContext extends JsonStreamContext {
    protected TokenFilterContext _child;
    protected String _currentName;
    protected TokenFilter _filter;
    protected boolean _needToHandleName;
    protected final TokenFilterContext _parent;
    protected boolean _startHandled;

    protected TokenFilterContext(int i, TokenFilterContext tokenFilterContext, TokenFilter tokenFilter, boolean z) {
        this._child = null;
        this._type = i;
        this._parent = tokenFilterContext;
        this._filter = tokenFilter;
        this._index = -1;
        this._startHandled = z;
        this._needToHandleName = false;
    }

    private void _writePath(JsonGenerator jsonGenerator) throws IOException {
        if (this._filter != null && this._filter != TokenFilter.INCLUDE_ALL) {
            if (this._parent != null) {
                this._parent._writePath(jsonGenerator);
            }
            if (!this._startHandled) {
                this._startHandled = true;
                if (this._type == 2) {
                    jsonGenerator.writeStartObject();
                    if (this._needToHandleName) {
                        this._needToHandleName = false;
                        jsonGenerator.writeFieldName(this._currentName);
                    }
                } else if (this._type == 1) {
                    jsonGenerator.writeStartArray();
                }
            } else if (this._needToHandleName) {
                this._needToHandleName = false;
                jsonGenerator.writeFieldName(this._currentName);
            }
        }
    }

    public static TokenFilterContext createRootContext(TokenFilter tokenFilter) {
        return new TokenFilterContext(0, null, tokenFilter, true);
    }

    protected void appendDesc(StringBuilder stringBuilder) {
        if (this._parent != null) {
            this._parent.appendDesc(stringBuilder);
        }
        if (this._type == 2) {
            stringBuilder.append('{');
            if (this._currentName != null) {
                stringBuilder.append('\"');
                stringBuilder.append(this._currentName);
                stringBuilder.append('\"');
            } else {
                stringBuilder.append('?');
            }
            stringBuilder.append('}');
        } else if (this._type == 1) {
            stringBuilder.append('[');
            stringBuilder.append(getCurrentIndex());
            stringBuilder.append(']');
        } else {
            stringBuilder.append("/");
        }
    }

    public TokenFilter checkValue(TokenFilter tokenFilter) {
        if (this._type == 2) {
            return tokenFilter;
        }
        int i = this._index + 1;
        this._index = i;
        return this._type == 1 ? tokenFilter.includeElement(i) : tokenFilter.includeRootValue(i);
    }

    public TokenFilterContext closeArray(JsonGenerator jsonGenerator) throws IOException {
        if (this._startHandled) {
            jsonGenerator.writeEndArray();
        }
        if (!(this._filter == null || this._filter == TokenFilter.INCLUDE_ALL)) {
            this._filter.filterFinishArray();
        }
        return this._parent;
    }

    public TokenFilterContext closeObject(JsonGenerator jsonGenerator) throws IOException {
        if (this._startHandled) {
            jsonGenerator.writeEndObject();
        }
        if (!(this._filter == null || this._filter == TokenFilter.INCLUDE_ALL)) {
            this._filter.filterFinishObject();
        }
        return this._parent;
    }

    public TokenFilterContext createChildArrayContext(TokenFilter tokenFilter, boolean z) {
        TokenFilterContext tokenFilterContext = this._child;
        if (tokenFilterContext != null) {
            return tokenFilterContext.reset(1, tokenFilter, z);
        }
        tokenFilterContext = new TokenFilterContext(1, this, tokenFilter, z);
        this._child = tokenFilterContext;
        return tokenFilterContext;
    }

    public TokenFilterContext createChildObjectContext(TokenFilter tokenFilter, boolean z) {
        TokenFilterContext tokenFilterContext = this._child;
        if (tokenFilterContext != null) {
            return tokenFilterContext.reset(2, tokenFilter, z);
        }
        tokenFilterContext = new TokenFilterContext(2, this, tokenFilter, z);
        this._child = tokenFilterContext;
        return tokenFilterContext;
    }

    public TokenFilterContext findChildOf(TokenFilterContext tokenFilterContext) {
        if (this._parent == tokenFilterContext) {
            return this;
        }
        this = this._parent;
        while (this != null) {
            TokenFilterContext tokenFilterContext2 = this._parent;
            if (tokenFilterContext2 == tokenFilterContext) {
                return this;
            }
            this = tokenFilterContext2;
        }
        return null;
    }

    public final String getCurrentName() {
        return this._currentName;
    }

    public Object getCurrentValue() {
        return null;
    }

    public TokenFilter getFilter() {
        return this._filter;
    }

    public final TokenFilterContext getParent() {
        return this._parent;
    }

    public boolean isStartHandled() {
        return this._startHandled;
    }

    public JsonToken nextTokenToRead() {
        if (!this._startHandled) {
            this._startHandled = true;
            return this._type == 2 ? JsonToken.START_OBJECT : JsonToken.START_ARRAY;
        } else if (!this._needToHandleName || this._type != 2) {
            return null;
        } else {
            this._needToHandleName = false;
            return JsonToken.FIELD_NAME;
        }
    }

    protected TokenFilterContext reset(int i, TokenFilter tokenFilter, boolean z) {
        this._type = i;
        this._filter = tokenFilter;
        this._index = -1;
        this._currentName = null;
        this._startHandled = z;
        this._needToHandleName = false;
        return this;
    }

    public void setCurrentValue(Object obj) {
    }

    public TokenFilter setFieldName(String str) throws JsonProcessingException {
        this._currentName = str;
        this._needToHandleName = true;
        return this._filter;
    }

    public void skipParentChecks() {
        this._filter = null;
        for (TokenFilterContext tokenFilterContext = this._parent; tokenFilterContext != null; tokenFilterContext = tokenFilterContext._parent) {
            this._parent._filter = null;
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        appendDesc(stringBuilder);
        return stringBuilder.toString();
    }

    public void writeImmediatePath(JsonGenerator jsonGenerator) throws IOException {
        if (this._filter != null && this._filter != TokenFilter.INCLUDE_ALL) {
            if (!this._startHandled) {
                this._startHandled = true;
                if (this._type == 2) {
                    jsonGenerator.writeStartObject();
                    if (this._needToHandleName) {
                        jsonGenerator.writeFieldName(this._currentName);
                    }
                } else if (this._type == 1) {
                    jsonGenerator.writeStartArray();
                }
            } else if (this._needToHandleName) {
                jsonGenerator.writeFieldName(this._currentName);
            }
        }
    }

    public void writePath(JsonGenerator jsonGenerator) throws IOException {
        if (this._filter != null && this._filter != TokenFilter.INCLUDE_ALL) {
            if (this._parent != null) {
                this._parent._writePath(jsonGenerator);
            }
            if (!this._startHandled) {
                this._startHandled = true;
                if (this._type == 2) {
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeFieldName(this._currentName);
                } else if (this._type == 1) {
                    jsonGenerator.writeStartArray();
                }
            } else if (this._needToHandleName) {
                jsonGenerator.writeFieldName(this._currentName);
            }
        }
    }
}
