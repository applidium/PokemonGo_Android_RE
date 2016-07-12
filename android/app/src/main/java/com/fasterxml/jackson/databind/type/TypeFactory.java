package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;

public final class TypeFactory implements Serializable {
    protected static final SimpleType CORE_TYPE_BOOL;
    protected static final SimpleType CORE_TYPE_INT;
    protected static final SimpleType CORE_TYPE_LONG;
    protected static final SimpleType CORE_TYPE_STRING;
    private static final JavaType[] NO_TYPES;
    protected static final TypeFactory instance;
    private static final long serialVersionUID = 1;
    protected transient HierarchicType _cachedArrayListType;
    protected transient HierarchicType _cachedHashMapType;
    protected final ClassLoader _classLoader;
    protected final TypeModifier[] _modifiers;
    protected final TypeParser _parser;
    protected final LRUMap<ClassKey, JavaType> _typeCache;

    static {
        NO_TYPES = new JavaType[0];
        instance = new TypeFactory();
        CORE_TYPE_STRING = new SimpleType(String.class);
        CORE_TYPE_BOOL = new SimpleType(Boolean.TYPE);
        CORE_TYPE_INT = new SimpleType(Integer.TYPE);
        CORE_TYPE_LONG = new SimpleType(Long.TYPE);
    }

    private TypeFactory() {
        this._typeCache = new LRUMap(16, 100);
        this._parser = new TypeParser(this);
        this._modifiers = null;
        this._classLoader = null;
    }

    protected TypeFactory(TypeParser typeParser, TypeModifier[] typeModifierArr) {
        this(typeParser, typeModifierArr, null);
    }

    protected TypeFactory(TypeParser typeParser, TypeModifier[] typeModifierArr, ClassLoader classLoader) {
        this._typeCache = new LRUMap(16, 100);
        this._parser = typeParser.withFactory(this);
        this._modifiers = typeModifierArr;
        this._classLoader = classLoader;
    }

    private JavaType _collectionType(Class<?> cls) {
        JavaType[] findTypeParameters = findTypeParameters((Class) cls, Collection.class);
        if (findTypeParameters == null) {
            return CollectionType.construct(cls, _unknownType());
        }
        if (findTypeParameters.length == 1) {
            return CollectionType.construct(cls, findTypeParameters[0]);
        }
        throw new IllegalArgumentException("Strange Collection type " + cls.getName() + ": can not determine type parameters");
    }

    private JavaType _mapType(Class<?> cls) {
        if (cls == Properties.class) {
            return MapType.construct(cls, CORE_TYPE_STRING, CORE_TYPE_STRING);
        }
        JavaType[] findTypeParameters = findTypeParameters((Class) cls, Map.class);
        if (findTypeParameters == null) {
            return MapType.construct(cls, _unknownType(), _unknownType());
        }
        if (findTypeParameters.length == 2) {
            return MapType.construct(cls, findTypeParameters[0], findTypeParameters[1]);
        }
        throw new IllegalArgumentException("Strange Map type " + cls.getName() + ": can not determine type parameters");
    }

    public static TypeFactory defaultInstance() {
        return instance;
    }

    public static Class<?> rawClass(Type type) {
        return type instanceof Class ? (Class) type : defaultInstance().constructType(type).getRawClass();
    }

    public static JavaType unknownType() {
        return defaultInstance()._unknownType();
    }

    protected HierarchicType _arrayListSuperInterfaceChain(HierarchicType hierarchicType) {
        synchronized (this) {
            HierarchicType deepCloneWithoutSubtype;
            if (this._cachedArrayListType == null) {
                deepCloneWithoutSubtype = hierarchicType.deepCloneWithoutSubtype();
                _doFindSuperInterfaceChain(deepCloneWithoutSubtype, List.class);
                this._cachedArrayListType = deepCloneWithoutSubtype.getSuperType();
            }
            deepCloneWithoutSubtype = this._cachedArrayListType.deepCloneWithoutSubtype();
            hierarchicType.setSuperType(deepCloneWithoutSubtype);
            deepCloneWithoutSubtype.setSubType(hierarchicType);
        }
        return hierarchicType;
    }

    protected JavaType _constructType(Type type, TypeBindings typeBindings) {
        JavaType _fromClass;
        if (type instanceof Class) {
            _fromClass = _fromClass((Class) type, typeBindings);
        } else if (type instanceof ParameterizedType) {
            _fromClass = _fromParamType((ParameterizedType) type, typeBindings);
        } else if (type instanceof JavaType) {
            return (JavaType) type;
        } else {
            if (type instanceof GenericArrayType) {
                _fromClass = _fromArrayType((GenericArrayType) type, typeBindings);
            } else if (type instanceof TypeVariable) {
                _fromClass = _fromVariable((TypeVariable) type, typeBindings);
            } else if (type instanceof WildcardType) {
                _fromClass = _fromWildcard((WildcardType) type, typeBindings);
            } else {
                throw new IllegalArgumentException("Unrecognized Type: " + (type == null ? "[null]" : type.toString()));
            }
        }
        if (!(this._modifiers == null || r0.isContainerType())) {
            for (TypeModifier modifyType : this._modifiers) {
                _fromClass = modifyType.modifyType(_fromClass, type, typeBindings, this);
            }
        }
        return _fromClass;
    }

    protected HierarchicType _doFindSuperInterfaceChain(HierarchicType hierarchicType, Class<?> cls) {
        Class rawClass = hierarchicType.getRawClass();
        Type[] genericInterfaces = rawClass.getGenericInterfaces();
        if (genericInterfaces != null) {
            for (Type _findSuperInterfaceChain : genericInterfaces) {
                HierarchicType _findSuperInterfaceChain2 = _findSuperInterfaceChain(_findSuperInterfaceChain, cls);
                if (_findSuperInterfaceChain2 != null) {
                    _findSuperInterfaceChain2.setSubType(hierarchicType);
                    hierarchicType.setSuperType(_findSuperInterfaceChain2);
                    return hierarchicType;
                }
            }
        }
        Type genericSuperclass = rawClass.getGenericSuperclass();
        if (genericSuperclass != null) {
            HierarchicType _findSuperInterfaceChain3 = _findSuperInterfaceChain(genericSuperclass, cls);
            if (_findSuperInterfaceChain3 != null) {
                _findSuperInterfaceChain3.setSubType(hierarchicType);
                hierarchicType.setSuperType(_findSuperInterfaceChain3);
                return hierarchicType;
            }
        }
        return null;
    }

    protected Class<?> _findPrimitive(String str) {
        return "int".equals(str) ? Integer.TYPE : "long".equals(str) ? Long.TYPE : "float".equals(str) ? Float.TYPE : "double".equals(str) ? Double.TYPE : "boolean".equals(str) ? Boolean.TYPE : "byte".equals(str) ? Byte.TYPE : "char".equals(str) ? Character.TYPE : "short".equals(str) ? Short.TYPE : "void".equals(str) ? Void.TYPE : null;
    }

    protected HierarchicType _findSuperClassChain(Type type, Class<?> cls) {
        HierarchicType hierarchicType = new HierarchicType(type);
        Class<?> rawClass = hierarchicType.getRawClass();
        if (rawClass == cls) {
            return hierarchicType;
        }
        Type genericSuperclass = rawClass.getGenericSuperclass();
        if (genericSuperclass != null) {
            HierarchicType _findSuperClassChain = _findSuperClassChain(genericSuperclass, cls);
            if (_findSuperClassChain != null) {
                _findSuperClassChain.setSubType(hierarchicType);
                hierarchicType.setSuperType(_findSuperClassChain);
                return hierarchicType;
            }
        }
        return null;
    }

    protected HierarchicType _findSuperInterfaceChain(Type type, Class<?> cls) {
        HierarchicType hierarchicType = new HierarchicType(type);
        Class<?> rawClass = hierarchicType.getRawClass();
        return rawClass == cls ? new HierarchicType(type) : (rawClass == HashMap.class && cls == Map.class) ? _hashMapSuperInterfaceChain(hierarchicType) : (rawClass == ArrayList.class && cls == List.class) ? _arrayListSuperInterfaceChain(hierarchicType) : _doFindSuperInterfaceChain(hierarchicType, cls);
    }

    protected HierarchicType _findSuperTypeChain(Class<?> cls, Class<?> cls2) {
        return cls2.isInterface() ? _findSuperInterfaceChain(cls, cls2) : _findSuperClassChain(cls, cls2);
    }

    protected JavaType _fromArrayType(GenericArrayType genericArrayType, TypeBindings typeBindings) {
        return ArrayType.construct(_constructType(genericArrayType.getGenericComponentType(), typeBindings), null, null);
    }

    protected JavaType _fromClass(Class<?> cls, TypeBindings typeBindings) {
        if (cls == String.class) {
            return CORE_TYPE_STRING;
        }
        if (cls == Boolean.TYPE) {
            return CORE_TYPE_BOOL;
        }
        if (cls == Integer.TYPE) {
            return CORE_TYPE_INT;
        }
        if (cls == Long.TYPE) {
            return CORE_TYPE_LONG;
        }
        ClassKey classKey = new ClassKey(cls);
        JavaType javaType = (JavaType) this._typeCache.get(classKey);
        if (javaType != null) {
            return javaType;
        }
        if (cls.isArray()) {
            javaType = ArrayType.construct(_constructType(cls.getComponentType(), null), null, null);
        } else if (cls.isEnum()) {
            javaType = new SimpleType(cls);
        } else if (Map.class.isAssignableFrom(cls)) {
            javaType = _mapType(cls);
        } else if (Collection.class.isAssignableFrom(cls)) {
            javaType = _collectionType(cls);
        } else if (AtomicReference.class.isAssignableFrom(cls)) {
            r0 = findTypeParameters((Class) cls, AtomicReference.class);
            javaType = (r0 == null || r0.length != 1) ? unknownType() : r0[0];
            javaType = constructReferenceType(cls, javaType);
        } else if (Entry.class.isAssignableFrom(cls)) {
            JavaType javaType2;
            r0 = findTypeParameters((Class) cls, Entry.class);
            if (r0 == null || r0.length != 2) {
                javaType = unknownType();
                javaType2 = javaType;
            } else {
                javaType2 = r0[0];
                javaType = r0[1];
            }
            javaType = constructSimpleType(cls, Entry.class, new JavaType[]{javaType2, javaType});
        } else {
            javaType = new SimpleType(cls);
        }
        this._typeCache.put(classKey, javaType);
        return javaType;
    }

    protected JavaType _fromParamType(ParameterizedType parameterizedType, TypeBindings typeBindings) {
        JavaType[] javaTypeArr;
        JavaType javaType = null;
        Class cls = (Class) parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int length = actualTypeArguments == null ? 0 : actualTypeArguments.length;
        if (length == 0) {
            javaTypeArr = NO_TYPES;
        } else {
            javaTypeArr = new JavaType[length];
            for (int i = 0; i < length; i++) {
                javaTypeArr[i] = _constructType(actualTypeArguments[i], typeBindings);
            }
        }
        if (Map.class.isAssignableFrom(cls)) {
            javaTypeArr = findTypeParameters(constructSimpleType(cls, cls, javaTypeArr), Map.class);
            if (javaTypeArr.length == 2) {
                return MapType.construct(cls, javaTypeArr[0], javaTypeArr[1]);
            }
            throw new IllegalArgumentException("Could not find 2 type parameters for Map class " + cls.getName() + " (found " + javaTypeArr.length + ")");
        } else if (Collection.class.isAssignableFrom(cls)) {
            javaTypeArr = findTypeParameters(constructSimpleType(cls, cls, javaTypeArr), Collection.class);
            if (javaTypeArr.length == 1) {
                return CollectionType.construct(cls, javaTypeArr[0]);
            }
            throw new IllegalArgumentException("Could not find 1 type parameter for Collection class " + cls.getName() + " (found " + javaTypeArr.length + ")");
        } else if (AtomicReference.class.isAssignableFrom(cls)) {
            if (cls == AtomicReference.class) {
                if (length == 1) {
                    r1 = javaTypeArr[0];
                }
                r1 = null;
            } else {
                javaTypeArr = findTypeParameters(constructSimpleType(cls, cls, javaTypeArr), AtomicReference.class, typeBindings);
                if (javaTypeArr != null && javaTypeArr.length == 1) {
                    r1 = javaTypeArr[0];
                }
                r1 = null;
            }
            if (r1 == null) {
                r1 = unknownType();
            }
            return constructReferenceType(cls, r1);
        } else if (!Entry.class.isAssignableFrom(cls)) {
            return length == 0 ? new SimpleType(cls) : constructSimpleType(cls, javaTypeArr);
        } else {
            if (cls == Entry.class) {
                if (length == 2) {
                    javaType = javaTypeArr[0];
                    r1 = javaTypeArr[1];
                }
                r1 = null;
            } else {
                javaTypeArr = findTypeParameters(constructSimpleType(cls, cls, javaTypeArr), Entry.class, typeBindings);
                if (javaTypeArr != null && javaTypeArr.length == 2) {
                    javaType = javaTypeArr[0];
                    r1 = javaTypeArr[1];
                }
                r1 = null;
            }
            if (javaType == null) {
                javaType = unknownType();
            }
            if (r1 == null) {
                r1 = unknownType();
            }
            return constructSimpleType(cls, Entry.class, new JavaType[]{javaType, r1});
        }
    }

    protected JavaType _fromParameterizedClass(Class<?> cls, List<JavaType> list) {
        if (cls.isArray()) {
            return ArrayType.construct(_constructType(cls.getComponentType(), null), null, null);
        }
        if (cls.isEnum()) {
            return new SimpleType(cls);
        }
        if (!Map.class.isAssignableFrom(cls)) {
            return Collection.class.isAssignableFrom(cls) ? list.size() >= 1 ? CollectionType.construct(cls, (JavaType) list.get(0)) : _collectionType(cls) : list.size() == 0 ? new SimpleType(cls) : constructSimpleType(cls, cls, (JavaType[]) list.toArray(new JavaType[list.size()]));
        } else {
            if (list.size() <= 0) {
                return _mapType(cls);
            }
            return MapType.construct(cls, (JavaType) list.get(0), list.size() >= 2 ? (JavaType) list.get(1) : _unknownType());
        }
    }

    protected JavaType _fromVariable(TypeVariable<?> typeVariable, TypeBindings typeBindings) {
        String name = typeVariable.getName();
        if (typeBindings == null) {
            typeBindings = new TypeBindings(this, (Class) null);
        } else {
            JavaType findType = typeBindings.findType(name, false);
            if (findType != null) {
                return findType;
            }
        }
        Type[] bounds = typeVariable.getBounds();
        typeBindings._addPlaceholder(name);
        return _constructType(bounds[0], typeBindings);
    }

    protected JavaType _fromWildcard(WildcardType wildcardType, TypeBindings typeBindings) {
        return _constructType(wildcardType.getUpperBounds()[0], typeBindings);
    }

    protected HierarchicType _hashMapSuperInterfaceChain(HierarchicType hierarchicType) {
        synchronized (this) {
            HierarchicType deepCloneWithoutSubtype;
            if (this._cachedHashMapType == null) {
                deepCloneWithoutSubtype = hierarchicType.deepCloneWithoutSubtype();
                _doFindSuperInterfaceChain(deepCloneWithoutSubtype, Map.class);
                this._cachedHashMapType = deepCloneWithoutSubtype.getSuperType();
            }
            deepCloneWithoutSubtype = this._cachedHashMapType.deepCloneWithoutSubtype();
            hierarchicType.setSuperType(deepCloneWithoutSubtype);
            deepCloneWithoutSubtype.setSubType(hierarchicType);
        }
        return hierarchicType;
    }

    protected JavaType _resolveVariableViaSubTypes(HierarchicType hierarchicType, String str, TypeBindings typeBindings) {
        if (hierarchicType != null && hierarchicType.isGeneric()) {
            TypeVariable[] typeParameters = hierarchicType.getRawClass().getTypeParameters();
            int i = 0;
            int length = typeParameters.length;
            while (i < length) {
                if (str.equals(typeParameters[i].getName())) {
                    Type type = hierarchicType.asGeneric().getActualTypeArguments()[i];
                    return type instanceof TypeVariable ? _resolveVariableViaSubTypes(hierarchicType.getSubType(), ((TypeVariable) type).getName(), typeBindings) : _constructType(type, typeBindings);
                } else {
                    i++;
                }
            }
        }
        return _unknownType();
    }

    protected JavaType _unknownType() {
        return new SimpleType(Object.class);
    }

    protected Class<?> classForName(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    protected Class<?> classForName(String str, boolean z, ClassLoader classLoader) throws ClassNotFoundException {
        return Class.forName(str, true, classLoader);
    }

    public void clearCache() {
        this._typeCache.clear();
    }

    public ArrayType constructArrayType(JavaType javaType) {
        return ArrayType.construct(javaType, null, null);
    }

    public ArrayType constructArrayType(Class<?> cls) {
        return ArrayType.construct(_constructType(cls, null), null, null);
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, JavaType javaType) {
        return CollectionLikeType.construct(cls, javaType);
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, Class<?> cls2) {
        return CollectionLikeType.construct(cls, constructType((Type) cls2));
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, JavaType javaType) {
        return CollectionType.construct(cls, javaType);
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, Class<?> cls2) {
        return CollectionType.construct(cls, constructType((Type) cls2));
    }

    public JavaType constructFromCanonical(String str) throws IllegalArgumentException {
        return this._parser.parse(str);
    }

    public MapLikeType constructMapLikeType(Class<?> cls, JavaType javaType, JavaType javaType2) {
        return MapLikeType.construct(cls, javaType, javaType2);
    }

    public MapLikeType constructMapLikeType(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        return MapType.construct(cls, constructType((Type) cls2), constructType((Type) cls3));
    }

    public MapType constructMapType(Class<? extends Map> cls, JavaType javaType, JavaType javaType2) {
        return MapType.construct(cls, javaType, javaType2);
    }

    public MapType constructMapType(Class<? extends Map> cls, Class<?> cls2, Class<?> cls3) {
        return MapType.construct(cls, constructType((Type) cls2), constructType((Type) cls3));
    }

    @Deprecated
    public JavaType constructParametricType(Class<?> cls, JavaType... javaTypeArr) {
        return constructParametrizedType((Class) cls, (Class) cls, javaTypeArr);
    }

    @Deprecated
    public JavaType constructParametricType(Class<?> cls, Class<?>... clsArr) {
        return constructParametrizedType((Class) cls, (Class) cls, (Class[]) clsArr);
    }

    public JavaType constructParametrizedType(Class<?> cls, Class<?> cls2, JavaType... javaTypeArr) {
        if (cls.isArray()) {
            if (javaTypeArr.length == 1) {
                return constructArrayType(javaTypeArr[0]);
            }
            throw new IllegalArgumentException("Need exactly 1 parameter type for arrays (" + cls.getName() + ")");
        } else if (Map.class.isAssignableFrom(cls)) {
            if (javaTypeArr.length == 2) {
                return constructMapType((Class) cls, javaTypeArr[0], javaTypeArr[1]);
            }
            throw new IllegalArgumentException("Need exactly 2 parameter types for Map types (" + cls.getName() + ")");
        } else if (!Collection.class.isAssignableFrom(cls)) {
            return constructSimpleType(cls, cls2, javaTypeArr);
        } else {
            if (javaTypeArr.length == 1) {
                return constructCollectionType((Class) cls, javaTypeArr[0]);
            }
            throw new IllegalArgumentException("Need exactly 1 parameter type for Collection types (" + cls.getName() + ")");
        }
    }

    public JavaType constructParametrizedType(Class<?> cls, Class<?> cls2, Class<?>... clsArr) {
        int length = clsArr.length;
        JavaType[] javaTypeArr = new JavaType[length];
        for (int i = 0; i < length; i++) {
            javaTypeArr[i] = _fromClass(clsArr[i], null);
        }
        return constructParametrizedType((Class) cls, (Class) cls2, javaTypeArr);
    }

    public CollectionLikeType constructRawCollectionLikeType(Class<?> cls) {
        return CollectionLikeType.construct(cls, unknownType());
    }

    public CollectionType constructRawCollectionType(Class<? extends Collection> cls) {
        return CollectionType.construct(cls, unknownType());
    }

    public MapLikeType constructRawMapLikeType(Class<?> cls) {
        return MapLikeType.construct(cls, unknownType(), unknownType());
    }

    public MapType constructRawMapType(Class<? extends Map> cls) {
        return MapType.construct(cls, unknownType(), unknownType());
    }

    public JavaType constructReferenceType(Class<?> cls, JavaType javaType) {
        return new ReferenceType(cls, javaType, null, null, false);
    }

    public JavaType constructSimpleType(Class<?> cls, Class<?> cls2, JavaType[] javaTypeArr) {
        TypeVariable[] typeParameters = cls2.getTypeParameters();
        if (typeParameters.length != javaTypeArr.length) {
            throw new IllegalArgumentException("Parameter type mismatch for " + cls.getName() + " (and target " + cls2.getName() + "): expected " + typeParameters.length + " parameters, was given " + javaTypeArr.length);
        }
        String[] strArr = new String[typeParameters.length];
        int length = typeParameters.length;
        for (int i = 0; i < length; i++) {
            strArr[i] = typeParameters[i].getName();
        }
        return new SimpleType(cls, strArr, javaTypeArr, null, null, false, cls2);
    }

    @Deprecated
    public JavaType constructSimpleType(Class<?> cls, JavaType[] javaTypeArr) {
        return constructSimpleType(cls, cls, javaTypeArr);
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        if (javaType.getRawClass() == cls) {
            return javaType;
        }
        if (!(javaType instanceof SimpleType) || (!cls.isArray() && !Map.class.isAssignableFrom(cls) && !Collection.class.isAssignableFrom(cls))) {
            return javaType.narrowBy(cls);
        }
        if (javaType.getRawClass().isAssignableFrom(cls)) {
            JavaType _fromClass = _fromClass(cls, new TypeBindings(this, javaType.getRawClass()));
            Object valueHandler = javaType.getValueHandler();
            if (valueHandler != null) {
                _fromClass = _fromClass.withValueHandler(valueHandler);
            }
            valueHandler = javaType.getTypeHandler();
            return valueHandler != null ? _fromClass.withTypeHandler(valueHandler) : _fromClass;
        } else {
            throw new IllegalArgumentException("Class " + cls.getClass().getName() + " not subtype of " + javaType);
        }
    }

    public JavaType constructType(TypeReference<?> typeReference) {
        return _constructType(typeReference.getType(), null);
    }

    public JavaType constructType(Type type) {
        return _constructType(type, null);
    }

    public JavaType constructType(Type type, JavaType javaType) {
        return _constructType(type, javaType == null ? null : new TypeBindings(this, javaType));
    }

    public JavaType constructType(Type type, TypeBindings typeBindings) {
        return _constructType(type, typeBindings);
    }

    public JavaType constructType(Type type, Class<?> cls) {
        return _constructType(type, cls == null ? null : new TypeBindings(this, (Class) cls));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Class<?> findClass(java.lang.String r4) throws java.lang.ClassNotFoundException {
        /*
        r3 = this;
        r0 = 46;
        r0 = r4.indexOf(r0);
        if (r0 >= 0) goto L_0x000f;
    L_0x0008:
        r0 = r3._findPrimitive(r4);
        if (r0 == 0) goto L_0x000f;
    L_0x000e:
        return r0;
    L_0x000f:
        r0 = 0;
        r1 = r3.getClassLoader();
        if (r1 != 0) goto L_0x001e;
    L_0x0016:
        r1 = java.lang.Thread.currentThread();
        r1 = r1.getContextClassLoader();
    L_0x001e:
        if (r1 == 0) goto L_0x002b;
    L_0x0020:
        r0 = 1;
        r0 = r3.classForName(r4, r0, r1);	 Catch:{ Exception -> 0x0026 }
        goto L_0x000e;
    L_0x0026:
        r0 = move-exception;
        r0 = com.fasterxml.jackson.databind.util.ClassUtil.getRootCause(r0);
    L_0x002b:
        r0 = r3.classForName(r4);	 Catch:{ Exception -> 0x0030 }
        goto L_0x000e;
    L_0x0030:
        r1 = move-exception;
        if (r0 != 0) goto L_0x0037;
    L_0x0033:
        r0 = com.fasterxml.jackson.databind.util.ClassUtil.getRootCause(r1);
    L_0x0037:
        r1 = r0 instanceof java.lang.RuntimeException;
        if (r1 == 0) goto L_0x003e;
    L_0x003b:
        r0 = (java.lang.RuntimeException) r0;
        throw r0;
    L_0x003e:
        r1 = new java.lang.ClassNotFoundException;
        r2 = r0.getMessage();
        r1.<init>(r2, r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.type.TypeFactory.findClass(java.lang.String):java.lang.Class<?>");
    }

    public JavaType[] findTypeParameters(JavaType javaType, Class<?> cls) {
        if (cls != javaType.getParameterSource()) {
            return findTypeParameters(javaType.getRawClass(), (Class) cls, new TypeBindings(this, javaType));
        }
        int containedTypeCount = javaType.containedTypeCount();
        if (containedTypeCount == 0) {
            return null;
        }
        JavaType[] javaTypeArr = new JavaType[containedTypeCount];
        for (int i = 0; i < containedTypeCount; i++) {
            javaTypeArr[i] = javaType.containedType(i);
        }
        return javaTypeArr;
    }

    public JavaType[] findTypeParameters(JavaType javaType, Class<?> cls, TypeBindings typeBindings) {
        if (cls != javaType.getParameterSource()) {
            return findTypeParameters(javaType.getRawClass(), (Class) cls, typeBindings);
        }
        int containedTypeCount = javaType.containedTypeCount();
        if (containedTypeCount == 0) {
            return null;
        }
        JavaType[] javaTypeArr = new JavaType[containedTypeCount];
        for (int i = 0; i < containedTypeCount; i++) {
            javaTypeArr[i] = javaType.containedType(i);
        }
        return javaTypeArr;
    }

    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2) {
        return findTypeParameters((Class) cls, (Class) cls2, new TypeBindings(this, (Class) cls));
    }

    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2, TypeBindings typeBindings) {
        HierarchicType _findSuperTypeChain = _findSuperTypeChain(cls, cls2);
        if (_findSuperTypeChain == null) {
            throw new IllegalArgumentException("Class " + cls.getName() + " is not a subtype of " + cls2.getName());
        }
        while (_findSuperTypeChain.getSuperType() != null) {
            HierarchicType superType = _findSuperTypeChain.getSuperType();
            Class rawClass = superType.getRawClass();
            TypeBindings typeBindings2 = new TypeBindings(this, rawClass);
            if (superType.isGeneric()) {
                Type[] actualTypeArguments = superType.asGeneric().getActualTypeArguments();
                TypeVariable[] typeParameters = rawClass.getTypeParameters();
                int length = actualTypeArguments.length;
                for (int i = 0; i < length; i++) {
                    typeBindings2.addBinding(typeParameters[i].getName(), _constructType(actualTypeArguments[i], typeBindings));
                }
            }
            typeBindings = typeBindings2;
            _findSuperTypeChain = superType;
        }
        return !_findSuperTypeChain.isGeneric() ? null : typeBindings.typesAsArray();
    }

    public ClassLoader getClassLoader() {
        return this._classLoader;
    }

    public JavaType moreSpecificType(JavaType javaType, JavaType javaType2) {
        if (javaType == null) {
            return javaType2;
        }
        if (javaType2 == null) {
            return javaType;
        }
        Class rawClass = javaType.getRawClass();
        Class rawClass2 = javaType2.getRawClass();
        return (rawClass == rawClass2 || !rawClass.isAssignableFrom(rawClass2)) ? javaType : javaType2;
    }

    public JavaType uncheckedSimpleType(Class<?> cls) {
        return new SimpleType(cls);
    }

    public TypeFactory withClassLoader(ClassLoader classLoader) {
        return new TypeFactory(this._parser, this._modifiers, classLoader);
    }

    public TypeFactory withModifier(TypeModifier typeModifier) {
        if (typeModifier == null) {
            return new TypeFactory(this._parser, this._modifiers, this._classLoader);
        }
        if (this._modifiers != null) {
            return new TypeFactory(this._parser, (TypeModifier[]) ArrayBuilders.insertInListNoDup(this._modifiers, typeModifier), this._classLoader);
        }
        return new TypeFactory(this._parser, new TypeModifier[]{typeModifier}, this._classLoader);
    }
}
