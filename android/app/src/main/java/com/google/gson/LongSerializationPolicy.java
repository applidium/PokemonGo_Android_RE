package com.google.gson;

public enum LongSerializationPolicy {
    DEFAULT {
        public JsonElement serialize(Long l) {
            return new JsonPrimitive((Number) l);
        }
    },
    STRING {
        public JsonElement serialize(Long l) {
            return new JsonPrimitive(String.valueOf(l));
        }
    };

    public abstract JsonElement serialize(Long l);
}
