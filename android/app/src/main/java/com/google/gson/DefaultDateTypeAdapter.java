package com.google.gson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

final class DefaultDateTypeAdapter implements JsonSerializer<Date>, JsonDeserializer<Date> {
    private final DateFormat enUsFormat;
    private final DateFormat iso8601Format;
    private final DateFormat localFormat;

    DefaultDateTypeAdapter() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    DefaultDateTypeAdapter(int i) {
        this(DateFormat.getDateInstance(i, Locale.US), DateFormat.getDateInstance(i));
    }

    public DefaultDateTypeAdapter(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    DefaultDateTypeAdapter(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    DefaultDateTypeAdapter(DateFormat dateFormat, DateFormat dateFormat2) {
        this.enUsFormat = dateFormat;
        this.localFormat = dateFormat2;
        this.iso8601Format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.iso8601Format.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private Date deserializeToDate(JsonElement jsonElement) {
        Date parse;
        synchronized (this.localFormat) {
            try {
                parse = this.localFormat.parse(jsonElement.getAsString());
            } catch (ParseException e) {
                try {
                    parse = this.enUsFormat.parse(jsonElement.getAsString());
                } catch (ParseException e2) {
                    try {
                        parse = this.iso8601Format.parse(jsonElement.getAsString());
                    } catch (Throwable e3) {
                        throw new JsonSyntaxException(jsonElement.getAsString(), e3);
                    }
                }
            }
        }
        return parse;
    }

    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement instanceof JsonPrimitive) {
            Date deserializeToDate = deserializeToDate(jsonElement);
            if (type == Date.class) {
                return deserializeToDate;
            }
            if (type == Timestamp.class) {
                return new Timestamp(deserializeToDate.getTime());
            }
            if (type == java.sql.Date.class) {
                return new java.sql.Date(deserializeToDate.getTime());
            }
            throw new IllegalArgumentException(getClass() + " cannot deserialize to " + type);
        }
        throw new JsonParseException("The date should be a string value");
    }

    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonElement jsonPrimitive;
        synchronized (this.localFormat) {
            jsonPrimitive = new JsonPrimitive(this.enUsFormat.format(date));
        }
        return jsonPrimitive;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(DefaultDateTypeAdapter.class.getSimpleName());
        stringBuilder.append('(').append(this.localFormat.getClass().getSimpleName()).append(')');
        return stringBuilder.toString();
    }
}
