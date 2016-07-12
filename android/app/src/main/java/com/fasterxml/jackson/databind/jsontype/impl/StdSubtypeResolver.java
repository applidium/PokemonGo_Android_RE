package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class StdSubtypeResolver extends SubtypeResolver implements Serializable {
    private static final long serialVersionUID = 1;
    protected LinkedHashSet<NamedType> _registeredSubtypes;

    protected void _collectAndResolve(AnnotatedClass annotatedClass, NamedType namedType, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, HashMap<NamedType, NamedType> hashMap) {
        if (!namedType.hasName()) {
            String findTypeName = annotationIntrospector.findTypeName(annotatedClass);
            if (findTypeName != null) {
                namedType = new NamedType(namedType.getType(), findTypeName);
            }
        }
        if (!hashMap.containsKey(namedType)) {
            hashMap.put(namedType, namedType);
            Collection<NamedType> findSubtypes = annotationIntrospector.findSubtypes(annotatedClass);
            if (findSubtypes != null && !findSubtypes.isEmpty()) {
                for (NamedType namedType2 : findSubtypes) {
                    _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig), namedType2, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        } else if (namedType.hasName() && !((NamedType) hashMap.get(namedType)).hasName()) {
            hashMap.put(namedType, namedType);
        }
    }

    protected void _collectAndResolveByTypeId(AnnotatedClass annotatedClass, NamedType namedType, MapperConfig<?> mapperConfig, Set<Class<?>> set, Map<String, NamedType> map) {
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        if (!namedType.hasName()) {
            String findTypeName = annotationIntrospector.findTypeName(annotatedClass);
            if (findTypeName != null) {
                namedType = new NamedType(namedType.getType(), findTypeName);
            }
        }
        if (namedType.hasName()) {
            map.put(namedType.getName(), namedType);
        }
        if (set.add(namedType.getType())) {
            Collection<NamedType> findSubtypes = annotationIntrospector.findSubtypes(annotatedClass);
            if (findSubtypes != null && !findSubtypes.isEmpty()) {
                for (NamedType namedType2 : findSubtypes) {
                    _collectAndResolveByTypeId(AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig), namedType2, mapperConfig, set, map);
                }
            }
        }
    }

    protected Collection<NamedType> _combineNamedAndUnnamed(Set<Class<?>> set, Map<String, NamedType> map) {
        Collection arrayList = new ArrayList(map.values());
        for (NamedType type : map.values()) {
            set.remove(type.getType());
        }
        for (Class namedType : set) {
            arrayList.add(new NamedType(namedType));
        }
        return arrayList;
    }

    @Deprecated
    public Collection<NamedType> collectAndResolveSubtypes(AnnotatedClass annotatedClass, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector) {
        return collectAndResolveSubtypesByClass(mapperConfig, annotatedClass);
    }

    @Deprecated
    public Collection<NamedType> collectAndResolveSubtypes(AnnotatedMember annotatedMember, MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, JavaType javaType) {
        return collectAndResolveSubtypesByClass(mapperConfig, annotatedMember, javaType);
    }

    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        HashMap hashMap = new HashMap();
        if (this._registeredSubtypes != null) {
            Class rawType = annotatedClass.getRawType();
            Iterator it = this._registeredSubtypes.iterator();
            while (it.hasNext()) {
                NamedType namedType = (NamedType) it.next();
                if (rawType.isAssignableFrom(namedType.getType())) {
                    _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType.getType(), annotationIntrospector, mapperConfig), namedType, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        _collectAndResolve(annotatedClass, new NamedType(annotatedClass.getRawType(), null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList(hashMap.values());
    }

    public Collection<NamedType> collectAndResolveSubtypesByClass(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        Iterator it;
        NamedType namedType;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        Class rawType = javaType == null ? annotatedMember.getRawType() : javaType.getRawClass();
        HashMap hashMap = new HashMap();
        if (this._registeredSubtypes != null) {
            it = this._registeredSubtypes.iterator();
            while (it.hasNext()) {
                namedType = (NamedType) it.next();
                if (rawType.isAssignableFrom(namedType.getType())) {
                    _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType.getType(), annotationIntrospector, mapperConfig), namedType, mapperConfig, annotationIntrospector, hashMap);
                }
            }
        }
        Collection<NamedType> findSubtypes = annotationIntrospector.findSubtypes(annotatedMember);
        if (findSubtypes != null) {
            for (NamedType namedType2 : findSubtypes) {
                _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig), namedType2, mapperConfig, annotationIntrospector, hashMap);
            }
        }
        _collectAndResolve(AnnotatedClass.constructWithoutSuperTypes(rawType, annotationIntrospector, mapperConfig), new NamedType(rawType, null), mapperConfig, annotationIntrospector, hashMap);
        return new ArrayList(hashMap.values());
    }

    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass) {
        Set hashSet = new HashSet();
        Map linkedHashMap = new LinkedHashMap();
        _collectAndResolveByTypeId(annotatedClass, new NamedType(annotatedClass.getRawType(), null), mapperConfig, hashSet, linkedHashMap);
        if (this._registeredSubtypes != null) {
            Class rawType = annotatedClass.getRawType();
            Iterator it = this._registeredSubtypes.iterator();
            while (it.hasNext()) {
                NamedType namedType = (NamedType) it.next();
                if (rawType.isAssignableFrom(namedType.getType())) {
                    _collectAndResolveByTypeId(AnnotatedClass.constructWithoutSuperTypes(namedType.getType(), mapperConfig.getAnnotationIntrospector(), mapperConfig), namedType, mapperConfig, hashSet, linkedHashMap);
                }
            }
        }
        return _combineNamedAndUnnamed(hashSet, linkedHashMap);
    }

    public Collection<NamedType> collectAndResolveSubtypesByTypeId(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        Iterator it;
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        Class rawType = javaType == null ? annotatedMember.getRawType() : javaType.getRawClass();
        Set hashSet = new HashSet();
        Map linkedHashMap = new LinkedHashMap();
        _collectAndResolveByTypeId(AnnotatedClass.constructWithoutSuperTypes(rawType, annotationIntrospector, mapperConfig), new NamedType(rawType, null), mapperConfig, hashSet, linkedHashMap);
        Collection<NamedType> findSubtypes = annotationIntrospector.findSubtypes(annotatedMember);
        if (findSubtypes != null) {
            for (NamedType namedType : findSubtypes) {
                NamedType namedType2;
                _collectAndResolveByTypeId(AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig), namedType2, mapperConfig, hashSet, linkedHashMap);
            }
        }
        if (this._registeredSubtypes != null) {
            it = this._registeredSubtypes.iterator();
            while (it.hasNext()) {
                namedType2 = (NamedType) it.next();
                if (rawType.isAssignableFrom(namedType2.getType())) {
                    _collectAndResolveByTypeId(AnnotatedClass.constructWithoutSuperTypes(namedType2.getType(), annotationIntrospector, mapperConfig), namedType2, mapperConfig, hashSet, linkedHashMap);
                }
            }
        }
        return _combineNamedAndUnnamed(hashSet, linkedHashMap);
    }

    public void registerSubtypes(NamedType... namedTypeArr) {
        if (this._registeredSubtypes == null) {
            this._registeredSubtypes = new LinkedHashSet();
        }
        for (Object add : namedTypeArr) {
            this._registeredSubtypes.add(add);
        }
    }

    public void registerSubtypes(Class<?>... clsArr) {
        NamedType[] namedTypeArr = new NamedType[clsArr.length];
        int length = clsArr.length;
        for (int i = 0; i < length; i++) {
            namedTypeArr[i] = new NamedType(clsArr[i]);
        }
        registerSubtypes(namedTypeArr);
    }
}
