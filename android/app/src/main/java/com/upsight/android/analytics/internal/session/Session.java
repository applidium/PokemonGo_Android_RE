package com.upsight.android.analytics.internal.session;

import android.content.Context;

public interface Session extends SessionInitializer {
    long getPreviousTos();

    int getSessionNumber();

    long getTimeStamp();

    void updateDuration(Context context, long j);
}
