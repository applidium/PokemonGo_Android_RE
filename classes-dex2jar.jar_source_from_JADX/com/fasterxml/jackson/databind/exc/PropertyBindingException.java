package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public abstract class PropertyBindingException extends JsonMappingException {
    private static final int MAX_DESC_LENGTH = 1000;
    protected transient String _propertiesAsString;
    protected final Collection<Object> _propertyIds;
    protected final String _propertyName;
    protected final Class<?> _referringClass;

    protected PropertyBindingException(String str, JsonLocation jsonLocation, Class<?> cls, String str2, Collection<Object> collection) {
        super(str, jsonLocation);
        this._referringClass = cls;
        this._propertyName = str2;
        this._propertyIds = collection;
    }

    public Collection<Object> getKnownPropertyIds() {
        return this._propertyIds == null ? null : Collections.unmodifiableCollection(this._propertyIds);
    }

    public String getMessageSuffix() {
        String str = this._propertiesAsString;
        if (str != null || this._propertyIds == null) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder(100);
        int size = this._propertyIds.size();
        if (size == 1) {
            stringBuilder.append(" (one known property: \"");
            stringBuilder.append(String.valueOf(this._propertyIds.iterator().next()));
            stringBuilder.append('\"');
        } else {
            stringBuilder.append(" (").append(size).append(" known properties: ");
            Iterator it = this._propertyIds.iterator();
            while (it.hasNext()) {
                stringBuilder.append('\"');
                stringBuilder.append(String.valueOf(it.next()));
                stringBuilder.append('\"');
                if (stringBuilder.length() > MAX_DESC_LENGTH) {
                    stringBuilder.append(" [truncated]");
                    break;
                } else if (it.hasNext()) {
                    stringBuilder.append(", ");
                }
            }
        }
        stringBuilder.append("])");
        str = stringBuilder.toString();
        this._propertiesAsString = str;
        return str;
    }

    public String getPropertyName() {
        return this._propertyName;
    }

    public Class<?> getReferringClass() {
        return this._referringClass;
    }
}
