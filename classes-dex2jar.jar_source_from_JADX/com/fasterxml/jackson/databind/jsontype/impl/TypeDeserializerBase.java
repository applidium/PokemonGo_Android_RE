package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.std.NullifyingDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class TypeDeserializerBase extends TypeDeserializer implements Serializable {
    private static final long serialVersionUID = 1;
    protected final JavaType _baseType;
    protected final JavaType _defaultImpl;
    protected JsonDeserializer<Object> _defaultImplDeserializer;
    protected final Map<String, JsonDeserializer<Object>> _deserializers;
    protected final TypeIdResolver _idResolver;
    protected final BeanProperty _property;
    protected final boolean _typeIdVisible;
    protected final String _typePropertyName;

    protected TypeDeserializerBase(JavaType javaType, TypeIdResolver typeIdResolver, String str, boolean z, Class<?> cls) {
        this._baseType = javaType;
        this._idResolver = typeIdResolver;
        this._typePropertyName = str;
        this._typeIdVisible = z;
        this._deserializers = new ConcurrentHashMap(16, 0.75f, 4);
        if (cls == null) {
            this._defaultImpl = null;
        } else {
            this._defaultImpl = javaType.forcedNarrowBy(cls);
        }
        this._property = null;
    }

    protected TypeDeserializerBase(TypeDeserializerBase typeDeserializerBase, BeanProperty beanProperty) {
        this._baseType = typeDeserializerBase._baseType;
        this._idResolver = typeDeserializerBase._idResolver;
        this._typePropertyName = typeDeserializerBase._typePropertyName;
        this._typeIdVisible = typeDeserializerBase._typeIdVisible;
        this._deserializers = typeDeserializerBase._deserializers;
        this._defaultImpl = typeDeserializerBase._defaultImpl;
        this._defaultImplDeserializer = typeDeserializerBase._defaultImplDeserializer;
        this._property = beanProperty;
    }

    @Deprecated
    protected Object _deserializeWithNativeTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserializeWithNativeTypeId(jsonParser, deserializationContext, jsonParser.getTypeId());
    }

    protected Object _deserializeWithNativeTypeId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        JsonDeserializer _findDefaultImplDeserializer;
        if (obj == null) {
            _findDefaultImplDeserializer = _findDefaultImplDeserializer(deserializationContext);
            if (_findDefaultImplDeserializer == null) {
                throw deserializationContext.mappingException("No (native) type id found when one was expected for polymorphic type handling");
            }
        }
        _findDefaultImplDeserializer = _findDeserializer(deserializationContext, obj instanceof String ? (String) obj : String.valueOf(obj));
        return _findDefaultImplDeserializer.deserialize(jsonParser, deserializationContext);
    }

    protected final JsonDeserializer<Object> _findDefaultImplDeserializer(DeserializationContext deserializationContext) throws IOException {
        if (this._defaultImpl == null) {
            return !deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE) ? NullifyingDeserializer.instance : null;
        } else {
            if (ClassUtil.isBogusClass(this._defaultImpl.getRawClass())) {
                return NullifyingDeserializer.instance;
            }
            JsonDeserializer<Object> jsonDeserializer;
            synchronized (this._defaultImpl) {
                if (this._defaultImplDeserializer == null) {
                    this._defaultImplDeserializer = deserializationContext.findContextualValueDeserializer(this._defaultImpl, this._property);
                }
                jsonDeserializer = this._defaultImplDeserializer;
            }
            return jsonDeserializer;
        }
    }

    protected final JsonDeserializer<Object> _findDeserializer(DeserializationContext deserializationContext, String str) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = (JsonDeserializer) this._deserializers.get(str);
        if (jsonDeserializer == null) {
            JavaType typeFromId = this._idResolver.typeFromId(deserializationContext, str);
            if (typeFromId == null) {
                jsonDeserializer = _findDefaultImplDeserializer(deserializationContext);
                if (jsonDeserializer == null) {
                    jsonDeserializer = _handleUnknownTypeId(deserializationContext, str, this._idResolver, this._baseType);
                }
            } else {
                if (this._baseType != null && this._baseType.getClass() == typeFromId.getClass()) {
                    typeFromId = deserializationContext.getTypeFactory().constructSpecializedType(this._baseType, typeFromId.getRawClass());
                }
                jsonDeserializer = deserializationContext.findContextualValueDeserializer(typeFromId, this._property);
            }
            this._deserializers.put(str, jsonDeserializer);
        }
        return jsonDeserializer;
    }

    protected JsonDeserializer<Object> _handleUnknownTypeId(DeserializationContext deserializationContext, String str, TypeIdResolver typeIdResolver, JavaType javaType) throws IOException {
        String descForKnownTypeIds;
        if (typeIdResolver instanceof TypeIdResolverBase) {
            descForKnownTypeIds = ((TypeIdResolverBase) typeIdResolver).getDescForKnownTypeIds();
            descForKnownTypeIds = descForKnownTypeIds == null ? "known type ids are not statically known" : "known type ids = " + descForKnownTypeIds;
        } else {
            descForKnownTypeIds = null;
        }
        throw deserializationContext.unknownTypeException(this._baseType, str, descForKnownTypeIds);
    }

    public String baseTypeName() {
        return this._baseType.getRawClass().getName();
    }

    public abstract TypeDeserializer forProperty(BeanProperty beanProperty);

    public Class<?> getDefaultImpl() {
        return this._defaultImpl == null ? null : this._defaultImpl.getRawClass();
    }

    public final String getPropertyName() {
        return this._typePropertyName;
    }

    public TypeIdResolver getTypeIdResolver() {
        return this._idResolver;
    }

    public abstract As getTypeInclusion();

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append('[').append(getClass().getName());
        stringBuilder.append("; base-type:").append(this._baseType);
        stringBuilder.append("; id-resolver: ").append(this._idResolver);
        stringBuilder.append(']');
        return stringBuilder.toString();
    }
}
