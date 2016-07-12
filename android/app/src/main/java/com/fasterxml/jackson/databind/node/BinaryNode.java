package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
import java.util.Arrays;

public class BinaryNode extends ValueNode {
    static final BinaryNode EMPTY_BINARY_NODE;
    protected final byte[] _data;

    static {
        EMPTY_BINARY_NODE = new BinaryNode(new byte[0]);
    }

    public BinaryNode(byte[] bArr) {
        this._data = bArr;
    }

    public BinaryNode(byte[] bArr, int i, int i2) {
        if (i == 0 && i2 == bArr.length) {
            this._data = bArr;
            return;
        }
        this._data = new byte[i2];
        System.arraycopy(bArr, i, this._data, 0, i2);
    }

    public static BinaryNode valueOf(byte[] bArr) {
        return bArr == null ? null : bArr.length == 0 ? EMPTY_BINARY_NODE : new BinaryNode(bArr);
    }

    public static BinaryNode valueOf(byte[] bArr, int i, int i2) {
        return bArr == null ? null : i2 == 0 ? EMPTY_BINARY_NODE : new BinaryNode(bArr, i, i2);
    }

    public String asText() {
        return Base64Variants.getDefaultVariant().encode(this._data, false);
    }

    public JsonToken asToken() {
        return JsonToken.VALUE_EMBEDDED_OBJECT;
    }

    public byte[] binaryValue() {
        return this._data;
    }

    public boolean equals(Object obj) {
        return obj == this ? true : (obj == null || !(obj instanceof BinaryNode)) ? false : Arrays.equals(((BinaryNode) obj)._data, this._data);
    }

    public JsonNodeType getNodeType() {
        return JsonNodeType.BINARY;
    }

    public int hashCode() {
        return this._data == null ? -1 : this._data.length;
    }

    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeBinary(serializerProvider.getConfig().getBase64Variant(), this._data, 0, this._data.length);
    }

    public String toString() {
        return Base64Variants.getDefaultVariant().encode(this._data, true);
    }
}
