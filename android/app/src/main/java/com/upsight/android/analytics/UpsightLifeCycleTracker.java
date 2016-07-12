package com.upsight.android.analytics;

import android.app.Activity;
import com.upsight.android.analytics.internal.session.SessionInitializer;

public interface UpsightLifeCycleTracker {
    public static final String STARTED_FROM_PUSH = "pushMessage";

    public enum ActivityState {
        CREATED,
        STARTED,
        RESUMED,
        PAUSED,
        STOPPED,
        DESTROYED
    }

    void track(Activity activity, ActivityState activityState, SessionInitializer sessionInitializer);
}
