package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty.Std;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.CreatorCollector;
import com.fasterxml.jackson.databind.deser.std.ArrayBlockingQueueDeserializer;
import com.fasterxml.jackson.databind.deser.std.AtomicReferenceDeserializer;
import com.fasterxml.jackson.databind.deser.std.CollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.DateDeserializers;
import com.fasterxml.jackson.databind.deser.std.EnumDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumMapDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumSetDeserializer;
import com.fasterxml.jackson.databind.deser.std.JdkDeserializers;
import com.fasterxml.jackson.databind.deser.std.JsonLocationInstantiator;
import com.fasterxml.jackson.databind.deser.std.JsonNodeDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapEntryDeserializer;
import com.fasterxml.jackson.databind.deser.std.NumberDeserializers;
import com.fasterxml.jackson.databind.deser.std.ObjectArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import com.fasterxml.jackson.databind.deser.std.StringArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringDeserializer;
import com.fasterxml.jackson.databind.deser.std.TokenBufferDeserializer;
import com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.atomic.AtomicReference;

public abstract class BasicDeserializerFactory extends DeserializerFactory implements Serializable {
    private static final Class<?> CLASS_CHAR_BUFFER;
    private static final Class<?> CLASS_ITERABLE;
    private static final Class<?> CLASS_MAP_ENTRY;
    private static final Class<?> CLASS_OBJECT;
    private static final Class<?> CLASS_STRING;
    protected static final PropertyName UNWRAPPED_CREATOR_PARAM_NAME;
    static final HashMap<String, Class<? extends Collection>> _collectionFallbacks;
    static final HashMap<String, Class<? extends Map>> _mapFallbacks;
    protected final DeserializerFactoryConfig _factoryConfig;

    static {
        CLASS_OBJECT = Object.class;
        CLASS_STRING = String.class;
        CLASS_CHAR_BUFFER = CharSequence.class;
        CLASS_ITERABLE = Iterable.class;
        CLASS_MAP_ENTRY = Entry.class;
        UNWRAPPED_CREATOR_PARAM_NAME = new PropertyName("@JsonUnwrapped");
        _mapFallbacks = new HashMap();
        _mapFallbacks.put(Map.class.getName(), LinkedHashMap.class);
        _mapFallbacks.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
        _mapFallbacks.put(SortedMap.class.getName(), TreeMap.class);
        _mapFallbacks.put(NavigableMap.class.getName(), TreeMap.class);
        _mapFallbacks.put(ConcurrentNavigableMap.class.getName(), ConcurrentSkipListMap.class);
        _collectionFallbacks = new HashMap();
        _collectionFallbacks.put(Collection.class.getName(), ArrayList.class);
        _collectionFallbacks.put(List.class.getName(), ArrayList.class);
        _collectionFallbacks.put(Set.class.getName(), HashSet.class);
        _collectionFallbacks.put(SortedSet.class.getName(), TreeSet.class);
        _collectionFallbacks.put(Queue.class.getName(), LinkedList.class);
        _collectionFallbacks.put("java.util.Deque", LinkedList.class);
        _collectionFallbacks.put("java.util.NavigableSet", TreeSet.class);
    }

    protected BasicDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        this._factoryConfig = deserializerFactoryConfig;
    }

    private KeyDeserializer _createEnumKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        Class rawClass = javaType.getRawClass();
        BeanDescription introspect = config.introspect(javaType);
        KeyDeserializer findKeyDeserializerFromAnnotation = findKeyDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
        if (findKeyDeserializerFromAnnotation != null) {
            return findKeyDeserializerFromAnnotation;
        }
        JsonDeserializer _findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, config, introspect);
        if (_findCustomEnumDeserializer != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, _findCustomEnumDeserializer);
        }
        _findCustomEnumDeserializer = findDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
        if (_findCustomEnumDeserializer != null) {
            return StdKeyDeserializers.constructDelegatingKeyDeserializer(config, javaType, _findCustomEnumDeserializer);
        }
        EnumResolver constructEnumResolver = constructEnumResolver(rawClass, config, introspect.findJsonValueMethod());
        for (AnnotatedMethod annotatedMethod : introspect.getFactoryMethods()) {
            if (config.getAnnotationIntrospector().hasCreatorAnnotation(annotatedMethod)) {
                if (annotatedMethod.getParameterCount() != 1 || !annotatedMethod.getRawReturnType().isAssignableFrom(rawClass)) {
                    throw new IllegalArgumentException("Unsuitable method (" + annotatedMethod + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
                } else if (annotatedMethod.getGenericParameterType(0) != String.class) {
                    throw new IllegalArgumentException("Parameter #0 type for factory method (" + annotatedMethod + ") not suitable, must be java.lang.String");
                } else {
                    if (config.canOverrideAccessModifiers()) {
                        ClassUtil.checkAndFixAccess(annotatedMethod.getMember());
                    }
                    return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver, annotatedMethod);
                }
            }
        }
        return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver);
    }

    private ValueInstantiator _findStdValueInstantiator(DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        return beanDescription.getBeanClass() == JsonLocation.class ? new JsonLocationInstantiator() : null;
    }

    private JavaType _mapAbstractType2(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Class rawClass = javaType.getRawClass();
        if (this._factoryConfig.hasAbstractTypeResolvers()) {
            for (AbstractTypeResolver findTypeMapping : this._factoryConfig.abstractTypeResolvers()) {
                JavaType findTypeMapping2 = findTypeMapping.findTypeMapping(deserializationConfig, javaType);
                if (findTypeMapping2 != null && findTypeMapping2.getRawClass() != rawClass) {
                    return findTypeMapping2;
                }
            }
        }
        return null;
    }

    protected void _addDeserializerConstructors(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, Map<AnnotatedWithParams, BeanPropertyDefinition[]> map) throws JsonMappingException {
        Annotated findDefaultConstructor = beanDescription.findDefaultConstructor();
        if (findDefaultConstructor != null && (!creatorCollector.hasDefaultCreator() || annotationIntrospector.hasCreatorAnnotation(findDefaultConstructor))) {
            creatorCollector.setDefaultCreator(findDefaultConstructor);
        }
        List list = null;
        for (AnnotatedMember annotatedMember : beanDescription.getConstructors()) {
            boolean hasCreatorAnnotation = annotationIntrospector.hasCreatorAnnotation(annotatedMember);
            BeanPropertyDefinition[] beanPropertyDefinitionArr = (BeanPropertyDefinition[]) map.get(annotatedMember);
            int parameterCount = annotatedMember.getParameterCount();
            PropertyName fullName;
            AnnotatedMember parameter;
            if (parameterCount == 1) {
                BeanPropertyDefinition beanPropertyDefinition = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[0];
                if (_checkIfCreatorPropertyBased(annotationIntrospector, annotatedMember, beanPropertyDefinition)) {
                    fullName = beanPropertyDefinition == null ? null : beanPropertyDefinition.getFullName();
                    parameter = annotatedMember.getParameter(0);
                    SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[1];
                    settableBeanPropertyArr[0] = constructCreatorProperty(deserializationContext, beanDescription, fullName, 0, parameter, annotationIntrospector.findInjectableValueId(parameter));
                    creatorCollector.addPropertyCreator(annotatedMember, hasCreatorAnnotation, settableBeanPropertyArr);
                } else {
                    _handleSingleArgumentConstructor(deserializationContext, beanDescription, visibilityChecker, annotationIntrospector, creatorCollector, annotatedMember, hasCreatorAnnotation, visibilityChecker.isCreatorVisible(annotatedMember));
                    if (beanPropertyDefinition != null) {
                        ((POJOPropertyBuilder) beanPropertyDefinition).removeConstructors();
                    }
                }
            } else {
                int i;
                AnnotatedMember annotatedMember2 = null;
                SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[parameterCount];
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (i5 < parameterCount) {
                    int i6;
                    int i7;
                    parameter = annotatedMember.getParameter(i5);
                    BeanPropertyDefinition beanPropertyDefinition2 = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[i5];
                    Object findInjectableValueId = annotationIntrospector.findInjectableValueId(parameter);
                    fullName = beanPropertyDefinition2 == null ? null : beanPropertyDefinition2.getFullName();
                    if (beanPropertyDefinition2 != null && beanPropertyDefinition2.isExplicitlyNamed()) {
                        i2++;
                        settableBeanPropertyArr2[i5] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i5, parameter, findInjectableValueId);
                        parameter = annotatedMember2;
                        i = i4;
                        i6 = i3;
                        i7 = i2;
                    } else if (findInjectableValueId != null) {
                        i4++;
                        settableBeanPropertyArr2[i5] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i5, parameter, findInjectableValueId);
                        parameter = annotatedMember2;
                        i = i4;
                        i6 = i3;
                        i7 = i2;
                    } else if (annotationIntrospector.findUnwrappingNameTransformer(parameter) != null) {
                        settableBeanPropertyArr2[i5] = constructCreatorProperty(deserializationContext, beanDescription, UNWRAPPED_CREATOR_PARAM_NAME, i5, parameter, null);
                        parameter = annotatedMember2;
                        i6 = i3;
                        i7 = i2 + 1;
                        i = i4;
                    } else if (hasCreatorAnnotation && fullName != null && !fullName.isEmpty()) {
                        i3++;
                        settableBeanPropertyArr2[i5] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i5, parameter, findInjectableValueId);
                        parameter = annotatedMember2;
                        i = i4;
                        i6 = i3;
                        i7 = i2;
                    } else if (annotatedMember2 == null) {
                        i = i4;
                        i6 = i3;
                        i7 = i2;
                    } else {
                        parameter = annotatedMember2;
                        i = i4;
                        i6 = i3;
                        i7 = i2;
                    }
                    i5++;
                    annotatedMember2 = parameter;
                    i2 = i7;
                    i3 = i6;
                    i4 = i;
                }
                if (hasCreatorAnnotation || i2 > 0 || i4 > 0) {
                    if ((i2 + i3) + i4 == parameterCount) {
                        creatorCollector.addPropertyCreator(annotatedMember, hasCreatorAnnotation, settableBeanPropertyArr2);
                    } else if (i2 == 0 && i4 + 1 == parameterCount) {
                        creatorCollector.addDelegatingCreator(annotatedMember, hasCreatorAnnotation, settableBeanPropertyArr2);
                    } else {
                        PropertyName _findImplicitParamName = _findImplicitParamName(annotatedMember2, annotationIntrospector);
                        if (_findImplicitParamName == null || _findImplicitParamName.isEmpty()) {
                            i = annotatedMember2.getIndex();
                            if (i == 0 && ClassUtil.isNonStaticInnerClass(annotatedMember.getDeclaringClass())) {
                                throw new IllegalArgumentException("Non-static inner classes like " + annotatedMember.getDeclaringClass().getName() + " can not use @JsonCreator for constructors");
                            }
                            throw new IllegalArgumentException("Argument #" + i + " of constructor " + annotatedMember + " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
                        }
                    }
                }
                if (!creatorCollector.hasDefaultCreator()) {
                    List linkedList = list == null ? new LinkedList() : list;
                    linkedList.add(annotatedMember);
                    list = linkedList;
                }
            }
        }
        if (list != null && !creatorCollector.hasDelegatingCreator() && !creatorCollector.hasPropertyBasedCreator()) {
            _checkImplicitlyNamedConstructors(deserializationContext, beanDescription, visibilityChecker, annotationIntrospector, creatorCollector, list);
        }
    }

    protected void _addDeserializerFactoryMethods(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, Map<AnnotatedWithParams, BeanPropertyDefinition[]> map) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        for (AnnotatedMethod annotatedMethod : beanDescription.getFactoryMethods()) {
            boolean hasCreatorAnnotation = annotationIntrospector.hasCreatorAnnotation(annotatedMethod);
            int parameterCount = annotatedMethod.getParameterCount();
            if (parameterCount != 0) {
                BeanPropertyDefinition[] beanPropertyDefinitionArr = (BeanPropertyDefinition[]) map.get(annotatedMethod);
                if (parameterCount == 1) {
                    if (!_checkIfCreatorPropertyBased(annotationIntrospector, annotatedMethod, beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[0])) {
                        _handleSingleArgumentFactory(config, beanDescription, visibilityChecker, annotationIntrospector, creatorCollector, annotatedMethod, hasCreatorAnnotation);
                    }
                } else if (!hasCreatorAnnotation) {
                    continue;
                }
                AnnotatedMember annotatedMember = null;
                SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[parameterCount];
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (i4 < parameterCount) {
                    int i5;
                    int i6;
                    AnnotatedMember parameter = annotatedMethod.getParameter(i4);
                    BeanPropertyDefinition beanPropertyDefinition = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[i4];
                    Object findInjectableValueId = annotationIntrospector.findInjectableValueId(parameter);
                    PropertyName fullName = beanPropertyDefinition == null ? null : beanPropertyDefinition.getFullName();
                    if (beanPropertyDefinition != null && beanPropertyDefinition.isExplicitlyNamed()) {
                        i5 = i2 + 1;
                        settableBeanPropertyArr[i4] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i4, parameter, findInjectableValueId);
                        parameter = annotatedMember;
                        i6 = i5;
                        i5 = i3;
                        i3 = i;
                    } else if (findInjectableValueId != null) {
                        i5 = i3 + 1;
                        settableBeanPropertyArr[i4] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i4, parameter, findInjectableValueId);
                        parameter = annotatedMember;
                        i3 = i;
                        i6 = i2;
                    } else if (annotationIntrospector.findUnwrappingNameTransformer(parameter) != null) {
                        settableBeanPropertyArr[i4] = constructCreatorProperty(deserializationContext, beanDescription, UNWRAPPED_CREATOR_PARAM_NAME, i4, parameter, null);
                        parameter = annotatedMember;
                        i6 = i2;
                        r21 = i3;
                        i3 = i + 1;
                        i5 = r21;
                    } else if (hasCreatorAnnotation && fullName != null && !fullName.isEmpty()) {
                        i5 = i + 1;
                        settableBeanPropertyArr[i4] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i4, parameter, findInjectableValueId);
                        parameter = annotatedMember;
                        i6 = i2;
                        r21 = i3;
                        i3 = i5;
                        i5 = r21;
                    } else if (annotatedMember == null) {
                        i5 = i3;
                        i6 = i2;
                        i3 = i;
                    } else {
                        parameter = annotatedMember;
                        i5 = i3;
                        i6 = i2;
                        i3 = i;
                    }
                    i4++;
                    i = i3;
                    i2 = i6;
                    annotatedMember = parameter;
                    i3 = i5;
                }
                if (hasCreatorAnnotation || i2 > 0 || i3 > 0) {
                    if ((i2 + i) + i3 == parameterCount) {
                        creatorCollector.addPropertyCreator(annotatedMethod, hasCreatorAnnotation, settableBeanPropertyArr);
                    } else if (i2 == 0 && i3 + 1 == parameterCount) {
                        creatorCollector.addDelegatingCreator(annotatedMethod, hasCreatorAnnotation, settableBeanPropertyArr);
                    } else {
                        throw new IllegalArgumentException("Argument #" + annotatedMember.getIndex() + " of factory method " + annotatedMethod + " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
                    }
                }
            } else if (hasCreatorAnnotation) {
                creatorCollector.setDefaultCreator(annotatedMethod);
            }
        }
    }

    protected boolean _checkIfCreatorPropertyBased(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, BeanPropertyDefinition beanPropertyDefinition) {
        Mode findCreatorBinding = annotationIntrospector.findCreatorBinding(annotatedWithParams);
        if (findCreatorBinding == Mode.PROPERTIES) {
            return true;
        }
        if (findCreatorBinding == Mode.DELEGATING) {
            return false;
        }
        if ((beanPropertyDefinition != null && beanPropertyDefinition.isExplicitlyNamed()) || annotationIntrospector.findInjectableValueId(annotatedWithParams.getParameter(0)) != null) {
            return true;
        }
        if (beanPropertyDefinition != null) {
            String name = beanPropertyDefinition.getName();
            if (!(name == null || name.isEmpty() || !beanPropertyDefinition.couldSerialize())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void _checkImplicitlyNamedConstructors(com.fasterxml.jackson.databind.DeserializationContext r16, com.fasterxml.jackson.databind.BeanDescription r17, com.fasterxml.jackson.databind.introspect.VisibilityChecker<?> r18, com.fasterxml.jackson.databind.AnnotationIntrospector r19, com.fasterxml.jackson.databind.deser.impl.CreatorCollector r20, java.util.List<com.fasterxml.jackson.databind.introspect.AnnotatedConstructor> r21) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
        r15 = this;
        r8 = 0;
        r1 = 0;
        r13 = r21.iterator();
        r9 = r1;
        r11 = r8;
    L_0x0008:
        r1 = r13.hasNext();
        if (r1 == 0) goto L_0x0050;
    L_0x000e:
        r1 = r13.next();
        r8 = r1;
        r8 = (com.fasterxml.jackson.databind.introspect.AnnotatedConstructor) r8;
        r0 = r18;
        r1 = r0.isCreatorVisible(r8);
        if (r1 == 0) goto L_0x0008;
    L_0x001d:
        r14 = r8.getParameterCount();
        r10 = new com.fasterxml.jackson.databind.deser.SettableBeanProperty[r14];
        r1 = 0;
        r12 = r1;
    L_0x0025:
        if (r12 >= r14) goto L_0x004d;
    L_0x0027:
        r6 = r8.getParameter(r12);
        r0 = r19;
        r4 = r15._findParamName(r6, r0);
        if (r4 == 0) goto L_0x0008;
    L_0x0033:
        r1 = r4.isEmpty();
        if (r1 != 0) goto L_0x0008;
    L_0x0039:
        r5 = r6.getIndex();
        r7 = 0;
        r1 = r15;
        r2 = r16;
        r3 = r17;
        r1 = r1.constructCreatorProperty(r2, r3, r4, r5, r6, r7);
        r10[r12] = r1;
        r1 = r12 + 1;
        r12 = r1;
        goto L_0x0025;
    L_0x004d:
        if (r11 == 0) goto L_0x0080;
    L_0x004f:
        r11 = 0;
    L_0x0050:
        if (r11 == 0) goto L_0x0083;
    L_0x0052:
        r1 = 0;
        r0 = r20;
        r0.addPropertyCreator(r11, r1, r9);
        r17 = (com.fasterxml.jackson.databind.introspect.BasicBeanDescription) r17;
        r2 = r9.length;
        r1 = 0;
    L_0x005c:
        if (r1 >= r2) goto L_0x0083;
    L_0x005e:
        r3 = r9[r1];
        r4 = r3.getFullName();
        r0 = r17;
        r5 = r0.hasProperty(r4);
        if (r5 != 0) goto L_0x007d;
    L_0x006c:
        r5 = r16.getConfig();
        r3 = r3.getMember();
        r3 = com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition.construct(r5, r3, r4);
        r0 = r17;
        r0.addProperty(r3);
    L_0x007d:
        r1 = r1 + 1;
        goto L_0x005c;
    L_0x0080:
        r9 = r10;
        r11 = r8;
        goto L_0x0008;
    L_0x0083:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory._checkImplicitlyNamedConstructors(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.BeanDescription, com.fasterxml.jackson.databind.introspect.VisibilityChecker, com.fasterxml.jackson.databind.AnnotationIntrospector, com.fasterxml.jackson.databind.deser.impl.CreatorCollector, java.util.List):void");
    }

    protected ValueInstantiator _constructDefaultValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        CreatorCollector creatorCollector = new CreatorCollector(beanDescription, deserializationContext.canOverrideAccessModifiers());
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        DeserializationConfig config = deserializationContext.getConfig();
        VisibilityChecker findAutoDetectVisibility = annotationIntrospector.findAutoDetectVisibility(beanDescription.getClassInfo(), config.getDefaultVisibilityChecker());
        Map _findCreatorsFromProperties = _findCreatorsFromProperties(deserializationContext, beanDescription);
        _addDeserializerFactoryMethods(deserializationContext, beanDescription, findAutoDetectVisibility, annotationIntrospector, creatorCollector, _findCreatorsFromProperties);
        if (beanDescription.getType().isConcrete()) {
            _addDeserializerConstructors(deserializationContext, beanDescription, findAutoDetectVisibility, annotationIntrospector, creatorCollector, _findCreatorsFromProperties);
        }
        return creatorCollector.constructValueInstantiator(config);
    }

    protected Map<AnnotatedWithParams, BeanPropertyDefinition[]> _findCreatorsFromProperties(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> emptyMap = Collections.emptyMap();
        for (BeanPropertyDefinition beanPropertyDefinition : beanDescription.findProperties()) {
            Iterator constructorParameters = beanPropertyDefinition.getConstructorParameters();
            while (constructorParameters.hasNext()) {
                Map<AnnotatedWithParams, BeanPropertyDefinition[]> linkedHashMap;
                AnnotatedParameter annotatedParameter = (AnnotatedParameter) constructorParameters.next();
                AnnotatedWithParams owner = annotatedParameter.getOwner();
                Object obj = (BeanPropertyDefinition[]) emptyMap.get(owner);
                int index = annotatedParameter.getIndex();
                if (obj == null) {
                    linkedHashMap = emptyMap.isEmpty() ? new LinkedHashMap() : emptyMap;
                    obj = new BeanPropertyDefinition[owner.getParameterCount()];
                    linkedHashMap.put(owner, obj);
                } else if (obj[index] != null) {
                    throw new IllegalStateException("Conflict: parameter #" + index + " of " + owner + " bound to more than one property; " + obj[index] + " vs " + beanPropertyDefinition);
                } else {
                    linkedHashMap = emptyMap;
                }
                obj[index] = beanPropertyDefinition;
                emptyMap = linkedHashMap;
            }
        }
        return emptyMap;
    }

    protected JsonDeserializer<?> _findCustomArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers findArrayDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findArrayDeserializer2 = findArrayDeserializer.findArrayDeserializer(arrayType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findArrayDeserializer2 != null) {
                return findArrayDeserializer2;
            }
        }
        return null;
    }

    protected JsonDeserializer<Object> _findCustomBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers findBeanDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<Object> findBeanDeserializer2 = findBeanDeserializer.findBeanDeserializer(javaType, deserializationConfig, beanDescription);
            if (findBeanDeserializer2 != null) {
                return findBeanDeserializer2;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers findCollectionDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findCollectionDeserializer2 = findCollectionDeserializer.findCollectionDeserializer(collectionType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findCollectionDeserializer2 != null) {
                return findCollectionDeserializer2;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers findCollectionLikeDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findCollectionLikeDeserializer2 = findCollectionLikeDeserializer.findCollectionLikeDeserializer(collectionLikeType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findCollectionLikeDeserializer2 != null) {
                return findCollectionLikeDeserializer2;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers findEnumDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findEnumDeserializer2 = findEnumDeserializer.findEnumDeserializer(cls, deserializationConfig, beanDescription);
            if (findEnumDeserializer2 != null) {
                return findEnumDeserializer2;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers findMapDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findMapDeserializer2 = findMapDeserializer.findMapDeserializer(mapType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (findMapDeserializer2 != null) {
                return findMapDeserializer2;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers findMapLikeDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findMapLikeDeserializer2 = findMapLikeDeserializer.findMapLikeDeserializer(mapLikeType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (findMapLikeDeserializer2 != null) {
                return findMapLikeDeserializer2;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomTreeNodeDeserializer(Class<? extends JsonNode> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers findTreeNodeDeserializer : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findTreeNodeDeserializer2 = findTreeNodeDeserializer.findTreeNodeDeserializer(cls, deserializationConfig, beanDescription);
            if (findTreeNodeDeserializer2 != null) {
                return findTreeNodeDeserializer2;
            }
        }
        return null;
    }

    @Deprecated
    protected PropertyName _findExplicitParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        return (annotatedParameter == null || annotationIntrospector == null) ? null : annotationIntrospector.findNameForDeserialization(annotatedParameter);
    }

    protected PropertyName _findImplicitParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedParameter);
        return (findImplicitPropertyName == null || findImplicitPropertyName.isEmpty()) ? null : PropertyName.construct(findImplicitPropertyName);
    }

    protected AnnotatedMethod _findJsonValueFor(DeserializationConfig deserializationConfig, JavaType javaType) {
        return javaType == null ? null : deserializationConfig.introspect(javaType).findJsonValueMethod();
    }

    protected PropertyName _findParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        if (!(annotatedParameter == null || annotationIntrospector == null)) {
            PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedParameter);
            if (findNameForDeserialization != null) {
                return findNameForDeserialization;
            }
            String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedParameter);
            if (!(findImplicitPropertyName == null || findImplicitPropertyName.isEmpty())) {
                return PropertyName.construct(findImplicitPropertyName);
            }
        }
        return null;
    }

    protected JavaType _findRemappedType(DeserializationConfig deserializationConfig, Class<?> cls) throws JsonMappingException {
        JavaType mapAbstractType = mapAbstractType(deserializationConfig, deserializationConfig.constructType((Class) cls));
        return (mapAbstractType == null || mapAbstractType.hasRawClass(cls)) ? null : mapAbstractType;
    }

    protected boolean _handleSingleArgumentConstructor(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, AnnotatedConstructor annotatedConstructor, boolean z, boolean z2) throws JsonMappingException {
        Class rawParameterType = annotatedConstructor.getRawParameterType(0);
        if (rawParameterType == String.class || rawParameterType == CharSequence.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addStringCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Integer.TYPE || rawParameterType == Integer.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addIntCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Long.TYPE || rawParameterType == Long.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addLongCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Double.TYPE || rawParameterType == Double.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addDoubleCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Boolean.TYPE || rawParameterType == Boolean.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addBooleanCreator(annotatedConstructor, z);
            return true;
        } else if (!z) {
            return false;
        } else {
            creatorCollector.addDelegatingCreator(annotatedConstructor, z, null);
            return true;
        }
    }

    protected boolean _handleSingleArgumentFactory(DeserializationConfig deserializationConfig, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, AnnotatedMethod annotatedMethod, boolean z) throws JsonMappingException {
        Class rawParameterType = annotatedMethod.getRawParameterType(0);
        if (rawParameterType == String.class || rawParameterType == CharSequence.class) {
            if (!z && !visibilityChecker.isCreatorVisible((AnnotatedMember) annotatedMethod)) {
                return true;
            }
            creatorCollector.addStringCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Integer.TYPE || rawParameterType == Integer.class) {
            if (!z && !visibilityChecker.isCreatorVisible((AnnotatedMember) annotatedMethod)) {
                return true;
            }
            creatorCollector.addIntCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Long.TYPE || rawParameterType == Long.class) {
            if (!z && !visibilityChecker.isCreatorVisible((AnnotatedMember) annotatedMethod)) {
                return true;
            }
            creatorCollector.addLongCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Double.TYPE || rawParameterType == Double.class) {
            if (!z && !visibilityChecker.isCreatorVisible((AnnotatedMember) annotatedMethod)) {
                return true;
            }
            creatorCollector.addDoubleCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Boolean.TYPE || rawParameterType == Boolean.class) {
            if (!z && !visibilityChecker.isCreatorVisible((AnnotatedMember) annotatedMethod)) {
                return true;
            }
            creatorCollector.addBooleanCreator(annotatedMethod, z);
            return true;
        } else if (!z) {
            return false;
        } else {
            creatorCollector.addDelegatingCreator(annotatedMethod, z, null);
            return true;
        }
    }

    @Deprecated
    protected boolean _hasExplicitParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        if (annotatedParameter == null || annotationIntrospector == null) {
            return false;
        }
        PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedParameter);
        return findNameForDeserialization != null && findNameForDeserialization.hasSimpleName();
    }

    protected CollectionType _mapAbstractCollectionType(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class cls = (Class) _collectionFallbacks.get(javaType.getRawClass().getName());
        return cls == null ? null : (CollectionType) deserializationConfig.constructSpecializedType(javaType, cls);
    }

    public ValueInstantiator _valueInstantiatorInstance(DeserializationConfig deserializationConfig, Annotated annotated, Object obj) throws JsonMappingException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof ValueInstantiator) {
            return (ValueInstantiator) obj;
        }
        if (obj instanceof Class) {
            Class cls = (Class) obj;
            if (ClassUtil.isBogusClass(cls)) {
                return null;
            }
            if (ValueInstantiator.class.isAssignableFrom(cls)) {
                HandlerInstantiator handlerInstantiator = deserializationConfig.getHandlerInstantiator();
                if (handlerInstantiator != null) {
                    ValueInstantiator valueInstantiatorInstance = handlerInstantiator.valueInstantiatorInstance(deserializationConfig, annotated, cls);
                    if (valueInstantiatorInstance != null) {
                        return valueInstantiatorInstance;
                    }
                }
                return (ValueInstantiator) ClassUtil.createInstance(cls, deserializationConfig.canOverrideAccessModifiers());
            }
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<ValueInstantiator>");
        }
        throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
    }

    protected SettableBeanProperty constructCreatorProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, PropertyName propertyName, int i, AnnotatedParameter annotatedParameter, Object obj) throws JsonMappingException {
        PropertyMetadata propertyMetadata;
        DeserializationConfig config = deserializationContext.getConfig();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            propertyMetadata = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
        } else {
            Boolean hasRequiredMarker = annotationIntrospector.hasRequiredMarker(annotatedParameter);
            boolean z = hasRequiredMarker != null && hasRequiredMarker.booleanValue();
            propertyMetadata = PropertyMetadata.construct(z, annotationIntrospector.findPropertyDescription(annotatedParameter), annotationIntrospector.findPropertyIndex(annotatedParameter), annotationIntrospector.findPropertyDefaultValue(annotatedParameter));
        }
        JavaType constructType = config.getTypeFactory().constructType(annotatedParameter.getParameterType(), beanDescription.bindingsForBeanType());
        Std std = new Std(propertyName, constructType, annotationIntrospector.findWrapperName(annotatedParameter), beanDescription.getClassAnnotations(), (AnnotatedMember) annotatedParameter, propertyMetadata);
        JavaType resolveType = resolveType(deserializationContext, beanDescription, constructType, annotatedParameter);
        Std withType = resolveType != constructType ? std.withType(resolveType) : std;
        JsonDeserializer findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, annotatedParameter);
        JavaType modifyTypeByAnnotation = modifyTypeByAnnotation(deserializationContext, annotatedParameter, resolveType);
        TypeDeserializer typeDeserializer = (TypeDeserializer) modifyTypeByAnnotation.getTypeHandler();
        SettableBeanProperty creatorProperty = new CreatorProperty(propertyName, modifyTypeByAnnotation, withType.getWrapperName(), typeDeserializer == null ? findTypeDeserializer(config, modifyTypeByAnnotation) : typeDeserializer, beanDescription.getClassAnnotations(), annotatedParameter, i, obj, propertyMetadata);
        return findDeserializerFromAnnotation != null ? creatorProperty.withValueDeserializer(deserializationContext.handlePrimaryContextualization(findDeserializerFromAnnotation, creatorProperty, modifyTypeByAnnotation)) : creatorProperty;
    }

    protected EnumResolver constructEnumResolver(Class<?> cls, DeserializationConfig deserializationConfig, AnnotatedMethod annotatedMethod) {
        if (annotatedMethod == null) {
            return deserializationConfig.isEnabled(DeserializationFeature.READ_ENUMS_USING_TO_STRING) ? EnumResolver.constructUnsafeUsingToString(cls) : EnumResolver.constructUnsafe(cls, deserializationConfig.getAnnotationIntrospector());
        } else {
            Object annotated = annotatedMethod.getAnnotated();
            if (deserializationConfig.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(annotated);
            }
            return EnumResolver.constructUnsafeUsingMethod(cls, annotated);
        }
    }

    public JsonDeserializer<?> createArrayDeserializer(DeserializationContext deserializationContext, ArrayType arrayType, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType contentType = arrayType.getContentType();
        JsonDeserializer jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer findTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(config, contentType) : typeDeserializer;
        JsonDeserializer<?> _findCustomArrayDeserializer = _findCustomArrayDeserializer(arrayType, config, beanDescription, findTypeDeserializer, jsonDeserializer);
        if (_findCustomArrayDeserializer == null) {
            if (jsonDeserializer == null) {
                Class rawClass = contentType.getRawClass();
                if (contentType.isPrimitive()) {
                    return PrimitiveArrayDeserializers.forType(rawClass);
                }
                if (rawClass == String.class) {
                    return StringArrayDeserializer.instance;
                }
            }
            _findCustomArrayDeserializer = new ObjectArrayDeserializer(arrayType, jsonDeserializer, findTypeDeserializer);
        }
        if (!this._factoryConfig.hasDeserializerModifiers()) {
            return _findCustomArrayDeserializer;
        }
        JsonDeserializer<?> jsonDeserializer2 = _findCustomArrayDeserializer;
        for (BeanDeserializerModifier modifyArrayDeserializer : this._factoryConfig.deserializerModifiers()) {
            jsonDeserializer2 = modifyArrayDeserializer.modifyArrayDeserializer(config, arrayType, beanDescription, jsonDeserializer2);
        }
        return jsonDeserializer2;
    }

    public JsonDeserializer<?> createCollectionDeserializer(DeserializationContext deserializationContext, CollectionType collectionType, BeanDescription beanDescription) throws JsonMappingException {
        CollectionType _mapAbstractCollectionType;
        JsonDeserializer<?> jsonDeserializer;
        JavaType contentType = collectionType.getContentType();
        JsonDeserializer jsonDeserializer2 = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer findTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(config, contentType) : typeDeserializer;
        JsonDeserializer<?> _findCustomCollectionDeserializer = _findCustomCollectionDeserializer(collectionType, config, beanDescription, findTypeDeserializer, jsonDeserializer2);
        if (_findCustomCollectionDeserializer == null) {
            Class rawClass = collectionType.getRawClass();
            if (jsonDeserializer2 == null && EnumSet.class.isAssignableFrom(rawClass)) {
                _findCustomCollectionDeserializer = new EnumSetDeserializer(contentType, null);
            }
        }
        if (_findCustomCollectionDeserializer == null) {
            if (collectionType.isInterface() || collectionType.isAbstract()) {
                _mapAbstractCollectionType = _mapAbstractCollectionType(collectionType, config);
                if (_mapAbstractCollectionType != null) {
                    beanDescription = config.introspectForCreation(_mapAbstractCollectionType);
                } else if (collectionType.getTypeHandler() == null) {
                    throw new IllegalArgumentException("Can not find a deserializer for non-concrete Collection type " + collectionType);
                } else {
                    _findCustomCollectionDeserializer = AbstractDeserializer.constructForNonPOJO(beanDescription);
                    _mapAbstractCollectionType = collectionType;
                }
            } else {
                _mapAbstractCollectionType = collectionType;
            }
            if (_findCustomCollectionDeserializer == null) {
                ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, beanDescription);
                if (!findValueInstantiator.canCreateUsingDefault() && _mapAbstractCollectionType.getRawClass() == ArrayBlockingQueue.class) {
                    return new ArrayBlockingQueueDeserializer(_mapAbstractCollectionType, jsonDeserializer2, findTypeDeserializer, findValueInstantiator, null);
                }
                _findCustomCollectionDeserializer = contentType.getRawClass() == String.class ? new StringCollectionDeserializer(_mapAbstractCollectionType, jsonDeserializer2, findValueInstantiator) : new CollectionDeserializer(_mapAbstractCollectionType, jsonDeserializer2, findTypeDeserializer, findValueInstantiator);
            }
        } else {
            _mapAbstractCollectionType = collectionType;
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            jsonDeserializer = _findCustomCollectionDeserializer;
            for (BeanDeserializerModifier modifyCollectionDeserializer : this._factoryConfig.deserializerModifiers()) {
                jsonDeserializer = modifyCollectionDeserializer.modifyCollectionDeserializer(config, _mapAbstractCollectionType, beanDescription, jsonDeserializer);
            }
        } else {
            jsonDeserializer = _findCustomCollectionDeserializer;
        }
        return jsonDeserializer;
    }

    public JsonDeserializer<?> createCollectionLikeDeserializer(DeserializationContext deserializationContext, CollectionLikeType collectionLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType contentType = collectionLikeType.getContentType();
        JsonDeserializer jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig config = deserializationContext.getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        JsonDeserializer<?> _findCustomCollectionLikeDeserializer = _findCustomCollectionLikeDeserializer(collectionLikeType, config, beanDescription, typeDeserializer == null ? findTypeDeserializer(config, contentType) : typeDeserializer, jsonDeserializer);
        if (_findCustomCollectionLikeDeserializer == null || !this._factoryConfig.hasDeserializerModifiers()) {
            return _findCustomCollectionLikeDeserializer;
        }
        JsonDeserializer<?> jsonDeserializer2 = _findCustomCollectionLikeDeserializer;
        for (BeanDeserializerModifier modifyCollectionLikeDeserializer : this._factoryConfig.deserializerModifiers()) {
            jsonDeserializer2 = modifyCollectionLikeDeserializer.modifyCollectionLikeDeserializer(config, collectionLikeType, beanDescription, jsonDeserializer2);
        }
        return jsonDeserializer2;
    }

    public JsonDeserializer<?> createEnumDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonDeserializer<?> deserializerForCreator;
        DeserializationConfig config = deserializationContext.getConfig();
        Class rawClass = javaType.getRawClass();
        JsonDeserializer<?> _findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, config, beanDescription);
        if (_findCustomEnumDeserializer == null) {
            for (AnnotatedMethod annotatedMethod : beanDescription.getFactoryMethods()) {
                if (deserializationContext.getAnnotationIntrospector().hasCreatorAnnotation(annotatedMethod)) {
                    if (annotatedMethod.getParameterCount() == 1 && annotatedMethod.getRawReturnType().isAssignableFrom(rawClass)) {
                        deserializerForCreator = EnumDeserializer.deserializerForCreator(config, rawClass, annotatedMethod);
                        if (deserializerForCreator == null) {
                            deserializerForCreator = new EnumDeserializer(constructEnumResolver(rawClass, config, beanDescription.findJsonValueMethod()));
                        }
                    } else {
                        throw new IllegalArgumentException("Unsuitable method (" + annotatedMethod + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
                    }
                }
            }
            deserializerForCreator = _findCustomEnumDeserializer;
            if (deserializerForCreator == null) {
                deserializerForCreator = new EnumDeserializer(constructEnumResolver(rawClass, config, beanDescription.findJsonValueMethod()));
            }
        } else {
            deserializerForCreator = _findCustomEnumDeserializer;
        }
        if (!this._factoryConfig.hasDeserializerModifiers()) {
            return deserializerForCreator;
        }
        _findCustomEnumDeserializer = deserializerForCreator;
        for (BeanDeserializerModifier modifyEnumDeserializer : this._factoryConfig.deserializerModifiers()) {
            _findCustomEnumDeserializer = modifyEnumDeserializer.modifyEnumDeserializer(config, javaType, beanDescription, _findCustomEnumDeserializer);
        }
        return _findCustomEnumDeserializer;
    }

    public KeyDeserializer createKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        KeyDeserializer keyDeserializer = null;
        DeserializationConfig config = deserializationContext.getConfig();
        if (this._factoryConfig.hasKeyDeserializers()) {
            BeanDescription introspectClassAnnotations = config.introspectClassAnnotations(javaType.getRawClass());
            for (KeyDeserializers findKeyDeserializer : this._factoryConfig.keyDeserializers()) {
                keyDeserializer = findKeyDeserializer.findKeyDeserializer(javaType, config, introspectClassAnnotations);
                if (keyDeserializer != null) {
                    break;
                }
            }
        }
        if (keyDeserializer == null) {
            if (javaType.isEnumType()) {
                return _createEnumKeyDeserializer(deserializationContext, javaType);
            }
            keyDeserializer = StdKeyDeserializers.findStringBasedKeyDeserializer(config, javaType);
        }
        if (keyDeserializer == null || !this._factoryConfig.hasDeserializerModifiers()) {
            return keyDeserializer;
        }
        KeyDeserializer keyDeserializer2 = keyDeserializer;
        for (BeanDeserializerModifier modifyKeyDeserializer : this._factoryConfig.deserializerModifiers()) {
            keyDeserializer2 = modifyKeyDeserializer.modifyKeyDeserializer(config, javaType, keyDeserializer2);
        }
        return keyDeserializer2;
    }

    public JsonDeserializer<?> createMapDeserializer(DeserializationContext deserializationContext, MapType mapType, BeanDescription beanDescription) throws JsonMappingException {
        MapType mapType2;
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType keyType = mapType.getKeyType();
        JavaType contentType = mapType.getContentType();
        JsonDeserializer jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        KeyDeserializer keyDeserializer = (KeyDeserializer) keyType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer findTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(config, contentType) : typeDeserializer;
        JsonDeserializer<?> _findCustomMapDeserializer = _findCustomMapDeserializer(mapType, config, beanDescription, keyDeserializer, findTypeDeserializer, jsonDeserializer);
        if (_findCustomMapDeserializer == null) {
            Class rawClass = mapType.getRawClass();
            if (EnumMap.class.isAssignableFrom(rawClass)) {
                Class rawClass2 = keyType.getRawClass();
                if (rawClass2 == null || !rawClass2.isEnum()) {
                    throw new IllegalArgumentException("Can not construct EnumMap; generic (key) type not available");
                }
                _findCustomMapDeserializer = new EnumMapDeserializer(mapType, null, jsonDeserializer, findTypeDeserializer);
            }
            if (_findCustomMapDeserializer == null) {
                if (mapType.isInterface() || mapType.isAbstract()) {
                    rawClass = (Class) _mapFallbacks.get(rawClass.getName());
                    if (rawClass != null) {
                        MapType mapType3 = (MapType) config.constructSpecializedType(mapType, rawClass);
                        beanDescription = config.introspectForCreation(mapType3);
                        mapType2 = mapType3;
                    } else if (mapType.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Can not find a deserializer for non-concrete Map type " + mapType);
                    } else {
                        _findCustomMapDeserializer = AbstractDeserializer.constructForNonPOJO(beanDescription);
                        mapType2 = mapType;
                    }
                } else {
                    mapType2 = mapType;
                }
                if (_findCustomMapDeserializer == null) {
                    _findCustomMapDeserializer = new MapDeserializer((JavaType) mapType2, findValueInstantiator(deserializationContext, beanDescription), keyDeserializer, jsonDeserializer, findTypeDeserializer);
                    _findCustomMapDeserializer.setIgnorableProperties(config.getAnnotationIntrospector().findPropertiesToIgnore(beanDescription.getClassInfo(), false));
                }
                if (this._factoryConfig.hasDeserializerModifiers()) {
                    for (BeanDeserializerModifier modifyMapDeserializer : this._factoryConfig.deserializerModifiers()) {
                        _findCustomMapDeserializer = modifyMapDeserializer.modifyMapDeserializer(config, mapType2, beanDescription, _findCustomMapDeserializer);
                    }
                }
                return _findCustomMapDeserializer;
            }
        }
        mapType2 = mapType;
        if (this._factoryConfig.hasDeserializerModifiers()) {
            while (r2.hasNext()) {
                _findCustomMapDeserializer = modifyMapDeserializer.modifyMapDeserializer(config, mapType2, beanDescription, _findCustomMapDeserializer);
            }
        }
        return _findCustomMapDeserializer;
    }

    public JsonDeserializer<?> createMapLikeDeserializer(DeserializationContext deserializationContext, MapLikeType mapLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType keyType = mapLikeType.getKeyType();
        JavaType contentType = mapLikeType.getContentType();
        DeserializationConfig config = deserializationContext.getConfig();
        KeyDeserializer keyDeserializer = (KeyDeserializer) keyType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        JsonDeserializer<?> _findCustomMapLikeDeserializer = _findCustomMapLikeDeserializer(mapLikeType, config, beanDescription, keyDeserializer, typeDeserializer == null ? findTypeDeserializer(config, contentType) : typeDeserializer, (JsonDeserializer) contentType.getValueHandler());
        if (_findCustomMapLikeDeserializer == null || !this._factoryConfig.hasDeserializerModifiers()) {
            return _findCustomMapLikeDeserializer;
        }
        JsonDeserializer<?> jsonDeserializer = _findCustomMapLikeDeserializer;
        for (BeanDeserializerModifier modifyMapLikeDeserializer : this._factoryConfig.deserializerModifiers()) {
            jsonDeserializer = modifyMapLikeDeserializer.modifyMapLikeDeserializer(config, mapLikeType, beanDescription, jsonDeserializer);
        }
        return jsonDeserializer;
    }

    public JsonDeserializer<?> createTreeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        Class rawClass = javaType.getRawClass();
        JsonDeserializer<?> _findCustomTreeNodeDeserializer = _findCustomTreeNodeDeserializer(rawClass, deserializationConfig, beanDescription);
        return _findCustomTreeNodeDeserializer != null ? _findCustomTreeNodeDeserializer : JsonNodeDeserializer.getDeserializer(rawClass);
    }

    public JsonDeserializer<?> findDefaultDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType javaType2 = null;
        Class rawClass = javaType.getRawClass();
        JavaType _findRemappedType;
        if (rawClass == CLASS_OBJECT) {
            DeserializationConfig config = deserializationContext.getConfig();
            if (this._factoryConfig.hasAbstractTypeResolvers()) {
                _findRemappedType = _findRemappedType(config, List.class);
                javaType2 = _findRemappedType(config, Map.class);
            } else {
                _findRemappedType = null;
            }
            return new UntypedObjectDeserializer(_findRemappedType, javaType2);
        } else if (rawClass == CLASS_STRING || rawClass == CLASS_CHAR_BUFFER) {
            return StringDeserializer.instance;
        } else {
            JavaType referencedType;
            if (javaType.isReferenceType()) {
                referencedType = javaType.getReferencedType();
                if (AtomicReference.class.isAssignableFrom(rawClass)) {
                    return new AtomicReferenceDeserializer(referencedType, findTypeDeserializer(deserializationContext.getConfig(), referencedType), findDeserializerFromAnnotation(deserializationContext, deserializationContext.getConfig().introspectClassAnnotations(referencedType).getClassInfo()));
                }
            }
            if (rawClass == CLASS_ITERABLE) {
                TypeFactory typeFactory = deserializationContext.getTypeFactory();
                JavaType[] findTypeParameters = typeFactory.findTypeParameters(javaType, CLASS_ITERABLE);
                javaType2 = (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0];
                return createCollectionDeserializer(deserializationContext, typeFactory.constructCollectionType(Collection.class, javaType2), beanDescription);
            } else if (rawClass == CLASS_MAP_ENTRY) {
                javaType2 = javaType.containedType(0);
                _findRemappedType = javaType2 == null ? TypeFactory.unknownType() : javaType2;
                javaType2 = javaType.containedType(1);
                referencedType = javaType2 == null ? TypeFactory.unknownType() : javaType2;
                TypeDeserializer typeDeserializer = (TypeDeserializer) referencedType.getTypeHandler();
                return new MapEntryDeserializer(javaType, (KeyDeserializer) _findRemappedType.getValueHandler(), (JsonDeserializer) referencedType.getValueHandler(), typeDeserializer == null ? findTypeDeserializer(deserializationContext.getConfig(), referencedType) : typeDeserializer);
            } else {
                JsonDeserializer<?> find;
                String name = rawClass.getName();
                if (rawClass.isPrimitive() || name.startsWith("java.")) {
                    find = NumberDeserializers.find(rawClass, name);
                    if (find == null) {
                        find = DateDeserializers.find(rawClass, name);
                    }
                    if (find != null) {
                        return find;
                    }
                }
                if (rawClass == TokenBuffer.class) {
                    return new TokenBufferDeserializer();
                }
                find = findOptionalStdDeserializer(deserializationContext, javaType, beanDescription);
                return find == null ? JdkDeserializers.find(rawClass, name) : find;
            }
        }
    }

    protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializer = deserializationContext.getAnnotationIntrospector().findDeserializer(annotated);
        return findDeserializer == null ? null : deserializationContext.deserializerInstance(annotated, findDeserializer);
    }

    protected KeyDeserializer findKeyDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findKeyDeserializer = deserializationContext.getAnnotationIntrospector().findKeyDeserializer(annotated);
        return findKeyDeserializer == null ? null : deserializationContext.keyDeserializerInstance(annotated, findKeyDeserializer);
    }

    protected JsonDeserializer<?> findOptionalStdDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findDeserializer(javaType, deserializationContext.getConfig(), beanDescription);
    }

    public TypeDeserializer findPropertyContentTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder findPropertyContentTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyContentTypeResolver(deserializationConfig, annotatedMember, javaType);
        JavaType contentType = javaType.getContentType();
        return findPropertyContentTypeResolver == null ? findTypeDeserializer(deserializationConfig, contentType) : findPropertyContentTypeResolver.buildTypeDeserializer(deserializationConfig, contentType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, contentType));
    }

    public TypeDeserializer findPropertyTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder findPropertyTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyTypeResolver(deserializationConfig, annotatedMember, javaType);
        return findPropertyTypeResolver == null ? findTypeDeserializer(deserializationConfig, javaType) : findPropertyTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, javaType));
    }

    public TypeDeserializer findTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Collection collection = null;
        AnnotatedClass classInfo = deserializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder findTypeResolver = deserializationConfig.getAnnotationIntrospector().findTypeResolver(deserializationConfig, classInfo, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = deserializationConfig.getDefaultTyper(javaType);
            if (findTypeResolver == null) {
                return null;
            }
        }
        collection = deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, classInfo);
        if (findTypeResolver.getDefaultImpl() == null && javaType.isAbstract()) {
            JavaType mapAbstractType = mapAbstractType(deserializationConfig, javaType);
            if (!(mapAbstractType == null || mapAbstractType.getRawClass() == javaType.getRawClass())) {
                findTypeResolver = findTypeResolver.defaultImpl(mapAbstractType.getRawClass());
            }
        }
        return findTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, collection);
    }

    public ValueInstantiator findValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        ValueInstantiator valueInstantiator = null;
        Annotated classInfo = beanDescription.getClassInfo();
        Object findValueInstantiator = deserializationContext.getAnnotationIntrospector().findValueInstantiator(classInfo);
        if (findValueInstantiator != null) {
            valueInstantiator = _valueInstantiatorInstance(config, classInfo, findValueInstantiator);
        }
        if (valueInstantiator == null) {
            valueInstantiator = _findStdValueInstantiator(config, beanDescription);
            if (valueInstantiator == null) {
                valueInstantiator = _constructDefaultValueInstantiator(deserializationContext, beanDescription);
            }
        }
        ValueInstantiator valueInstantiator2;
        if (this._factoryConfig.hasValueInstantiators()) {
            valueInstantiator2 = valueInstantiator;
            for (ValueInstantiators valueInstantiators : this._factoryConfig.valueInstantiators()) {
                valueInstantiator2 = valueInstantiators.findValueInstantiator(config, beanDescription, valueInstantiator2);
                if (valueInstantiator2 == null) {
                    throw new JsonMappingException("Broken registered ValueInstantiators (of type " + valueInstantiators.getClass().getName() + "): returned null ValueInstantiator");
                }
            }
        }
        valueInstantiator2 = valueInstantiator;
        if (valueInstantiator2.getIncompleteParameter() == null) {
            return valueInstantiator2;
        }
        AnnotatedParameter incompleteParameter = valueInstantiator2.getIncompleteParameter();
        throw new IllegalArgumentException("Argument #" + incompleteParameter.getIndex() + " of constructor " + incompleteParameter.getOwner() + " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
    }

    public DeserializerFactoryConfig getFactoryConfig() {
        return this._factoryConfig;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.fasterxml.jackson.databind.JavaType mapAbstractType(com.fasterxml.jackson.databind.DeserializationConfig r5, com.fasterxml.jackson.databind.JavaType r6) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
        r4 = this;
    L_0x0000:
        r0 = r4._mapAbstractType2(r5, r6);
        if (r0 != 0) goto L_0x0007;
    L_0x0006:
        return r6;
    L_0x0007:
        r1 = r6.getRawClass();
        r2 = r0.getRawClass();
        if (r1 == r2) goto L_0x0017;
    L_0x0011:
        r1 = r1.isAssignableFrom(r2);
        if (r1 != 0) goto L_0x0040;
    L_0x0017:
        r1 = new java.lang.IllegalArgumentException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Invalid abstract type resolution from ";
        r2 = r2.append(r3);
        r2 = r2.append(r6);
        r3 = " to ";
        r2 = r2.append(r3);
        r0 = r2.append(r0);
        r2 = ": latter is not a subtype of former";
        r0 = r0.append(r2);
        r0 = r0.toString();
        r1.<init>(r0);
        throw r1;
    L_0x0040:
        r6 = r0;
        goto L_0x0000;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.BasicDeserializerFactory.mapAbstractType(com.fasterxml.jackson.databind.DeserializationConfig, com.fasterxml.jackson.databind.JavaType):com.fasterxml.jackson.databind.JavaType");
    }

    protected <T extends JavaType> T modifyTypeByAnnotation(DeserializationContext deserializationContext, Annotated annotated, T t) throws JsonMappingException {
        T t2;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        Class findDeserializationType = annotationIntrospector.findDeserializationType(annotated, t);
        if (findDeserializationType != null) {
            try {
                T constructSpecializedType = deserializationContext.getTypeFactory().constructSpecializedType(t, findDeserializationType);
            } catch (Throwable e) {
                throw new JsonMappingException("Failed to narrow type " + t + " with concrete-type annotation (value " + findDeserializationType.getName() + "), method '" + annotated.getName() + "': " + e.getMessage(), null, e);
            }
        }
        constructSpecializedType = t;
        if (!constructSpecializedType.isContainerType()) {
            return constructSpecializedType;
        }
        Class findDeserializationKeyType = annotationIntrospector.findDeserializationKeyType(annotated, constructSpecializedType.getKeyType());
        if (findDeserializationKeyType == null) {
            t2 = constructSpecializedType;
        } else if (constructSpecializedType instanceof MapLikeType) {
            try {
                t2 = ((MapLikeType) constructSpecializedType).narrowKey(findDeserializationKeyType);
            } catch (Throwable e2) {
                throw new JsonMappingException("Failed to narrow key type " + constructSpecializedType + " with key-type annotation (" + findDeserializationKeyType.getName() + "): " + e2.getMessage(), null, e2);
            }
        } else {
            throw new JsonMappingException("Illegal key-type annotation: type " + constructSpecializedType + " is not a Map(-like) type");
        }
        JavaType keyType = t2.getKeyType();
        if (keyType != null && keyType.getValueHandler() == null) {
            KeyDeserializer keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotated, annotationIntrospector.findKeyDeserializer(annotated));
            if (keyDeserializerInstance != null) {
                t2 = ((MapLikeType) t2).withKeyValueHandler(keyDeserializerInstance);
                t2.getKeyType();
            }
        }
        findDeserializationType = annotationIntrospector.findDeserializationContentType(annotated, t2.getContentType());
        if (findDeserializationType != null) {
            try {
                t2 = t2.narrowContentsBy(findDeserializationType);
            } catch (Throwable e3) {
                throw new JsonMappingException("Failed to narrow content type " + t2 + " with content-type annotation (" + findDeserializationType.getName() + "): " + e3.getMessage(), null, e3);
            }
        }
        if (t2.getContentType().getValueHandler() != null) {
            return t2;
        }
        JsonDeserializer deserializerInstance = deserializationContext.deserializerInstance(annotated, annotationIntrospector.findContentDeserializer(annotated));
        return deserializerInstance != null ? t2.withContentValueHandler(deserializerInstance) : t2;
    }

    protected JavaType resolveType(DeserializationContext deserializationContext, BeanDescription beanDescription, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        if (javaType.isContainerType()) {
            AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
            if (javaType.getKeyType() != null) {
                KeyDeserializer keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotatedMember, annotationIntrospector.findKeyDeserializer(annotatedMember));
                if (keyDeserializerInstance != null) {
                    javaType = ((MapLikeType) javaType).withKeyValueHandler(keyDeserializerInstance);
                    javaType.getKeyType();
                }
            }
            JsonDeserializer deserializerInstance = deserializationContext.deserializerInstance(annotatedMember, annotationIntrospector.findContentDeserializer(annotatedMember));
            if (deserializerInstance != null) {
                javaType = javaType.withContentValueHandler(deserializerInstance);
            }
            if (annotatedMember instanceof AnnotatedMember) {
                TypeDeserializer findPropertyContentTypeDeserializer = findPropertyContentTypeDeserializer(deserializationContext.getConfig(), javaType, annotatedMember);
                if (findPropertyContentTypeDeserializer != null) {
                    javaType = javaType.withContentTypeHandler(findPropertyContentTypeDeserializer);
                }
            }
        }
        Object findPropertyTypeDeserializer = annotatedMember instanceof AnnotatedMember ? findPropertyTypeDeserializer(deserializationContext.getConfig(), javaType, annotatedMember) : findTypeDeserializer(deserializationContext.getConfig(), javaType);
        return findPropertyTypeDeserializer != null ? javaType.withTypeHandler(findPropertyTypeDeserializer) : javaType;
    }

    public final DeserializerFactory withAbstractTypeResolver(AbstractTypeResolver abstractTypeResolver) {
        return withConfig(this._factoryConfig.withAbstractTypeResolver(abstractTypeResolver));
    }

    public final DeserializerFactory withAdditionalDeserializers(Deserializers deserializers) {
        return withConfig(this._factoryConfig.withAdditionalDeserializers(deserializers));
    }

    public final DeserializerFactory withAdditionalKeyDeserializers(KeyDeserializers keyDeserializers) {
        return withConfig(this._factoryConfig.withAdditionalKeyDeserializers(keyDeserializers));
    }

    protected abstract DeserializerFactory withConfig(DeserializerFactoryConfig deserializerFactoryConfig);

    public final DeserializerFactory withDeserializerModifier(BeanDeserializerModifier beanDeserializerModifier) {
        return withConfig(this._factoryConfig.withDeserializerModifier(beanDeserializerModifier));
    }

    public final DeserializerFactory withValueInstantiators(ValueInstantiators valueInstantiators) {
        return withConfig(this._factoryConfig.withValueInstantiators(valueInstantiators));
    }
}
