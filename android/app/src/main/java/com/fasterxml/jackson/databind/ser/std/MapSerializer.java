package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonMapFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.SortedMap;
import java.util.TreeMap;
import spacemadness.com.lunarconsole.BuildConfig;

@JacksonStdImpl
public class MapSerializer extends ContainerSerializer<Map<?, ?>> implements ContextualSerializer {
    protected static final JavaType UNSPECIFIED_TYPE;
    private static final long serialVersionUID = 1;
    protected PropertySerializerMap _dynamicValueSerializers;
    protected final Object _filterId;
    protected final HashSet<String> _ignoredEntries;
    protected JsonSerializer<Object> _keySerializer;
    protected final JavaType _keyType;
    protected final BeanProperty _property;
    protected final boolean _sortKeys;
    protected final Object _suppressableValue;
    protected JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final boolean _valueTypeIsStatic;
    protected final TypeSerializer _valueTypeSerializer;

    static {
        UNSPECIFIED_TYPE = TypeFactory.unknownType();
    }

    protected MapSerializer(MapSerializer mapSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, HashSet<String> hashSet) {
        super(Map.class, false);
        this._ignoredEntries = hashSet;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = beanProperty;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        this._suppressableValue = mapSerializer._suppressableValue;
    }

    @Deprecated
    protected MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer) {
        this(mapSerializer, typeSerializer, mapSerializer._suppressableValue);
    }

    protected MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer, Object obj) {
        super(Map.class, false);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = mapSerializer._property;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        if (obj == Include.NON_ABSENT) {
            obj = this._valueType.isReferenceType() ? Include.NON_EMPTY : Include.NON_NULL;
        }
        this._suppressableValue = obj;
    }

    protected MapSerializer(MapSerializer mapSerializer, Object obj, boolean z) {
        super(Map.class, false);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = mapSerializer._property;
        this._filterId = obj;
        this._sortKeys = z;
        this._suppressableValue = mapSerializer._suppressableValue;
    }

    protected MapSerializer(HashSet<String> hashSet, JavaType javaType, JavaType javaType2, boolean z, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        super(Map.class, false);
        this._ignoredEntries = hashSet;
        this._keyType = javaType;
        this._valueType = javaType2;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
        this._property = null;
        this._filterId = null;
        this._sortKeys = false;
        this._suppressableValue = null;
    }

    public static MapSerializer construct(String[] strArr, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2, Object obj) {
        JavaType javaType2;
        JavaType javaType3;
        boolean z2 = false;
        HashSet arrayToSet = (strArr == null || strArr.length == 0) ? null : ArrayBuilders.arrayToSet(strArr);
        if (javaType == null) {
            javaType2 = UNSPECIFIED_TYPE;
            javaType3 = javaType2;
        } else {
            javaType2 = javaType.getKeyType();
            javaType3 = javaType.getContentType();
        }
        if (z) {
            if (javaType3.getRawClass() != Object.class) {
                z2 = z;
            }
        } else if (javaType3 != null && javaType3.isFinal()) {
            z2 = true;
        }
        MapSerializer mapSerializer = new MapSerializer(arrayToSet, javaType2, javaType3, z2, typeSerializer, jsonSerializer, jsonSerializer2);
        return obj != null ? mapSerializer.withFilterId(obj) : mapSerializer;
    }

    protected void _ensureOverride() {
        if (getClass() != MapSerializer.class) {
            throw new IllegalStateException("Missing override in class " + getClass().getName());
        }
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicValueSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer((Class) cls, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicValueSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    protected Map<?, ?> _orderEntries(Map<?, ?> map) {
        return map instanceof SortedMap ? map : new TreeMap(map);
    }

    public MapSerializer _withValueTypeSerializer(TypeSerializer typeSerializer) {
        if (this._valueTypeSerializer == typeSerializer) {
            return this;
        }
        _ensureOverride();
        return new MapSerializer(this, typeSerializer, null);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonMapFormatVisitor expectMapFormat = jsonFormatVisitorWrapper == null ? null : jsonFormatVisitorWrapper.expectMapFormat(javaType);
        if (expectMapFormat != null) {
            expectMapFormat.keyFormat(this._keySerializer, this._keyType);
            JsonFormatVisitable jsonFormatVisitable = this._valueSerializer;
            if (jsonFormatVisitable == null) {
                jsonFormatVisitable = _findAndAddDynamic(this._dynamicValueSerializers, this._valueType, jsonFormatVisitorWrapper.getProvider());
            }
            expectMapFormat.valueFormat(jsonFormatVisitable, this._valueType);
        }
    }

    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        Object obj;
        JsonSerializer jsonSerializer;
        JsonSerializer serializerInstance;
        boolean z = true;
        JsonSerializer jsonSerializer2 = null;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        Annotated member = beanProperty == null ? null : beanProperty.getMember();
        Object obj2 = this._suppressableValue;
        if (member == null || annotationIntrospector == null) {
            obj = obj2;
            jsonSerializer = null;
        } else {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member);
            jsonSerializer = findKeySerializer != null ? serializerProvider.serializerInstance(member, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
            serializerInstance = findContentSerializer != null ? serializerProvider.serializerInstance(member, findContentSerializer) : null;
            Include findSerializationInclusionForContent = annotationIntrospector.findSerializationInclusionForContent(member, null);
            if (findSerializationInclusionForContent != null) {
                obj = findSerializationInclusionForContent;
                jsonSerializer2 = serializerInstance;
            } else {
                obj = obj2;
                jsonSerializer2 = serializerInstance;
            }
        }
        if (jsonSerializer2 == null) {
            jsonSerializer2 = this._valueSerializer;
        }
        serializerInstance = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer2);
        if (serializerInstance != null) {
            serializerInstance = serializerProvider.handleSecondaryContextualization(serializerInstance, beanProperty);
        } else if ((this._valueTypeIsStatic && this._valueType.getRawClass() != Object.class) || hasContentTypeAnnotation(serializerProvider, beanProperty)) {
            serializerInstance = serializerProvider.findValueSerializer(this._valueType, beanProperty);
        }
        jsonSerializer2 = jsonSerializer == null ? this._keySerializer : jsonSerializer;
        jsonSerializer = jsonSerializer2 == null ? serializerProvider.findKeySerializer(this._keyType, beanProperty) : serializerProvider.handleSecondaryContextualization(jsonSerializer2, beanProperty);
        HashSet hashSet = this._ignoredEntries;
        if (annotationIntrospector == null || member == null) {
            z = false;
        } else {
            HashSet hashSet2;
            String[] findPropertiesToIgnore = annotationIntrospector.findPropertiesToIgnore(member, true);
            if (findPropertiesToIgnore != null) {
                hashSet2 = hashSet == null ? new HashSet() : new HashSet(hashSet);
                for (Object add : findPropertiesToIgnore) {
                    hashSet2.add(add);
                }
            } else {
                hashSet2 = hashSet;
            }
            Boolean findSerializationSortAlphabetically = annotationIntrospector.findSerializationSortAlphabetically(member);
            if (findSerializationSortAlphabetically == null || !findSerializationSortAlphabetically.booleanValue()) {
                z = false;
                hashSet = hashSet2;
            } else {
                hashSet = hashSet2;
            }
        }
        JsonSerializer<?> withResolved = withResolved(beanProperty, jsonSerializer, serializerInstance, hashSet, z);
        if (obj != this._suppressableValue) {
            withResolved = withResolved.withContentInclusion(obj);
        }
        if (beanProperty == null) {
            return withResolved;
        }
        Annotated member2 = beanProperty.getMember();
        if (member2 == null) {
            return withResolved;
        }
        Object findFilterId = annotationIntrospector.findFilterId(member2);
        return findFilterId != null ? withResolved.withFilterId(findFilterId) : withResolved;
    }

    public JsonSerializer<?> getContentSerializer() {
        return this._valueSerializer;
    }

    public JavaType getContentType() {
        return this._valueType;
    }

    public JsonSerializer<?> getKeySerializer() {
        return this._keySerializer;
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("object", true);
    }

    public boolean hasSingleElement(Map<?, ?> map) {
        return map.size() == 1;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, Map<?, ?> map) {
        return map == null || map.isEmpty();
    }

    public void serialize(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject();
        jsonGenerator.setCurrentValue(map);
        if (!map.isEmpty()) {
            Map _orderEntries;
            Object obj = this._suppressableValue;
            if (obj == Include.ALWAYS) {
                obj = null;
            } else if (obj == null && !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {
                obj = Include.NON_NULL;
            }
            if (this._sortKeys || serializerProvider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS)) {
                _orderEntries = _orderEntries(map);
            } else {
                Map<?, ?> map2 = map;
            }
            if (this._filterId != null) {
                serializeFilteredFields(_orderEntries, jsonGenerator, serializerProvider, findPropertyFilter(serializerProvider, this._filterId, _orderEntries), obj);
            } else if (obj != null) {
                serializeOptionalFields(_orderEntries, jsonGenerator, serializerProvider, obj);
            } else if (this._valueSerializer != null) {
                serializeFieldsUsing(_orderEntries, jsonGenerator, serializerProvider, this._valueSerializer);
            } else {
                serializeFields(_orderEntries, jsonGenerator, serializerProvider);
            }
        }
        jsonGenerator.writeEndObject();
    }

    public void serializeFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (this._valueTypeSerializer != null) {
            serializeTypedFields(map, jsonGenerator, serializerProvider, null);
            return;
        }
        JsonSerializer jsonSerializer = this._keySerializer;
        HashSet hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
        for (Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            Object key = entry.getKey();
            if (key == null) {
                serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
            } else if (hashSet == null || !hashSet.contains(key)) {
                jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
            }
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            } else {
                JsonSerializer jsonSerializer2;
                Class cls = value.getClass();
                JsonSerializer serializerFor = propertySerializerMap2.serializerFor(cls);
                JsonSerializer _findAndAddDynamic;
                if (serializerFor == null) {
                    _findAndAddDynamic = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap2, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap2, cls, serializerProvider);
                    propertySerializerMap = this._dynamicValueSerializers;
                    jsonSerializer2 = _findAndAddDynamic;
                } else {
                    _findAndAddDynamic = serializerFor;
                    propertySerializerMap = propertySerializerMap2;
                    jsonSerializer2 = _findAndAddDynamic;
                }
                try {
                    jsonSerializer2.serialize(value, jsonGenerator, serializerProvider);
                    propertySerializerMap2 = propertySerializerMap;
                } catch (Throwable e) {
                    wrapAndThrow(serializerProvider, e, (Object) map, BuildConfig.FLAVOR + key);
                    propertySerializerMap2 = propertySerializerMap;
                }
            }
        }
    }

    protected void serializeFieldsUsing(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        JsonSerializer jsonSerializer2 = this._keySerializer;
        HashSet hashSet = this._ignoredEntries;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        for (Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            if (hashSet == null || !hashSet.contains(key)) {
                if (key == null) {
                    serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer2.serialize(key, jsonGenerator, serializerProvider);
                }
                Object value = entry.getValue();
                if (value == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else if (typeSerializer == null) {
                    try {
                        jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                    } catch (Throwable e) {
                        wrapAndThrow(serializerProvider, e, (Object) map, BuildConfig.FLAVOR + key);
                    }
                } else {
                    jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        }
    }

    @Deprecated
    public void serializeFilteredFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyFilter propertyFilter) throws IOException {
        serializeFilteredFields(map, jsonGenerator, serializerProvider, propertyFilter, serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? null : Include.NON_NULL);
    }

    public void serializeFilteredFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyFilter propertyFilter, Object obj) throws IOException {
        HashSet hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        PropertyWriter mapProperty = new MapProperty(this._valueTypeSerializer, this._property);
        PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
        for (Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            if (hashSet == null || !hashSet.contains(key)) {
                JsonSerializer _findAndAddDynamic;
                JsonSerializer findNullKeySerializer = key == null ? serializerProvider.findNullKeySerializer(this._keyType, this._property) : this._keySerializer;
                Object value = entry.getValue();
                if (value != null) {
                    JsonSerializer jsonSerializer = this._valueSerializer;
                    if (jsonSerializer == null) {
                        Class cls = value.getClass();
                        jsonSerializer = propertySerializerMap2.serializerFor(cls);
                        if (jsonSerializer == null) {
                            _findAndAddDynamic = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap2, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap2, cls, serializerProvider);
                            propertySerializerMap = this._dynamicValueSerializers;
                            if (obj == Include.NON_EMPTY && r1.isEmpty(serializerProvider, value)) {
                                propertySerializerMap2 = propertySerializerMap;
                            }
                        }
                    }
                    PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
                    _findAndAddDynamic = jsonSerializer;
                    propertySerializerMap = propertySerializerMap3;
                    propertySerializerMap2 = propertySerializerMap;
                } else if (obj == null) {
                    propertySerializerMap = propertySerializerMap2;
                    _findAndAddDynamic = serializerProvider.getDefaultNullValueSerializer();
                }
                mapProperty.reset(key, findNullKeySerializer, _findAndAddDynamic);
                try {
                    propertyFilter.serializeAsField(value, jsonGenerator, serializerProvider, mapProperty);
                    propertySerializerMap2 = propertySerializerMap;
                } catch (Throwable e) {
                    wrapAndThrow(serializerProvider, e, (Object) map, BuildConfig.FLAVOR + key);
                    propertySerializerMap2 = propertySerializerMap;
                }
            }
        }
    }

    public void serializeOptionalFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        if (this._valueTypeSerializer != null) {
            serializeTypedFields(map, jsonGenerator, serializerProvider, obj);
            return;
        }
        HashSet hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
        for (Entry entry : map.entrySet()) {
            JsonSerializer findNullKeySerializer;
            JsonSerializer _findAndAddDynamic;
            Object key = entry.getKey();
            if (key == null) {
                findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
            } else if (hashSet == null || !hashSet.contains(key)) {
                findNullKeySerializer = this._keySerializer;
            }
            Object value = entry.getValue();
            if (value != null) {
                JsonSerializer jsonSerializer = this._valueSerializer;
                if (jsonSerializer == null) {
                    Class cls = value.getClass();
                    jsonSerializer = propertySerializerMap2.serializerFor(cls);
                    if (jsonSerializer == null) {
                        _findAndAddDynamic = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap2, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap2, cls, serializerProvider);
                        propertySerializerMap = this._dynamicValueSerializers;
                        if (obj == Include.NON_EMPTY && r1.isEmpty(serializerProvider, value)) {
                            propertySerializerMap2 = propertySerializerMap;
                        }
                    }
                }
                PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
                _findAndAddDynamic = jsonSerializer;
                propertySerializerMap = propertySerializerMap3;
                propertySerializerMap2 = propertySerializerMap;
            } else if (obj == null) {
                propertySerializerMap = propertySerializerMap2;
                _findAndAddDynamic = serializerProvider.getDefaultNullValueSerializer();
            }
            try {
                findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                _findAndAddDynamic.serialize(value, jsonGenerator, serializerProvider);
                propertySerializerMap2 = propertySerializerMap;
            } catch (Throwable e) {
                wrapAndThrow(serializerProvider, e, (Object) map, BuildConfig.FLAVOR + key);
                propertySerializerMap2 = propertySerializerMap;
            }
        }
    }

    @Deprecated
    protected void serializeTypedFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        serializeTypedFields(map, jsonGenerator, serializerProvider, serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? null : Include.NON_NULL);
    }

    protected void serializeTypedFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        HashSet hashSet = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        PropertySerializerMap propertySerializerMap2 = propertySerializerMap;
        for (Entry entry : map.entrySet()) {
            JsonSerializer findNullKeySerializer;
            JsonSerializer _findAndAddDynamic;
            Object key = entry.getKey();
            if (key == null) {
                findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
            } else if (hashSet == null || !hashSet.contains(key)) {
                findNullKeySerializer = this._keySerializer;
            }
            Object value = entry.getValue();
            if (value != null) {
                JsonSerializer jsonSerializer = this._valueSerializer;
                Class cls = value.getClass();
                jsonSerializer = propertySerializerMap2.serializerFor(cls);
                if (jsonSerializer == null) {
                    _findAndAddDynamic = this._valueType.hasGenericTypes() ? _findAndAddDynamic(propertySerializerMap2, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider) : _findAndAddDynamic(propertySerializerMap2, cls, serializerProvider);
                    propertySerializerMap = this._dynamicValueSerializers;
                } else {
                    PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
                    _findAndAddDynamic = jsonSerializer;
                    propertySerializerMap = propertySerializerMap3;
                }
                if (obj == Include.NON_EMPTY && r1.isEmpty(serializerProvider, value)) {
                    propertySerializerMap2 = propertySerializerMap;
                }
            } else if (obj == null) {
                propertySerializerMap = propertySerializerMap2;
                _findAndAddDynamic = serializerProvider.getDefaultNullValueSerializer();
            }
            findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
            try {
                _findAndAddDynamic.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                propertySerializerMap2 = propertySerializerMap;
            } catch (Throwable e) {
                wrapAndThrow(serializerProvider, e, (Object) map, BuildConfig.FLAVOR + key);
                propertySerializerMap2 = propertySerializerMap;
            }
        }
    }

    public void serializeWithType(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        Object _orderEntries;
        typeSerializer.writeTypePrefixForObject(map, jsonGenerator);
        jsonGenerator.setCurrentValue(map);
        Map<?, ?> map2;
        if (map.isEmpty()) {
            map2 = map;
        } else {
            Object obj = this._suppressableValue;
            if (obj == Include.ALWAYS) {
                obj = null;
            } else if (obj == null && !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {
                obj = Include.NON_NULL;
            }
            if (this._sortKeys || serializerProvider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS)) {
                _orderEntries = _orderEntries(map);
            } else {
                map2 = map;
            }
            if (this._filterId != null) {
                serializeFilteredFields(_orderEntries, jsonGenerator, serializerProvider, findPropertyFilter(serializerProvider, this._filterId, _orderEntries), obj);
            } else if (obj != null) {
                serializeOptionalFields(_orderEntries, jsonGenerator, serializerProvider, obj);
            } else if (this._valueSerializer != null) {
                serializeFieldsUsing(_orderEntries, jsonGenerator, serializerProvider, this._valueSerializer);
            } else {
                serializeFields(_orderEntries, jsonGenerator, serializerProvider);
            }
        }
        typeSerializer.writeTypeSuffixForObject(_orderEntries, jsonGenerator);
    }

    public MapSerializer withContentInclusion(Object obj) {
        if (obj == this._suppressableValue) {
            return this;
        }
        _ensureOverride();
        return new MapSerializer(this, this._valueTypeSerializer, obj);
    }

    public MapSerializer withFilterId(Object obj) {
        if (this._filterId == obj) {
            return this;
        }
        _ensureOverride();
        return new MapSerializer(this, obj, this._sortKeys);
    }

    public MapSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, HashSet<String> hashSet, boolean z) {
        _ensureOverride();
        MapSerializer mapSerializer = new MapSerializer(this, beanProperty, jsonSerializer, jsonSerializer2, hashSet);
        return z != mapSerializer._sortKeys ? new MapSerializer(mapSerializer, this._filterId, z) : mapSerializer;
    }
}
