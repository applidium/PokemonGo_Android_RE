package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

public abstract class TypeBase extends JavaType implements JsonSerializable {
    private static final long serialVersionUID = -3581199092426900829L;
    volatile transient String _canonicalName;

    @Deprecated
    protected TypeBase(Class<?> cls, int i, Object obj, Object obj2) {
        this(cls, i, obj, obj2, false);
    }

    protected TypeBase(Class<?> cls, int i, Object obj, Object obj2, boolean z) {
        super(cls, i, obj, obj2, z);
    }

    protected static StringBuilder _classSignature(Class<?> cls, StringBuilder stringBuilder, boolean z) {
        if (!cls.isPrimitive()) {
            stringBuilder.append('L');
            String name = cls.getName();
            int length = name.length();
            for (int i = 0; i < length; i++) {
                char charAt = name.charAt(i);
                if (charAt == FilenameUtils.EXTENSION_SEPARATOR) {
                    charAt = IOUtils.DIR_SEPARATOR_UNIX;
                }
                stringBuilder.append(charAt);
            }
            if (z) {
                stringBuilder.append(';');
            }
        } else if (cls == Boolean.TYPE) {
            stringBuilder.append('Z');
        } else if (cls == Byte.TYPE) {
            stringBuilder.append('B');
        } else if (cls == Short.TYPE) {
            stringBuilder.append('S');
        } else if (cls == Character.TYPE) {
            stringBuilder.append('C');
        } else if (cls == Integer.TYPE) {
            stringBuilder.append('I');
        } else if (cls == Long.TYPE) {
            stringBuilder.append('J');
        } else if (cls == Float.TYPE) {
            stringBuilder.append('F');
        } else if (cls == Double.TYPE) {
            stringBuilder.append('D');
        } else if (cls == Void.TYPE) {
            stringBuilder.append('V');
        } else {
            throw new IllegalStateException("Unrecognized primitive type: " + cls.getName());
        }
        return stringBuilder;
    }

    protected abstract String buildCanonicalName();

    public abstract StringBuilder getErasedSignature(StringBuilder stringBuilder);

    public abstract StringBuilder getGenericSignature(StringBuilder stringBuilder);

    public <T> T getTypeHandler() {
        return this._typeHandler;
    }

    public <T> T getValueHandler() {
        return this._valueHandler;
    }

    public void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeString(toCanonical());
    }

    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForScalar(this, jsonGenerator);
        serialize(jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(this, jsonGenerator);
    }

    public String toCanonical() {
        String str = this._canonicalName;
        return str == null ? buildCanonicalName() : str;
    }
}
