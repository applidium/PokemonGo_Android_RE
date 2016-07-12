package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;

public abstract class StdNodeBasedDeserializer<T> extends StdDeserializer<T> implements ResolvableDeserializer {
    private static final long serialVersionUID = 1;
    protected JsonDeserializer<Object> _treeDeserializer;

    protected StdNodeBasedDeserializer(JavaType javaType) {
        super(javaType);
    }

    protected StdNodeBasedDeserializer(StdNodeBasedDeserializer<?> stdNodeBasedDeserializer) {
        super((StdDeserializer) stdNodeBasedDeserializer);
        this._treeDeserializer = stdNodeBasedDeserializer._treeDeserializer;
    }

    protected StdNodeBasedDeserializer(Class<T> cls) {
        super((Class) cls);
    }

    public abstract T convert(JsonNode jsonNode, DeserializationContext deserializationContext) throws IOException;

    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return convert((JsonNode) this._treeDeserializer.deserialize(jsonParser, deserializationContext), deserializationContext);
    }

    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return convert((JsonNode) this._treeDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer), deserializationContext);
    }

    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        this._treeDeserializer = deserializationContext.findRootValueDeserializer(deserializationContext.constructType(JsonNode.class));
    }
}
