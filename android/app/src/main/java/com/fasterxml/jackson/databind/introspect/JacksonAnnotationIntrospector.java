package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JacksonAnnotationsInside;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreType;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import com.fasterxml.jackson.annotation.JsonPropertyDescription;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonRawValue;
import com.fasterxml.jackson.annotation.JsonRootName;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.annotation.JsonTypeId;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.fasterxml.jackson.annotation.JsonTypeInfo.None;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonUnwrapped;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonAppend;
import com.fasterxml.jackson.databind.annotation.JsonAppend.Attr;
import com.fasterxml.jackson.databind.annotation.JsonAppend.Prop;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing;
import com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver;
import com.fasterxml.jackson.databind.annotation.JsonTypeResolver;
import com.fasterxml.jackson.databind.annotation.JsonValueInstantiator;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.AttributePropertyWriter;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import spacemadness.com.lunarconsole.BuildConfig;
import spacemadness.com.lunarconsole.C1401R;

public class JacksonAnnotationIntrospector extends AnnotationIntrospector implements Serializable {
    private static final long serialVersionUID = 1;

    /* renamed from: com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector.1 */
    static /* synthetic */ class C01441 {
        static final /* synthetic */ int[] f30xfdbfedae;

        static {
            f30xfdbfedae = new int[Inclusion.values().length];
            try {
                f30xfdbfedae[Inclusion.ALWAYS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30xfdbfedae[Inclusion.NON_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30xfdbfedae[Inclusion.NON_DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30xfdbfedae[Inclusion.NON_EMPTY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30xfdbfedae[Inclusion.DEFAULT_INCLUSION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private final Boolean _findSortAlpha(Annotated annotated) {
        JsonPropertyOrder jsonPropertyOrder = (JsonPropertyOrder) _findAnnotation(annotated, JsonPropertyOrder.class);
        return (jsonPropertyOrder == null || !jsonPropertyOrder.alphabetic()) ? null : Boolean.TRUE;
    }

    protected Class<?> _classIfExplicit(Class<?> cls) {
        return (cls == null || ClassUtil.isBogusClass(cls)) ? null : cls;
    }

    protected Class<?> _classIfExplicit(Class<?> cls, Class<?> cls2) {
        Class<?> _classIfExplicit = _classIfExplicit(cls);
        return (_classIfExplicit == null || _classIfExplicit == cls2) ? null : _classIfExplicit;
    }

    protected StdTypeResolverBuilder _constructNoTypeResolverBuilder() {
        return StdTypeResolverBuilder.noTypeInfoBuilder();
    }

    protected StdTypeResolverBuilder _constructStdTypeResolverBuilder() {
        return new StdTypeResolverBuilder();
    }

    protected BeanPropertyWriter _constructVirtualProperty(Attr attr, MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType) {
        PropertyMetadata propertyMetadata = attr.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        String value = attr.value();
        PropertyName _propertyName = _propertyName(attr.propName(), attr.propNamespace());
        if (!_propertyName.hasSimpleName()) {
            _propertyName = PropertyName.construct(value);
        }
        return AttributePropertyWriter.construct(value, SimpleBeanPropertyDefinition.construct(mapperConfig, new VirtualAnnotatedMember(annotatedClass, annotatedClass.getRawType(), value, javaType.getRawClass()), _propertyName, propertyMetadata, attr.include()), annotatedClass.getAnnotations(), javaType);
    }

    protected BeanPropertyWriter _constructVirtualProperty(Prop prop, MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
        PropertyMetadata propertyMetadata = prop.required() ? PropertyMetadata.STD_REQUIRED : PropertyMetadata.STD_OPTIONAL;
        PropertyName _propertyName = _propertyName(prop.name(), prop.namespace());
        JavaType constructType = mapperConfig.constructType(prop.type());
        BeanPropertyDefinition construct = SimpleBeanPropertyDefinition.construct(mapperConfig, new VirtualAnnotatedMember(annotatedClass, annotatedClass.getRawType(), _propertyName.getSimpleName(), constructType.getRawClass()), _propertyName, propertyMetadata, prop.include());
        Class value = prop.value();
        HandlerInstantiator handlerInstantiator = mapperConfig.getHandlerInstantiator();
        VirtualBeanPropertyWriter virtualPropertyWriterInstance = handlerInstantiator == null ? null : handlerInstantiator.virtualPropertyWriterInstance(mapperConfig, value);
        if (virtualPropertyWriterInstance == null) {
            virtualPropertyWriterInstance = (VirtualBeanPropertyWriter) ClassUtil.createInstance(value, mapperConfig.canOverrideAccessModifiers());
        }
        return virtualPropertyWriterInstance.withConfig(mapperConfig, annotatedClass, construct, constructType);
    }

    protected final Object _findFilterId(Annotated annotated) {
        JsonFilter jsonFilter = (JsonFilter) _findAnnotation(annotated, JsonFilter.class);
        if (jsonFilter != null) {
            String value = jsonFilter.value();
            if (value.length() > 0) {
                return value;
            }
        }
        return null;
    }

    protected TypeResolverBuilder<?> _findTypeResolver(MapperConfig<?> mapperConfig, Annotated annotated, JavaType javaType) {
        TypeResolverBuilder typeResolverBuilderInstance;
        TypeIdResolver typeIdResolver = null;
        JsonTypeInfo jsonTypeInfo = (JsonTypeInfo) _findAnnotation(annotated, JsonTypeInfo.class);
        JsonTypeResolver jsonTypeResolver = (JsonTypeResolver) _findAnnotation(annotated, JsonTypeResolver.class);
        if (jsonTypeResolver != null) {
            if (jsonTypeInfo == null) {
                return null;
            }
            typeResolverBuilderInstance = mapperConfig.typeResolverBuilderInstance(annotated, jsonTypeResolver.value());
        } else if (jsonTypeInfo == null) {
            return null;
        } else {
            if (jsonTypeInfo.use() == Id.NONE) {
                return _constructNoTypeResolverBuilder();
            }
            Object _constructStdTypeResolverBuilder = _constructStdTypeResolverBuilder();
        }
        JsonTypeIdResolver jsonTypeIdResolver = (JsonTypeIdResolver) _findAnnotation(annotated, JsonTypeIdResolver.class);
        if (jsonTypeIdResolver != null) {
            typeIdResolver = mapperConfig.typeIdResolverInstance(annotated, jsonTypeIdResolver.value());
        }
        if (typeIdResolver != null) {
            typeIdResolver.init(javaType);
        }
        TypeResolverBuilder init = typeResolverBuilderInstance.init(jsonTypeInfo.use(), typeIdResolver);
        As include = jsonTypeInfo.include();
        if (include == As.EXTERNAL_PROPERTY && (annotated instanceof AnnotatedClass)) {
            include = As.PROPERTY;
        }
        TypeResolverBuilder typeProperty = init.inclusion(include).typeProperty(jsonTypeInfo.property());
        Class defaultImpl = jsonTypeInfo.defaultImpl();
        if (!(defaultImpl == None.class || defaultImpl.isAnnotation())) {
            typeProperty = typeProperty.defaultImpl(defaultImpl);
        }
        return typeProperty.typeIdVisibility(jsonTypeInfo.visible());
    }

    protected boolean _isIgnorable(Annotated annotated) {
        JsonIgnore jsonIgnore = (JsonIgnore) _findAnnotation(annotated, JsonIgnore.class);
        return jsonIgnore != null && jsonIgnore.value();
    }

    protected PropertyName _propertyName(String str, String str2) {
        return str.isEmpty() ? PropertyName.USE_DEFAULT : (str2 == null || str2.isEmpty()) ? PropertyName.construct(str) : PropertyName.construct(str, str2);
    }

    public void findAndAddVirtualProperties(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, List<BeanPropertyWriter> list) {
        JsonAppend jsonAppend = (JsonAppend) _findAnnotation(annotatedClass, JsonAppend.class);
        if (jsonAppend != null) {
            int i;
            boolean prepend = jsonAppend.prepend();
            JavaType javaType = null;
            Attr[] attrs = jsonAppend.attrs();
            int length = attrs.length;
            for (i = 0; i < length; i++) {
                if (javaType == null) {
                    javaType = mapperConfig.constructType(Object.class);
                }
                BeanPropertyWriter _constructVirtualProperty = _constructVirtualProperty(attrs[i], mapperConfig, annotatedClass, javaType);
                if (prepend) {
                    list.add(i, _constructVirtualProperty);
                } else {
                    list.add(_constructVirtualProperty);
                }
            }
            Prop[] props = jsonAppend.props();
            i = props.length;
            for (int i2 = 0; i2 < i; i2++) {
                BeanPropertyWriter _constructVirtualProperty2 = _constructVirtualProperty(props[i2], mapperConfig, annotatedClass);
                if (prepend) {
                    list.add(i2, _constructVirtualProperty2);
                } else {
                    list.add(_constructVirtualProperty2);
                }
            }
        }
    }

    public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass annotatedClass, VisibilityChecker<?> visibilityChecker) {
        JsonAutoDetect jsonAutoDetect = (JsonAutoDetect) _findAnnotation(annotatedClass, JsonAutoDetect.class);
        return jsonAutoDetect == null ? visibilityChecker : visibilityChecker.with(jsonAutoDetect);
    }

    public Object findContentDeserializer(Annotated annotated) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        if (jsonDeserialize != null) {
            Class contentUsing = jsonDeserialize.contentUsing();
            if (contentUsing != JsonDeserializer.None.class) {
                return contentUsing;
            }
        }
        return null;
    }

    public Object findContentSerializer(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize != null) {
            Class contentUsing = jsonSerialize.contentUsing();
            if (contentUsing != JsonSerializer.None.class) {
                return contentUsing;
            }
        }
        return null;
    }

    public Mode findCreatorBinding(Annotated annotated) {
        JsonCreator jsonCreator = (JsonCreator) _findAnnotation(annotated, JsonCreator.class);
        return jsonCreator == null ? null : jsonCreator.mode();
    }

    public Object findDeserializationContentConverter(AnnotatedMember annotatedMember) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotatedMember, JsonDeserialize.class);
        return jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.contentConverter(), Converter.None.class);
    }

    public Class<?> findDeserializationContentType(Annotated annotated, JavaType javaType) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        return jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.contentAs());
    }

    public Object findDeserializationConverter(Annotated annotated) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        return jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.converter(), Converter.None.class);
    }

    public Class<?> findDeserializationKeyType(Annotated annotated, JavaType javaType) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        return jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.keyAs());
    }

    public Class<?> findDeserializationType(Annotated annotated, JavaType javaType) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        return jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.as());
    }

    public Object findDeserializer(Annotated annotated) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        if (jsonDeserialize != null) {
            Class using = jsonDeserialize.using();
            if (using != JsonDeserializer.None.class) {
                return using;
            }
        }
        return null;
    }

    public String findEnumValue(Enum<?> enumR) {
        try {
            Field field = enumR.getClass().getField(enumR.name());
            if (field != null) {
                JsonProperty jsonProperty = (JsonProperty) field.getAnnotation(JsonProperty.class);
                if (jsonProperty != null) {
                    String value = jsonProperty.value();
                    if (!(value == null || value.isEmpty())) {
                        return value;
                    }
                }
            }
        } catch (SecurityException e) {
        } catch (NoSuchFieldException e2) {
        }
        return enumR.name();
    }

    public Object findFilterId(Annotated annotated) {
        return _findFilterId(annotated);
    }

    @Deprecated
    public Object findFilterId(AnnotatedClass annotatedClass) {
        return _findFilterId(annotatedClass);
    }

    public Value findFormat(Annotated annotated) {
        JsonFormat jsonFormat = (JsonFormat) _findAnnotation(annotated, JsonFormat.class);
        return jsonFormat == null ? null : new Value(jsonFormat);
    }

    public Boolean findIgnoreUnknownProperties(AnnotatedClass annotatedClass) {
        JsonIgnoreProperties jsonIgnoreProperties = (JsonIgnoreProperties) _findAnnotation(annotatedClass, JsonIgnoreProperties.class);
        return jsonIgnoreProperties == null ? null : Boolean.valueOf(jsonIgnoreProperties.ignoreUnknown());
    }

    public String findImplicitPropertyName(AnnotatedMember annotatedMember) {
        return null;
    }

    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        JacksonInject jacksonInject = (JacksonInject) _findAnnotation(annotatedMember, JacksonInject.class);
        if (jacksonInject == null) {
            return null;
        }
        String value = jacksonInject.value();
        if (value.length() != 0) {
            return value;
        }
        if (!(annotatedMember instanceof AnnotatedMethod)) {
            return annotatedMember.getRawType().getName();
        }
        AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
        return annotatedMethod.getParameterCount() == 0 ? annotatedMember.getRawType().getName() : annotatedMethod.getRawParameterType(0).getName();
    }

    public Object findKeyDeserializer(Annotated annotated) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotated, JsonDeserialize.class);
        if (jsonDeserialize != null) {
            Class keyUsing = jsonDeserialize.keyUsing();
            if (keyUsing != KeyDeserializer.None.class) {
                return keyUsing;
            }
        }
        return null;
    }

    public Object findKeySerializer(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize != null) {
            Class keyUsing = jsonSerialize.keyUsing();
            if (keyUsing != JsonSerializer.None.class) {
                return keyUsing;
            }
        }
        return null;
    }

    public PropertyName findNameForDeserialization(Annotated annotated) {
        String value;
        JsonSetter jsonSetter = (JsonSetter) _findAnnotation(annotated, JsonSetter.class);
        if (jsonSetter != null) {
            value = jsonSetter.value();
        } else {
            JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
            if (jsonProperty != null) {
                value = jsonProperty.value();
            } else if (!_hasAnnotation(annotated, JsonDeserialize.class) && !_hasAnnotation(annotated, JsonView.class) && !_hasAnnotation(annotated, JsonUnwrapped.class) && !_hasAnnotation(annotated, JsonBackReference.class) && !_hasAnnotation(annotated, JsonManagedReference.class)) {
                return null;
            } else {
                value = BuildConfig.FLAVOR;
            }
        }
        return PropertyName.construct(value);
    }

    public PropertyName findNameForSerialization(Annotated annotated) {
        String value;
        JsonGetter jsonGetter = (JsonGetter) _findAnnotation(annotated, JsonGetter.class);
        if (jsonGetter != null) {
            value = jsonGetter.value();
        } else {
            JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
            if (jsonProperty != null) {
                value = jsonProperty.value();
            } else if (!_hasAnnotation(annotated, JsonSerialize.class) && !_hasAnnotation(annotated, JsonView.class) && !_hasAnnotation(annotated, JsonRawValue.class)) {
                return null;
            } else {
                value = BuildConfig.FLAVOR;
            }
        }
        return PropertyName.construct(value);
    }

    public Object findNamingStrategy(AnnotatedClass annotatedClass) {
        JsonNaming jsonNaming = (JsonNaming) _findAnnotation(annotatedClass, JsonNaming.class);
        return jsonNaming == null ? null : jsonNaming.value();
    }

    public Object findNullSerializer(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize != null) {
            Class nullsUsing = jsonSerialize.nullsUsing();
            if (nullsUsing != JsonSerializer.None.class) {
                return nullsUsing;
            }
        }
        return null;
    }

    public ObjectIdInfo findObjectIdInfo(Annotated annotated) {
        JsonIdentityInfo jsonIdentityInfo = (JsonIdentityInfo) _findAnnotation(annotated, JsonIdentityInfo.class);
        return (jsonIdentityInfo == null || jsonIdentityInfo.generator() == ObjectIdGenerators.None.class) ? null : new ObjectIdInfo(PropertyName.construct(jsonIdentityInfo.property()), jsonIdentityInfo.scope(), jsonIdentityInfo.generator(), jsonIdentityInfo.resolver());
    }

    public ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectIdInfo) {
        JsonIdentityReference jsonIdentityReference = (JsonIdentityReference) _findAnnotation(annotated, JsonIdentityReference.class);
        return jsonIdentityReference != null ? objectIdInfo.withAlwaysAsId(jsonIdentityReference.alwaysAsId()) : objectIdInfo;
    }

    public Class<?> findPOJOBuilder(AnnotatedClass annotatedClass) {
        JsonDeserialize jsonDeserialize = (JsonDeserialize) _findAnnotation(annotatedClass, JsonDeserialize.class);
        return jsonDeserialize == null ? null : _classIfExplicit(jsonDeserialize.builder());
    }

    public JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass annotatedClass) {
        JsonPOJOBuilder jsonPOJOBuilder = (JsonPOJOBuilder) _findAnnotation(annotatedClass, JsonPOJOBuilder.class);
        return jsonPOJOBuilder == null ? null : new JsonPOJOBuilder.Value(jsonPOJOBuilder);
    }

    @Deprecated
    public String[] findPropertiesToIgnore(Annotated annotated) {
        JsonIgnoreProperties jsonIgnoreProperties = (JsonIgnoreProperties) _findAnnotation(annotated, JsonIgnoreProperties.class);
        return jsonIgnoreProperties == null ? null : jsonIgnoreProperties.value();
    }

    public String[] findPropertiesToIgnore(Annotated annotated, boolean z) {
        JsonIgnoreProperties jsonIgnoreProperties = (JsonIgnoreProperties) _findAnnotation(annotated, JsonIgnoreProperties.class);
        if (jsonIgnoreProperties == null) {
            return null;
        }
        if (z) {
            if (jsonIgnoreProperties.allowGetters()) {
                return null;
            }
        } else if (jsonIgnoreProperties.allowSetters()) {
            return null;
        }
        return jsonIgnoreProperties.value();
    }

    public Access findPropertyAccess(Annotated annotated) {
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        return jsonProperty != null ? jsonProperty.access() : null;
    }

    public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        if (javaType.isContainerType()) {
            return _findTypeResolver(mapperConfig, annotatedMember, javaType);
        }
        throw new IllegalArgumentException("Must call method with a container type (got " + javaType + ")");
    }

    public String findPropertyDefaultValue(Annotated annotated) {
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        if (jsonProperty == null) {
            return null;
        }
        String defaultValue = jsonProperty.defaultValue();
        if (defaultValue.isEmpty()) {
            defaultValue = null;
        }
        return defaultValue;
    }

    public String findPropertyDescription(Annotated annotated) {
        JsonPropertyDescription jsonPropertyDescription = (JsonPropertyDescription) _findAnnotation(annotated, JsonPropertyDescription.class);
        return jsonPropertyDescription == null ? null : jsonPropertyDescription.value();
    }

    public JsonInclude.Value findPropertyInclusion(Annotated annotated) {
        JsonInclude jsonInclude = (JsonInclude) _findAnnotation(annotated, JsonInclude.class);
        Include value = jsonInclude == null ? Include.USE_DEFAULTS : jsonInclude.value();
        if (value == Include.USE_DEFAULTS) {
            JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
            if (jsonSerialize != null) {
                switch (C01441.f30xfdbfedae[jsonSerialize.include().ordinal()]) {
                    case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                        value = Include.ALWAYS;
                        break;
                    case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                        value = Include.NON_NULL;
                        break;
                    case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                        value = Include.NON_DEFAULT;
                        break;
                    case Place.TYPE_AQUARIUM /*4*/:
                        value = Include.NON_EMPTY;
                        break;
                }
            }
        }
        return JsonInclude.Value.construct(value, jsonInclude == null ? Include.USE_DEFAULTS : jsonInclude.content());
    }

    public Integer findPropertyIndex(Annotated annotated) {
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotated, JsonProperty.class);
        if (jsonProperty != null) {
            int index = jsonProperty.index();
            if (index != -1) {
                return Integer.valueOf(index);
            }
        }
        return null;
    }

    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        return javaType.isContainerType() ? null : _findTypeResolver(mapperConfig, annotatedMember, javaType);
    }

    public ReferenceProperty findReferenceType(AnnotatedMember annotatedMember) {
        JsonManagedReference jsonManagedReference = (JsonManagedReference) _findAnnotation(annotatedMember, JsonManagedReference.class);
        if (jsonManagedReference != null) {
            return ReferenceProperty.managed(jsonManagedReference.value());
        }
        JsonBackReference jsonBackReference = (JsonBackReference) _findAnnotation(annotatedMember, JsonBackReference.class);
        return jsonBackReference != null ? ReferenceProperty.back(jsonBackReference.value()) : null;
    }

    public PropertyName findRootName(AnnotatedClass annotatedClass) {
        String str = null;
        JsonRootName jsonRootName = (JsonRootName) _findAnnotation(annotatedClass, JsonRootName.class);
        if (jsonRootName == null) {
            return null;
        }
        String namespace = jsonRootName.namespace();
        if (namespace == null || namespace.length() != 0) {
            str = namespace;
        }
        return PropertyName.construct(jsonRootName.value(), str);
    }

    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotatedMember, JsonSerialize.class);
        return jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.contentConverter(), Converter.None.class);
    }

    public Class<?> findSerializationContentType(Annotated annotated, JavaType javaType) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        return jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.contentAs());
    }

    public Object findSerializationConverter(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        return jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.converter(), Converter.None.class);
    }

    public Include findSerializationInclusion(Annotated annotated, Include include) {
        JsonInclude jsonInclude = (JsonInclude) _findAnnotation(annotated, JsonInclude.class);
        if (jsonInclude != null) {
            Include value = jsonInclude.value();
            if (value != Include.USE_DEFAULTS) {
                return value;
            }
        }
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize == null) {
            return include;
        }
        switch (C01441.f30xfdbfedae[jsonSerialize.include().ordinal()]) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return Include.ALWAYS;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return Include.NON_NULL;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return Include.NON_DEFAULT;
            case Place.TYPE_AQUARIUM /*4*/:
                return Include.NON_EMPTY;
            default:
                return include;
        }
    }

    public Include findSerializationInclusionForContent(Annotated annotated, Include include) {
        JsonInclude jsonInclude = (JsonInclude) _findAnnotation(annotated, JsonInclude.class);
        if (jsonInclude == null) {
            return include;
        }
        Include content = jsonInclude.content();
        return content != Include.USE_DEFAULTS ? content : include;
    }

    public Class<?> findSerializationKeyType(Annotated annotated, JavaType javaType) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        return jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.keyAs());
    }

    public String[] findSerializationPropertyOrder(AnnotatedClass annotatedClass) {
        JsonPropertyOrder jsonPropertyOrder = (JsonPropertyOrder) _findAnnotation(annotatedClass, JsonPropertyOrder.class);
        return jsonPropertyOrder == null ? null : jsonPropertyOrder.value();
    }

    public Boolean findSerializationSortAlphabetically(Annotated annotated) {
        return _findSortAlpha(annotated);
    }

    public Class<?> findSerializationType(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        return jsonSerialize == null ? null : _classIfExplicit(jsonSerialize.as());
    }

    public Typing findSerializationTyping(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        return jsonSerialize == null ? null : jsonSerialize.typing();
    }

    public Object findSerializer(Annotated annotated) {
        JsonSerialize jsonSerialize = (JsonSerialize) _findAnnotation(annotated, JsonSerialize.class);
        if (jsonSerialize != null) {
            Class using = jsonSerialize.using();
            if (using != JsonSerializer.None.class) {
                return using;
            }
        }
        JsonRawValue jsonRawValue = (JsonRawValue) _findAnnotation(annotated, JsonRawValue.class);
        return (jsonRawValue == null || !jsonRawValue.value()) ? null : new RawSerializer(annotated.getRawType());
    }

    public List<NamedType> findSubtypes(Annotated annotated) {
        JsonSubTypes jsonSubTypes = (JsonSubTypes) _findAnnotation(annotated, JsonSubTypes.class);
        if (jsonSubTypes == null) {
            return null;
        }
        Type[] value = jsonSubTypes.value();
        List arrayList = new ArrayList(value.length);
        for (Type type : value) {
            arrayList.add(new NamedType(type.value(), type.name()));
        }
        return arrayList;
    }

    public String findTypeName(AnnotatedClass annotatedClass) {
        JsonTypeName jsonTypeName = (JsonTypeName) _findAnnotation(annotatedClass, JsonTypeName.class);
        return jsonTypeName == null ? null : jsonTypeName.value();
    }

    public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType) {
        return _findTypeResolver(mapperConfig, annotatedClass, javaType);
    }

    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        JsonUnwrapped jsonUnwrapped = (JsonUnwrapped) _findAnnotation(annotatedMember, JsonUnwrapped.class);
        return (jsonUnwrapped == null || !jsonUnwrapped.enabled()) ? null : NameTransformer.simpleTransformer(jsonUnwrapped.prefix(), jsonUnwrapped.suffix());
    }

    public Object findValueInstantiator(AnnotatedClass annotatedClass) {
        JsonValueInstantiator jsonValueInstantiator = (JsonValueInstantiator) _findAnnotation(annotatedClass, JsonValueInstantiator.class);
        return jsonValueInstantiator == null ? null : jsonValueInstantiator.value();
    }

    public Class<?>[] findViews(Annotated annotated) {
        JsonView jsonView = (JsonView) _findAnnotation(annotated, JsonView.class);
        return jsonView == null ? null : jsonView.value();
    }

    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return _hasAnnotation(annotatedMethod, JsonAnyGetter.class);
    }

    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedMethod) {
        return _hasAnnotation(annotatedMethod, JsonAnySetter.class);
    }

    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        JsonValue jsonValue = (JsonValue) _findAnnotation(annotatedMethod, JsonValue.class);
        return jsonValue != null && jsonValue.value();
    }

    public boolean hasCreatorAnnotation(Annotated annotated) {
        JsonCreator jsonCreator = (JsonCreator) _findAnnotation(annotated, JsonCreator.class);
        return (jsonCreator == null || jsonCreator.mode() == Mode.DISABLED) ? false : true;
    }

    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return _isIgnorable(annotatedMember);
    }

    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        JsonProperty jsonProperty = (JsonProperty) _findAnnotation(annotatedMember, JsonProperty.class);
        return jsonProperty != null ? Boolean.valueOf(jsonProperty.required()) : null;
    }

    public boolean isAnnotationBundle(Annotation annotation) {
        return annotation.annotationType().getAnnotation(JacksonAnnotationsInside.class) != null;
    }

    public Boolean isIgnorableType(AnnotatedClass annotatedClass) {
        JsonIgnoreType jsonIgnoreType = (JsonIgnoreType) _findAnnotation(annotatedClass, JsonIgnoreType.class);
        return jsonIgnoreType == null ? null : Boolean.valueOf(jsonIgnoreType.value());
    }

    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        return Boolean.valueOf(_hasAnnotation(annotatedMember, JsonTypeId.class));
    }

    public Version version() {
        return PackageVersion.VERSION;
    }
}
