package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;

public class BooleanNode extends ValueNode {
    public static final BooleanNode FALSE;
    public static final BooleanNode TRUE;
    private final boolean _value;

    static {
        TRUE = new BooleanNode(true);
        FALSE = new BooleanNode(false);
    }

    private BooleanNode(boolean z) {
        this._value = z;
    }

    public static BooleanNode getFalse() {
        return FALSE;
    }

    public static BooleanNode getTrue() {
        return TRUE;
    }

    public static BooleanNode valueOf(boolean z) {
        return z ? TRUE : FALSE;
    }

    public boolean asBoolean() {
        return this._value;
    }

    public boolean asBoolean(boolean z) {
        return this._value;
    }

    public double asDouble(double d) {
        return this._value ? 1.0d : 0.0d;
    }

    public int asInt(int i) {
        return this._value ? 1 : 0;
    }

    public long asLong(long j) {
        return this._value ? 1 : 0;
    }

    public String asText() {
        return this._value ? "true" : "false";
    }

    public JsonToken asToken() {
        return this._value ? JsonToken.VALUE_TRUE : JsonToken.VALUE_FALSE;
    }

    public boolean booleanValue() {
        return this._value;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj == null || !(obj instanceof BooleanNode)) {
                return false;
            }
            if (this._value != ((BooleanNode) obj)._value) {
                return false;
            }
        }
        return true;
    }

    public JsonNodeType getNodeType() {
        return JsonNodeType.BOOLEAN;
    }

    public int hashCode() {
        return this._value ? 3 : 1;
    }

    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeBoolean(this._value);
    }
}
