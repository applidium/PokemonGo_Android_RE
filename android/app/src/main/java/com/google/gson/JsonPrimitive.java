package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class JsonPrimitive extends JsonElement {
    private static final Class<?>[] PRIMITIVE_TYPES;
    private Object value;

    static {
        PRIMITIVE_TYPES = new Class[]{Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    }

    public JsonPrimitive(Boolean bool) {
        setValue(bool);
    }

    public JsonPrimitive(Character ch) {
        setValue(ch);
    }

    public JsonPrimitive(Number number) {
        setValue(number);
    }

    JsonPrimitive(Object obj) {
        setValue(obj);
    }

    public JsonPrimitive(String str) {
        setValue(str);
    }

    private static boolean isIntegral(JsonPrimitive jsonPrimitive) {
        if (jsonPrimitive.value instanceof Number) {
            Number number = (Number) jsonPrimitive.value;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isPrimitiveOrString(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class cls = obj.getClass();
        for (Class isAssignableFrom : PRIMITIVE_TYPES) {
            if (isAssignableFrom.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    JsonPrimitive deepCopy() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
            if (this.value == null) {
                if (jsonPrimitive.value != null) {
                    return false;
                }
            } else if (isIntegral(this) && isIntegral(jsonPrimitive)) {
                if (getAsNumber().longValue() != jsonPrimitive.getAsNumber().longValue()) {
                    return false;
                }
            } else if (!(this.value instanceof Number) || !(jsonPrimitive.value instanceof Number)) {
                return this.value.equals(jsonPrimitive.value);
            } else {
                double doubleValue = getAsNumber().doubleValue();
                double doubleValue2 = jsonPrimitive.getAsNumber().doubleValue();
                return doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2));
            }
        }
        return true;
    }

    public BigDecimal getAsBigDecimal() {
        return this.value instanceof BigDecimal ? (BigDecimal) this.value : new BigDecimal(this.value.toString());
    }

    public BigInteger getAsBigInteger() {
        return this.value instanceof BigInteger ? (BigInteger) this.value : new BigInteger(this.value.toString());
    }

    public boolean getAsBoolean() {
        return isBoolean() ? getAsBooleanWrapper().booleanValue() : Boolean.parseBoolean(getAsString());
    }

    Boolean getAsBooleanWrapper() {
        return (Boolean) this.value;
    }

    public byte getAsByte() {
        return isNumber() ? getAsNumber().byteValue() : Byte.parseByte(getAsString());
    }

    public char getAsCharacter() {
        return getAsString().charAt(0);
    }

    public double getAsDouble() {
        return isNumber() ? getAsNumber().doubleValue() : Double.parseDouble(getAsString());
    }

    public float getAsFloat() {
        return isNumber() ? getAsNumber().floatValue() : Float.parseFloat(getAsString());
    }

    public int getAsInt() {
        return isNumber() ? getAsNumber().intValue() : Integer.parseInt(getAsString());
    }

    public long getAsLong() {
        return isNumber() ? getAsNumber().longValue() : Long.parseLong(getAsString());
    }

    public Number getAsNumber() {
        return this.value instanceof String ? new LazilyParsedNumber((String) this.value) : (Number) this.value;
    }

    public short getAsShort() {
        return isNumber() ? getAsNumber().shortValue() : Short.parseShort(getAsString());
    }

    public String getAsString() {
        return isNumber() ? getAsNumber().toString() : isBoolean() ? getAsBooleanWrapper().toString() : (String) this.value;
    }

    public int hashCode() {
        if (this.value == null) {
            return 31;
        }
        long longValue;
        if (isIntegral(this)) {
            longValue = getAsNumber().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        } else if (!(this.value instanceof Number)) {
            return this.value.hashCode();
        } else {
            longValue = Double.doubleToLongBits(getAsNumber().doubleValue());
            return (int) (longValue ^ (longValue >>> 32));
        }
    }

    public boolean isBoolean() {
        return this.value instanceof Boolean;
    }

    public boolean isNumber() {
        return this.value instanceof Number;
    }

    public boolean isString() {
        return this.value instanceof String;
    }

    void setValue(Object obj) {
        if (obj instanceof Character) {
            this.value = String.valueOf(((Character) obj).charValue());
            return;
        }
        boolean z = (obj instanceof Number) || isPrimitiveOrString(obj);
        C$Gson$Preconditions.checkArgument(z);
        this.value = obj;
    }
}
