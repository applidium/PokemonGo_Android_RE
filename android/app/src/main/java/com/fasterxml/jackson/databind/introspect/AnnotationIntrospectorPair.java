package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer.None;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AnnotationIntrospectorPair extends AnnotationIntrospector implements Serializable {
    private static final long serialVersionUID = 1;
    protected final AnnotationIntrospector _primary;
    protected final AnnotationIntrospector _secondary;

    public AnnotationIntrospectorPair(AnnotationIntrospector annotationIntrospector, AnnotationIntrospector annotationIntrospector2) {
        this._primary = annotationIntrospector;
        this._secondary = annotationIntrospector2;
    }

    public static AnnotationIntrospector create(AnnotationIntrospector annotationIntrospector, AnnotationIntrospector annotationIntrospector2) {
        return annotationIntrospector == null ? annotationIntrospector2 : annotationIntrospector2 != null ? new AnnotationIntrospectorPair(annotationIntrospector, annotationIntrospector2) : annotationIntrospector;
    }

    protected boolean _isExplicitClassOrOb(Object obj, Class<?> cls) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof Class) {
            Class<?> cls2 = (Class) obj;
            if (cls2 == cls || ClassUtil.isBogusClass(cls2)) {
                return false;
            }
        }
        return true;
    }

    public Collection<AnnotationIntrospector> allIntrospectors() {
        return allIntrospectors(new ArrayList());
    }

    public Collection<AnnotationIntrospector> allIntrospectors(Collection<AnnotationIntrospector> collection) {
        this._primary.allIntrospectors(collection);
        this._secondary.allIntrospectors(collection);
        return collection;
    }

    public void findAndAddVirtualProperties(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, List<BeanPropertyWriter> list) {
        this._primary.findAndAddVirtualProperties(mapperConfig, annotatedClass, list);
        this._secondary.findAndAddVirtualProperties(mapperConfig, annotatedClass, list);
    }

    public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass annotatedClass, VisibilityChecker<?> visibilityChecker) {
        return this._primary.findAutoDetectVisibility(annotatedClass, this._secondary.findAutoDetectVisibility(annotatedClass, visibilityChecker));
    }

    public Object findContentDeserializer(Annotated annotated) {
        Object findContentDeserializer = this._primary.findContentDeserializer(annotated);
        return _isExplicitClassOrOb(findContentDeserializer, None.class) ? findContentDeserializer : this._secondary.findContentDeserializer(annotated);
    }

    public Object findContentSerializer(Annotated annotated) {
        Object findContentSerializer = this._primary.findContentSerializer(annotated);
        return _isExplicitClassOrOb(findContentSerializer, JsonSerializer.None.class) ? findContentSerializer : this._secondary.findContentSerializer(annotated);
    }

    public Mode findCreatorBinding(Annotated annotated) {
        Mode findCreatorBinding = this._primary.findCreatorBinding(annotated);
        return findCreatorBinding != null ? findCreatorBinding : this._secondary.findCreatorBinding(annotated);
    }

    public Object findDeserializationContentConverter(AnnotatedMember annotatedMember) {
        Object findDeserializationContentConverter = this._primary.findDeserializationContentConverter(annotatedMember);
        return findDeserializationContentConverter == null ? this._secondary.findDeserializationContentConverter(annotatedMember) : findDeserializationContentConverter;
    }

    public Class<?> findDeserializationContentType(Annotated annotated, JavaType javaType) {
        Class<?> findDeserializationContentType = this._primary.findDeserializationContentType(annotated, javaType);
        return findDeserializationContentType == null ? this._secondary.findDeserializationContentType(annotated, javaType) : findDeserializationContentType;
    }

    public Object findDeserializationConverter(Annotated annotated) {
        Object findDeserializationConverter = this._primary.findDeserializationConverter(annotated);
        return findDeserializationConverter == null ? this._secondary.findDeserializationConverter(annotated) : findDeserializationConverter;
    }

    public Class<?> findDeserializationKeyType(Annotated annotated, JavaType javaType) {
        Class<?> findDeserializationKeyType = this._primary.findDeserializationKeyType(annotated, javaType);
        return findDeserializationKeyType == null ? this._secondary.findDeserializationKeyType(annotated, javaType) : findDeserializationKeyType;
    }

    public Class<?> findDeserializationType(Annotated annotated, JavaType javaType) {
        Class<?> findDeserializationType = this._primary.findDeserializationType(annotated, javaType);
        return findDeserializationType != null ? findDeserializationType : this._secondary.findDeserializationType(annotated, javaType);
    }

    public Object findDeserializer(Annotated annotated) {
        Object findDeserializer = this._primary.findDeserializer(annotated);
        return _isExplicitClassOrOb(findDeserializer, None.class) ? findDeserializer : this._secondary.findDeserializer(annotated);
    }

    public String findEnumValue(Enum<?> enumR) {
        String findEnumValue = this._primary.findEnumValue(enumR);
        return findEnumValue == null ? this._secondary.findEnumValue(enumR) : findEnumValue;
    }

    public Object findFilterId(Annotated annotated) {
        Object findFilterId = this._primary.findFilterId(annotated);
        return findFilterId == null ? this._secondary.findFilterId(annotated) : findFilterId;
    }

    @Deprecated
    public Object findFilterId(AnnotatedClass annotatedClass) {
        Object findFilterId = this._primary.findFilterId(annotatedClass);
        return findFilterId == null ? this._secondary.findFilterId(annotatedClass) : findFilterId;
    }

    public Value findFormat(Annotated annotated) {
        Value findFormat = this._primary.findFormat(annotated);
        return findFormat == null ? this._secondary.findFormat(annotated) : findFormat;
    }

    public Boolean findIgnoreUnknownProperties(AnnotatedClass annotatedClass) {
        Boolean findIgnoreUnknownProperties = this._primary.findIgnoreUnknownProperties(annotatedClass);
        return findIgnoreUnknownProperties == null ? this._secondary.findIgnoreUnknownProperties(annotatedClass) : findIgnoreUnknownProperties;
    }

    public String findImplicitPropertyName(AnnotatedMember annotatedMember) {
        String findImplicitPropertyName = this._primary.findImplicitPropertyName(annotatedMember);
        return findImplicitPropertyName == null ? this._secondary.findImplicitPropertyName(annotatedMember) : findImplicitPropertyName;
    }

    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        Object findInjectableValueId = this._primary.findInjectableValueId(annotatedMember);
        return findInjectableValueId == null ? this._secondary.findInjectableValueId(annotatedMember) : findInjectableValueId;
    }

    public Object findKeyDeserializer(Annotated annotated) {
        Object findKeyDeserializer = this._primary.findKeyDeserializer(annotated);
        return _isExplicitClassOrOb(findKeyDeserializer, KeyDeserializer.None.class) ? findKeyDeserializer : this._secondary.findKeyDeserializer(annotated);
    }

    public Object findKeySerializer(Annotated annotated) {
        Object findKeySerializer = this._primary.findKeySerializer(annotated);
        return _isExplicitClassOrOb(findKeySerializer, JsonSerializer.None.class) ? findKeySerializer : this._secondary.findKeySerializer(annotated);
    }

    public PropertyName findNameForDeserialization(Annotated annotated) {
        PropertyName findNameForDeserialization = this._primary.findNameForDeserialization(annotated);
        if (findNameForDeserialization == null) {
            return this._secondary.findNameForDeserialization(annotated);
        }
        if (findNameForDeserialization == PropertyName.USE_DEFAULT) {
            PropertyName findNameForDeserialization2 = this._secondary.findNameForDeserialization(annotated);
            if (findNameForDeserialization2 != null) {
                return findNameForDeserialization2;
            }
        }
        return findNameForDeserialization;
    }

    public PropertyName findNameForSerialization(Annotated annotated) {
        PropertyName findNameForSerialization = this._primary.findNameForSerialization(annotated);
        if (findNameForSerialization == null) {
            return this._secondary.findNameForSerialization(annotated);
        }
        if (findNameForSerialization == PropertyName.USE_DEFAULT) {
            PropertyName findNameForSerialization2 = this._secondary.findNameForSerialization(annotated);
            if (findNameForSerialization2 != null) {
                return findNameForSerialization2;
            }
        }
        return findNameForSerialization;
    }

    public Object findNamingStrategy(AnnotatedClass annotatedClass) {
        Object findNamingStrategy = this._primary.findNamingStrategy(annotatedClass);
        return findNamingStrategy == null ? this._secondary.findNamingStrategy(annotatedClass) : findNamingStrategy;
    }

    public Object findNullSerializer(Annotated annotated) {
        Object findNullSerializer = this._primary.findNullSerializer(annotated);
        return _isExplicitClassOrOb(findNullSerializer, JsonSerializer.None.class) ? findNullSerializer : this._secondary.findNullSerializer(annotated);
    }

    public ObjectIdInfo findObjectIdInfo(Annotated annotated) {
        ObjectIdInfo findObjectIdInfo = this._primary.findObjectIdInfo(annotated);
        return findObjectIdInfo == null ? this._secondary.findObjectIdInfo(annotated) : findObjectIdInfo;
    }

    public ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectIdInfo) {
        return this._primary.findObjectReferenceInfo(annotated, this._secondary.findObjectReferenceInfo(annotated, objectIdInfo));
    }

    public Class<?> findPOJOBuilder(AnnotatedClass annotatedClass) {
        Class<?> findPOJOBuilder = this._primary.findPOJOBuilder(annotatedClass);
        return findPOJOBuilder == null ? this._secondary.findPOJOBuilder(annotatedClass) : findPOJOBuilder;
    }

    public JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass annotatedClass) {
        JsonPOJOBuilder.Value findPOJOBuilderConfig = this._primary.findPOJOBuilderConfig(annotatedClass);
        return findPOJOBuilderConfig == null ? this._secondary.findPOJOBuilderConfig(annotatedClass) : findPOJOBuilderConfig;
    }

    @Deprecated
    public String[] findPropertiesToIgnore(Annotated annotated) {
        String[] findPropertiesToIgnore = this._primary.findPropertiesToIgnore(annotated);
        return findPropertiesToIgnore == null ? this._secondary.findPropertiesToIgnore(annotated) : findPropertiesToIgnore;
    }

    public String[] findPropertiesToIgnore(Annotated annotated, boolean z) {
        String[] findPropertiesToIgnore = this._primary.findPropertiesToIgnore(annotated, z);
        return findPropertiesToIgnore == null ? this._secondary.findPropertiesToIgnore(annotated, z) : findPropertiesToIgnore;
    }

    public Access findPropertyAccess(Annotated annotated) {
        Access findPropertyAccess = this._primary.findPropertyAccess(annotated);
        if (findPropertyAccess != null && findPropertyAccess != Access.AUTO) {
            return findPropertyAccess;
        }
        findPropertyAccess = this._secondary.findPropertyAccess(annotated);
        return findPropertyAccess == null ? Access.AUTO : findPropertyAccess;
    }

    public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        TypeResolverBuilder<?> findPropertyContentTypeResolver = this._primary.findPropertyContentTypeResolver(mapperConfig, annotatedMember, javaType);
        return findPropertyContentTypeResolver == null ? this._secondary.findPropertyContentTypeResolver(mapperConfig, annotatedMember, javaType) : findPropertyContentTypeResolver;
    }

    public String findPropertyDefaultValue(Annotated annotated) {
        String findPropertyDefaultValue = this._primary.findPropertyDefaultValue(annotated);
        return (findPropertyDefaultValue == null || findPropertyDefaultValue.isEmpty()) ? this._secondary.findPropertyDefaultValue(annotated) : findPropertyDefaultValue;
    }

    public String findPropertyDescription(Annotated annotated) {
        String findPropertyDescription = this._primary.findPropertyDescription(annotated);
        return findPropertyDescription == null ? this._secondary.findPropertyDescription(annotated) : findPropertyDescription;
    }

    public JsonInclude.Value findPropertyInclusion(Annotated annotated) {
        JsonInclude.Value findPropertyInclusion = this._secondary.findPropertyInclusion(annotated);
        JsonInclude.Value findPropertyInclusion2 = this._secondary.findPropertyInclusion(annotated);
        return findPropertyInclusion == null ? findPropertyInclusion2 : findPropertyInclusion.withOverrides(findPropertyInclusion2);
    }

    public Integer findPropertyIndex(Annotated annotated) {
        Integer findPropertyIndex = this._primary.findPropertyIndex(annotated);
        return findPropertyIndex == null ? this._secondary.findPropertyIndex(annotated) : findPropertyIndex;
    }

    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        TypeResolverBuilder<?> findPropertyTypeResolver = this._primary.findPropertyTypeResolver(mapperConfig, annotatedMember, javaType);
        return findPropertyTypeResolver == null ? this._secondary.findPropertyTypeResolver(mapperConfig, annotatedMember, javaType) : findPropertyTypeResolver;
    }

    public ReferenceProperty findReferenceType(AnnotatedMember annotatedMember) {
        ReferenceProperty findReferenceType = this._primary.findReferenceType(annotatedMember);
        return findReferenceType == null ? this._secondary.findReferenceType(annotatedMember) : findReferenceType;
    }

    public PropertyName findRootName(AnnotatedClass annotatedClass) {
        PropertyName findRootName = this._primary.findRootName(annotatedClass);
        if (findRootName == null) {
            return this._secondary.findRootName(annotatedClass);
        }
        if (!findRootName.hasSimpleName()) {
            PropertyName findRootName2 = this._secondary.findRootName(annotatedClass);
            if (findRootName2 != null) {
                return findRootName2;
            }
        }
        return findRootName;
    }

    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        Object findSerializationContentConverter = this._primary.findSerializationContentConverter(annotatedMember);
        return findSerializationContentConverter == null ? this._secondary.findSerializationContentConverter(annotatedMember) : findSerializationContentConverter;
    }

    public Class<?> findSerializationContentType(Annotated annotated, JavaType javaType) {
        Class<?> findSerializationContentType = this._primary.findSerializationContentType(annotated, javaType);
        return findSerializationContentType == null ? this._secondary.findSerializationContentType(annotated, javaType) : findSerializationContentType;
    }

    public Object findSerializationConverter(Annotated annotated) {
        Object findSerializationConverter = this._primary.findSerializationConverter(annotated);
        return findSerializationConverter == null ? this._secondary.findSerializationConverter(annotated) : findSerializationConverter;
    }

    public Include findSerializationInclusion(Annotated annotated, Include include) {
        return this._primary.findSerializationInclusion(annotated, this._secondary.findSerializationInclusion(annotated, include));
    }

    public Include findSerializationInclusionForContent(Annotated annotated, Include include) {
        return this._primary.findSerializationInclusion(annotated, this._secondary.findSerializationInclusion(annotated, include));
    }

    public Class<?> findSerializationKeyType(Annotated annotated, JavaType javaType) {
        Class<?> findSerializationKeyType = this._primary.findSerializationKeyType(annotated, javaType);
        return findSerializationKeyType == null ? this._secondary.findSerializationKeyType(annotated, javaType) : findSerializationKeyType;
    }

    public String[] findSerializationPropertyOrder(AnnotatedClass annotatedClass) {
        String[] findSerializationPropertyOrder = this._primary.findSerializationPropertyOrder(annotatedClass);
        return findSerializationPropertyOrder == null ? this._secondary.findSerializationPropertyOrder(annotatedClass) : findSerializationPropertyOrder;
    }

    public Boolean findSerializationSortAlphabetically(Annotated annotated) {
        Boolean findSerializationSortAlphabetically = this._primary.findSerializationSortAlphabetically(annotated);
        return findSerializationSortAlphabetically == null ? this._secondary.findSerializationSortAlphabetically(annotated) : findSerializationSortAlphabetically;
    }

    public Class<?> findSerializationType(Annotated annotated) {
        Class<?> findSerializationType = this._primary.findSerializationType(annotated);
        return findSerializationType == null ? this._secondary.findSerializationType(annotated) : findSerializationType;
    }

    public Typing findSerializationTyping(Annotated annotated) {
        Typing findSerializationTyping = this._primary.findSerializationTyping(annotated);
        return findSerializationTyping == null ? this._secondary.findSerializationTyping(annotated) : findSerializationTyping;
    }

    public Object findSerializer(Annotated annotated) {
        Object findSerializer = this._primary.findSerializer(annotated);
        return _isExplicitClassOrOb(findSerializer, JsonSerializer.None.class) ? findSerializer : this._secondary.findSerializer(annotated);
    }

    public List<NamedType> findSubtypes(Annotated annotated) {
        Collection findSubtypes = this._primary.findSubtypes(annotated);
        Collection findSubtypes2 = this._secondary.findSubtypes(annotated);
        if (findSubtypes == null || findSubtypes.isEmpty()) {
            return findSubtypes2;
        }
        if (findSubtypes2 == null || findSubtypes2.isEmpty()) {
            return findSubtypes;
        }
        List arrayList = new ArrayList(findSubtypes.size() + findSubtypes2.size());
        arrayList.addAll(findSubtypes);
        arrayList.addAll(findSubtypes2);
        return arrayList;
    }

    public String findTypeName(AnnotatedClass annotatedClass) {
        String findTypeName = this._primary.findTypeName(annotatedClass);
        return (findTypeName == null || findTypeName.length() == 0) ? this._secondary.findTypeName(annotatedClass) : findTypeName;
    }

    public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType) {
        TypeResolverBuilder<?> findTypeResolver = this._primary.findTypeResolver(mapperConfig, annotatedClass, javaType);
        return findTypeResolver == null ? this._secondary.findTypeResolver(mapperConfig, annotatedClass, javaType) : findTypeResolver;
    }

    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        NameTransformer findUnwrappingNameTransformer = this._primary.findUnwrappingNameTransformer(annotatedMember);
        return findUnwrappingNameTransformer == null ? this._secondary.findUnwrappingNameTransformer(annotatedMember) : findUnwrappingNameTransformer;
    }

    public Object findValueInstantiator(AnnotatedClass annotatedClass) {
        Object findValueInstantiator = this._primary.findValueInstantiator(annotatedClass);
        return findValueInstantiator == null ? this._secondary.findValueInstantiator(annotatedClass) : findValueInstantiator;
    }

    public Class<?>[] findViews(Annotated annotated) {
        Class<?>[] findViews = this._primary.findViews(annotated);
        return findViews == null ? this._secondary.findViews(annotated) : findViews;
    }

    public PropertyName findWrapperName(Annotated annotated) {
        PropertyName findWrapperName = this._primary.findWrapperName(annotated);
        if (findWrapperName == null) {
            return this._secondary.findWrapperName(annotated);
        }
        if (findWrapperName == PropertyName.USE_DEFAULT) {
            PropertyName findWrapperName2 = this._secondary.findWrapperName(annotated);
            if (findWrapperName2 != null) {
                return findWrapperName2;
            }
        }
        return findWrapperName;
    }

    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return this._primary.hasAnyGetterAnnotation(annotatedMethod) || this._secondary.hasAnyGetterAnnotation(annotatedMethod);
    }

    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedMethod) {
        return this._primary.hasAnySetterAnnotation(annotatedMethod) || this._secondary.hasAnySetterAnnotation(annotatedMethod);
    }

    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        return this._primary.hasAsValueAnnotation(annotatedMethod) || this._secondary.hasAsValueAnnotation(annotatedMethod);
    }

    public boolean hasCreatorAnnotation(Annotated annotated) {
        return this._primary.hasCreatorAnnotation(annotated) || this._secondary.hasCreatorAnnotation(annotated);
    }

    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return this._primary.hasIgnoreMarker(annotatedMember) || this._secondary.hasIgnoreMarker(annotatedMember);
    }

    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        Boolean hasRequiredMarker = this._primary.hasRequiredMarker(annotatedMember);
        return hasRequiredMarker == null ? this._secondary.hasRequiredMarker(annotatedMember) : hasRequiredMarker;
    }

    public boolean isAnnotationBundle(Annotation annotation) {
        return this._primary.isAnnotationBundle(annotation) || this._secondary.isAnnotationBundle(annotation);
    }

    public Boolean isIgnorableType(AnnotatedClass annotatedClass) {
        Boolean isIgnorableType = this._primary.isIgnorableType(annotatedClass);
        return isIgnorableType == null ? this._secondary.isIgnorableType(annotatedClass) : isIgnorableType;
    }

    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        Boolean isTypeId = this._primary.isTypeId(annotatedMember);
        return isTypeId == null ? this._secondary.isTypeId(annotatedMember) : isTypeId;
    }

    public Version version() {
        return this._primary.version();
    }
}
