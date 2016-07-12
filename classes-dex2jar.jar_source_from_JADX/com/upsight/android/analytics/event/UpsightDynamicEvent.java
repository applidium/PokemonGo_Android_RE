package com.upsight.android.analytics.event;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.DynamicIdentifiers;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("com.upsight.dynamic")
public final class UpsightDynamicEvent extends UpsightAnalyticsEvent<JsonNode, JsonNode> implements DynamicIdentifiers {
    private String identifiers;

    public static final class Builder {
        private String identifiers;
        private JsonNode publisherData;
        private final String type;
        private JsonNode upsightData;

        private Builder(String str) {
            this.publisherData = JsonNodeFactory.instance.objectNode();
            this.upsightData = JsonNodeFactory.instance.objectNode();
            this.type = str;
        }

        private UpsightDynamicEvent build() {
            return new UpsightDynamicEvent(this.type, this.identifiers, this.upsightData, this.publisherData);
        }

        public Builder putPublisherData(JsonNode jsonNode) {
            this.publisherData = jsonNode.deepCopy();
            return this;
        }

        public Builder putUpsightData(JsonNode jsonNode) {
            this.upsightData = jsonNode.deepCopy();
            return this;
        }

        public final UpsightDynamicEvent record(UpsightContext upsightContext) {
            UpsightAnalyticsEvent build = build();
            ((UpsightAnalyticsExtension) upsightContext.getUpsightExtension(UpsightAnalyticsExtension.EXTENSION_NAME)).getApi().record(build);
            return build;
        }

        public Builder setDynamicIdentifiers(String str) {
            this.identifiers = str;
            return this;
        }
    }

    UpsightDynamicEvent() {
    }

    UpsightDynamicEvent(String str, String str2, JsonNode jsonNode, JsonNode jsonNode2) {
        super(str, jsonNode, jsonNode2);
        this.identifiers = str2;
    }

    public static Builder createBuilder(String str) {
        return new Builder(null);
    }

    public String getIdentifiersName() {
        return this.identifiers;
    }
}
