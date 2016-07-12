package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.Converter.None;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BasicBeanDescription extends BeanDescription {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected TypeBindings _bindings;
    protected final AnnotatedClass _classInfo;
    protected final MapperConfig<?> _config;
    protected ObjectIdInfo _objectIdInfo;
    protected final POJOPropertiesCollector _propCollector;
    protected List<BeanPropertyDefinition> _properties;

    protected BasicBeanDescription(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass, List<BeanPropertyDefinition> list) {
        AnnotationIntrospector annotationIntrospector = null;
        super(javaType);
        this._propCollector = null;
        this._config = mapperConfig;
        if (this._config != null) {
            annotationIntrospector = this._config.getAnnotationIntrospector();
        }
        this._annotationIntrospector = annotationIntrospector;
        this._classInfo = annotatedClass;
        this._properties = list;
    }

    protected BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector) {
        this(pOJOPropertiesCollector, pOJOPropertiesCollector.getType(), pOJOPropertiesCollector.getClassDef());
        this._objectIdInfo = pOJOPropertiesCollector.getObjectIdInfo();
    }

    protected BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector, JavaType javaType, AnnotatedClass annotatedClass) {
        super(javaType);
        this._propCollector = pOJOPropertiesCollector;
        this._config = pOJOPropertiesCollector.getConfig();
        this._annotationIntrospector = this._config == null ? null : this._config.getAnnotationIntrospector();
        this._classInfo = annotatedClass;
    }

    public static BasicBeanDescription forDeserialization(POJOPropertiesCollector pOJOPropertiesCollector) {
        return new BasicBeanDescription(pOJOPropertiesCollector);
    }

    public static BasicBeanDescription forOtherUse(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass) {
        return new BasicBeanDescription(mapperConfig, javaType, annotatedClass, Collections.emptyList());
    }

    public static BasicBeanDescription forSerialization(POJOPropertiesCollector pOJOPropertiesCollector) {
        return new BasicBeanDescription(pOJOPropertiesCollector);
    }

    public Converter<Object, Object> _createConverter(Object obj) {
        Converter<Object, Object> converter = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Converter) {
            return (Converter) obj;
        }
        if (obj instanceof Class) {
            Class cls = (Class) obj;
            if (cls == None.class || ClassUtil.isBogusClass(cls)) {
                return null;
            }
            if (Converter.class.isAssignableFrom(cls)) {
                HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                if (handlerInstantiator != null) {
                    converter = handlerInstantiator.converterInstance(this._config, this._classInfo, cls);
                }
                return converter == null ? (Converter) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers()) : converter;
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<Converter>");
            }
        }
        throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type " + obj.getClass().getName() + "; expected type Converter or Class<Converter> instead");
    }

    protected PropertyName _findCreatorPropertyName(AnnotatedParameter annotatedParameter) {
        PropertyName findNameForDeserialization = this._annotationIntrospector.findNameForDeserialization(annotatedParameter);
        if (findNameForDeserialization != null && !findNameForDeserialization.isEmpty()) {
            return findNameForDeserialization;
        }
        String findImplicitPropertyName = this._annotationIntrospector.findImplicitPropertyName(annotatedParameter);
        return (findImplicitPropertyName == null || findImplicitPropertyName.isEmpty()) ? findNameForDeserialization : PropertyName.construct(findImplicitPropertyName);
    }

    public LinkedHashMap<String, AnnotatedField> _findPropertyFields(Collection<String> collection, boolean z) {
        LinkedHashMap<String, AnnotatedField> linkedHashMap = new LinkedHashMap();
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            AnnotatedField field = beanPropertyDefinition.getField();
            if (field != null) {
                String name = beanPropertyDefinition.getName();
                if (collection == null || !collection.contains(name)) {
                    linkedHashMap.put(name, field);
                }
            }
        }
        return linkedHashMap;
    }

    protected List<BeanPropertyDefinition> _properties() {
        if (this._properties == null) {
            this._properties = this._propCollector.getProperties();
        }
        return this._properties;
    }

    public boolean addProperty(BeanPropertyDefinition beanPropertyDefinition) {
        if (hasProperty(beanPropertyDefinition.getFullName())) {
            return false;
        }
        _properties().add(beanPropertyDefinition);
        return true;
    }

    public TypeBindings bindingsForBeanType() {
        if (this._bindings == null) {
            this._bindings = new TypeBindings(this._config.getTypeFactory(), this._type);
        }
        return this._bindings;
    }

    public AnnotatedMember findAnyGetter() throws IllegalArgumentException {
        AnnotatedMember anyGetter = this._propCollector == null ? null : this._propCollector.getAnyGetter();
        if (anyGetter == null || Map.class.isAssignableFrom(anyGetter.getRawType())) {
            return anyGetter;
        }
        throw new IllegalArgumentException("Invalid 'any-getter' annotation on method " + anyGetter.getName() + "(): return type is not instance of java.util.Map");
    }

    public AnnotatedMethod findAnySetter() throws IllegalArgumentException {
        AnnotatedMethod anySetterMethod = this._propCollector == null ? null : this._propCollector.getAnySetterMethod();
        if (anySetterMethod != null) {
            Class rawParameterType = anySetterMethod.getRawParameterType(0);
            if (!(rawParameterType == String.class || rawParameterType == Object.class)) {
                throw new IllegalArgumentException("Invalid 'any-setter' annotation on method " + anySetterMethod.getName() + "(): first argument not of type String or Object, but " + rawParameterType.getName());
            }
        }
        return anySetterMethod;
    }

    public Map<String, AnnotatedMember> findBackReferenceProperties() {
        Map<String, AnnotatedMember> map = null;
        for (BeanPropertyDefinition mutator : _properties()) {
            AnnotatedMember mutator2 = mutator.getMutator();
            if (mutator2 != null) {
                ReferenceProperty findReferenceType = this._annotationIntrospector.findReferenceType(mutator2);
                if (findReferenceType != null && findReferenceType.isBackReference()) {
                    HashMap hashMap;
                    if (map == null) {
                        hashMap = new HashMap();
                    } else {
                        Map map2 = map;
                    }
                    String name = findReferenceType.getName();
                    if (hashMap.put(name, mutator2) != null) {
                        throw new IllegalArgumentException("Multiple back-reference properties with name '" + name + "'");
                    }
                    map = hashMap;
                }
            }
        }
        return map;
    }

    @Deprecated
    public List<PropertyName> findCreatorParameterNames() {
        int i = 1;
        int i2 = 0;
        while (i2 < 2) {
            for (AnnotatedWithParams annotatedWithParams : i2 == 0 ? getConstructors() : getFactoryMethods()) {
                int parameterCount = annotatedWithParams.getParameterCount();
                if (parameterCount >= 1) {
                    PropertyName _findCreatorPropertyName = _findCreatorPropertyName(annotatedWithParams.getParameter(0));
                    if (!(_findCreatorPropertyName == null || _findCreatorPropertyName.isEmpty())) {
                        List<PropertyName> arrayList = new ArrayList();
                        arrayList.add(_findCreatorPropertyName);
                        while (i < parameterCount) {
                            arrayList.add(_findCreatorPropertyName(annotatedWithParams.getParameter(i)));
                            i++;
                        }
                        return arrayList;
                    }
                }
            }
            i2++;
        }
        return Collections.emptyList();
    }

    @Deprecated
    public List<String> findCreatorPropertyNames() {
        List<PropertyName> findCreatorParameterNames = findCreatorParameterNames();
        if (findCreatorParameterNames.isEmpty()) {
            return Collections.emptyList();
        }
        List<String> arrayList = new ArrayList(findCreatorParameterNames.size());
        for (PropertyName simpleName : findCreatorParameterNames) {
            arrayList.add(simpleName.getSimpleName());
        }
        return arrayList;
    }

    public AnnotatedConstructor findDefaultConstructor() {
        return this._classInfo.getDefaultConstructor();
    }

    public Converter<Object, Object> findDeserializationConverter() {
        return this._annotationIntrospector == null ? null : _createConverter(this._annotationIntrospector.findDeserializationConverter(this._classInfo));
    }

    public Value findExpectedFormat(Value value) {
        if (this._annotationIntrospector == null) {
            return value;
        }
        Value findFormat = this._annotationIntrospector.findFormat(this._classInfo);
        return findFormat != null ? findFormat : value;
    }

    public Method findFactoryMethod(Class<?>... clsArr) {
        for (AnnotatedMethod annotatedMethod : this._classInfo.getStaticMethods()) {
            if (isFactoryMethod(annotatedMethod)) {
                Class rawParameterType = annotatedMethod.getRawParameterType(0);
                for (Class isAssignableFrom : clsArr) {
                    if (rawParameterType.isAssignableFrom(isAssignableFrom)) {
                        return annotatedMethod.getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    public Map<Object, AnnotatedMember> findInjectables() {
        return this._propCollector != null ? this._propCollector.getInjectables() : Collections.emptyMap();
    }

    public AnnotatedMethod findJsonValueMethod() {
        return this._propCollector == null ? null : this._propCollector.getJsonValueMethod();
    }

    public AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        return this._classInfo.findMethod(str, clsArr);
    }

    public Class<?> findPOJOBuilder() {
        return this._annotationIntrospector == null ? null : this._annotationIntrospector.findPOJOBuilder(this._classInfo);
    }

    public JsonPOJOBuilder.Value findPOJOBuilderConfig() {
        return this._annotationIntrospector == null ? null : this._annotationIntrospector.findPOJOBuilderConfig(this._classInfo);
    }

    public List<BeanPropertyDefinition> findProperties() {
        return _properties();
    }

    public BeanPropertyDefinition findProperty(PropertyName propertyName) {
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            if (beanPropertyDefinition.hasName(propertyName)) {
                return beanPropertyDefinition;
            }
        }
        return null;
    }

    public Converter<Object, Object> findSerializationConverter() {
        return this._annotationIntrospector == null ? null : _createConverter(this._annotationIntrospector.findSerializationConverter(this._classInfo));
    }

    public Include findSerializationInclusion(Include include) {
        return this._annotationIntrospector == null ? include : this._annotationIntrospector.findSerializationInclusion(this._classInfo, include);
    }

    public Include findSerializationInclusionForContent(Include include) {
        return this._annotationIntrospector == null ? include : this._annotationIntrospector.findSerializationInclusionForContent(this._classInfo, include);
    }

    public Constructor<?> findSingleArgConstructor(Class<?>... clsArr) {
        for (AnnotatedConstructor annotatedConstructor : this._classInfo.getConstructors()) {
            if (annotatedConstructor.getParameterCount() == 1) {
                Class<?> rawParameterType = annotatedConstructor.getRawParameterType(0);
                for (Class<?> cls : clsArr) {
                    if (cls == rawParameterType) {
                        return annotatedConstructor.getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    public Annotations getClassAnnotations() {
        return this._classInfo.getAnnotations();
    }

    public AnnotatedClass getClassInfo() {
        return this._classInfo;
    }

    public List<AnnotatedConstructor> getConstructors() {
        return this._classInfo.getConstructors();
    }

    public List<AnnotatedMethod> getFactoryMethods() {
        List<AnnotatedMethod> staticMethods = this._classInfo.getStaticMethods();
        if (staticMethods.isEmpty()) {
            return staticMethods;
        }
        ArrayList arrayList = new ArrayList();
        for (AnnotatedMethod annotatedMethod : staticMethods) {
            if (isFactoryMethod(annotatedMethod)) {
                arrayList.add(annotatedMethod);
            }
        }
        return arrayList;
    }

    public Set<String> getIgnoredPropertyNames() {
        Set<String> ignoredPropertyNames = this._propCollector == null ? null : this._propCollector.getIgnoredPropertyNames();
        return ignoredPropertyNames == null ? Collections.emptySet() : ignoredPropertyNames;
    }

    public ObjectIdInfo getObjectIdInfo() {
        return this._objectIdInfo;
    }

    public boolean hasKnownClassAnnotations() {
        return this._classInfo.hasAnnotations();
    }

    public boolean hasProperty(PropertyName propertyName) {
        return findProperty(propertyName) != null;
    }

    public Object instantiateBean(boolean z) {
        AnnotatedConstructor defaultConstructor = this._classInfo.getDefaultConstructor();
        if (defaultConstructor == null) {
            return null;
        }
        if (z) {
            defaultConstructor.fixAccess();
        }
        try {
            return defaultConstructor.getAnnotated().newInstance(new Object[0]);
        } catch (Exception e) {
            Throwable e2 = e;
            while (e2.getCause() != null) {
                e2 = e2.getCause();
            }
            if (e2 instanceof Error) {
                throw ((Error) e2);
            } else if (e2 instanceof RuntimeException) {
                throw ((RuntimeException) e2);
            } else {
                throw new IllegalArgumentException("Failed to instantiate bean of type " + this._classInfo.getAnnotated().getName() + ": (" + e2.getClass().getName() + ") " + e2.getMessage(), e2);
            }
        }
    }

    protected boolean isFactoryMethod(AnnotatedMethod annotatedMethod) {
        if (!getBeanClass().isAssignableFrom(annotatedMethod.getRawReturnType())) {
            return false;
        }
        if (this._annotationIntrospector.hasCreatorAnnotation(annotatedMethod)) {
            return true;
        }
        String name = annotatedMethod.getName();
        if ("valueOf".equals(name)) {
            return true;
        }
        if (!"fromString".equals(name) || 1 != annotatedMethod.getParameterCount()) {
            return false;
        }
        Class rawParameterType = annotatedMethod.getRawParameterType(0);
        return rawParameterType == String.class || CharSequence.class.isAssignableFrom(rawParameterType);
    }

    public boolean removeProperty(String str) {
        Iterator it = _properties().iterator();
        while (it.hasNext()) {
            if (((BeanPropertyDefinition) it.next()).getName().equals(str)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public JavaType resolveType(Type type) {
        return type == null ? null : bindingsForBeanType().resolveType(type);
    }
}
