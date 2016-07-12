package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.IOException;

public abstract class KeyDeserializer {

    public static abstract class None extends KeyDeserializer {
    }

    public abstract Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException, JsonProcessingException;
}
