package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.NumberOutput;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

public class ShortNode extends NumericNode {
    protected final short _value;

    public ShortNode(short s) {
        this._value = s;
    }

    public static ShortNode valueOf(short s) {
        return new ShortNode(s);
    }

    public boolean asBoolean(boolean z) {
        return this._value != (short) 0;
    }

    public String asText() {
        return NumberOutput.toString(this._value);
    }

    public JsonToken asToken() {
        return JsonToken.VALUE_NUMBER_INT;
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf((long) this._value);
    }

    public boolean canConvertToInt() {
        return true;
    }

    public boolean canConvertToLong() {
        return true;
    }

    public BigDecimal decimalValue() {
        return BigDecimal.valueOf((long) this._value);
    }

    public double doubleValue() {
        return (double) this._value;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj == null || !(obj instanceof ShortNode)) {
                return false;
            }
            if (((ShortNode) obj)._value != this._value) {
                return false;
            }
        }
        return true;
    }

    public float floatValue() {
        return (float) this._value;
    }

    public int hashCode() {
        return this._value;
    }

    public int intValue() {
        return this._value;
    }

    public boolean isIntegralNumber() {
        return true;
    }

    public boolean isShort() {
        return true;
    }

    public long longValue() {
        return (long) this._value;
    }

    public NumberType numberType() {
        return NumberType.INT;
    }

    public Number numberValue() {
        return Short.valueOf(this._value);
    }

    public final void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeNumber(this._value);
    }

    public short shortValue() {
        return this._value;
    }
}
