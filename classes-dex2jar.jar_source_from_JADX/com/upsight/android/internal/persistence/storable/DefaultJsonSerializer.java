package com.upsight.android.internal.persistence.storable;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightException;
import com.upsight.android.persistence.UpsightStorableSerializer;

public class DefaultJsonSerializer<T> implements UpsightStorableSerializer<T> {
    private final Class<T> mClass;
    private final ObjectMapper mObjectMapper;

    public DefaultJsonSerializer(ObjectMapper objectMapper, Class<T> cls) {
        this.mObjectMapper = objectMapper;
        this.mClass = cls;
    }

    public T fromString(String str) throws UpsightException {
        try {
            return this.mObjectMapper.treeToValue(this.mObjectMapper.readTree(str), this.mClass);
        } catch (Throwable e) {
            throw new UpsightException(e);
        }
    }

    public String toString(T t) {
        return this.mObjectMapper.valueToTree(t).toString();
    }
}
