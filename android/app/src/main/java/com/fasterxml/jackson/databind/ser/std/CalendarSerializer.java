package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Calendar;

@JacksonStdImpl
public class CalendarSerializer extends DateTimeSerializerBase<Calendar> {
    public static final CalendarSerializer instance;

    static {
        instance = new CalendarSerializer();
    }

    public CalendarSerializer() {
        this(null, null);
    }

    public CalendarSerializer(Boolean bool, DateFormat dateFormat) {
        super(Calendar.class, bool, dateFormat);
    }

    protected long _timestamp(Calendar calendar) {
        return calendar == null ? 0 : calendar.getTimeInMillis();
    }

    public void serialize(Calendar calendar, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (_asTimestamp(serializerProvider)) {
            jsonGenerator.writeNumber(_timestamp(calendar));
        } else if (this._customFormat != null) {
            synchronized (this._customFormat) {
                jsonGenerator.writeString(this._customFormat.format(calendar.getTime()));
            }
        } else {
            serializerProvider.defaultSerializeDateValue(calendar.getTime(), jsonGenerator);
        }
    }

    public CalendarSerializer withFormat(Boolean bool, DateFormat dateFormat) {
        return new CalendarSerializer(bool, dateFormat);
    }
}
