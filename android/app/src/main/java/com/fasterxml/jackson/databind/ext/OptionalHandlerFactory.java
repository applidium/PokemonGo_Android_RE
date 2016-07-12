package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.ser.Serializers;
import java.io.Serializable;

public class OptionalHandlerFactory implements Serializable {
    private static final String CLASS_NAME_DOM_DOCUMENT = "org.w3c.dom.Node";
    private static final String CLASS_NAME_DOM_NODE = "org.w3c.dom.Node";
    private static final String DESERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers";
    private static final String DESERIALIZER_FOR_DOM_DOCUMENT = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer";
    private static final String DESERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer";
    private static final String PACKAGE_PREFIX_JAVAX_XML = "javax.xml.";
    private static final String SERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers";
    private static final String SERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMSerializer";
    public static final OptionalHandlerFactory instance;
    private static final long serialVersionUID = 1;

    static {
        instance = new OptionalHandlerFactory();
    }

    protected OptionalHandlerFactory() {
    }

    private boolean doesImplement(Class<?> cls, String str) {
        Class superclass;
        while (superclass != null) {
            if (superclass.getName().equals(str) || hasInterface(superclass, str)) {
                return true;
            }
            superclass = superclass.getSuperclass();
        }
        return false;
    }

    private boolean hasInterface(Class<?> cls, String str) {
        Class[] interfaces = cls.getInterfaces();
        for (Class name : interfaces) {
            if (name.getName().equals(str)) {
                return true;
            }
        }
        for (Class name2 : interfaces) {
            if (hasInterface(name2, str)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasInterfaceStartingWith(Class<?> cls, String str) {
        Class[] interfaces = cls.getInterfaces();
        for (Class name : interfaces) {
            if (name.getName().startsWith(str)) {
                return true;
            }
        }
        for (Class name2 : interfaces) {
            if (hasInterfaceStartingWith(name2, str)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasSupertypeStartingWith(Class<?> cls, String str) {
        for (Class superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (superclass.getName().startsWith(str)) {
                return true;
            }
        }
        Class superclass2;
        while (superclass2 != null) {
            if (hasInterfaceStartingWith(superclass2, str)) {
                return true;
            }
            superclass2 = superclass2.getSuperclass();
        }
        return false;
    }

    private Object instantiate(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (LinkageError e) {
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    public JsonDeserializer<?> findDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        Class rawClass = javaType.getRawClass();
        if (!rawClass.getName().startsWith(PACKAGE_PREFIX_JAVAX_XML) && !hasSupertypeStartingWith(rawClass, PACKAGE_PREFIX_JAVAX_XML)) {
            return doesImplement(rawClass, CLASS_NAME_DOM_NODE) ? (JsonDeserializer) instantiate(DESERIALIZER_FOR_DOM_DOCUMENT) : doesImplement(rawClass, CLASS_NAME_DOM_NODE) ? (JsonDeserializer) instantiate(DESERIALIZER_FOR_DOM_NODE) : null;
        } else {
            Object instantiate = instantiate(DESERIALIZERS_FOR_JAVAX_XML);
            return instantiate == null ? null : ((Deserializers) instantiate).findBeanDeserializer(javaType, deserializationConfig, beanDescription);
        }
    }

    public JsonSerializer<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) {
        Class rawClass = javaType.getRawClass();
        String name = rawClass.getName();
        if (doesImplement(rawClass, CLASS_NAME_DOM_NODE)) {
            return (JsonSerializer) instantiate(SERIALIZER_FOR_DOM_NODE);
        }
        if (name.startsWith(PACKAGE_PREFIX_JAVAX_XML) || hasSupertypeStartingWith(rawClass, PACKAGE_PREFIX_JAVAX_XML)) {
            Object instantiate = instantiate(SERIALIZERS_FOR_JAVAX_XML);
            if (instantiate != null) {
                return ((Serializers) instantiate).findSerializer(serializationConfig, javaType, beanDescription);
            }
        }
        return null;
    }
}
