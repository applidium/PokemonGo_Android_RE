package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.VirtualBeanPropertyWriter;
import com.fasterxml.jackson.databind.util.Converter;

public abstract class HandlerInstantiator {
    public Converter<?, ?> converterInstance(MapperConfig<?> mapperConfig, Annotated annotated, Class<?> cls) {
        return null;
    }

    public abstract JsonDeserializer<?> deserializerInstance(DeserializationConfig deserializationConfig, Annotated annotated, Class<?> cls);

    public abstract KeyDeserializer keyDeserializerInstance(DeserializationConfig deserializationConfig, Annotated annotated, Class<?> cls);

    public PropertyNamingStrategy namingStrategyInstance(MapperConfig<?> mapperConfig, Annotated annotated, Class<?> cls) {
        return null;
    }

    public ObjectIdGenerator<?> objectIdGeneratorInstance(MapperConfig<?> mapperConfig, Annotated annotated, Class<?> cls) {
        return null;
    }

    public ObjectIdResolver resolverIdGeneratorInstance(MapperConfig<?> mapperConfig, Annotated annotated, Class<?> cls) {
        return null;
    }

    public abstract JsonSerializer<?> serializerInstance(SerializationConfig serializationConfig, Annotated annotated, Class<?> cls);

    public abstract TypeIdResolver typeIdResolverInstance(MapperConfig<?> mapperConfig, Annotated annotated, Class<?> cls);

    public abstract TypeResolverBuilder<?> typeResolverBuilderInstance(MapperConfig<?> mapperConfig, Annotated annotated, Class<?> cls);

    public ValueInstantiator valueInstantiatorInstance(MapperConfig<?> mapperConfig, Annotated annotated, Class<?> cls) {
        return null;
    }

    public VirtualBeanPropertyWriter virtualPropertyWriterInstance(MapperConfig<?> mapperConfig, Class<?> cls) {
        return null;
    }
}
