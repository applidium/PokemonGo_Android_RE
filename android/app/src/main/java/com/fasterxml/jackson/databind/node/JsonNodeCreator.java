package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.util.RawValue;
import java.math.BigDecimal;
import java.math.BigInteger;

public interface JsonNodeCreator {
    ArrayNode arrayNode();

    ValueNode binaryNode(byte[] bArr);

    ValueNode binaryNode(byte[] bArr, int i, int i2);

    ValueNode booleanNode(boolean z);

    ValueNode nullNode();

    ValueNode numberNode(byte b);

    ValueNode numberNode(double d);

    ValueNode numberNode(float f);

    ValueNode numberNode(int i);

    ValueNode numberNode(long j);

    ValueNode numberNode(Byte b);

    ValueNode numberNode(Double d);

    ValueNode numberNode(Float f);

    ValueNode numberNode(Integer num);

    ValueNode numberNode(Long l);

    ValueNode numberNode(Short sh);

    ValueNode numberNode(BigDecimal bigDecimal);

    ValueNode numberNode(BigInteger bigInteger);

    ValueNode numberNode(short s);

    ObjectNode objectNode();

    ValueNode pojoNode(Object obj);

    ValueNode rawValueNode(RawValue rawValue);

    ValueNode textNode(String str);
}
