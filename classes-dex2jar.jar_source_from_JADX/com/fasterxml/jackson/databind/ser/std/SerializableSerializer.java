package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.JsonSerializable.Base;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

@JacksonStdImpl
public class SerializableSerializer extends StdSerializer<JsonSerializable> {
    private static final AtomicReference<ObjectMapper> _mapperReference;
    public static final SerializableSerializer instance;

    static {
        instance = new SerializableSerializer();
        _mapperReference = new AtomicReference();
    }

    protected SerializableSerializer() {
        super(JsonSerializable.class);
    }

    private static final ObjectMapper _getObjectMapper() {
        ObjectMapper objectMapper;
        synchronized (SerializableSerializer.class) {
            try {
                objectMapper = (ObjectMapper) _mapperReference.get();
                if (objectMapper == null) {
                    objectMapper = new ObjectMapper();
                    _mapperReference.set(objectMapper);
                }
            } catch (Throwable th) {
                Class cls = SerializableSerializer.class;
            }
        }
        return objectMapper;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        jsonFormatVisitorWrapper.expectAnyFormat(javaType);
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        String schemaObjectPropertiesDefinition;
        String str = null;
        JsonNode createObjectNode = createObjectNode();
        String str2 = "any";
        if (type != null) {
            Class rawClass = TypeFactory.rawClass(type);
            if (rawClass.isAnnotationPresent(JsonSerializableSchema.class)) {
                JsonSerializableSchema jsonSerializableSchema = (JsonSerializableSchema) rawClass.getAnnotation(JsonSerializableSchema.class);
                String schemaType = jsonSerializableSchema.schemaType();
                schemaObjectPropertiesDefinition = !JsonSerializableSchema.NO_VALUE.equals(jsonSerializableSchema.schemaObjectPropertiesDefinition()) ? jsonSerializableSchema.schemaObjectPropertiesDefinition() : null;
                if (JsonSerializableSchema.NO_VALUE.equals(jsonSerializableSchema.schemaItemDefinition())) {
                    str2 = schemaType;
                } else {
                    str = jsonSerializableSchema.schemaItemDefinition();
                    str2 = schemaType;
                }
                createObjectNode.put(Keys.TYPE, str2);
                if (schemaObjectPropertiesDefinition != null) {
                    try {
                        createObjectNode.set("properties", _getObjectMapper().readTree(schemaObjectPropertiesDefinition));
                    } catch (IOException e) {
                        throw new JsonMappingException("Failed to parse @JsonSerializableSchema.schemaObjectPropertiesDefinition value");
                    }
                }
                if (str != null) {
                    try {
                        createObjectNode.set("items", _getObjectMapper().readTree(str));
                    } catch (IOException e2) {
                        throw new JsonMappingException("Failed to parse @JsonSerializableSchema.schemaItemDefinition value");
                    }
                }
                return createObjectNode;
            }
        }
        schemaObjectPropertiesDefinition = null;
        createObjectNode.put(Keys.TYPE, str2);
        if (schemaObjectPropertiesDefinition != null) {
            createObjectNode.set("properties", _getObjectMapper().readTree(schemaObjectPropertiesDefinition));
        }
        if (str != null) {
            createObjectNode.set("items", _getObjectMapper().readTree(str));
        }
        return createObjectNode;
    }

    public boolean isEmpty(SerializerProvider serializerProvider, JsonSerializable jsonSerializable) {
        return jsonSerializable instanceof Base ? ((Base) jsonSerializable).isEmpty(serializerProvider) : false;
    }

    public void serialize(JsonSerializable jsonSerializable, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonSerializable.serialize(jsonGenerator, serializerProvider);
    }

    public final void serializeWithType(JsonSerializable jsonSerializable, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        jsonSerializable.serializeWithType(jsonGenerator, serializerProvider, typeSerializer);
    }
}
