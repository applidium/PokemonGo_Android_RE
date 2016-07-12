package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

public abstract class SerializerFactory {
    public abstract JsonSerializer<Object> createKeySerializer(SerializationConfig serializationConfig, JavaType javaType, JsonSerializer<Object> jsonSerializer) throws JsonMappingException;

    public abstract JsonSerializer<Object> createSerializer(SerializerProvider serializerProvider, JavaType javaType) throws JsonMappingException;

    public abstract TypeSerializer createTypeSerializer(SerializationConfig serializationConfig, JavaType javaType) throws JsonMappingException;

    public abstract SerializerFactory withAdditionalKeySerializers(Serializers serializers);

    public abstract SerializerFactory withAdditionalSerializers(Serializers serializers);

    public abstract SerializerFactory withSerializerModifier(BeanSerializerModifier beanSerializerModifier);
}
