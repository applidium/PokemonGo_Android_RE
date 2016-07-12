package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.Serializers.Base;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

public class SimpleSerializers extends Base implements Serializable {
    private static final long serialVersionUID = 8531646511998456779L;
    protected HashMap<ClassKey, JsonSerializer<?>> _classMappings;
    protected boolean _hasEnumSerializer;
    protected HashMap<ClassKey, JsonSerializer<?>> _interfaceMappings;

    public SimpleSerializers() {
        this._classMappings = null;
        this._interfaceMappings = null;
        this._hasEnumSerializer = false;
    }

    public SimpleSerializers(List<JsonSerializer<?>> list) {
        this._classMappings = null;
        this._interfaceMappings = null;
        this._hasEnumSerializer = false;
        addSerializers(list);
    }

    protected void _addSerializer(Class<?> cls, JsonSerializer<?> jsonSerializer) {
        ClassKey classKey = new ClassKey(cls);
        if (cls.isInterface()) {
            if (this._interfaceMappings == null) {
                this._interfaceMappings = new HashMap();
            }
            this._interfaceMappings.put(classKey, jsonSerializer);
            return;
        }
        if (this._classMappings == null) {
            this._classMappings = new HashMap();
        }
        this._classMappings.put(classKey, jsonSerializer);
        if (cls == Enum.class) {
            this._hasEnumSerializer = true;
        }
    }

    protected JsonSerializer<?> _findInterfaceMapping(Class<?> cls, ClassKey classKey) {
        for (Class cls2 : cls.getInterfaces()) {
            classKey.reset(cls2);
            JsonSerializer<?> jsonSerializer = (JsonSerializer) this._interfaceMappings.get(classKey);
            if (jsonSerializer != null) {
                return jsonSerializer;
            }
            jsonSerializer = _findInterfaceMapping(cls2, classKey);
            if (jsonSerializer != null) {
                return jsonSerializer;
            }
        }
        return null;
    }

    public void addSerializer(JsonSerializer<?> jsonSerializer) {
        Class handledType = jsonSerializer.handledType();
        if (handledType == null || handledType == Object.class) {
            throw new IllegalArgumentException("JsonSerializer of type " + jsonSerializer.getClass().getName() + " does not define valid handledType() -- must either register with method that takes type argument " + " or make serializer extend 'com.fasterxml.jackson.databind.ser.std.StdSerializer'");
        }
        _addSerializer(handledType, jsonSerializer);
    }

    public <T> void addSerializer(Class<? extends T> cls, JsonSerializer<T> jsonSerializer) {
        _addSerializer(cls, jsonSerializer);
    }

    public void addSerializers(List<JsonSerializer<?>> list) {
        for (JsonSerializer addSerializer : list) {
            addSerializer(addSerializer);
        }
    }

    public JsonSerializer<?> findArraySerializer(SerializationConfig serializationConfig, ArrayType arrayType, BeanDescription beanDescription, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return findSerializer(serializationConfig, arrayType, beanDescription);
    }

    public JsonSerializer<?> findCollectionLikeSerializer(SerializationConfig serializationConfig, CollectionLikeType collectionLikeType, BeanDescription beanDescription, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return findSerializer(serializationConfig, collectionLikeType, beanDescription);
    }

    public JsonSerializer<?> findCollectionSerializer(SerializationConfig serializationConfig, CollectionType collectionType, BeanDescription beanDescription, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return findSerializer(serializationConfig, collectionType, beanDescription);
    }

    public JsonSerializer<?> findMapLikeSerializer(SerializationConfig serializationConfig, MapLikeType mapLikeType, BeanDescription beanDescription, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer2) {
        return findSerializer(serializationConfig, mapLikeType, beanDescription);
    }

    public JsonSerializer<?> findMapSerializer(SerializationConfig serializationConfig, MapType mapType, BeanDescription beanDescription, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer2) {
        return findSerializer(serializationConfig, mapType, beanDescription);
    }

    public JsonSerializer<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) {
        JsonSerializer<?> jsonSerializer;
        Class rawClass = javaType.getRawClass();
        ClassKey classKey = new ClassKey(rawClass);
        if (rawClass.isInterface()) {
            if (this._interfaceMappings != null) {
                jsonSerializer = (JsonSerializer) this._interfaceMappings.get(classKey);
                if (jsonSerializer != null) {
                    return jsonSerializer;
                }
            }
        } else if (this._classMappings != null) {
            jsonSerializer = (JsonSerializer) this._classMappings.get(classKey);
            if (jsonSerializer != null) {
                return jsonSerializer;
            }
            if (this._hasEnumSerializer && javaType.isEnumType()) {
                classKey.reset(Enum.class);
                jsonSerializer = (JsonSerializer) this._classMappings.get(classKey);
                if (jsonSerializer != null) {
                    return jsonSerializer;
                }
            }
            for (Class cls = rawClass; cls != null; cls = cls.getSuperclass()) {
                classKey.reset(cls);
                jsonSerializer = (JsonSerializer) this._classMappings.get(classKey);
                if (jsonSerializer != null) {
                    return jsonSerializer;
                }
            }
        }
        if (this._interfaceMappings != null) {
            jsonSerializer = _findInterfaceMapping(rawClass, classKey);
            if (jsonSerializer != null) {
                return jsonSerializer;
            }
            if (!rawClass.isInterface()) {
                do {
                    rawClass = rawClass.getSuperclass();
                    if (rawClass != null) {
                        jsonSerializer = _findInterfaceMapping(rawClass, classKey);
                    }
                } while (jsonSerializer == null);
                return jsonSerializer;
            }
        }
        return null;
    }
}
