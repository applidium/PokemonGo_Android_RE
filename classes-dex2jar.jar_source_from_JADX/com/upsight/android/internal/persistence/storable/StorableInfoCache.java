package com.upsight.android.internal.persistence.storable;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightException;
import com.upsight.android.persistence.UpsightStorableSerializer;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.concurrent.ConcurrentHashMap;

public final class StorableInfoCache {
    private final ConcurrentHashMap<Class<?>, StorableIdentifierAccessor> mAccessorMap;
    private final ConcurrentHashMap<Class<?>, StorableInfo<?>> mInfoMap;
    private final ObjectMapper mObjectMapper;
    private final ConcurrentHashMap<Class<?>, UpsightStorableSerializer<?>> mSerializerMap;

    StorableInfoCache(ObjectMapper objectMapper) {
        this.mSerializerMap = new ConcurrentHashMap();
        this.mInfoMap = new ConcurrentHashMap();
        this.mAccessorMap = new ConcurrentHashMap();
        this.mObjectMapper = objectMapper;
    }

    private StorableIdentifierAccessor resolveIdentifierAccessor(Class<?> cls) throws UpsightException {
        StorableIdentifierAccessor storableIdentifierAccessor = (StorableIdentifierAccessor) this.mAccessorMap.get(cls);
        if (storableIdentifierAccessor != null) {
            return storableIdentifierAccessor;
        }
        Class cls2 = cls;
        StorableIdentifierAccessor storableIdentifierAccessor2 = storableIdentifierAccessor;
        while (storableIdentifierAccessor2 == null && cls2 != null) {
            StorableFieldIdentifierAccessor storableFieldIdentifierAccessor;
            Object obj;
            Field[] declaredFields = cls2.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                if (((UpsightStorableIdentifier) field.getAnnotation(UpsightStorableIdentifier.class)) == null) {
                    i++;
                } else if (field.getType().equals(String.class)) {
                    storableFieldIdentifierAccessor = new StorableFieldIdentifierAccessor(field);
                    cls2 = cls2.getSuperclass();
                    obj = storableFieldIdentifierAccessor;
                } else {
                    throw new UpsightException("Field annotated with @%s must be of type String.", UpsightStorableIdentifier.class.getSimpleName());
                }
            }
            storableIdentifierAccessor = storableIdentifierAccessor2;
            cls2 = cls2.getSuperclass();
            obj = storableFieldIdentifierAccessor;
        }
        if (storableIdentifierAccessor2 == null) {
            storableIdentifierAccessor2 = new StorableIdentifierNoopAccessor();
        }
        this.mAccessorMap.put(cls, storableIdentifierAccessor2);
        return storableIdentifierAccessor2;
    }

    private <T> UpsightStorableSerializer<T> resolveSerializer(Class<T> cls) {
        UpsightStorableSerializer<T> upsightStorableSerializer = (UpsightStorableSerializer) this.mSerializerMap.get(cls);
        if (upsightStorableSerializer != null) {
            return upsightStorableSerializer;
        }
        UpsightStorableSerializer defaultJsonSerializer = new DefaultJsonSerializer(this.mObjectMapper, cls);
        this.mSerializerMap.put(cls, defaultJsonSerializer);
        return defaultJsonSerializer;
    }

    private <T> StorableTypeAccessor<T> resolveType(Class<T> cls) throws UpsightException {
        StorableStaticTypeAccessor storableStaticTypeAccessor;
        UpsightStorableType upsightStorableType = (UpsightStorableType) cls.getAnnotation(UpsightStorableType.class);
        if (upsightStorableType == null) {
            storableStaticTypeAccessor = null;
        } else if (TextUtils.isEmpty(upsightStorableType.value())) {
            throw new UpsightException("Class annotated with @%s must define non empty value.", UpsightStorableType.class.getSimpleName());
        } else {
            storableStaticTypeAccessor = new StorableStaticTypeAccessor(upsightStorableType.value());
        }
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        StorableTypeAccessor<T> storableTypeAccessor = storableStaticTypeAccessor;
        int i = 0;
        while (i < length) {
            StorableMethodTypeAccessor storableMethodTypeAccessor;
            Method method = declaredMethods[i];
            upsightStorableType = (UpsightStorableType) method.getAnnotation(UpsightStorableType.class);
            if (upsightStorableType == null) {
                StorableTypeAccessor storableTypeAccessor2 = storableTypeAccessor;
            } else if (!method.getReturnType().equals(String.class)) {
                throw new UpsightException("Method annotated with @%s must return empty.", UpsightStorableType.class);
            } else if (method.getParameterTypes().length > 0) {
                throw new UpsightException("Method annotated with @%s must have no parameters.", UpsightStorableType.class);
            } else if (storableTypeAccessor != null) {
                throw new UpsightException("@%s can only be defined once in class.", UpsightStorableType.class.getSimpleName());
            } else if (!TextUtils.isEmpty(upsightStorableType.value())) {
                throw new UpsightException("Method annotated with @%s should not define type in annotation but return it.", UpsightStorableType.class.getSimpleName());
            } else if (Modifier.isPublic(method.getModifiers())) {
                storableMethodTypeAccessor = new StorableMethodTypeAccessor(method);
            } else {
                throw new UpsightException("Method annotated with @%s must be public.", UpsightStorableType.class.getSimpleName());
            }
            i++;
            Object obj = storableMethodTypeAccessor;
        }
        if (storableTypeAccessor != null) {
            return storableTypeAccessor;
        }
        throw new UpsightException("Class must either be annotated or have method annotated with %s.", UpsightStorableType.class.getSimpleName());
    }

    public <T> StorableInfo<T> get(Class<T> cls) throws UpsightException {
        if (cls == null) {
            throw new IllegalArgumentException("Class can not be null.");
        }
        StorableInfo<T> storableInfo = (StorableInfo) this.mInfoMap.get(cls);
        if (storableInfo == null) {
            UpsightStorableSerializer resolveSerializer = resolveSerializer(cls);
            StorableTypeAccessor resolveType = resolveType(cls);
            storableInfo = new StorableInfo(resolveType, resolveSerializer, resolveIdentifierAccessor(cls));
            if (!resolveType.isDynamic()) {
                this.mInfoMap.put(cls, storableInfo);
            }
        }
        return storableInfo;
    }

    public <T> void setSerializer(Class<T> cls, UpsightStorableSerializer<T> upsightStorableSerializer) {
        this.mSerializerMap.put(cls, upsightStorableSerializer);
    }
}
