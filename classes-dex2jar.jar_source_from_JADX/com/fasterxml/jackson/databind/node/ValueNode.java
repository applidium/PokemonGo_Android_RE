package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.util.List;

public abstract class ValueNode extends BaseJsonNode {
    protected ValueNode() {
    }

    protected JsonNode _at(JsonPointer jsonPointer) {
        return MissingNode.getInstance();
    }

    public abstract JsonToken asToken();

    public <T extends JsonNode> T deepCopy() {
        return this;
    }

    public final ObjectNode findParent(String str) {
        return null;
    }

    public final List<JsonNode> findParents(String str, List<JsonNode> list) {
        return list;
    }

    public final JsonNode findValue(String str) {
        return null;
    }

    public final List<JsonNode> findValues(String str, List<JsonNode> list) {
        return list;
    }

    public final List<String> findValuesAsText(String str, List<String> list) {
        return list;
    }

    public final JsonNode get(int i) {
        return null;
    }

    public final JsonNode get(String str) {
        return null;
    }

    public final boolean has(int i) {
        return false;
    }

    public final boolean has(String str) {
        return false;
    }

    public final boolean hasNonNull(int i) {
        return false;
    }

    public final boolean hasNonNull(String str) {
        return false;
    }

    public final JsonNode path(int i) {
        return MissingNode.getInstance();
    }

    public final JsonNode path(String str) {
        return MissingNode.getInstance();
    }

    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForScalar(this, jsonGenerator);
        serialize(jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(this, jsonGenerator);
    }

    public String toString() {
        return asText();
    }
}
