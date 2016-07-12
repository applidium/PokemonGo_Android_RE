package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

final class TreeTypeAdapter<T> extends TypeAdapter<T> {
    private TypeAdapter<T> delegate;
    private final JsonDeserializer<T> deserializer;
    private final Gson gson;
    private final JsonSerializer<T> serializer;
    private final TypeAdapterFactory skipPast;
    private final TypeToken<T> typeToken;

    private static class SingleTypeFactory implements TypeAdapterFactory {
        private final JsonDeserializer<?> deserializer;
        private final TypeToken<?> exactType;
        private final Class<?> hierarchyType;
        private final boolean matchRawType;
        private final JsonSerializer<?> serializer;

        private SingleTypeFactory(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
            this.serializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.deserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
            boolean z2 = (this.serializer == null && this.deserializer == null) ? false : true;
            C$Gson$Preconditions.checkArgument(z2);
            this.exactType = typeToken;
            this.matchRawType = z;
            this.hierarchyType = cls;
        }

        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            boolean isAssignableFrom = this.exactType != null ? this.exactType.equals(typeToken) || (this.matchRawType && this.exactType.getType() == typeToken.getRawType()) : this.hierarchyType.isAssignableFrom(typeToken.getRawType());
            return isAssignableFrom ? new TreeTypeAdapter(this.deserializer, gson, typeToken, this, null) : null;
        }
    }

    private TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        this.serializer = jsonSerializer;
        this.deserializer = jsonDeserializer;
        this.gson = gson;
        this.typeToken = typeToken;
        this.skipPast = typeAdapterFactory;
    }

    private TypeAdapter<T> delegate() {
        TypeAdapter<T> typeAdapter = this.delegate;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        typeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
        this.delegate = typeAdapter;
        return typeAdapter;
    }

    public static TypeAdapterFactory newFactory(TypeToken<?> typeToken, Object obj) {
        return new SingleTypeFactory(typeToken, false, null, null);
    }

    public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> typeToken, Object obj) {
        return new SingleTypeFactory(typeToken, typeToken.getType() == typeToken.getRawType(), null, null);
    }

    public static TypeAdapterFactory newTypeHierarchyFactory(Class<?> cls, Object obj) {
        return new SingleTypeFactory(null, false, cls, null);
    }

    public T read(JsonReader jsonReader) throws IOException {
        if (this.deserializer == null) {
            return delegate().read(jsonReader);
        }
        JsonElement parse = Streams.parse(jsonReader);
        return parse.isJsonNull() ? null : this.deserializer.deserialize(parse, this.typeToken.getType(), this.gson.deserializationContext);
    }

    public void write(JsonWriter jsonWriter, T t) throws IOException {
        if (this.serializer == null) {
            delegate().write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(this.serializer.serialize(t, this.typeToken.getType(), this.gson.serializationContext), jsonWriter);
        }
    }
}
