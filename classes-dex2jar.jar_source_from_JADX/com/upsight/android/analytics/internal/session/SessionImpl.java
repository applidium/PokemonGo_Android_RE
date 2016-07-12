package com.upsight.android.analytics.internal.session;

import android.content.Context;
import android.support.v4.widget.ExploreByTouchHelper;
import com.upsight.android.internal.util.PreferencesHelper;

public class SessionImpl implements Session {
    private static final String PREFERENCES_KEY_CURRENT_SESSION_DURATION = "current_session_duration";
    private static final String PREFERENCES_KEY_PAST_SESSION_TIME = "past_session_time";
    private static final String PREFERENCES_KEY_SESSION_NUM = "session_num";
    private static final String PREFERENCES_KEY_SESSION_START_TS = "session_start_ts";
    private static final int SESSION_NUM_BASE_OFFSET = 0;
    private final Integer mCampaignId;
    private final long mInitialSessionStartTs;
    private long mLastKnownSessionTs;
    private final Integer mMessageId;
    private final long mPastSessionTime;
    private final int mSessionNum;

    private SessionImpl(Integer num, Integer num2, int i, long j, long j2) {
        this.mCampaignId = num;
        this.mMessageId = num2;
        this.mSessionNum = i;
        this.mInitialSessionStartTs = j;
        this.mPastSessionTime = j2;
    }

    public static Session create(Context context, Clock clock, Integer num, Integer num2) {
        int i = PreferencesHelper.getInt(context, PREFERENCES_KEY_SESSION_NUM, ExploreByTouchHelper.INVALID_ID);
        long j = PreferencesHelper.getLong(context, PREFERENCES_KEY_SESSION_START_TS, Long.MIN_VALUE);
        if (i == ExploreByTouchHelper.INVALID_ID || j == Long.MIN_VALUE) {
            return incrementAndCreate(context, clock, num, num2);
        }
        return new SessionImpl(num, num2, i, j, PreferencesHelper.getLong(context, PREFERENCES_KEY_PAST_SESSION_TIME, 0));
    }

    public static Session incrementAndCreate(Context context, Clock clock, Integer num, Integer num2) {
        int i = PreferencesHelper.getInt(context, PREFERENCES_KEY_SESSION_NUM, 0) + 1;
        long currentTimeSeconds = clock.currentTimeSeconds();
        PreferencesHelper.putInt(context, PREFERENCES_KEY_SESSION_NUM, i);
        PreferencesHelper.putLong(context, PREFERENCES_KEY_SESSION_START_TS, currentTimeSeconds);
        long j = PreferencesHelper.getLong(context, PREFERENCES_KEY_PAST_SESSION_TIME, 0) + PreferencesHelper.getLong(context, PREFERENCES_KEY_CURRENT_SESSION_DURATION, 0);
        PreferencesHelper.putLong(context, PREFERENCES_KEY_CURRENT_SESSION_DURATION, 0);
        PreferencesHelper.putLong(context, PREFERENCES_KEY_PAST_SESSION_TIME, j);
        return new SessionImpl(num, num2, i, currentTimeSeconds, j);
    }

    public Integer getCampaignID() {
        Integer num;
        synchronized (this) {
            num = this.mCampaignId;
        }
        return num;
    }

    public Integer getMessageID() {
        Integer num;
        synchronized (this) {
            num = this.mMessageId;
        }
        return num;
    }

    public long getPreviousTos() {
        return this.mPastSessionTime;
    }

    public int getSessionNumber() {
        int i;
        synchronized (this) {
            i = this.mSessionNum;
        }
        return i;
    }

    public long getTimeStamp() {
        long j;
        synchronized (this) {
            j = this.mInitialSessionStartTs;
        }
        return j;
    }

    public void updateDuration(Context context, long j) {
        PreferencesHelper.putLong(context, PREFERENCES_KEY_CURRENT_SESSION_DURATION, j - this.mInitialSessionStartTs);
    }
}
