package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.databind.deser.BeanDeserializerModifier;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.deser.KeyDeserializers;
import com.fasterxml.jackson.databind.deser.ValueInstantiators;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.BeanSerializerModifier;
import com.fasterxml.jackson.databind.ser.Serializers;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.type.TypeModifier;

public abstract class Module implements Versioned {

    public interface SetupContext {
        void addAbstractTypeResolver(AbstractTypeResolver abstractTypeResolver);

        void addBeanDeserializerModifier(BeanDeserializerModifier beanDeserializerModifier);

        void addBeanSerializerModifier(BeanSerializerModifier beanSerializerModifier);

        void addDeserializationProblemHandler(DeserializationProblemHandler deserializationProblemHandler);

        void addDeserializers(Deserializers deserializers);

        void addKeyDeserializers(KeyDeserializers keyDeserializers);

        void addKeySerializers(Serializers serializers);

        void addSerializers(Serializers serializers);

        void addTypeModifier(TypeModifier typeModifier);

        void addValueInstantiators(ValueInstantiators valueInstantiators);

        void appendAnnotationIntrospector(AnnotationIntrospector annotationIntrospector);

        Version getMapperVersion();

        <C extends ObjectCodec> C getOwner();

        TypeFactory getTypeFactory();

        void insertAnnotationIntrospector(AnnotationIntrospector annotationIntrospector);

        boolean isEnabled(Feature feature);

        boolean isEnabled(JsonGenerator.Feature feature);

        boolean isEnabled(JsonParser.Feature feature);

        boolean isEnabled(DeserializationFeature deserializationFeature);

        boolean isEnabled(MapperFeature mapperFeature);

        boolean isEnabled(SerializationFeature serializationFeature);

        void registerSubtypes(NamedType... namedTypeArr);

        void registerSubtypes(Class<?>... clsArr);

        void setClassIntrospector(ClassIntrospector classIntrospector);

        void setMixInAnnotations(Class<?> cls, Class<?> cls2);

        void setNamingStrategy(PropertyNamingStrategy propertyNamingStrategy);
    }

    public abstract String getModuleName();

    public Object getTypeId() {
        return getClass().getName();
    }

    public abstract void setupModule(SetupContext setupContext);

    public abstract Version version();
}
