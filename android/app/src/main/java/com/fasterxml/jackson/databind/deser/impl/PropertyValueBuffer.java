package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;
import java.util.BitSet;

public class PropertyValueBuffer {
    protected PropertyValue _buffered;
    protected final DeserializationContext _context;
    protected final Object[] _creatorParameters;
    protected Object _idValue;
    protected final ObjectIdReader _objectIdReader;
    protected int _paramsNeeded;
    protected int _paramsSeen;
    protected final BitSet _paramsSeenBig;
    protected final JsonParser _parser;

    public PropertyValueBuffer(JsonParser jsonParser, DeserializationContext deserializationContext, int i, ObjectIdReader objectIdReader) {
        this._parser = jsonParser;
        this._context = deserializationContext;
        this._paramsNeeded = i;
        this._objectIdReader = objectIdReader;
        this._creatorParameters = new Object[i];
        if (i < 32) {
            this._paramsSeenBig = null;
        } else {
            this._paramsSeenBig = new BitSet();
        }
    }

    protected Object _findMissing(SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        if (settableBeanProperty.getInjectableValueId() != null) {
            return this._context.findInjectableValue(settableBeanProperty.getInjectableValueId(), settableBeanProperty, null);
        }
        if (settableBeanProperty.isRequired()) {
            throw this._context.mappingException("Missing required creator property '%s' (index %d)", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex()));
        } else if (!this._context.isEnabled(DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES)) {
            return settableBeanProperty.getValueDeserializer().getNullValue(this._context);
        } else {
            throw this._context.mappingException("Missing creator property '%s' (index %d); DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES enabled", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex()));
        }
    }

    @Deprecated
    public boolean assignParameter(int i, Object obj) {
        this._creatorParameters[i] = obj;
        return false;
    }

    public boolean assignParameter(SettableBeanProperty settableBeanProperty, Object obj) {
        int creatorIndex = settableBeanProperty.getCreatorIndex();
        this._creatorParameters[creatorIndex] = obj;
        int i;
        if (this._paramsSeenBig == null) {
            i = this._paramsSeen;
            creatorIndex = (1 << creatorIndex) | i;
            if (i != creatorIndex) {
                this._paramsSeen = creatorIndex;
                creatorIndex = this._paramsNeeded - 1;
                this._paramsNeeded = creatorIndex;
                if (creatorIndex <= 0) {
                    return true;
                }
            }
        } else if (!this._paramsSeenBig.get(creatorIndex)) {
            i = this._paramsNeeded - 1;
            this._paramsNeeded = i;
            if (i <= 0) {
                return true;
            }
            this._paramsSeenBig.set(creatorIndex);
        }
        return false;
    }

    public void bufferAnyProperty(SettableAnyProperty settableAnyProperty, String str, Object obj) {
        this._buffered = new Any(this._buffered, obj, settableAnyProperty, str);
    }

    public void bufferMapProperty(Object obj, Object obj2) {
        this._buffered = new Map(this._buffered, obj2, obj);
    }

    public void bufferProperty(SettableBeanProperty settableBeanProperty, Object obj) {
        this._buffered = new Regular(this._buffered, obj, settableBeanProperty);
    }

    protected PropertyValue buffered() {
        return this._buffered;
    }

    protected Object[] getParameters(SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        int i = 0;
        if (this._paramsNeeded > 0) {
            int length;
            if (this._paramsSeenBig != null) {
                length = this._creatorParameters.length;
                while (true) {
                    i = this._paramsSeenBig.nextClearBit(i);
                    if (i >= length) {
                        break;
                    }
                    this._creatorParameters[i] = _findMissing(settableBeanPropertyArr[i]);
                    i++;
                }
            } else {
                length = this._paramsSeen;
                int length2 = this._creatorParameters.length;
                while (i < length2) {
                    if ((length & 1) == 0) {
                        this._creatorParameters[i] = _findMissing(settableBeanPropertyArr[i]);
                    }
                    i++;
                    length >>= 1;
                }
            }
        }
        return this._creatorParameters;
    }

    public Object handleIdValue(DeserializationContext deserializationContext, Object obj) throws IOException {
        if (this._objectIdReader == null) {
            return obj;
        }
        if (this._idValue != null) {
            deserializationContext.findObjectId(this._idValue, this._objectIdReader.generator, this._objectIdReader.resolver).bindItem(obj);
            SettableBeanProperty settableBeanProperty = this._objectIdReader.idProperty;
            return settableBeanProperty != null ? settableBeanProperty.setAndReturn(obj, this._idValue) : obj;
        } else {
            throw deserializationContext.mappingException("No _idValue when handleIdValue called, on instance of %s", obj.getClass().getName());
        }
    }

    public boolean isComplete() {
        return this._paramsNeeded <= 0;
    }

    public boolean readIdProperty(String str) throws IOException {
        if (this._objectIdReader == null || !str.equals(this._objectIdReader.propertyName.getSimpleName())) {
            return false;
        }
        this._idValue = this._objectIdReader.readObjectReference(this._parser, this._context);
        return true;
    }
}
