package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class TimeTypeAdapter extends TypeAdapter<Time> {
    public static final TypeAdapterFactory FACTORY;
    private final DateFormat format;

    /* renamed from: com.google.gson.internal.bind.TimeTypeAdapter.1 */
    static final class C07191 implements TypeAdapterFactory {
        C07191() {
        }

        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            return typeToken.getRawType() == Time.class ? new TimeTypeAdapter() : null;
        }
    }

    static {
        FACTORY = new C07191();
    }

    public TimeTypeAdapter() {
        this.format = new SimpleDateFormat("hh:mm:ss a");
    }

    public Time read(JsonReader jsonReader) throws IOException {
        Time time;
        synchronized (this) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                time = null;
            } else {
                try {
                    time = new Time(this.format.parse(jsonReader.nextString()).getTime());
                } catch (Throwable e) {
                    throw new JsonSyntaxException(e);
                }
            }
        }
        return time;
    }

    public void write(JsonWriter jsonWriter, Time time) throws IOException {
        synchronized (this) {
            jsonWriter.value(time == null ? null : this.format.format(time));
        }
    }
}
