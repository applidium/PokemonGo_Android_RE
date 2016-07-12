package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.ReadOnlyClassToSerializerMap;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

public final class SerializerCache {
    private final AtomicReference<ReadOnlyClassToSerializerMap> _readOnlyMap;
    private final HashMap<com.fasterxml.jackson.databind.util.TypeKey, JsonSerializer<Object>> _sharedMap;

    @Deprecated
    public static final class TypeKey extends com.fasterxml.jackson.databind.util.TypeKey {
        public TypeKey(JavaType javaType, boolean z) {
            super(javaType, z);
        }

        public TypeKey(Class<?> cls, boolean z) {
            super((Class) cls, z);
        }
    }

    public SerializerCache() {
        this._sharedMap = new HashMap(64);
        this._readOnlyMap = new AtomicReference();
    }

    private final ReadOnlyClassToSerializerMap _makeReadOnlyLookupMap() {
        ReadOnlyClassToSerializerMap readOnlyClassToSerializerMap;
        synchronized (this) {
            readOnlyClassToSerializerMap = (ReadOnlyClassToSerializerMap) this._readOnlyMap.get();
            if (readOnlyClassToSerializerMap == null) {
                readOnlyClassToSerializerMap = ReadOnlyClassToSerializerMap.from(this._sharedMap);
                this._readOnlyMap.set(readOnlyClassToSerializerMap);
            }
        }
        return readOnlyClassToSerializerMap;
    }

    public void addAndResolveNonTypedSerializer(JavaType javaType, JsonSerializer<Object> jsonSerializer, SerializerProvider serializerProvider) throws JsonMappingException {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey(javaType, false), jsonSerializer) == null) {
                this._readOnlyMap.set(null);
            }
            if (jsonSerializer instanceof ResolvableSerializer) {
                ((ResolvableSerializer) jsonSerializer).resolve(serializerProvider);
            }
        }
    }

    public void addAndResolveNonTypedSerializer(Class<?> cls, JsonSerializer<Object> jsonSerializer, SerializerProvider serializerProvider) throws JsonMappingException {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey((Class) cls, false), jsonSerializer) == null) {
                this._readOnlyMap.set(null);
            }
            if (jsonSerializer instanceof ResolvableSerializer) {
                ((ResolvableSerializer) jsonSerializer).resolve(serializerProvider);
            }
        }
    }

    public void addTypedSerializer(JavaType javaType, JsonSerializer<Object> jsonSerializer) {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey(javaType, true), jsonSerializer) == null) {
                this._readOnlyMap.set(null);
            }
        }
    }

    public void addTypedSerializer(Class<?> cls, JsonSerializer<Object> jsonSerializer) {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey((Class) cls, true), jsonSerializer) == null) {
                this._readOnlyMap.set(null);
            }
        }
    }

    public void flush() {
        synchronized (this) {
            this._sharedMap.clear();
        }
    }

    public ReadOnlyClassToSerializerMap getReadOnlyLookupMap() {
        ReadOnlyClassToSerializerMap readOnlyClassToSerializerMap = (ReadOnlyClassToSerializerMap) this._readOnlyMap.get();
        return readOnlyClassToSerializerMap != null ? readOnlyClassToSerializerMap : _makeReadOnlyLookupMap();
    }

    public int size() {
        int size;
        synchronized (this) {
            size = this._sharedMap.size();
        }
        return size;
    }

    public JsonSerializer<Object> typedValueSerializer(JavaType javaType) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = (JsonSerializer) this._sharedMap.get(new TypeKey(javaType, true));
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> typedValueSerializer(Class<?> cls) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = (JsonSerializer) this._sharedMap.get(new TypeKey((Class) cls, true));
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> untypedValueSerializer(JavaType javaType) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = (JsonSerializer) this._sharedMap.get(new TypeKey(javaType, false));
        }
        return jsonSerializer;
    }

    public JsonSerializer<Object> untypedValueSerializer(Class<?> cls) {
        JsonSerializer<Object> jsonSerializer;
        synchronized (this) {
            jsonSerializer = (JsonSerializer) this._sharedMap.get(new TypeKey((Class) cls, false));
        }
        return jsonSerializer;
    }
}
