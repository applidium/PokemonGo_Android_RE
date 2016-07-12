package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonDeserializer.None;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

public final class DeserializerCache implements Serializable {
    private static final long serialVersionUID = 1;
    protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _cachedDeserializers;
    protected final HashMap<JavaType, JsonDeserializer<Object>> _incompleteDeserializers;

    public DeserializerCache() {
        this._cachedDeserializers = new ConcurrentHashMap(64, 0.75f, 4);
        this._incompleteDeserializers = new HashMap(8);
    }

    private boolean _hasCustomValueHandler(JavaType javaType) {
        if (!javaType.isContainerType()) {
            return false;
        }
        JavaType contentType = javaType.getContentType();
        return contentType != null ? (contentType.getValueHandler() == null && contentType.getTypeHandler() == null) ? false : true : false;
    }

    private Class<?> _verifyAsClass(Object obj, String str, Class<?> cls) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Class) {
            Class<?> cls2 = (Class) obj;
            return (cls2 == cls || ClassUtil.isBogusClass(cls2)) ? null : cls2;
        } else {
            throw new IllegalStateException("AnnotationIntrospector." + str + "() returned value of type " + obj.getClass().getName() + ": expected type JsonSerializer or Class<JsonSerializer> instead");
        }
    }

    private JavaType modifyTypeByAnnotation(DeserializationContext deserializationContext, Annotated annotated, JavaType javaType) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        Class findDeserializationType = annotationIntrospector.findDeserializationType(annotated, javaType);
        if (findDeserializationType != null) {
            try {
                JavaType constructSpecializedType = deserializationContext.getTypeFactory().constructSpecializedType(javaType, findDeserializationType);
            } catch (Throwable e) {
                throw new JsonMappingException("Failed to narrow type " + javaType + " with concrete-type annotation (value " + findDeserializationType.getName() + "), method '" + annotated.getName() + "': " + e.getMessage(), null, e);
            }
        }
        constructSpecializedType = javaType;
        if (!constructSpecializedType.isContainerType()) {
            return constructSpecializedType;
        }
        JavaType javaType2;
        Class findDeserializationKeyType = annotationIntrospector.findDeserializationKeyType(annotated, constructSpecializedType.getKeyType());
        if (findDeserializationKeyType == null) {
            javaType2 = constructSpecializedType;
        } else if (constructSpecializedType instanceof MapLikeType) {
            try {
                javaType2 = ((MapLikeType) constructSpecializedType).narrowKey(findDeserializationKeyType);
            } catch (Throwable e2) {
                throw new JsonMappingException("Failed to narrow key type " + constructSpecializedType + " with key-type annotation (" + findDeserializationKeyType.getName() + "): " + e2.getMessage(), null, e2);
            }
        } else {
            throw new JsonMappingException("Illegal key-type annotation: type " + constructSpecializedType + " is not a Map(-like) type");
        }
        constructSpecializedType = javaType2.getKeyType();
        if (constructSpecializedType != null && constructSpecializedType.getValueHandler() == null) {
            Object findKeyDeserializer = annotationIntrospector.findKeyDeserializer(annotated);
            if (findKeyDeserializer != null) {
                KeyDeserializer keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotated, findKeyDeserializer);
                if (keyDeserializerInstance != null) {
                    javaType2 = ((MapLikeType) javaType2).withKeyValueHandler(keyDeserializerInstance);
                    javaType2.getKeyType();
                }
            }
        }
        findDeserializationType = annotationIntrospector.findDeserializationContentType(annotated, javaType2.getContentType());
        if (findDeserializationType != null) {
            try {
                constructSpecializedType = javaType2.narrowContentsBy(findDeserializationType);
            } catch (Throwable e3) {
                throw new JsonMappingException("Failed to narrow content type " + javaType2 + " with content-type annotation (" + findDeserializationType.getName() + "): " + e3.getMessage(), null, e3);
            }
        }
        constructSpecializedType = javaType2;
        if (constructSpecializedType.getContentType().getValueHandler() != null) {
            return constructSpecializedType;
        }
        Object findContentDeserializer = annotationIntrospector.findContentDeserializer(annotated);
        if (findContentDeserializer == null) {
            return constructSpecializedType;
        }
        if (findContentDeserializer instanceof JsonDeserializer) {
            JsonDeserializer jsonDeserializer = (JsonDeserializer) findContentDeserializer;
            findContentDeserializer = null;
        } else {
            Class _verifyAsClass = _verifyAsClass(findContentDeserializer, "findContentDeserializer", None.class);
            findContentDeserializer = _verifyAsClass != null ? deserializationContext.deserializerInstance(annotated, _verifyAsClass) : null;
        }
        return findContentDeserializer != null ? constructSpecializedType.withContentValueHandler(findContentDeserializer) : constructSpecializedType;
    }

    protected JsonDeserializer<Object> _createAndCache2(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        try {
            JsonDeserializer<Object> _createDeserializer = _createDeserializer(deserializationContext, deserializerFactory, javaType);
            if (_createDeserializer == null) {
                return null;
            }
            boolean z = _createDeserializer instanceof ResolvableDeserializer;
            Object obj = (_hasCustomValueHandler(javaType) || !_createDeserializer.isCachable()) ? null : 1;
            if (z) {
                this._incompleteDeserializers.put(javaType, _createDeserializer);
                ((ResolvableDeserializer) _createDeserializer).resolve(deserializationContext);
                this._incompleteDeserializers.remove(javaType);
            }
            if (obj == null) {
                return _createDeserializer;
            }
            this._cachedDeserializers.put(javaType, _createDeserializer);
            return _createDeserializer;
        } catch (Throwable e) {
            throw new JsonMappingException(e.getMessage(), null, e);
        }
    }

    protected JsonDeserializer<Object> _createAndCacheValueDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> _findCachedDeserializer;
        synchronized (this._incompleteDeserializers) {
            _findCachedDeserializer = _findCachedDeserializer(javaType);
            if (_findCachedDeserializer != null) {
            } else {
                int size = this._incompleteDeserializers.size();
                if (size > 0) {
                    _findCachedDeserializer = (JsonDeserializer) this._incompleteDeserializers.get(javaType);
                    if (_findCachedDeserializer != null) {
                    }
                }
                try {
                    _findCachedDeserializer = _createAndCache2(deserializationContext, deserializerFactory, javaType);
                    if (size == 0) {
                        if (this._incompleteDeserializers.size() > 0) {
                            this._incompleteDeserializers.clear();
                        }
                    }
                } catch (Throwable th) {
                    if (size == 0 && this._incompleteDeserializers.size() > 0) {
                        this._incompleteDeserializers.clear();
                    }
                }
            }
        }
        return _findCachedDeserializer;
    }

    protected JsonDeserializer<Object> _createDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        if (javaType.isAbstract() || javaType.isMapLikeType() || javaType.isCollectionLikeType()) {
            javaType = deserializerFactory.mapAbstractType(config, javaType);
        }
        BeanDescription introspect = config.introspect(javaType);
        JsonDeserializer<Object> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
        if (findDeserializerFromAnnotation != null) {
            return findDeserializerFromAnnotation;
        }
        BeanDescription introspect2;
        JavaType modifyTypeByAnnotation = modifyTypeByAnnotation(deserializationContext, introspect.getClassInfo(), javaType);
        if (modifyTypeByAnnotation != javaType) {
            javaType = modifyTypeByAnnotation;
            introspect2 = config.introspect(modifyTypeByAnnotation);
        } else {
            introspect2 = introspect;
        }
        Class findPOJOBuilder = introspect2.findPOJOBuilder();
        if (findPOJOBuilder != null) {
            return deserializerFactory.createBuilderBasedDeserializer(deserializationContext, javaType, introspect2, findPOJOBuilder);
        }
        Converter findDeserializationConverter = introspect2.findDeserializationConverter();
        if (findDeserializationConverter == null) {
            return _createDeserializer2(deserializationContext, deserializerFactory, javaType, introspect2);
        }
        JavaType inputType = findDeserializationConverter.getInputType(deserializationContext.getTypeFactory());
        if (!inputType.hasRawClass(javaType.getRawClass())) {
            introspect2 = config.introspect(inputType);
        }
        return new StdDelegatingDeserializer(findDeserializationConverter, inputType, _createDeserializer2(deserializationContext, deserializerFactory, inputType, introspect2));
    }

    protected JsonDeserializer<?> _createDeserializer2(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        if (javaType.isEnumType()) {
            return deserializerFactory.createEnumDeserializer(deserializationContext, javaType, beanDescription);
        }
        if (javaType.isContainerType()) {
            if (javaType.isArrayType()) {
                return deserializerFactory.createArrayDeserializer(deserializationContext, (ArrayType) javaType, beanDescription);
            }
            if (javaType.isMapLikeType()) {
                MapLikeType mapLikeType = (MapLikeType) javaType;
                return mapLikeType.isTrueMapType() ? deserializerFactory.createMapDeserializer(deserializationContext, (MapType) mapLikeType, beanDescription) : deserializerFactory.createMapLikeDeserializer(deserializationContext, mapLikeType, beanDescription);
            } else if (javaType.isCollectionLikeType()) {
                Value findExpectedFormat = beanDescription.findExpectedFormat(null);
                if (findExpectedFormat == null || findExpectedFormat.getShape() != Shape.OBJECT) {
                    CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
                    return collectionLikeType.isTrueCollectionType() ? deserializerFactory.createCollectionDeserializer(deserializationContext, (CollectionType) collectionLikeType, beanDescription) : deserializerFactory.createCollectionLikeDeserializer(deserializationContext, collectionLikeType, beanDescription);
                }
            }
        }
        return JsonNode.class.isAssignableFrom(javaType.getRawClass()) ? deserializerFactory.createTreeDeserializer(config, javaType, beanDescription) : deserializerFactory.createBeanDeserializer(deserializationContext, javaType, beanDescription);
    }

    protected JsonDeserializer<Object> _findCachedDeserializer(JavaType javaType) {
        if (javaType != null) {
            return _hasCustomValueHandler(javaType) ? null : (JsonDeserializer) this._cachedDeserializers.get(javaType);
        } else {
            throw new IllegalArgumentException("Null JavaType passed");
        }
    }

    protected KeyDeserializer _handleUnknownKeyDeserializer(JavaType javaType) throws JsonMappingException {
        throw new JsonMappingException("Can not find a (Map) Key deserializer for type " + javaType);
    }

    protected JsonDeserializer<Object> _handleUnknownValueDeserializer(JavaType javaType) throws JsonMappingException {
        if (ClassUtil.isConcrete(javaType.getRawClass())) {
            throw new JsonMappingException("Can not find a Value deserializer for type " + javaType);
        }
        throw new JsonMappingException("Can not find a Value deserializer for abstract type " + javaType);
    }

    public int cachedDeserializersCount() {
        return this._cachedDeserializers.size();
    }

    protected Converter<Object, Object> findConverter(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializationConverter = deserializationContext.getAnnotationIntrospector().findDeserializationConverter(annotated);
        return findDeserializationConverter == null ? null : deserializationContext.converterInstance(annotated, findDeserializationConverter);
    }

    protected JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext deserializationContext, Annotated annotated, JsonDeserializer<Object> jsonDeserializer) throws JsonMappingException {
        Converter findConverter = findConverter(deserializationContext, annotated);
        return findConverter == null ? jsonDeserializer : new StdDelegatingDeserializer(findConverter, findConverter.getInputType(deserializationContext.getTypeFactory()), jsonDeserializer);
    }

    protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializer = deserializationContext.getAnnotationIntrospector().findDeserializer(annotated);
        return findDeserializer == null ? null : findConvertingDeserializer(deserializationContext, annotated, deserializationContext.deserializerInstance(annotated, findDeserializer));
    }

    public KeyDeserializer findKeyDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        KeyDeserializer createKeyDeserializer = deserializerFactory.createKeyDeserializer(deserializationContext, javaType);
        if (createKeyDeserializer == null) {
            return _handleUnknownKeyDeserializer(javaType);
        }
        if (!(createKeyDeserializer instanceof ResolvableDeserializer)) {
            return createKeyDeserializer;
        }
        ((ResolvableDeserializer) createKeyDeserializer).resolve(deserializationContext);
        return createKeyDeserializer;
    }

    public JsonDeserializer<Object> findValueDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> _findCachedDeserializer = _findCachedDeserializer(javaType);
        if (_findCachedDeserializer != null) {
            return _findCachedDeserializer;
        }
        _findCachedDeserializer = _createAndCacheValueDeserializer(deserializationContext, deserializerFactory, javaType);
        return _findCachedDeserializer == null ? _handleUnknownValueDeserializer(javaType) : _findCachedDeserializer;
    }

    public void flushCachedDeserializers() {
        this._cachedDeserializers.clear();
    }

    public boolean hasValueDeserializerFor(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer _findCachedDeserializer = _findCachedDeserializer(javaType);
        if (_findCachedDeserializer == null) {
            _findCachedDeserializer = _createAndCacheValueDeserializer(deserializationContext, deserializerFactory, javaType);
        }
        return _findCachedDeserializer != null;
    }

    Object writeReplace() {
        this._incompleteDeserializers.clear();
        return this;
    }
}
