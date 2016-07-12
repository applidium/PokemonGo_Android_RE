package com.upsight.android.analytics.internal.dispatcher.delivery;

import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.DataStoreRecord;
import com.upsight.android.analytics.internal.dispatcher.delivery.BatchSender.Request;
import com.upsight.android.analytics.internal.dispatcher.routing.Packet;
import com.upsight.android.analytics.internal.dispatcher.schema.Schema;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.analytics.provider.UpsightOptOutStatus;
import com.upsight.android.internal.util.PreferencesHelper;
import com.upsight.android.logger.UpsightLogger;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@JsonSerialize(using = RequestSerializer.class)
class UpsightRequest {
    private long mInstallTs;
    private final UpsightLogger mLogger;
    private final ObjectMapper mObjectMapper;
    private boolean mOptOut;
    private long mRequestTs;
    private Schema mSchema;
    private Session[] mSessions;
    private UpsightContext mUpsight;

    static class RequestSerializer extends JsonSerializer<UpsightRequest> {
        private static final String IDENTIFIERS_KEY = "identifiers";
        private static final String LOCALE_KEY = "locale";
        private static final String OPT_OUT_KEY = "opt_out";
        private static final String REQUEST_TS_KEY = "request_ts";
        private static final String SESSIONS_KEY = "sessions";

        RequestSerializer() {
        }

        public void serialize(UpsightRequest upsightRequest, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
            CharSequence name;
            jsonGenerator.writeStartObject();
            for (String str : upsightRequest.mSchema.availableKeys()) {
                Object valueFor = upsightRequest.mSchema.getValueFor(str);
                if (valueFor != null) {
                    jsonGenerator.writeObjectField(str, valueFor);
                }
            }
            jsonGenerator.writeObjectField(REQUEST_TS_KEY, Long.valueOf(upsightRequest.mRequestTs));
            jsonGenerator.writeObjectField(OPT_OUT_KEY, Boolean.valueOf(upsightRequest.mOptOut));
            Schema access$000 = upsightRequest.mSchema;
            if (access$000 != null) {
                name = access$000.getName();
                if (!TextUtils.isEmpty(name)) {
                    jsonGenerator.writeObjectField(IDENTIFIERS_KEY, name);
                }
            }
            Locale locale = Locale.getDefault();
            if (locale != null) {
                name = locale.toString();
                if (!TextUtils.isEmpty(name)) {
                    jsonGenerator.writeObjectField(LOCALE_KEY, name);
                }
            }
            jsonGenerator.writeArrayFieldStart(SESSIONS_KEY);
            for (Object defaultSerializeValue : upsightRequest.mSessions) {
                serializerProvider.defaultSerializeValue(defaultSerializeValue, jsonGenerator);
            }
            jsonGenerator.writeEndArray();
            jsonGenerator.writeEndObject();
        }
    }

    public UpsightRequest(UpsightContext upsightContext, Request request, ObjectMapper objectMapper, Clock clock, UpsightLogger upsightLogger) {
        this.mUpsight = upsightContext;
        this.mObjectMapper = objectMapper;
        this.mLogger = upsightLogger;
        this.mInstallTs = PreferencesHelper.getLong(upsightContext, PreferencesHelper.INSTALL_TIMESTAMP_NAME, 0);
        this.mSessions = getSessions(request.batch);
        this.mOptOut = UpsightOptOutStatus.get(this.mUpsight);
        this.mRequestTs = clock.currentTimeSeconds();
        this.mSchema = request.schema;
    }

    private Session[] getSessions(Batch batch) {
        Map hashMap = new HashMap();
        for (Packet record : batch.getPackets()) {
            DataStoreRecord record2 = record.getRecord();
            Session session = (Session) hashMap.get(Long.valueOf(record2.getSessionID()));
            if (session == null) {
                session = new Session(record2, this.mObjectMapper, this.mLogger, this.mInstallTs);
                hashMap.put(Long.valueOf(record2.getSessionID()), session);
            }
            session.addEvent(record2);
        }
        return (Session[]) hashMap.values().toArray(new Session[hashMap.values().size()]);
    }
}
