package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.upsight.android.analytics.internal.DataStoreRecord;
import com.upsight.android.logger.UpsightLogger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class Session {
    private Set<DataStoreRecord> mEvents;
    private long mInstallTs;
    private final UpsightLogger mLogger;
    private Integer mMsgCampaignId;
    private Integer mMsgId;
    private final ObjectMapper mObjectMapper;
    private long mPastSessionTime;
    private int mSessionNum;
    private long mSessionStart;

    public Session(DataStoreRecord dataStoreRecord, ObjectMapper objectMapper, UpsightLogger upsightLogger, long j) {
        this.mEvents = new HashSet();
        this.mSessionStart = dataStoreRecord.getSessionID();
        this.mObjectMapper = objectMapper;
        this.mLogger = upsightLogger;
        this.mInstallTs = j;
        this.mMsgId = dataStoreRecord.getMessageID();
        this.mMsgCampaignId = dataStoreRecord.getCampaignID();
        this.mPastSessionTime = dataStoreRecord.getPastSessionTime();
        this.mSessionNum = dataStoreRecord.getSessionNumber();
    }

    public void addEvent(DataStoreRecord dataStoreRecord) {
        this.mEvents.add(dataStoreRecord);
    }

    @JsonProperty("events")
    public ObjectNode[] getEvents() {
        List arrayList = new ArrayList(this.mEvents.size());
        for (DataStoreRecord source : this.mEvents) {
            try {
                JsonNode readTree = this.mObjectMapper.readTree(source.getSource());
                if (readTree.isObject()) {
                    arrayList.add((ObjectNode) readTree);
                }
            } catch (Throwable e) {
                this.mLogger.m200e(getClass().getSimpleName(), e, "Error parsing JSON object.", new Object[0]);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return (ObjectNode[]) arrayList.toArray(new ObjectNode[this.mEvents.size()]);
    }

    @JsonProperty("install_ts")
    public long getInstallTs() {
        return this.mInstallTs;
    }

    @JsonProperty("msg_campaign_id")
    @JsonSerialize(include = Inclusion.NON_NULL)
    public Integer getMsgCampaignId() {
        return this.mMsgCampaignId;
    }

    @JsonProperty("msg_id")
    @JsonSerialize(include = Inclusion.NON_NULL)
    public Integer getMsgId() {
        return this.mMsgId;
    }

    @JsonProperty("past_session_time")
    public long getPastSessionTime() {
        return this.mPastSessionTime;
    }

    @JsonProperty("session_num")
    public int getSessionNum() {
        return this.mSessionNum;
    }

    @JsonProperty("session_start")
    public long getSessionStart() {
        return this.mSessionStart;
    }
}
