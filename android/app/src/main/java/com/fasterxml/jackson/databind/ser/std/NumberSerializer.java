package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonNumberFormatVisitor;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;

@JacksonStdImpl
public class NumberSerializer extends StdScalarSerializer<Number> {
    public static final NumberSerializer instance;
    protected final boolean _isInt;

    static {
        instance = new NumberSerializer(Number.class);
    }

    @Deprecated
    public NumberSerializer() {
        super(Number.class);
        this._isInt = false;
    }

    public NumberSerializer(Class<? extends Number> cls) {
        boolean z = false;
        super(cls, false);
        if (cls == BigInteger.class) {
            z = true;
        }
        this._isInt = z;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        if (this._isInt) {
            JsonIntegerFormatVisitor expectIntegerFormat = jsonFormatVisitorWrapper.expectIntegerFormat(javaType);
            if (expectIntegerFormat != null) {
                expectIntegerFormat.numberType(NumberType.BIG_INTEGER);
                return;
            }
            return;
        }
        JsonNumberFormatVisitor expectNumberFormat = jsonFormatVisitorWrapper.expectNumberFormat(javaType);
        if (expectNumberFormat != null && handledType() == BigDecimal.class) {
            expectNumberFormat.numberType(NumberType.BIG_DECIMAL);
        }
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode(this._isInt ? "integer" : "number", true);
    }

    public void serialize(Number number, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (number instanceof BigDecimal) {
            jsonGenerator.writeNumber((BigDecimal) number);
        } else if (number instanceof BigInteger) {
            jsonGenerator.writeNumber((BigInteger) number);
        } else if (number instanceof Integer) {
            jsonGenerator.writeNumber(number.intValue());
        } else if (number instanceof Long) {
            jsonGenerator.writeNumber(number.longValue());
        } else if (number instanceof Double) {
            jsonGenerator.writeNumber(number.doubleValue());
        } else if (number instanceof Float) {
            jsonGenerator.writeNumber(number.floatValue());
        } else if ((number instanceof Byte) || (number instanceof Short)) {
            jsonGenerator.writeNumber(number.intValue());
        } else {
            jsonGenerator.writeNumber(number.toString());
        }
    }
}
