package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.type.ReferenceType;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

public class AtomicReferenceSerializer extends StdSerializer<AtomicReference<?>> {
    private static final long serialVersionUID = 1;

    @Deprecated
    public AtomicReferenceSerializer() {
        super(AtomicReference.class, false);
    }

    public AtomicReferenceSerializer(ReferenceType referenceType) {
        super((JavaType) referenceType);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        jsonFormatVisitorWrapper.expectAnyFormat(javaType);
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("any", true);
    }

    public boolean isEmpty(SerializerProvider serializerProvider, AtomicReference<?> atomicReference) {
        return atomicReference == null || atomicReference.get() == null;
    }

    public void serialize(AtomicReference<?> atomicReference, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        serializerProvider.defaultSerializeValue(atomicReference.get(), jsonGenerator);
    }
}
