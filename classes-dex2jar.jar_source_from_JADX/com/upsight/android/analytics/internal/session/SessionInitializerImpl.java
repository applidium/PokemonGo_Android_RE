package com.upsight.android.analytics.internal.session;

import android.os.Bundle;

public class SessionInitializerImpl implements SessionInitializer {
    private static final int NO_CMP_ID = Integer.MIN_VALUE;
    private static final int NO_MSG_ID = Integer.MIN_VALUE;
    private static final String SESSION_CAMPAIGN_ID = "campaign_id";
    private static final String SESSION_MESSAGE_ID = "message_id";
    private int mCampaignId;
    private int mMessageId;

    private SessionInitializerImpl(int i, int i2) {
        this.mCampaignId = i;
        this.mMessageId = i2;
    }

    public static SessionInitializer fromPush(Bundle bundle) {
        return new SessionInitializerImpl(bundle.getInt(SESSION_CAMPAIGN_ID, NO_MSG_ID), bundle.getInt(SESSION_MESSAGE_ID, NO_MSG_ID));
    }

    public Integer getCampaignID() {
        return this.mCampaignId == NO_MSG_ID ? null : Integer.valueOf(this.mCampaignId);
    }

    public Integer getMessageID() {
        return this.mMessageId == NO_MSG_ID ? null : Integer.valueOf(this.mMessageId);
    }
}
