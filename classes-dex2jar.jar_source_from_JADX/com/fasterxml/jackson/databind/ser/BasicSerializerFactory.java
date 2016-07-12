package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedStringListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IteratorSerializer;
import com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringArraySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.AtomicReferenceSerializer;
import com.fasterxml.jackson.databind.ser.std.BooleanSerializer;
import com.fasterxml.jackson.databind.ser.std.ByteBufferSerializer;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.CollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSetSerializer;
import com.fasterxml.jackson.databind.ser.std.InetAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.InetSocketAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.IterableSerializer;
import com.fasterxml.jackson.databind.ser.std.JsonValueSerializer;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializers;
import com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer;
import com.fasterxml.jackson.databind.ser.std.SerializableSerializer;
import com.fasterxml.jackson.databind.ser.std.SqlDateSerializer;
import com.fasterxml.jackson.databind.ser.std.SqlTimeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdArraySerializers;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers;
import com.fasterxml.jackson.databind.ser.std.StdKeySerializers;
import com.fasterxml.jackson.databind.ser.std.StringSerializer;
import com.fasterxml.jackson.databind.ser.std.TimeZoneSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fasterxml.jackson.databind.ser.std.TokenBufferSerializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.RandomAccess;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import spacemadness.com.lunarconsole.C1401R;

public abstract class BasicSerializerFactory extends SerializerFactory implements Serializable {
    protected static final HashMap<String, JsonSerializer<?>> _concrete;
    protected static final HashMap<String, Class<? extends JsonSerializer<?>>> _concreteLazy;
    protected final SerializerFactoryConfig _factoryConfig;

    /* renamed from: com.fasterxml.jackson.databind.ser.BasicSerializerFactory.1 */
    static /* synthetic */ class C01591 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include;

        static {
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = new int[Include.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape = new int[Shape.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[Shape.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[Shape.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[Shape.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    static {
        _concrete = new HashMap();
        _concreteLazy = new HashMap();
        _concrete.put(String.class.getName(), new StringSerializer());
        ToStringSerializer toStringSerializer = ToStringSerializer.instance;
        _concrete.put(StringBuffer.class.getName(), toStringSerializer);
        _concrete.put(StringBuilder.class.getName(), toStringSerializer);
        _concrete.put(Character.class.getName(), toStringSerializer);
        _concrete.put(Character.TYPE.getName(), toStringSerializer);
        NumberSerializers.addAll(_concrete);
        _concrete.put(Boolean.TYPE.getName(), new BooleanSerializer(true));
        _concrete.put(Boolean.class.getName(), new BooleanSerializer(false));
        _concrete.put(BigInteger.class.getName(), new NumberSerializer(BigInteger.class));
        _concrete.put(BigDecimal.class.getName(), new NumberSerializer(BigDecimal.class));
        _concrete.put(Calendar.class.getName(), CalendarSerializer.instance);
        DateSerializer dateSerializer = DateSerializer.instance;
        _concrete.put(Date.class.getName(), dateSerializer);
        _concrete.put(Timestamp.class.getName(), dateSerializer);
        _concreteLazy.put(java.sql.Date.class.getName(), SqlDateSerializer.class);
        _concreteLazy.put(Time.class.getName(), SqlTimeSerializer.class);
        for (Entry entry : StdJdkSerializers.all()) {
            Object value = entry.getValue();
            if (value instanceof JsonSerializer) {
                _concrete.put(((Class) entry.getKey()).getName(), (JsonSerializer) value);
            } else if (value instanceof Class) {
                _concreteLazy.put(((Class) entry.getKey()).getName(), (Class) value);
            } else {
                throw new IllegalStateException("Internal error: unrecognized value of type " + entry.getClass().getName());
            }
        }
        _concreteLazy.put(TokenBuffer.class.getName(), TokenBufferSerializer.class);
    }

    protected BasicSerializerFactory(SerializerFactoryConfig serializerFactoryConfig) {
        if (serializerFactoryConfig == null) {
            serializerFactoryConfig = new SerializerFactoryConfig();
        }
        this._factoryConfig = serializerFactoryConfig;
    }

    protected static <T extends JavaType> T modifySecondaryTypesByAnnotation(SerializationConfig serializationConfig, Annotated annotated, T t) {
        AnnotationIntrospector annotationIntrospector = serializationConfig.getAnnotationIntrospector();
        if (t.isContainerType()) {
            Class findSerializationKeyType = annotationIntrospector.findSerializationKeyType(annotated, t.getKeyType());
            if (findSerializationKeyType != null) {
                if (t instanceof MapType) {
                    try {
                        t = ((MapType) t).widenKey(findSerializationKeyType);
                    } catch (IllegalArgumentException e) {
                        throw new IllegalArgumentException("Failed to narrow key type " + t + " with key-type annotation (" + findSerializationKeyType.getName() + "): " + e.getMessage());
                    }
                }
                throw new IllegalArgumentException("Illegal key-type annotation: type " + t + " is not a Map type");
            }
            Class findSerializationContentType = annotationIntrospector.findSerializationContentType(annotated, t.getContentType());
            if (findSerializationContentType != null) {
                try {
                    t = t.widenContentsBy(findSerializationContentType);
                } catch (IllegalArgumentException e2) {
                    throw new IllegalArgumentException("Failed to narrow content type " + t + " with content-type annotation (" + findSerializationContentType.getName() + "): " + e2.getMessage());
                }
            }
        }
        return t;
    }

    protected JsonSerializer<Object> _findContentSerializer(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findContentSerializer = serializerProvider.getAnnotationIntrospector().findContentSerializer(annotated);
        return findContentSerializer != null ? serializerProvider.serializerInstance(annotated, findContentSerializer) : null;
    }

    protected JsonSerializer<Object> _findKeySerializer(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findKeySerializer = serializerProvider.getAnnotationIntrospector().findKeySerializer(annotated);
        return findKeySerializer != null ? serializerProvider.serializerInstance(annotated, findKeySerializer) : null;
    }

    protected Class<?> _verifyAsClass(Object obj, String str, Class<?> cls) {
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

    protected JsonSerializer<?> buildArraySerializer(SerializerProvider serializerProvider, ArrayType arrayType, BeanDescription beanDescription, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        SerializationConfig config = serializerProvider.getConfig();
        JsonSerializer<?> jsonSerializer2 = null;
        for (Serializers findArraySerializer : customSerializers()) {
            jsonSerializer2 = findArraySerializer.findArraySerializer(config, arrayType, beanDescription, typeSerializer, jsonSerializer);
            if (jsonSerializer2 != null) {
                break;
            }
        }
        if (jsonSerializer2 == null) {
            Class rawClass = arrayType.getRawClass();
            if (jsonSerializer == null || ClassUtil.isJacksonStdImpl((Object) jsonSerializer)) {
                jsonSerializer2 = String[].class == rawClass ? StringArraySerializer.instance : StdArraySerializers.findStandardImpl(rawClass);
            }
            if (jsonSerializer2 == null) {
                jsonSerializer2 = new ObjectArraySerializer(arrayType.getContentType(), z, typeSerializer, jsonSerializer);
            }
        }
        if (!this._factoryConfig.hasSerializerModifiers()) {
            return jsonSerializer2;
        }
        JsonSerializer<?> jsonSerializer3 = jsonSerializer2;
        for (BeanSerializerModifier modifyArraySerializer : this._factoryConfig.serializerModifiers()) {
            jsonSerializer3 = modifyArraySerializer.modifyArraySerializer(config, arrayType, beanDescription, jsonSerializer3);
        }
        return jsonSerializer3;
    }

    protected JsonSerializer<?> buildCollectionSerializer(SerializerProvider serializerProvider, CollectionType collectionType, BeanDescription beanDescription, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer2;
        JavaType javaType = null;
        SerializationConfig config = serializerProvider.getConfig();
        JsonSerializer<?> jsonSerializer3 = null;
        for (Serializers findCollectionSerializer : customSerializers()) {
            jsonSerializer3 = findCollectionSerializer.findCollectionSerializer(config, collectionType, beanDescription, typeSerializer, jsonSerializer);
            if (jsonSerializer3 != null) {
                break;
            }
        }
        if (jsonSerializer3 == null) {
            jsonSerializer3 = findSerializerByAnnotations(serializerProvider, collectionType, beanDescription);
            if (jsonSerializer3 == null) {
                Value findExpectedFormat = beanDescription.findExpectedFormat(null);
                if (findExpectedFormat != null && findExpectedFormat.getShape() == Shape.OBJECT) {
                    return null;
                }
                Class rawClass = collectionType.getRawClass();
                if (EnumSet.class.isAssignableFrom(rawClass)) {
                    JavaType contentType = collectionType.getContentType();
                    if (contentType.isEnumType()) {
                        javaType = contentType;
                    }
                    jsonSerializer3 = buildEnumSetSerializer(javaType);
                } else {
                    Class rawClass2 = collectionType.getContentType().getRawClass();
                    if (isIndexedList(rawClass)) {
                        if (rawClass2 != String.class) {
                            jsonSerializer3 = buildIndexedListSerializer(collectionType.getContentType(), z, typeSerializer, jsonSerializer);
                        } else if (jsonSerializer == null || ClassUtil.isJacksonStdImpl((Object) jsonSerializer)) {
                            jsonSerializer3 = IndexedStringListSerializer.instance;
                        }
                    } else if (rawClass2 == String.class && (jsonSerializer == null || ClassUtil.isJacksonStdImpl((Object) jsonSerializer))) {
                        jsonSerializer3 = StringCollectionSerializer.instance;
                    }
                    if (jsonSerializer3 == null) {
                        jsonSerializer3 = buildCollectionSerializer(collectionType.getContentType(), z, typeSerializer, jsonSerializer);
                    }
                }
            }
        }
        if (this._factoryConfig.hasSerializerModifiers()) {
            jsonSerializer2 = jsonSerializer3;
            for (BeanSerializerModifier modifyCollectionSerializer : this._factoryConfig.serializerModifiers()) {
                jsonSerializer2 = modifyCollectionSerializer.modifyCollectionSerializer(config, collectionType, beanDescription, jsonSerializer2);
            }
        } else {
            jsonSerializer2 = jsonSerializer3;
        }
        return jsonSerializer2;
    }

    public ContainerSerializer<?> buildCollectionSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return new CollectionSerializer(javaType, z, typeSerializer, jsonSerializer);
    }

    protected JsonSerializer<?> buildContainerSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer;
        SerializationConfig config = serializerProvider.getConfig();
        if (!(z || !javaType.useStaticType() || (javaType.isContainerType() && javaType.getContentType().getRawClass() == Object.class))) {
            z = true;
        }
        TypeSerializer createTypeSerializer = createTypeSerializer(config, javaType.getContentType());
        boolean z2 = createTypeSerializer != null ? false : z;
        JsonSerializer _findContentSerializer = _findContentSerializer(serializerProvider, beanDescription.getClassInfo());
        JsonSerializer<?> jsonSerializer2;
        if (javaType.isMapLikeType()) {
            MapLikeType mapLikeType = (MapLikeType) javaType;
            JsonSerializer _findKeySerializer = _findKeySerializer(serializerProvider, beanDescription.getClassInfo());
            if (mapLikeType.isTrueMapType()) {
                return buildMapSerializer(serializerProvider, (MapType) mapLikeType, beanDescription, z2, _findKeySerializer, createTypeSerializer, _findContentSerializer);
            }
            jsonSerializer2 = null;
            MapLikeType mapLikeType2 = (MapLikeType) javaType;
            for (Serializers findMapLikeSerializer : customSerializers()) {
                jsonSerializer2 = findMapLikeSerializer.findMapLikeSerializer(config, mapLikeType2, beanDescription, _findKeySerializer, createTypeSerializer, _findContentSerializer);
                if (jsonSerializer2 != null) {
                    break;
                }
            }
            if (jsonSerializer2 == null) {
                jsonSerializer2 = findSerializerByAnnotations(serializerProvider, javaType, beanDescription);
            }
            if (jsonSerializer2 == null || !this._factoryConfig.hasSerializerModifiers()) {
                return jsonSerializer2;
            }
            jsonSerializer = jsonSerializer2;
            for (BeanSerializerModifier modifyMapLikeSerializer : this._factoryConfig.serializerModifiers()) {
                jsonSerializer = modifyMapLikeSerializer.modifyMapLikeSerializer(config, mapLikeType2, beanDescription, jsonSerializer);
            }
        } else if (javaType.isCollectionLikeType()) {
            CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
            if (collectionLikeType.isTrueCollectionType()) {
                return buildCollectionSerializer(serializerProvider, (CollectionType) collectionLikeType, beanDescription, z2, createTypeSerializer, _findContentSerializer);
            }
            jsonSerializer2 = null;
            CollectionLikeType collectionLikeType2 = (CollectionLikeType) javaType;
            for (Serializers findCollectionLikeSerializer : customSerializers()) {
                jsonSerializer2 = findCollectionLikeSerializer.findCollectionLikeSerializer(config, collectionLikeType2, beanDescription, createTypeSerializer, _findContentSerializer);
                if (jsonSerializer2 != null) {
                    break;
                }
            }
            if (jsonSerializer2 == null) {
                jsonSerializer2 = findSerializerByAnnotations(serializerProvider, javaType, beanDescription);
            }
            if (jsonSerializer2 == null || !this._factoryConfig.hasSerializerModifiers()) {
                return jsonSerializer2;
            }
            jsonSerializer = jsonSerializer2;
            for (BeanSerializerModifier modifyMapLikeSerializer2 : this._factoryConfig.serializerModifiers()) {
                jsonSerializer = modifyMapLikeSerializer2.modifyCollectionLikeSerializer(config, collectionLikeType2, beanDescription, jsonSerializer);
            }
        } else if (!javaType.isArrayType()) {
            return null;
        } else {
            return buildArraySerializer(serializerProvider, (ArrayType) javaType, beanDescription, z2, createTypeSerializer, _findContentSerializer);
        }
        return jsonSerializer;
    }

    protected JsonSerializer<?> buildEnumSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        Value findExpectedFormat = beanDescription.findExpectedFormat(null);
        if (findExpectedFormat == null || findExpectedFormat.getShape() != Shape.OBJECT) {
            JsonSerializer<?> construct = EnumSerializer.construct(javaType.getRawClass(), serializationConfig, beanDescription, findExpectedFormat);
            if (!this._factoryConfig.hasSerializerModifiers()) {
                return construct;
            }
            JsonSerializer<?> jsonSerializer = construct;
            for (BeanSerializerModifier modifyEnumSerializer : this._factoryConfig.serializerModifiers()) {
                jsonSerializer = modifyEnumSerializer.modifyEnumSerializer(serializationConfig, javaType, beanDescription, jsonSerializer);
            }
            return jsonSerializer;
        }
        ((BasicBeanDescription) beanDescription).removeProperty("declaringClass");
        return null;
    }

    public JsonSerializer<?> buildEnumSetSerializer(JavaType javaType) {
        return new EnumSetSerializer(javaType);
    }

    public ContainerSerializer<?> buildIndexedListSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return new IndexedListSerializer(javaType, z, typeSerializer, jsonSerializer);
    }

    @Deprecated
    protected JsonSerializer<?> buildIterableSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        JavaType[] findTypeParameters = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterable.class);
        JavaType unknownType = (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0];
        return buildIterableSerializer(serializationConfig, javaType, beanDescription, z, unknownType);
    }

    protected JsonSerializer<?> buildIterableSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2) throws JsonMappingException {
        return new IterableSerializer(javaType2, z, createTypeSerializer(serializationConfig, javaType2));
    }

    @Deprecated
    protected JsonSerializer<?> buildIteratorSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        JavaType[] findTypeParameters = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterator.class);
        JavaType unknownType = (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0];
        return buildIteratorSerializer(serializationConfig, javaType, beanDescription, z, unknownType);
    }

    protected JsonSerializer<?> buildIteratorSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2) throws JsonMappingException {
        return new IteratorSerializer(javaType2, z, createTypeSerializer(serializationConfig, javaType2));
    }

    protected JsonSerializer<?> buildMapEntrySerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2, JavaType javaType3) throws JsonMappingException {
        return new MapEntrySerializer(javaType3, javaType2, javaType3, z, createTypeSerializer(serializationConfig, javaType3), null);
    }

    protected JsonSerializer<?> buildMapSerializer(SerializerProvider serializerProvider, MapType mapType, BeanDescription beanDescription, boolean z, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer2) throws JsonMappingException {
        SerializationConfig config = serializerProvider.getConfig();
        JsonSerializer<?> jsonSerializer3 = null;
        for (Serializers findMapSerializer : customSerializers()) {
            jsonSerializer3 = findMapSerializer.findMapSerializer(config, mapType, beanDescription, jsonSerializer, typeSerializer, jsonSerializer2);
            if (jsonSerializer3 != null) {
                break;
            }
        }
        if (jsonSerializer3 == null) {
            jsonSerializer3 = findSerializerByAnnotations(serializerProvider, mapType, beanDescription);
            if (jsonSerializer3 == null) {
                jsonSerializer3 = MapSerializer.construct(config.getAnnotationIntrospector().findPropertiesToIgnore(beanDescription.getClassInfo(), true), mapType, z, typeSerializer, jsonSerializer, jsonSerializer2, findFilterId(config, beanDescription));
                Object findSuppressableContentValue = findSuppressableContentValue(config, mapType.getContentType(), beanDescription);
                if (findSuppressableContentValue != null) {
                    jsonSerializer3 = jsonSerializer3.withContentInclusion(findSuppressableContentValue);
                }
            }
        }
        if (!this._factoryConfig.hasSerializerModifiers()) {
            return jsonSerializer3;
        }
        JsonSerializer<?> jsonSerializer4 = jsonSerializer3;
        for (BeanSerializerModifier modifyMapSerializer : this._factoryConfig.serializerModifiers()) {
            jsonSerializer4 = modifyMapSerializer.modifyMapSerializer(config, mapType, beanDescription, jsonSerializer4);
        }
        return jsonSerializer4;
    }

    public JsonSerializer<Object> createKeySerializer(SerializationConfig serializationConfig, JavaType javaType, JsonSerializer<Object> jsonSerializer) {
        JsonSerializer<Object> jsonSerializer2 = null;
        BeanDescription introspectClassAnnotations = serializationConfig.introspectClassAnnotations(javaType.getRawClass());
        if (this._factoryConfig.hasKeySerializers()) {
            for (Serializers findSerializer : this._factoryConfig.keySerializers()) {
                jsonSerializer2 = findSerializer.findSerializer(serializationConfig, javaType, introspectClassAnnotations);
                if (jsonSerializer2 != null) {
                    break;
                }
            }
        }
        if (jsonSerializer2 != null) {
            jsonSerializer = jsonSerializer2;
        } else if (jsonSerializer == null) {
            jsonSerializer = StdKeySerializers.getStdKeySerializer(serializationConfig, javaType.getRawClass(), false);
            if (jsonSerializer == null) {
                BeanDescription introspect = serializationConfig.introspect(javaType);
                AnnotatedMethod findJsonValueMethod = introspect.findJsonValueMethod();
                if (findJsonValueMethod != null) {
                    JsonSerializer stdKeySerializer = StdKeySerializers.getStdKeySerializer(serializationConfig, findJsonValueMethod.getRawReturnType(), true);
                    Object annotated = findJsonValueMethod.getAnnotated();
                    if (serializationConfig.canOverrideAccessModifiers()) {
                        ClassUtil.checkAndFixAccess(annotated);
                    }
                    jsonSerializer = new JsonValueSerializer(annotated, stdKeySerializer);
                    introspectClassAnnotations = introspect;
                } else {
                    jsonSerializer = StdKeySerializers.getFallbackKeySerializer(serializationConfig, javaType.getRawClass());
                    introspectClassAnnotations = introspect;
                }
            }
        }
        if (this._factoryConfig.hasSerializerModifiers()) {
            for (BeanSerializerModifier modifyKeySerializer : this._factoryConfig.serializerModifiers()) {
                jsonSerializer = modifyKeySerializer.modifyKeySerializer(serializationConfig, javaType, introspectClassAnnotations, jsonSerializer);
            }
        }
        return jsonSerializer;
    }

    public abstract JsonSerializer<Object> createSerializer(SerializerProvider serializerProvider, JavaType javaType) throws JsonMappingException;

    public TypeSerializer createTypeSerializer(SerializationConfig serializationConfig, JavaType javaType) {
        Collection collection;
        AnnotatedClass classInfo = serializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder findTypeResolver = serializationConfig.getAnnotationIntrospector().findTypeResolver(serializationConfig, classInfo, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = serializationConfig.getDefaultTyper(javaType);
            collection = null;
        } else {
            collection = serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, classInfo);
        }
        return findTypeResolver == null ? null : findTypeResolver.buildTypeSerializer(serializationConfig, javaType, collection);
    }

    protected abstract Iterable<Serializers> customSerializers();

    protected Converter<Object, Object> findConverter(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findSerializationConverter = serializerProvider.getAnnotationIntrospector().findSerializationConverter(annotated);
        return findSerializationConverter == null ? null : serializerProvider.converterInstance(annotated, findSerializationConverter);
    }

    protected JsonSerializer<?> findConvertingSerializer(SerializerProvider serializerProvider, Annotated annotated, JsonSerializer<?> jsonSerializer) throws JsonMappingException {
        Converter findConverter = findConverter(serializerProvider, annotated);
        return findConverter == null ? jsonSerializer : new StdDelegatingSerializer(findConverter, findConverter.getOutputType(serializerProvider.getTypeFactory()), jsonSerializer);
    }

    protected Object findFilterId(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        return serializationConfig.getAnnotationIntrospector().findFilterId(beanDescription.getClassInfo());
    }

    protected JsonSerializer<?> findOptionalStdSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findSerializer(serializerProvider.getConfig(), javaType, beanDescription);
    }

    protected final JsonSerializer<?> findSerializerByAddonType(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        Class rawClass = javaType.getRawClass();
        JavaType[] findTypeParameters;
        JavaType unknownType;
        if (Iterator.class.isAssignableFrom(rawClass)) {
            findTypeParameters = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterator.class);
            unknownType = (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0];
            return buildIteratorSerializer(serializationConfig, javaType, beanDescription, z, unknownType);
        } else if (!Iterable.class.isAssignableFrom(rawClass)) {
            return CharSequence.class.isAssignableFrom(rawClass) ? ToStringSerializer.instance : null;
        } else {
            findTypeParameters = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterable.class);
            unknownType = (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0];
            return buildIterableSerializer(serializationConfig, javaType, beanDescription, z, unknownType);
        }
    }

    protected final JsonSerializer<?> findSerializerByAnnotations(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        if (JsonSerializable.class.isAssignableFrom(javaType.getRawClass())) {
            return SerializableSerializer.instance;
        }
        Annotated findJsonValueMethod = beanDescription.findJsonValueMethod();
        if (findJsonValueMethod == null) {
            return null;
        }
        Object annotated = findJsonValueMethod.getAnnotated();
        if (serializerProvider.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(annotated);
        }
        return new JsonValueSerializer(annotated, findSerializerFromAnnotation(serializerProvider, findJsonValueMethod));
    }

    protected final JsonSerializer<?> findSerializerByLookup(JavaType javaType, SerializationConfig serializationConfig, BeanDescription beanDescription, boolean z) {
        String name = javaType.getRawClass().getName();
        if (javaType.isReferenceType() && javaType.isTypeOrSubTypeOf(AtomicReference.class)) {
            return new AtomicReferenceSerializer((ReferenceType) javaType);
        }
        JsonSerializer<?> jsonSerializer = (JsonSerializer) _concrete.get(name);
        if (jsonSerializer != null) {
            return jsonSerializer;
        }
        Class cls = (Class) _concreteLazy.get(name);
        if (cls == null) {
            return jsonSerializer;
        }
        try {
            return (JsonSerializer) cls.newInstance();
        } catch (Throwable e) {
            throw new IllegalStateException("Failed to instantiate standard serializer (of type " + cls.getName() + "): " + e.getMessage(), e);
        }
    }

    protected final JsonSerializer<?> findSerializerByPrimaryType(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        Class rawClass = javaType.getRawClass();
        JsonSerializer<?> findOptionalStdSerializer = findOptionalStdSerializer(serializerProvider, javaType, beanDescription, z);
        if (findOptionalStdSerializer != null) {
            return findOptionalStdSerializer;
        }
        if (Calendar.class.isAssignableFrom(rawClass)) {
            return CalendarSerializer.instance;
        }
        if (Date.class.isAssignableFrom(rawClass)) {
            return DateSerializer.instance;
        }
        if (Entry.class.isAssignableFrom(rawClass)) {
            JavaType containedType = javaType.containedType(0);
            if (containedType == null) {
                containedType = TypeFactory.unknownType();
            }
            JavaType containedType2 = javaType.containedType(1);
            if (containedType2 == null) {
                containedType2 = TypeFactory.unknownType();
            }
            return buildMapEntrySerializer(serializerProvider.getConfig(), javaType, beanDescription, z, containedType, containedType2);
        } else if (ByteBuffer.class.isAssignableFrom(rawClass)) {
            return new ByteBufferSerializer();
        } else {
            if (InetAddress.class.isAssignableFrom(rawClass)) {
                return new InetAddressSerializer();
            }
            if (InetSocketAddress.class.isAssignableFrom(rawClass)) {
                return new InetSocketAddressSerializer();
            }
            if (TimeZone.class.isAssignableFrom(rawClass)) {
                return new TimeZoneSerializer();
            }
            if (Charset.class.isAssignableFrom(rawClass)) {
                return ToStringSerializer.instance;
            }
            if (!Number.class.isAssignableFrom(rawClass)) {
                return Enum.class.isAssignableFrom(rawClass) ? buildEnumSerializer(serializerProvider.getConfig(), javaType, beanDescription) : null;
            } else {
                Value findExpectedFormat = beanDescription.findExpectedFormat(null);
                if (findExpectedFormat != null) {
                    switch (C01591.$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape[findExpectedFormat.getShape().ordinal()]) {
                        case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                            return ToStringSerializer.instance;
                        case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                            return null;
                    }
                }
                return NumberSerializer.instance;
            }
        }
    }

    protected JsonSerializer<Object> findSerializerFromAnnotation(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findSerializer = serializerProvider.getAnnotationIntrospector().findSerializer(annotated);
        return findSerializer == null ? null : findConvertingSerializer(serializerProvider, annotated, serializerProvider.serializerInstance(annotated, findSerializer));
    }

    protected Object findSuppressableContentValue(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        Include findSerializationInclusionForContent = beanDescription.findSerializationInclusionForContent(null);
        if (findSerializationInclusionForContent == null) {
            return null;
        }
        switch (C01591.$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[findSerializationInclusionForContent.ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return Include.NON_EMPTY;
            default:
                return findSerializationInclusionForContent;
        }
    }

    public SerializerFactoryConfig getFactoryConfig() {
        return this._factoryConfig;
    }

    protected boolean isIndexedList(Class<?> cls) {
        return RandomAccess.class.isAssignableFrom(cls);
    }

    protected <T extends JavaType> T modifyTypeByAnnotation(SerializationConfig serializationConfig, Annotated annotated, T t) {
        JavaType widenBy;
        Class findSerializationType = serializationConfig.getAnnotationIntrospector().findSerializationType(annotated);
        if (findSerializationType != null) {
            try {
                widenBy = t.widenBy(findSerializationType);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Failed to widen type " + t + " with concrete-type annotation (value " + findSerializationType.getName() + "), method '" + annotated.getName() + "': " + e.getMessage());
            }
        }
        return modifySecondaryTypesByAnnotation(serializationConfig, annotated, widenBy);
    }

    protected boolean usesStaticTyping(SerializationConfig serializationConfig, BeanDescription beanDescription, TypeSerializer typeSerializer) {
        if (typeSerializer != null) {
            return false;
        }
        Typing findSerializationTyping = serializationConfig.getAnnotationIntrospector().findSerializationTyping(beanDescription.getClassInfo());
        return (findSerializationTyping == null || findSerializationTyping == Typing.DEFAULT_TYPING) ? serializationConfig.isEnabled(MapperFeature.USE_STATIC_TYPING) : findSerializationTyping == Typing.STATIC;
    }

    public final SerializerFactory withAdditionalKeySerializers(Serializers serializers) {
        return withConfig(this._factoryConfig.withAdditionalKeySerializers(serializers));
    }

    public final SerializerFactory withAdditionalSerializers(Serializers serializers) {
        return withConfig(this._factoryConfig.withAdditionalSerializers(serializers));
    }

    public abstract SerializerFactory withConfig(SerializerFactoryConfig serializerFactoryConfig);

    public final SerializerFactory withSerializerModifier(BeanSerializerModifier beanSerializerModifier) {
        return withConfig(this._factoryConfig.withSerializerModifier(beanSerializerModifier));
    }
}
