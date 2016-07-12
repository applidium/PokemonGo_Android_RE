package com.google.gson;

import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class TypeAdapter<T> {

    /* renamed from: com.google.gson.TypeAdapter.1 */
    class C06921 extends TypeAdapter<T> {
        C06921() {
        }

        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return TypeAdapter.this.read(jsonReader);
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter.this.write(jsonWriter, t);
            }
        }
    }

    public final T fromJson(Reader reader) throws IOException {
        return read(new JsonReader(reader));
    }

    public final T fromJson(String str) throws IOException {
        return fromJson(new StringReader(str));
    }

    public final T fromJsonTree(JsonElement jsonElement) {
        try {
            return read(new JsonTreeReader(jsonElement));
        } catch (Throwable e) {
            throw new JsonIOException(e);
        }
    }

    public final TypeAdapter<T> nullSafe() {
        return new C06921();
    }

    public abstract T read(JsonReader jsonReader) throws IOException;

    public final String toJson(T t) throws IOException {
        Writer stringWriter = new StringWriter();
        toJson(stringWriter, t);
        return stringWriter.toString();
    }

    public final void toJson(Writer writer, T t) throws IOException {
        write(new JsonWriter(writer), t);
    }

    public final JsonElement toJsonTree(T t) {
        try {
            JsonWriter jsonTreeWriter = new JsonTreeWriter();
            write(jsonTreeWriter, t);
            return jsonTreeWriter.get();
        } catch (Throwable e) {
            throw new JsonIOException(e);
        }
    }

    public abstract void write(JsonWriter jsonWriter, T t) throws IOException;
}
