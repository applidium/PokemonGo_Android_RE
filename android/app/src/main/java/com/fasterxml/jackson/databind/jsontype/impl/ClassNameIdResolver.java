package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.EnumMap;
import java.util.EnumSet;

public class ClassNameIdResolver extends TypeIdResolverBase {
    public ClassNameIdResolver(JavaType javaType, TypeFactory typeFactory) {
        super(javaType, typeFactory);
    }

    protected final String _idFrom(Object obj, Class<?> cls) {
        Class superclass;
        if (Enum.class.isAssignableFrom(cls) && !cls.isEnum()) {
            superclass = cls.getSuperclass();
        }
        String name = superclass.getName();
        if (!name.startsWith("java.util")) {
            return (name.indexOf(36) < 0 || ClassUtil.getOuterClass(superclass) == null || ClassUtil.getOuterClass(this._baseType.getRawClass()) != null) ? name : this._baseType.getRawClass().getName();
        } else {
            if (obj instanceof EnumSet) {
                return TypeFactory.defaultInstance().constructCollectionType(EnumSet.class, ClassUtil.findEnumType((EnumSet) obj)).toCanonical();
            } else if (obj instanceof EnumMap) {
                return TypeFactory.defaultInstance().constructMapType(EnumMap.class, ClassUtil.findEnumType((EnumMap) obj), Object.class).toCanonical();
            } else {
                String substring = name.substring(9);
                return ((substring.startsWith(".Arrays$") || substring.startsWith(".Collections$")) && name.indexOf("List") >= 0) ? "java.util.ArrayList" : name;
            }
        }
    }

    protected JavaType _typeFromId(String str, TypeFactory typeFactory) {
        if (str.indexOf(60) > 0) {
            return typeFactory.constructFromCanonical(str);
        }
        try {
            return typeFactory.constructSpecializedType(this._baseType, typeFactory.findClass(str));
        } catch (ClassNotFoundException e) {
            throw new IllegalArgumentException("Invalid type id '" + str + "' (for id type 'Id.class'): no such class found");
        } catch (Throwable e2) {
            throw new IllegalArgumentException("Invalid type id '" + str + "' (for id type 'Id.class'): " + e2.getMessage(), e2);
        }
    }

    public String getDescForKnownTypeIds() {
        return "class name used as type id";
    }

    public Id getMechanism() {
        return Id.CLASS;
    }

    public String idFromValue(Object obj) {
        return _idFrom(obj, obj.getClass());
    }

    public String idFromValueAndType(Object obj, Class<?> cls) {
        return _idFrom(obj, cls);
    }

    public void registerSubtype(Class<?> cls, String str) {
    }

    public JavaType typeFromId(DatabindContext databindContext, String str) {
        return _typeFromId(str, databindContext.getTypeFactory());
    }

    @Deprecated
    public JavaType typeFromId(String str) {
        return _typeFromId(str, this._typeFactory);
    }
}
