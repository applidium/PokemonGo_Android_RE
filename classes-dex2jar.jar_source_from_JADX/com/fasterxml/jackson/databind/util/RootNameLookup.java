package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;

public class RootNameLookup implements Serializable {
    private static final long serialVersionUID = 1;
    protected transient LRUMap<ClassKey, PropertyName> _rootNames;

    public RootNameLookup() {
        this._rootNames = new LRUMap(20, 200);
    }

    public PropertyName findRootName(JavaType javaType, MapperConfig<?> mapperConfig) {
        return findRootName(javaType.getRawClass(), (MapperConfig) mapperConfig);
    }

    public PropertyName findRootName(Class<?> cls, MapperConfig<?> mapperConfig) {
        ClassKey classKey = new ClassKey(cls);
        PropertyName propertyName = (PropertyName) this._rootNames.get(classKey);
        if (propertyName == null) {
            propertyName = mapperConfig.getAnnotationIntrospector().findRootName(mapperConfig.introspectClassAnnotations((Class) cls).getClassInfo());
            if (propertyName == null || !propertyName.hasSimpleName()) {
                propertyName = PropertyName.construct(cls.getSimpleName());
            }
            this._rootNames.put(classKey, propertyName);
        }
        return propertyName;
    }

    protected Object readResolve() {
        return new RootNameLookup();
    }
}
