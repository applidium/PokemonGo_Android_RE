package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JsonDeserializer;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

public class JdkDeserializers {
    private static final HashSet<String> _classNames;

    static {
        int i = 0;
        _classNames = new HashSet();
        for (Class name : new Class[]{UUID.class, AtomicBoolean.class, StackTraceElement.class, ByteBuffer.class}) {
            _classNames.add(name.getName());
        }
        Class[] types = FromStringDeserializer.types();
        int length = types.length;
        while (i < length) {
            _classNames.add(types[i].getName());
            i++;
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (_classNames.contains(str)) {
            JsonDeserializer findDeserializer = FromStringDeserializer.findDeserializer(cls);
            if (findDeserializer != null) {
                return findDeserializer;
            }
            if (cls == UUID.class) {
                return new UUIDDeserializer();
            }
            if (cls == StackTraceElement.class) {
                return new StackTraceElementDeserializer();
            }
            if (cls == AtomicBoolean.class) {
                return new AtomicBooleanDeserializer();
            }
            if (cls == ByteBuffer.class) {
                return new ByteBufferDeserializer();
            }
        }
        return null;
    }
}
