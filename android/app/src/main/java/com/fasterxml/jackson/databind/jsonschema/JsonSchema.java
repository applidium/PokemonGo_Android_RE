package com.fasterxml.jackson.databind.jsonschema;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.voxelbusters.nativeplugins.defines.Keys;

@Deprecated
public class JsonSchema {
    private final ObjectNode schema;

    @JsonCreator
    public JsonSchema(ObjectNode objectNode) {
        this.schema = objectNode;
    }

    public static JsonNode getDefaultSchemaNode() {
        JsonNode objectNode = JsonNodeFactory.instance.objectNode();
        objectNode.put(Keys.TYPE, "any");
        return objectNode;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj == null || !(obj instanceof JsonSchema)) {
                return false;
            }
            JsonSchema jsonSchema = (JsonSchema) obj;
            if (this.schema != null) {
                return this.schema.equals(jsonSchema.schema);
            }
            if (jsonSchema.schema != null) {
                return false;
            }
        }
        return true;
    }

    @JsonValue
    public ObjectNode getSchemaNode() {
        return this.schema;
    }

    public int hashCode() {
        return this.schema.hashCode();
    }

    public String toString() {
        return this.schema.toString();
    }
}
