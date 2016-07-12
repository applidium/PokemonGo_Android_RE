package com.upsight.android.analytics.internal.association;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.association")
public class Association {
    @UpsightStorableIdentifier
    String id;
    @JsonProperty("timestamp_ms")
    long timestampMs;
    @JsonProperty("upsight_data")
    ObjectNode upsightData;
    @JsonProperty("upsight_data_filter")
    UpsightDataFilter upsightDataFilter;
    @JsonProperty("with")
    String with;

    public static class UpsightDataFilter {
        @JsonProperty("match_key")
        String matchKey;
        @JsonProperty("match_values")
        ArrayNode matchValues;

        public String getMatchKey() {
            return this.matchKey;
        }

        public ArrayNode getMatchValues() {
            return this.matchValues;
        }
    }

    Association() {
    }

    private Association(String str, UpsightDataFilter upsightDataFilter, ObjectNode objectNode, long j) {
        this.with = str;
        this.upsightDataFilter = upsightDataFilter;
        this.upsightData = objectNode;
        this.timestampMs = j;
    }

    public static Association from(String str, ObjectNode objectNode, ObjectNode objectNode2, ObjectMapper objectMapper, Clock clock) throws IllegalArgumentException, JsonProcessingException {
        if (TextUtils.isEmpty(str) || objectNode == null || objectNode2 == null) {
            throw new IllegalArgumentException("Illegal arguments");
        }
        return new Association(str, (UpsightDataFilter) objectMapper.treeToValue(objectNode, UpsightDataFilter.class), objectNode2, clock.currentTimeMillis());
    }

    public String getId() {
        return this.id;
    }

    public long getTimestampMs() {
        return this.timestampMs;
    }

    public ObjectNode getUpsightData() {
        return this.upsightData;
    }

    public UpsightDataFilter getUpsightDataFilter() {
        return this.upsightDataFilter;
    }

    public String getWith() {
        return this.with;
    }
}
