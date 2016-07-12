package com.upsight.android.analytics.event;

import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;

@JsonDeserialize(using = Deserializer.class)
@JsonSerialize(using = Serializer.class)
public class UpsightPublisherData {
    private final ObjectNode mDataMap;

    public static class Builder {
        private static final ObjectMapper sObjectMapper;
        private final ObjectNode mDataMap;

        static {
            sObjectMapper = new ObjectMapper();
        }

        public Builder() {
            this.mDataMap = sObjectMapper.createObjectNode();
        }

        Builder(ObjectNode objectNode) {
            this.mDataMap = objectNode;
        }

        public UpsightPublisherData build() {
            return new UpsightPublisherData();
        }

        public Builder put(UpsightPublisherData upsightPublisherData) {
            if (upsightPublisherData != null) {
                Iterator fields = upsightPublisherData.mDataMap.fields();
                while (fields.hasNext()) {
                    Entry entry = (Entry) fields.next();
                    this.mDataMap.replace((String) entry.getKey(), (JsonNode) entry.getValue());
                }
            }
            return this;
        }

        public Builder put(String str, char c) {
            if (!TextUtils.isEmpty(str)) {
                this.mDataMap.put(str, String.valueOf(c));
            }
            return this;
        }

        public Builder put(String str, double d) {
            if (!TextUtils.isEmpty(str)) {
                this.mDataMap.put(str, d);
            }
            return this;
        }

        public Builder put(String str, float f) {
            if (!TextUtils.isEmpty(str)) {
                this.mDataMap.put(str, f);
            }
            return this;
        }

        public Builder put(String str, int i) {
            if (!TextUtils.isEmpty(str)) {
                this.mDataMap.put(str, i);
            }
            return this;
        }

        public Builder put(String str, long j) {
            if (!TextUtils.isEmpty(str)) {
                this.mDataMap.put(str, j);
            }
            return this;
        }

        public Builder put(String str, CharSequence charSequence) {
            if (!(TextUtils.isEmpty(str) || charSequence == null)) {
                this.mDataMap.put(str, charSequence.toString());
            }
            return this;
        }

        public Builder put(String str, boolean z) {
            if (!TextUtils.isEmpty(str)) {
                this.mDataMap.put(str, z);
            }
            return this;
        }
    }

    public static class Deserializer extends JsonDeserializer<UpsightPublisherData> {
        public UpsightPublisherData deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new Builder((ObjectNode) jsonParser.readValueAs(ObjectNode.class)).build();
        }
    }

    public static final class Serializer extends JsonSerializer<UpsightPublisherData> {
        public void serialize(UpsightPublisherData upsightPublisherData, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            serializerProvider.defaultSerializeValue(upsightPublisherData.mDataMap, jsonGenerator);
        }
    }

    private UpsightPublisherData(Builder builder) {
        this.mDataMap = builder.mDataMap;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UpsightPublisherData upsightPublisherData = (UpsightPublisherData) obj;
        if (this.mDataMap != null) {
            if (this.mDataMap.equals(upsightPublisherData.mDataMap)) {
                return true;
            }
        } else if (upsightPublisherData.mDataMap == null) {
            return true;
        }
        return false;
    }

    public String getData(String str) {
        return this.mDataMap.get(str).toString();
    }

    public int hashCode() {
        return this.mDataMap != null ? this.mDataMap.hashCode() : 0;
    }
}
