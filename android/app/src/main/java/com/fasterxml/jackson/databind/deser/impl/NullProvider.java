package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import java.io.Serializable;

@Deprecated
public final class NullProvider implements Serializable {
    private static final long serialVersionUID = 1;
    private final boolean _isPrimitive;
    private final Object _nullValue;
    private final Class<?> _rawType;

    public NullProvider(JavaType javaType, Object obj) {
        this._nullValue = obj;
        this._isPrimitive = javaType.isPrimitive();
        this._rawType = javaType.getRawClass();
    }

    public Object nullValue(DeserializationContext deserializationContext) throws JsonProcessingException {
        if (!this._isPrimitive || !deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES)) {
            return this._nullValue;
        }
        throw deserializationContext.mappingException("Can not map JSON null into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)", this._rawType.getName());
    }
}
