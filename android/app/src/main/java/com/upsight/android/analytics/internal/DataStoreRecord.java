package com.upsight.android.analytics.internal;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.upsight.android.persistence.annotation.UpsightStorableIdentifier;
import com.upsight.android.persistence.annotation.UpsightStorableType;

@UpsightStorableType("upsight.datastore.record")
public final class DataStoreRecord {
    @JsonProperty("action")
    Action action;
    @JsonProperty("campaign_id")
    Integer campaignID;
    @UpsightStorableIdentifier
    @JsonProperty
    String id;
    @JsonProperty("identifiers")
    String identifiers;
    @JsonProperty("message_id")
    Integer messageID;
    @JsonProperty("past_session_time")
    long pastSessionTime;
    @JsonProperty("session_id")
    long sessionID;
    @JsonProperty("session_num")
    int sessionNumber;
    @JsonProperty("source")
    String source;
    @JsonProperty("source_type")
    String sourceType;

    public enum Action {
        Created,
        Updated,
        Removed
    }

    DataStoreRecord() {
    }

    private DataStoreRecord(Action action, long j, Integer num, Integer num2, int i, long j2, String str, String str2) {
        this.action = action;
        this.sessionID = j;
        this.messageID = num;
        this.campaignID = num2;
        this.source = str;
        this.sourceType = str2;
        this.sessionNumber = i;
        this.pastSessionTime = j2;
    }

    public static DataStoreRecord create(Action action, long j, int i, long j2, String str, String str2) {
        return create(action, j, null, null, i, j2, str, str2);
    }

    public static DataStoreRecord create(Action action, long j, Integer num, Integer num2, int i, long j2, String str, String str2) {
        return new DataStoreRecord(action, j, num, num2, i, j2, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DataStoreRecord dataStoreRecord = (DataStoreRecord) obj;
        if (this.id != null) {
            if (this.id.equals(dataStoreRecord.id)) {
                return true;
            }
        } else if (dataStoreRecord.id == null) {
            return true;
        }
        return false;
    }

    public Action getAction() {
        return this.action;
    }

    public Integer getCampaignID() {
        return this.campaignID;
    }

    public String getID() {
        return this.id;
    }

    public String getIdentifiers() {
        return this.identifiers;
    }

    public Integer getMessageID() {
        return this.messageID;
    }

    public long getPastSessionTime() {
        return this.pastSessionTime;
    }

    public long getSessionID() {
        return this.sessionID;
    }

    public int getSessionNumber() {
        return this.sessionNumber;
    }

    public String getSource() {
        return this.source;
    }

    public String getSourceType() {
        return this.sourceType;
    }

    public int hashCode() {
        return this.id != null ? this.id.hashCode() : 0;
    }

    public void setIdentifiers(String str) {
        this.identifiers = str;
    }
}
