package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class MappingIterator<T> implements Iterator<T>, Closeable {
    protected static final MappingIterator<?> EMPTY_ITERATOR;
    protected static final int STATE_CLOSED = 0;
    protected static final int STATE_HAS_VALUE = 3;
    protected static final int STATE_MAY_HAVE_VALUE = 2;
    protected static final int STATE_NEED_RESYNC = 1;
    protected final boolean _closeParser;
    protected final DeserializationContext _context;
    protected final JsonDeserializer<T> _deserializer;
    protected final JsonParser _parser;
    protected final JsonStreamContext _seqContext;
    protected int _state;
    protected final JavaType _type;
    protected final T _updatedValue;

    static {
        EMPTY_ITERATOR = new MappingIterator(null, null, null, null, false, null);
    }

    protected MappingIterator(JavaType javaType, JsonParser jsonParser, DeserializationContext deserializationContext, JsonDeserializer<?> jsonDeserializer, boolean z, Object obj) {
        this._type = javaType;
        this._parser = jsonParser;
        this._context = deserializationContext;
        this._deserializer = jsonDeserializer;
        this._closeParser = z;
        if (obj == null) {
            this._updatedValue = null;
        } else {
            this._updatedValue = obj;
        }
        if (jsonParser == null) {
            this._seqContext = null;
            this._state = STATE_CLOSED;
            return;
        }
        JsonStreamContext parsingContext = jsonParser.getParsingContext();
        if (z && jsonParser.isExpectedStartArrayToken()) {
            jsonParser.clearCurrentToken();
        } else {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken == JsonToken.START_OBJECT || currentToken == JsonToken.START_ARRAY) {
                parsingContext = parsingContext.getParent();
            }
        }
        this._seqContext = parsingContext;
        this._state = STATE_MAY_HAVE_VALUE;
    }

    protected static <T> MappingIterator<T> emptyIterator() {
        return EMPTY_ITERATOR;
    }

    protected <R> R _handleIOException(IOException iOException) {
        throw new RuntimeException(iOException.getMessage(), iOException);
    }

    protected <R> R _handleMappingException(JsonMappingException jsonMappingException) {
        throw new RuntimeJsonMappingException(jsonMappingException.getMessage(), jsonMappingException);
    }

    protected void _resync() throws IOException {
        JsonParser jsonParser = this._parser;
        if (jsonParser.getParsingContext() != this._seqContext) {
            while (true) {
                JsonToken nextToken = jsonParser.nextToken();
                if (nextToken == JsonToken.END_ARRAY || nextToken == JsonToken.END_OBJECT) {
                    if (jsonParser.getParsingContext() == this._seqContext) {
                        jsonParser.clearCurrentToken();
                        return;
                    }
                } else if (nextToken == JsonToken.START_ARRAY || nextToken == JsonToken.START_OBJECT) {
                    jsonParser.skipChildren();
                } else if (nextToken == null) {
                    return;
                }
            }
        }
    }

    protected <R> R _throwNoSuchElement() {
        throw new NoSuchElementException();
    }

    public void close() throws IOException {
        if (this._state != 0) {
            this._state = STATE_CLOSED;
            if (this._parser != null) {
                this._parser.close();
            }
        }
    }

    public JsonLocation getCurrentLocation() {
        return this._parser.getCurrentLocation();
    }

    public JsonParser getParser() {
        return this._parser;
    }

    public FormatSchema getParserSchema() {
        return this._parser.getSchema();
    }

    public boolean hasNext() {
        try {
            return hasNextValue();
        } catch (JsonMappingException e) {
            return ((Boolean) _handleMappingException(e)).booleanValue();
        } catch (IOException e2) {
            return ((Boolean) _handleIOException(e2)).booleanValue();
        }
    }

    public boolean hasNextValue() throws IOException {
        switch (this._state) {
            case STATE_CLOSED /*0*/:
                break;
            case STATE_NEED_RESYNC /*1*/:
                _resync();
                break;
            case STATE_MAY_HAVE_VALUE /*2*/:
                break;
            default:
                return true;
        }
        if (this._parser.getCurrentToken() == null) {
            JsonToken nextToken = this._parser.nextToken();
            if (nextToken == null || nextToken == JsonToken.END_ARRAY) {
                this._state = STATE_CLOSED;
                if (this._closeParser && this._parser != null) {
                    this._parser.close();
                    return false;
                }
                return false;
            }
        }
        this._state = STATE_HAS_VALUE;
        return true;
    }

    public T next() {
        try {
            return nextValue();
        } catch (JsonMappingException e) {
            throw new RuntimeJsonMappingException(e.getMessage(), e);
        } catch (Throwable e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    public T nextValue() throws IOException {
        switch (this._state) {
            case STATE_CLOSED /*0*/:
                return _throwNoSuchElement();
            case STATE_NEED_RESYNC /*1*/:
            case STATE_MAY_HAVE_VALUE /*2*/:
                if (!hasNextValue()) {
                    return _throwNoSuchElement();
                }
                break;
        }
        try {
            T deserialize;
            if (this._updatedValue == null) {
                deserialize = this._deserializer.deserialize(this._parser, this._context);
            } else {
                this._deserializer.deserialize(this._parser, this._context, this._updatedValue);
                deserialize = this._updatedValue;
            }
            this._state = STATE_MAY_HAVE_VALUE;
            this._parser.clearCurrentToken();
            return deserialize;
        } catch (Throwable th) {
            this._state = STATE_NEED_RESYNC;
            this._parser.clearCurrentToken();
        }
    }

    public <C extends Collection<? super T>> C readAll(C c) throws IOException {
        while (hasNextValue()) {
            c.add(nextValue());
        }
        return c;
    }

    public List<T> readAll() throws IOException {
        return readAll(new ArrayList());
    }

    public <L extends List<? super T>> L readAll(L l) throws IOException {
        while (hasNextValue()) {
            l.add(nextValue());
        }
        return l;
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}
